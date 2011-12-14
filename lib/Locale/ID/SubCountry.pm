package Locale::ID::SubCountry;
use Locale::ID::Province;
our @ISA       = @Locale::ID::Province::ISA;
our @EXPORT    = @Locale::ID::Province::EXPORT;
our @EXPORT_OK = @Locale::ID::Province::EXPORT_OK;
our %SPEC      = %Locale::ID::Province::SPEC;
for my $f (keys %SPEC) {
    *{$f} = \&{"Locale::ID::Province::$f"};
}

1;
# ABSTRACT: Alias for Locale::ID::Province

__END__
=pod

=head1 NAME

Locale::ID::SubCountry - Alias for Locale::ID::Province

=head1 VERSION

version 0.01

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

