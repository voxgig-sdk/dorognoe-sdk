package = "voxgig-sdk-dorognoe"
version = "0.0-1"
source = {
  url = "git://github.com/voxgig-sdk/dorognoe-sdk.git"
}
description = {
  summary = "Dorognoe SDK for Lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["dorognoe_sdk"] = "dorognoe_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}
