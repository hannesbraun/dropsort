# Dropsort

This is an implementation of the [Dropsort sorting algorithm designed by David Morgan-Mar](https://www.dangermouse.net/esoteric/dropsort.html). It is written for the Crystal programming language.
The main things to know about the algorithm are:
- it's lossy: sorting does eliminate some of the original elements
- it's quite fast: we're talking about a complexity of O(n)

*Yes, this is a really small library. You could also just implement this yourself. To be honest, this was more of a test project to get to know Crystal. However, this does not mean that the library isn't usable.*

## Installation

1. Add the following dependency to your `shard.yml` file:

  ```yaml
  dependencies:
    dropsort:
      github: hannesbraun/dropsort
  ```

2. Run `shards install`

## Usage

```crystal
require "dropsort"

# Creates a new sorted array and leave the unsorted array as it is
unsorted = [0, 15, 8, 42, -9]
sorted = Dropsort.dropsort(unsorted)

# Sorts the array inplace
some_numbers = [0, 15, 8, 42, -9]
Dropsort.dropsort_inplace(some_numbers)
```

Additionally, you can specify the sorting order with `Dropsort::Order::Ascending` or `Dropsort::Order::Descending`. By default, the array will be sorted in ascending order.

## Development

- Try to follow the official [coding style](https://crystal-lang.org/reference/conventions/coding_style.html)
- Run `crystal tool format` before committing

## Contributing

1. [Fork it](https://github.com/hannesbraun/dropsort/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new pull request

## Contributors

- [Hannes Braun](https://github.com/hannesbraun) - creator and maintainer
