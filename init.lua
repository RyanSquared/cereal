local json
do
  local ok, dkjson = pcall(require, "dkjson")
  if ok then
    json = dkjson
  else
    json = require("cjson")
  end
end
local yaml
do
  local lyaml = require("lyaml")
  yaml = {
    encode = lyaml.dump,
    decode = lyaml.load
  }
end
local toml
do
  local _toml = require("toml")
  _toml.strict = false
  toml = {
    encode = _toml.encode,
    decode = _toml.parse
  }
end
return {
  json = json,
  yaml = yaml,
  toml = toml
}
