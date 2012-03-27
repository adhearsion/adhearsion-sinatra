adhearsion-sinatra
==========================

This plugin allows you to create a Sinatra application and run it within your Adhearsion application's process.

Usage
-----

1. Add the following to your Adhearsion application's Gemfile and run `bundle install`:

```ruby
gem "adhearsion-sinatra"
```

2. Create your Sinatra application

To do this you must create a constant that contains your Sinatra code and put it in your `lib/` directory within your Adhearsion application.  For example, if you want to create an application called 'Vegas' you would create the file `lib/vegas.rb` and populate it with:

```ruby
Vegas = Sinatra.new do
  set :sessions, true

  get '/' do
    'Vegas, Baby!'
  end
end
```

3. Tell Adhearsion your Sinatra class name

In your `config/adhearsion.rb` add a line like this to the configuration block:

```ruby
config.sinatra.class_name = 'Vegas'
```

4. Launch Adhearsion

That's it!
