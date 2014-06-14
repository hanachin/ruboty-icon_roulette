# Ruboty::IconRoulette

ruboty handler for change bot's icon at random.

_Currently it works only with `ruboty-idobata` adapter_

## Installation

Add this line to your application's Gemfile:

    gem 'ruboty-icon_roulette'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruboty-icon_roulette

## Usage

Set icon directory via ICON_PATHS environment variable.

```
% tree icons
icons
├── kao.jpeg
└── mihashi.jpg
% export ICON_PATH='icons/*'
% echo $ICON_PATH
icons/*
```

then change bot's icon by below:

```
> ruboty icon roulette!
```

## Contributing

1. Fork it ( http://github.com/hanachin/ruboty-icon_roulette/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
