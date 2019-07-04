# SP Tech test

The test is as follows:
1. Write a program that:
a. Receives a log file as an argument (webserver.log is provided) e.g.: ./<parse> webserver.log
b. Returns the following:
- list of webpages with most page views ordered from most pages views to less page views e.g.:
  /home 90 visits /index 80 visits etc...
- list of webpages with most unique page views also ordered e.g.:
  /about/2 8 unique views /index 5 unique views etc...

### How to install
- Clone this repository:
  git clone https://github.com/tsankhalpara/SP.git
- Run `bundle install`

### How to use
Whilst in the root directory:
```
irb
require './lib/display.rb'
require './lib/server_log.rb'
server = ServerLog.new(display = Display.new)
server.create_hash('webserver.log')
server.order
```
- Run the next two lines to display the lists:
```
server.page_views
server.unique_views
```

### How to run tests
```
rspec
```
