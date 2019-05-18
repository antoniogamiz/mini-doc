# Test-doc of Perl 6

[![artistic](https://img.shields.io/badge/license-Artistic%202.0-blue.svg?style=flat)](https://opensource.org/licenses/Artistic-2.0)

This is only a modified subset of the actual [documentation](https://github.com/perl6/doc).
The main purpose of this repo is to be used to test changes in a fast way.

### How to use this repo

First you need to setup the test-doc enviroment:

```
make setup
```

Now you can either run a local server to the docs:

```
make run
```

Or you can make changes to the build system in `./doc` and execute

```
make build
```

to rebuild the doc and see if some files have been lost (this is done automatically
with [Perl6::LinkHelath](https://github.com/antoniogamiz/Perl6-LinkHealth)).

#### Notes

If you have changed some of the Pod6 files you need to update the `previous-links.txt` file
with the new changes.

# LICENSE

The code in this repository is available under the Artistic License 2.0
as published by The Perl Foundation. See the [LICENSE](LICENSE) file for the full
text.
