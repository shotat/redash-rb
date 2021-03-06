[![Gem Version](https://badge.fury.io/rb/rbdash.svg)](https://badge.fury.io/rb/rbdash)

# Rbdash

Rbdash is a configuration management CLI tool for [Redash](https://redash.io/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rbdash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rbdash

## Usage


#### setup

```sh
$ rbdash init
      create  config_test.yml
Type your redash server uri: https://example.redash.com
Type your redash API token: xxxxxxxxxxxxxxxx
```

#### fetch remote configurations

```sh
$ rbdash pull <id> <id> ... [--dry-run] [--all]
#   create queries/query-1.json
#   create queries/query-2.json
#   ...
```

#### push configs to remote

```sh
$ rbdash push <id> <id> ... [--dry-run] [--all]
```

```diff
@@ -9,5 +9,5 @@
         "type": "text",
         "name": "DateTime(YYYYMMDD)",
-        "value": "20170530",
+        "value": "20170531",
         "title": "DateTime(YYYYMMDD)"
       },
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/shotat/rbdash.
