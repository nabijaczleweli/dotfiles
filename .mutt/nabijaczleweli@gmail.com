# https://medium.com/@itsjefftong/mutt-gmail-59447a4bffef
set from = 'nabijaczleweli@gmail.com'

# https://gitlab.com/muttmua/mutt/-/wikis/UseCases/Gmail
# http://www.mutt.org/doc/manual/#oauth
# https://github.com/nabijaczleweli/topfig/#binoauth2
set imap_user = 'nabijaczleweli@gmail.com'
set imap_authenticators = 'oauthbearer'
set imap_oauth_refresh_command = 'oauth2 --quiet\
  --user=nabijaczleweli@gmail.com\
  --client_id=[EXPUNGED]\
  --client_secret=[EXPUNGED]\
  --refresh_token=[EXPUNGED]'

set folder = 'imaps://nabijaczleweli@gmail.com@imap.gmail.com:993/'
set spoolfile = +INBOX
#set record = '+[Gmail]/Sent Mail'
unset record  # gmail seems to save these automatically
set postponed = '+[Gmail]/Drafts'

set smtp_url = 'smtps://nabijaczleweli@gmail.com@smtp.gmail.com:465/'
set smtp_authenticators = 'oauthbearer'
set smtp_oauth_refresh_command = "$imap_oauth_refresh_command"

# https://gitlab.com/muttmua/mutt/-/wikis/MuttFaq/Sendmail
set trash = '+Trash'
