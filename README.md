# HTTPong for Ruby

```bash
gem install httpong
```

```ruby
scheme = HTTPong::Scheme("config/scheme.json") # or scheme.cson, if cson2json is installed.
scheme.name
scheme.reload
scheme.to_json
```
