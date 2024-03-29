fx_version 'cerulean'
game 'gta5'
lua54 'yes'
description 'BM-LocationShare'
version '1.000'
repository 'https://github.com/BobWritesCode/bm-locationshare'

shared_scripts {
  'shared/config.lua',
  'shared/utils.lua'
}

client_scripts {
  'client/main.lua',
  'client/utils.lua'
}

server_script {
  'server/main.lua',
  'server/utils.lua'
}

ui_page {}

files {}
