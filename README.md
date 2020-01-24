# IsItUtf8

![Travis Build](https://travis-ci.com/jamescook/is_it_utf8.svg?branch=master)

IsItUtf8 can check if a string contains 100% valid UTF8 - fast. The heavy
lifting is done by [fastvalidate-utf-8](https://github.com/lemire/fastvalidate-utf-8)

### Usage
```ruby
require 'is_it_utf8'
puts IsItUtf8.valid?('xøxøxøx')
true
```


### Requirements
* Ruby 2.2+
* gcc/clang

### Developing

Simply make your changes and re-run the tests. Compilation is automatic.
```
rake test
```

### License

MIT
