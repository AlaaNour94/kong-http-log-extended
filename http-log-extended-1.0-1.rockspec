package = "http-log-extended"
version = "1.0-1"
supported_platforms = {"linux", "macosx"}

source = {
  url = "git@github.com:AlaaNour94/kong-http-log-extended.git",
  tag = "v1.0"
}

description = {
  summary = "Add Request Body log option in http-log",
  license = "MIT",
}

dependencies = {
  "lua ~> 5.1"
}

local pluginName = "http-log-extended"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".serializer"] = "kong/plugins/"..pluginName.."/serializer.lua",
  }
}
