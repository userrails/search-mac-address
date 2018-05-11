# SearchMacAddress
SearchMacAddress gems helps you to get the lists of the Mac Address of your system. It also provides a way to get a Mac Address, encode and decode it.

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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/userrails/search-mac-address. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SearchMacAddress project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/userrails/search-mac-address/blob/master/CODE_OF_CONDUCT.md).
