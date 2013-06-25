# Texticles

Currently, Texticle is just a wrapper of Pony that allows for easy to use text via email. You simply put in whatever mail options (see pony <add link>) and the text is sent in context of that email account.

The gem is still young and I haven't had much time to work on it. That being said, there are a few quirks that would scare people away from using it (i.e. excessive could not resolve host emails to configured email.) The eventual goal will be outlined with the github issue tracker. Anyone feel free to contribute to the project.

## Installation

Add this line to your application's Gemfile:

    gem 'texticles'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install texticles

## Usage

        require 'texticles'

        Texticle.text({
          :to => number, #this can be a string or array
          :body => "Hola, texticle says hello",
          :via => :smtp,
          :via_options => {
            :address              => 'smtp.gmail.com',
            :port                 => '587',
            :enable_starttls_auto => true,
            :user_name            => username,
            :password             => password,
            :authentication       => :plain,
            :domain               => "gmail.com" 
          }
        })

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
