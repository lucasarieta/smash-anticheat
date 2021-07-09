fx_version "cerulean"
game { "gta5" }

name "Smash Basement Anticheat"
author "Lucas Silva (https://github.com/OLucasPk)"
version "1.1"

shared_script "common/configs/GlobalConfig.lua"

client_scripts {
    "@vrp/lib/utils.lua",
    "common/*",
    "client/index.lua",
    "client/**/*"
}

server_scripts {
    "@vrp/lib/utils.lua",
    "common/*",
    "server/index.lua",
    "server/**/*"
}