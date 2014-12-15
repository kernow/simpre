# Simpre

A super simple presenter implementation for Rails apps

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simpre'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simpre

## Usage

Simply call `decorate` on an object or collection in a controller or view.

```ruby
@user = decorate user
```

Then add a presenter with the corresponding name that inherits from `Simpre::Presenter`

```ruby
class UserPresenter < Simpre::Presenter

  def full_name
    "#{first_name} #{last_name}"
  end

end
```

Thats it, you can treat the decorated `@user` as if it were the original object but also has
the presenter methods.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/simpre/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
