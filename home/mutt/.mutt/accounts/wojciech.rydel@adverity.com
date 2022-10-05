set my_pass=`gpg -dq $HOME/.mutt/passwords/wojciech.rydel@adverity.com.asc`

set imap_user=wojciech.rydel@adverity.com
set imap_pass=$my_pass
set folder=imaps://imap.gmail.com
set spoolfile=+INBOX

set postponed=+[Gmail]/Drafts

set realname = 'Wojciech Rydel'
set from = wojciech.rydel@adverity.com
set use_from = yes

set smtp_pass=$my_pass
set smtp_url=smtps://wojciech.rydel@adverity.com@smtp.gmail.com
