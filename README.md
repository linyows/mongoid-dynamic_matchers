Mongoid::DynamicMatchers
========================

[![Gem Version](https://badge.fury.io/rb/mongoid-dynamic_matchers.png)][gem]
[![Build Status](https://secure.travis-ci.org/linyows/mongoid-dynamic_matchers.png?branch=master)][travis]
[![Dependency Status](https://gemnasium.com/linyows/mongoid-dynamic_matchers.png?travis)][gemnasium]
[![Code Climate](https://codeclimate.com/github/linyows/mongoid-dynamic_matchers.png)][codeclimate]
[![Coverage Status](https://coveralls.io/repos/linyows/mongoid-dynamic_matchers/badge.png?branch=master)][coveralls]

[gem]: https://rubygems.org/gems/mongoid-dynamic_matchers
[travis]: http://travis-ci.org/linyows/mongoid-dynamic_matchers
[gemnasium]: https://gemnasium.com/linyows/mongoid-dynamic_matchers
[codeclimate]: https://codeclimate.com/github/linyows/mongoid-dynamic_matchers
[coveralls]: https://coveralls.io/r/linyows/mongoid-dynamic_matchers

Support `find_by_xxx_and_yyy` like a activerecord to mongoid.

NOTE: stop supporting activerecord-deprecated_finders from Rails5

Installation
------------

Add this line to your application's Gemfile:

    gem 'mongoid-dynamic_matchers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid-dynamic_matchers

Usage
-----

### Example:

```ruby
class User
  include Mongoid::Document

  field :first_name
  field :last_name
  field :nick
end

User.create(first_name: 'Thomas', last_name: 'Anderson', nick: 'Neo')
```

### Query:

```ruby
User.find_by_first_name_and_last_name('Thomas', 'Anderson')
#=> #<User _id: 501a6f6071d7f13750000001, _type: nil, first_name: "Thomas", last_name: "Anderson">
User.find_by_nick('Smith')
#=> nil
```

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


Author
------

- [linyows](https://github.com/linyows)

License
-------

MIT
