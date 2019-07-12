# Test-doc of Perl 6

[![artistic](https://img.shields.io/badge/license-Artistic%202.0-blue.svg?style=flat)](https://opensource.org/licenses/Artistic-2.0)

This is only a modified subset of the actual [documentation](https://github.com/perl6/doc).
The main purpose of this repo is to be used to test changes in a fast way.

#### Notes

If you have changed some of the Pod6 files you need to update the `previous-links.txt` file
with the new changes.

## Features check list

The next list shows all characteristics that pod files in `test-doc` should have:

### Definitions related

- [x] Headings like `=head2 The something operator`
- [x] Headings like `=head2 The C<something> operator`
- [x] Headings like `=head2 Infix foo`
- [x] Headings like `=head2 Infix C<foo>`
- [x] Headings like `=head2 trait Indix Foo`
- [x] Unambiguous headings => `=head2 X<something|something>`
- [x] All kinds of FormattingCodes check they are ignored(`=head2 L<aa|aa>`, `=head2 B<aa|aa>`, ...).

### Nested definitions

- [x] scope detection:

  ```
  =head2 valid definition #1

  Some text. Definition #1 content should reach up to this point.

  =head2 valid definition #2
  ```

- [x] Nested definitions:

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

- [x] Whatever reference element in some pod => `X<some|reference>`
- [x] Multireferences => `X<some|reference1;reference2>`

### Site generation

- [x] All menus in the doc site should have at least one element.
  - [x] Language
  - [x] Types
    - [x] Basic
    - [x] One composite type
    - [x] Domain-specific type
    - [x] Exceptions
  - [x] Routines
  - [x] Programs

### Composing Types

Routines from other types are added to complete the pods:

- [x] Routines by role
- [x] Routines by class
- [x] Routines by a role done by a parent class

# LICENSE

The code in this repository is available under the Artistic License 2.0
as published by The Perl Foundation. See the [LICENSE](LICENSE) file for the full
text.

```

```
