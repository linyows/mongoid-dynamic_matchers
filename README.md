Mongoid::DynamicMatchers
========================

![Gem Version](https://badge.fury.io/rb/mongoid-dynamic_matchers.png)

Support `find_by_xxx_and_yyy` like a activerecord to mongoid.

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
