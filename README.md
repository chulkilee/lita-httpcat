# lita-httpcat

[![Build Status](https://travis-ci.org/chulkilee/lita-httpcat.png?branch=master)](https://travis-ci.org/chulkilee/lita-httpcat)
[![Coverage Status](https://coveralls.io/repos/chulkilee/lita-httpcat/badge.png)](https://coveralls.io/r/chulkilee/lita-httpcat)

a [lita](https://www.lita.io/) handler that displays [HTTP Status Cats](https://http.cat/)

## Installation

Add lita-httpcat to your Lita instance's Gemfile:

``` ruby
gem 'lita-httpcat'
```

## Configuration

- `prefix`: URL part before the status code (default: `https://http.cat/`)
- `suffix`: URL part after the status code (default: `.jpg`)

## Usage

```
Lita > httpcat 200
https://http.cat/200.jpg
```

## License

[MIT](http://opensource.org/licenses/MIT)
