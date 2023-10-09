# README

Demo App for Flash Messages and Dialogs using hotwire and stimulus

## Installation

```bash
git clone git@github.com:BedeDD/flash-and-dialog-demo.git
cd flash-and-dialog-demo
bin/setup
bin/dev
```

Open http://localhost:3000 in your browser.

**MAKE SURE REDIS SERVER IS RUNNING ON localhost:6379!** otherwise turbo stream broadcasting to channels will not work.

## Configuration

You might want to change the flash duration in [application.rb](config/application.rb) using the key: `config.x.flash_duration`.

## Hints

Using flash messages with turbo you need to write your messages to `flash.now` instead of `flash` in your controller. Otherwise you messages will be displayed twice or including the previously set message.

```ruby
# good
flash.now[:notice] = "This is a flash message"

# bad
flash[:notice] = "This is a flash message"
```

