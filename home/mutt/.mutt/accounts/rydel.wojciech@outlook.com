set my_pass=`gpg -dq $HOME/.mutt/passwords/rydel.wojciech@outlook.com.asc`
set my_full_name='Wojciech Rydel'

set hostname=gmail.com
set imap_user=rydel.wojciech@outlook.com
set imap_pass=$my_pass
set folder=imaps://imap-mail.outlook.com:993
set spoolfile=+INBOX

set postponed=+[Gmail]/Drafts

set realname = $my_full_name
set from = $imap_user
set use_from = yes

set smtp_url=smtps://$my_user:$my_pass@smtp.$hostname
