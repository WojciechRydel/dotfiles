#!/usr/bin/python2
import re
from subprocess import check_output

def get_password(account):
    return check_output("pass " + account, shell=True).splitlines()[0]

def translate_gmail_name(foldername):
    gmail_prefix_removed = re.sub(r'\[Gmail\]\/', '', foldername)
    sent_mail_as_sent = re.sub(r'Sent Mail', 'Sent', gmail_prefix_removed)

    return sent_mail_as_sent


def filter_gmail_all(foldername):
    return foldername not in ['[Gmail]/All Mail']
