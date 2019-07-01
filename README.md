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

## Features check list

The next list shows all characteristics that pod files in `test-doc` should have:

### Definitions related

- [ ] Headings like `=head2 The something operator`
- [ ] Headings like `=head2 The C<something> operator`
- [ ] Headings like `=head2 Infix foo`
- [ ] Headings like `=head2 Infix C<foo>`
- [ ] Headings like `=head2 trait Indix Foo`
- [ ] Unambiguous headings => `=head2 X<something|something>`
- [ ] All kinds of FormattingCodes check they are ignored(`=head2 L<aa|aa>`, `=head2 B<aa|aa>`, ...).

### Nested definitions

- [ ] scope detection:

  ```
  =head2 valid definition #1

  Some text. Definition #1 content should reach up to this point.

  =head2 valid definition #2
  ```

- [ ] Nested definitions:

  ```
  =head2 valid definition #1

  The content of this definition should be all this pod.

  =head3 valid definition #2

  The content of this definition should reach just before #4.

  =head4 valid definition #3

  This text should be the only content of this definition.

  =head3 valid definition #4

  Same for this.

  ```

### References

- [ ] Whatever reference element in some pod => `X<some|reference>`
- [ ] Multireferences => `X<some|reference1;reference2>`

# LICENSE

The code in this repository is available under the Artistic License 2.0
as published by The Perl Foundation. See the [LICENSE](LICENSE) file for the full
text.
