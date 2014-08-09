Burrows-Wheeler transform
=========================

Skeleton and failing tests for the [Burrows-Wheeler transform](http://en.wikipedia.org/wiki/Burrows%E2%80%93Wheeler_transform).

Inspired by [Tom Stuart's](https://github.com/tomstuart) lighting talk about the Burrows Wheeler transform at the Brighton Ruby Conference.

## Instructions

Install the bundle:
```bash
bundle
```

Run the specs:
```bash
bundle exec rspec
```

Implement the `encode` and `decode` methods in `lib/bwt.rb` so that the specs pass.

## Notes

The transform relies on sorting strings. Implementations in other languages may sort strings differently to Ruby and thus produce different encodings.

