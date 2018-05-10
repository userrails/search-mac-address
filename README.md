# SearchMacAddress

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/search_mac_address`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'search_mac_address'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install search_mac_address

## Usage

TODO: Write usage instructions here

To get set of mac addresses available on your system, use following code
```
SearchMacAddress::Filter.all_addr
```

To get the mac address of your system, use following code
```
SearchMacAddress::Filter.mac_addr
```

To get encoded mac address inoder to keep it secure somewhere, use following code 
```
SearchMacAddress::Filter.encode
```

To decode the mac address, supply encoded data to the decode()
```
SearchMacAddress::Filter.decode(encoded_addr)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/userrails/search-mac-address. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SearchMacAddress project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/userrails/search-mac-address/blob/master/CODE_OF_CONDUCT.md).
