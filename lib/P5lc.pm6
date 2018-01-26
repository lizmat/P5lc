use v6.c;
unit class P5lc:ver<0.0.1>;

proto sub lc(|) is export {*}
multi sub lc(         --> Str:D) { (CALLERS::<$_>).lc }
multi sub lc(Str() $s --> Str:D) { $s.lc              }

=begin pod

=head1 NAME

P5lc - Implement Perl 5's lc() built-in

=head1 SYNOPSIS

  use P5lc;

  say lc "FOOBAR"; # foobar

  with "ZIPPO" {
      say lc();  # zippo, may need to use parens to avoid compilation error
  }

=head1 DESCRIPTION

This module tries to mimic the behaviour of the C<lc> of Perl 5 as closely as
possible.

=head1 AUTHOR

Elizabeth Mattijsen <liz@wenzperl.nl>

Source can be located at: https://github.com/lizmat/P5lc . Comments and
Pull Requests are welcome.

=head1 COPYRIGHT AND LICENSE

Copyright 2018 Elizabeth Mattijsen

Re-imagined from Perl 5 as part of the CPAN Butterfly Plan.

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
