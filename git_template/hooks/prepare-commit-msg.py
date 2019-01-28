#!/usr/bin/env python3
import sys
import os
import re

from subprocess import check_output


BRANCH_RE = r'^(?P<issue_type>feature|ft|bfx|bugfix|tsk|task|fault)/(?P<issue_id>[A-Za-z]+-\d+).*$'
TYPE_MESSAGE = 'message'


def get_active_branch_name():
    output = check_output(['git', 'symbolic-ref', '--short', 'HEAD']).strip()
    return output.decode('utf-8')


def get_meta_prefix(issue_type):
  mapping = {
    'feature': 'Intorduces',
    'ft': 'Introduces',
    'bugfix': 'Fixes',
    'bfx': 'Fixes',
    'task': 'Resolves',
    'tsk': 'Resolves',
    'fault': 'Fixes',
  }

  return mapping.get(issue_type, '')


def get_parmas():
    commit_msg_filepath = sys.argv[1]

    if len(sys.argv) > 2:
        commit_type = sys.argv[2]
    else:
        commit_type = ''

    if len(sys.argv) > 3:
        commit_hash = sys.argv[3]
    else:
        commit_hash = ''

    return commit_msg_filepath, commit_type, commit_type

try:
    branch_name = get_active_branch_name()
except Exception:
    print("---- Can't get branch name ---")
    sys.exit(0)

commit_msg_filepath, commit_type, commit_hash = get_parmas()
match = re.match(BRANCH_RE, branch_name)

if match:
    issue_type = match.groupdict()['issue_type']
    issue_number = match.groupdict()['issue_id']
    issue_marker = f'{get_meta_prefix(issue_type)}: [{issue_number}]'

    with open(commit_msg_filepath, 'r+') as f:
        content = f.read()
        f.seek(0, 0)

        if issue_marker in content:
            pass
        elif commit_type == TYPE_MESSAGE:
            f.write(f'{content}\n\n{issue_marker}')
        else:
            f.write(f'\n\n{issue_marker}{content}')

