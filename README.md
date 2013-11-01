middleman-multimarkdown
=======================

[Multimarkdown] support for [Middleman]

## Purpose

`Middleman` ships with support for a couple of excellent `Markdown` parsers via [Tilt] 
([kramdown], [redcarpet]), but does not offer any convenient option for making use of the greatly expanded syntax of `MultiMarkdown` in a project. 

This extension connects the [rpeg-multimarkdown] implementation of MultiMarkdown to Tilt and provides a simple Middleman extension for use in any project.

## Usage

Install `rpeg-multimarkdown`
```ruby
gem install rpeg-multimarkdown
```

Ideally, add it to your Middleman project Gemfile, as
```ruby
gem "rpeg-multimarkdown"
```

Copy both files in `lib/` to the `lib/` folder at the root of your Middleman project. 

Require and `:activate` the extension in your `config.rb`
```ruby
require "lib/multimarkdown_middleman.rb"
activate :multimarkdown_middleman
```

## .mmd Extension

Please note that, as written, the MultiMarkdown parser will only be called for files with `.mmd` extension. This allows for use alongside your preferred flavor of ordinary Markdown on a file-by-file basis.


[rpeg-multimarkdown]: https://github.com/djungelvral/rpeg-multimarkdown
[Multimarkdown]: http://fletcherpenney.net/multimarkdown/
[Middleman]: http://middlemanapp.com/
[redcarpet]: https://github.com/vmg/redcarpet
[kramdown]: http://kramdown.rubyforge.org/
[Tilt]: https://github.com/rtomayko/tilt

