set my_pass=`gpg -dq $HOME/.mutt/passwords/wojciech@rydel.com.pl.asc`
set my_user=wojciech@rydel.com.pl
set my_full_name='Wojciech Rydel'

set imap_user=wojciech@rydel.com.pl
set imap_pass=$my_pass
set folder=imaps://pro1.mail.ovh.net:993
set spoolfile=+INBOX

set postponed=Drafts

set realname=$my_full_name
set from=$imap_user
set use_from=yes

set smtp_pass=$my_pass
set smtp_url=smtps://wojciech@rydel.com.pl@smtp.pro1.mail.ovh.net:587

