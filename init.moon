local json
do
	ok, dkjson = pcall require, "dkjson"
	json = if ok then dkjson else require "cjson"

local yaml
do
	lyaml = require "lyaml"
	yaml =
		encode: lyaml.dump
		decode: lyaml.load

local toml
do
	_toml = require "toml"
	_toml.strict = false
	toml =
		encode: _toml.encode
		decode: _toml.parse

return {:json, :yaml, :toml}
