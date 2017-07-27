# Cereal - MoonScript data serialization and parsing

Cereal offers data serialization and parsing wrappers for:
- YAML
- TOML
<!-- - CSV -->
- JSON

Lua tables will not be included with data serialization and parsing until a
custom parser is written that doesn't use load().

Behind the hood, other libraries are called. Cereal just provides a standard
interface for those files. Converting data *to* the format is called "encoding"
and parsing data *from* the format is called "decoding".

```moon
import json from require "cereal"

print json.encode a: 'b'
	-- { a: 'b' }
print json.decode("{a: 'b'}").a
	-- b
```

## Purpose

Many libraries exist to exchange data between formats; however, many of the
libraries use a different object calling method. Cereal aims to implement
standard `.encode()` and `.decode()` methods for many commonly-used data
formats.

This makes it simpler to provide multiple endpoints between applications and
languages that take different configurations. Data could easily be converted
from one format to another with the common interface and minimal work required.

## Documentation

... can be found in ./docs, or compiled with LDoc.
