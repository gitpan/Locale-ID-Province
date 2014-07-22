package Locale::ID::Province;

use 5.010001;
use strict;
use warnings;
use Perinci::Sub::Gen::AccessTable 0.14 qw(gen_read_table_func);

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
                       list_id_provinces
               );

our %SPEC;

our $VERSION = '0.05'; # VERSION
our $DATE = '2014-07-22'; # DATE

# BEGIN FRAGMENT id=meta
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudang-data-interim/data/ind_province/meta.yaml
# src-revision: ef541a181f42b5ff05eb93f11df3478d75c99bdb
# revision-date: Fri Mar 23 11:23:36 2012 +0700
# generate-date: Fri Mar 23 14:19:31 2012
# generated-by: /mnt/home/s1/repos/gudang-data-interim/bin/gen-perl-meta-snippet
our $meta = {
  "fields" => {
    bps_code => {
      "index" => 0,
      "schema" => ["int*", { max => 99, min => 11 }],
      "sortable" => 1,
      "summary" => "BPS code",
      "summary.alt.lang.id_ID" => "Kode BPS",
      "unique" => 1,
    },
    eng_name => {
      "index" => 3,
      "schema" => ["str*", {}],
      "sortable" => 1,
      "summary" => "Name (in English)",
      "summary.alt.lang.id_ID" => "Nama (bahasa Inggris)",
      "unique" => 1,
    },
    ind_capital_name => {
      "index" => 4,
      "note" => "TODO link to locality_id",
      "schema" => ["str*"],
      "sortable" => 1,
      "summary" => "Capital name (Indonesian)",
      "summary.alt.lang.id_ID" => "Nama ibukota (bahasa Indonesia)",
    },
    ind_island_name => {
      "index" => 5,
      "note" => "TODO link to island_id",
      "schema" => ["str*", {}],
      "summary" => "Island (Indonesian)",
      "summary.alt.lang.id_ID" => "Pulau",
    },
    ind_name => {
      "index" => 2,
      "schema" => ["str*", {}],
      "sortable" => 1,
      "summary" => "Name (in Indonesian)",
      "summary.alt.lang.id_ID" => "Nama (bahasa Indonesia)",
      "unique" => 1,
    },
    iso3166_2_code => {
      "index" => 1,
      "schema" => ["str*", { match => "^[A-Z]{2}-[A-Z]{2}\$" }],
      "sortable" => 1,
      "summary" => "ISO 3166-2 code",
      "summary.alt.lang.id_ID" => "Kode ISO 3166-2",
      "unique" => 1,
    },
    tags => {
      "index" => 6,
      "schema" => ["str*"],
      "summary" => "Tag",
      "summary.alt.lang.id_ID" => "Tag",
    },
  },
  "pk" => "ind_name",
  "summary" => "Provinces in Indonesia",
  "summary.alt.lang.id_ID" => "Provinsi di Indonesia",
  "table_aliases.alt.lang.id_ID" => ["provinsi_ind"],
}
;
# END FRAGMENT id=meta
# BEGIN FRAGMENT id=data
# note: This section is generated by a script. Do not edit manually!
# src-file: /mnt/home/s1/repos/gudang-data-interim/data/ind_province/data.csv
# src-revision: a2f04185d567a2df0b6020b10189a5c060d22700
# revision-date: Wed Dec 14 12:57:27 2011 +0700
# generate-date: Fri Mar 23 14:19:31 2012
# generated-by: /mnt/home/s1/repos/gudang-data-interim/bin/gen-perl-data-snippet
our $data = [
    ['11','ID-AC','Aceh','Aceh','Banda Aceh','Sumatera','special territory'],
    ['12','ID-SU','Sumatera Utara','North Sumatra','Medan','Sumatera',''],
    ['13','ID-SB','Sumatera Barat','West Sumatra','Padang','Sumatera',''],
    ['14','ID-RI','Riau','Riau','Pekanbaru','Sumatera',''],
    ['15','ID-JA','Jambi','Jambi','Jambi','Sumatera',''],
    ['16','ID-SS','Sumatera Selatan','South Sumatra','Palembang','Sumatera',''],
    ['17','ID-BE','Bengkulu','Bengkulu','Bengkulu','Sumatera',''],
    ['18','ID-LA','Lampung','Lampung','Bandar Lampung','Sumatera',''],
    ['19','ID-BB','Kepulauan Bangka Belitung','Bangka Belitung Islands','Pangkal Pinang','Sumatera',''],
    ['21','ID-KR','Kepulauan Riau','Riau Islands','Tanjung Pinang','Sumatera',''],
    ['31','ID-JK','Daerah Khusus Ibukota Jakarta','Jakarta Special Capital Territory','Jakarta Pusat','Jawa','special territory,special capital territory,capital'],
    ['32','ID-JB','Jawa Barat','West Java','Bandung','Jawa',''],
    ['33','ID-JT','Jawa Tengah','Central Java','Semarang','Jawa',''],
    ['34','ID-YO','Daerah Istimewa Yogyakarta','Yogyakarta Special Territory','Yogyakarta','Jawa','special territory'],
    ['35','ID-JI','Jawa Timur','East Java','Surabaya','Jawa',''],
    ['36','ID-BT','Banten','Banten','Serang','Jawa',''],
    ['51','ID-BA','Bali','Bali','Denpasar','Bali',''],
    ['52','ID-NB','Nusa Tenggara Barat','West Nusa Tenggara','Mataram','Nusa Tenggara',''],
    ['53','ID-NT','Nusa Tenggara Timur','East Nusa Tenggara','Kupang','Nusa Tenggara',''],
    ['61','ID-KB','Kalimantan Barat','West Kalimantan','Pontianak','Kalimantan',''],
    ['62','ID-KT','Kalimantan Tengah','Central Kalimantan','Palangkaraya','Kalimantan',''],
    ['63','ID-KS','Kalimantan Selatan','South Kalimantan','Banjarmasin','Kalimantan',''],
    ['64','ID-KI','Kalimantan Timur','East Kalimantan','Samarinda','Kalimantan',''],
    ['71','ID-SA','Sulawesi Utara','North Sulawesi','Manado','Sulawesi',''],
    ['72','ID-ST','Sulawesi Tengah','Central Sulawesi','Palu','Sulawesi',''],
    ['73','ID-SN','Sulawesi Selatan','South Sulawesi','Makassar','Sulawesi',''],
    ['74','ID-SG','Sulawesi Tenggara','South East Sulawesi','Kendari','Sulawesi',''],
    ['75','ID-GO','Gorontalo','Gorontalo','Gorontalo','Sulawesi',''],
    ['76','ID-SR','Sulawesi Barat','West Sulawesi','Mamuju','Sulawesi',''],
    ['81','ID-MA','Maluku','Maluku','Ambon','Maluku',''],
    ['82','ID-MU','Maluku Utara','North Maluku','Sofifi','Maluku',''],
    ['91','ID-PB','Papua Barat','West Papua','Manokwari','Papua','special territory'],
    ['94','ID-PA','Papua','Papua','Jayapura','Papua','special territory'],
]
;
# END FRAGMENT id=data

my $res = gen_read_table_func(
    name => 'list_id_provinces',
    table_data => $data,
    table_spec => $meta,
    langs => ['en_US', 'id_ID'],
);
die "BUG: Can't generate func: $res->[0] - $res->[1]" unless $res->[0] == 200;

1;
# ABSTRACT: List of provinces in Indonesia

__END__

=pod

=encoding UTF-8

=head1 NAME

Locale::ID::Province - List of provinces in Indonesia

=head1 VERSION

This document describes version 0.05 of Locale::ID::Province (from Perl distribution Locale-ID-Province), released on 2014-07-22.

=head1 SYNOPSIS

 use Locale::ID::Province qw(list_id_provinces);
 my $res = list_id_provinces();

=head1 DESCRIPTION

This module provides API access for list of provinces in Indonesia. Data is
currently retrieved from the B<gudang-data-interim> repository at
https://github.com/sharyanto/gudang-data-interim/tree/master/data/ind_province/

This module's functions has L<Rinci> specs.

=head1 FUNCTIONS

None are exported by default, but they are exportable.


=head2 list_id_provinces(%args) -> [status, msg, result, meta]

Provinces in Indonesia.

REPLACE ME

Arguments ('*' denotes required arguments):

=over 4

=item * B<bps_code> => I<int>

Only return records where the 'bps_code' field equals specified value.

=item * B<bps_code.in> => I<array>

Only return records where the 'bps_code' field is in the specified values.

=item * B<bps_code.is> => I<int>

Only return records where the 'bps_code' field equals specified value.

=item * B<bps_code.isnt> => I<int>

Only return records where the 'bps_code' field does not equal specified value.

=item * B<bps_code.max> => I<int>

Only return records where the 'bps_code' field is less than or equal to specified value.

=item * B<bps_code.min> => I<int>

Only return records where the 'bps_code' field is greater than or equal to specified value.

=item * B<bps_code.not_in> => I<array>

Only return records where the 'bps_code' field is not in the specified values.

=item * B<bps_code.xmax> => I<int>

Only return records where the 'bps_code' field is less than specified value.

=item * B<bps_code.xmin> => I<int>

Only return records where the 'bps_code' field is greater than specified value.

=item * B<detail> => I<bool> (default: 0)

Return array of full records instead of just ID fields.

By default, only the key (ID) field is returned per result entry.

=item * B<eng_name> => I<str>

Only return records where the 'eng_name' field equals specified value.

=item * B<eng_name.contains> => I<str>

Only return records where the 'eng_name' field contains specified text.

=item * B<eng_name.in> => I<array>

Only return records where the 'eng_name' field is in the specified values.

=item * B<eng_name.is> => I<str>

Only return records where the 'eng_name' field equals specified value.

=item * B<eng_name.isnt> => I<str>

Only return records where the 'eng_name' field does not equal specified value.

=item * B<eng_name.max> => I<str>

Only return records where the 'eng_name' field is less than or equal to specified value.

=item * B<eng_name.min> => I<str>

Only return records where the 'eng_name' field is greater than or equal to specified value.

=item * B<eng_name.not_contains> => I<str>

Only return records where the 'eng_name' field does not contain specified text.

=item * B<eng_name.not_in> => I<array>

Only return records where the 'eng_name' field is not in the specified values.

=item * B<eng_name.xmax> => I<str>

Only return records where the 'eng_name' field is less than specified value.

=item * B<eng_name.xmin> => I<str>

Only return records where the 'eng_name' field is greater than specified value.

=item * B<fields> => I<array>

Select fields to return.

=item * B<ind_capital_name> => I<str>

Only return records where the 'ind_capital_name' field equals specified value.

=item * B<ind_capital_name.contains> => I<str>

Only return records where the 'ind_capital_name' field contains specified text.

=item * B<ind_capital_name.in> => I<array>

Only return records where the 'ind_capital_name' field is in the specified values.

=item * B<ind_capital_name.is> => I<str>

Only return records where the 'ind_capital_name' field equals specified value.

=item * B<ind_capital_name.isnt> => I<str>

Only return records where the 'ind_capital_name' field does not equal specified value.

=item * B<ind_capital_name.max> => I<str>

Only return records where the 'ind_capital_name' field is less than or equal to specified value.

=item * B<ind_capital_name.min> => I<str>

Only return records where the 'ind_capital_name' field is greater than or equal to specified value.

=item * B<ind_capital_name.not_contains> => I<str>

Only return records where the 'ind_capital_name' field does not contain specified text.

=item * B<ind_capital_name.not_in> => I<array>

Only return records where the 'ind_capital_name' field is not in the specified values.

=item * B<ind_capital_name.xmax> => I<str>

Only return records where the 'ind_capital_name' field is less than specified value.

=item * B<ind_capital_name.xmin> => I<str>

Only return records where the 'ind_capital_name' field is greater than specified value.

=item * B<ind_island_name> => I<str>

Only return records where the 'ind_island_name' field equals specified value.

=item * B<ind_island_name.contains> => I<str>

Only return records where the 'ind_island_name' field contains specified text.

=item * B<ind_island_name.in> => I<array>

Only return records where the 'ind_island_name' field is in the specified values.

=item * B<ind_island_name.is> => I<str>

Only return records where the 'ind_island_name' field equals specified value.

=item * B<ind_island_name.isnt> => I<str>

Only return records where the 'ind_island_name' field does not equal specified value.

=item * B<ind_island_name.max> => I<str>

Only return records where the 'ind_island_name' field is less than or equal to specified value.

=item * B<ind_island_name.min> => I<str>

Only return records where the 'ind_island_name' field is greater than or equal to specified value.

=item * B<ind_island_name.not_contains> => I<str>

Only return records where the 'ind_island_name' field does not contain specified text.

=item * B<ind_island_name.not_in> => I<array>

Only return records where the 'ind_island_name' field is not in the specified values.

=item * B<ind_island_name.xmax> => I<str>

Only return records where the 'ind_island_name' field is less than specified value.

=item * B<ind_island_name.xmin> => I<str>

Only return records where the 'ind_island_name' field is greater than specified value.

=item * B<ind_name> => I<str>

Only return records where the 'ind_name' field equals specified value.

=item * B<ind_name.contains> => I<str>

Only return records where the 'ind_name' field contains specified text.

=item * B<ind_name.in> => I<array>

Only return records where the 'ind_name' field is in the specified values.

=item * B<ind_name.is> => I<str>

Only return records where the 'ind_name' field equals specified value.

=item * B<ind_name.isnt> => I<str>

Only return records where the 'ind_name' field does not equal specified value.

=item * B<ind_name.max> => I<str>

Only return records where the 'ind_name' field is less than or equal to specified value.

=item * B<ind_name.min> => I<str>

Only return records where the 'ind_name' field is greater than or equal to specified value.

=item * B<ind_name.not_contains> => I<str>

Only return records where the 'ind_name' field does not contain specified text.

=item * B<ind_name.not_in> => I<array>

Only return records where the 'ind_name' field is not in the specified values.

=item * B<ind_name.xmax> => I<str>

Only return records where the 'ind_name' field is less than specified value.

=item * B<ind_name.xmin> => I<str>

Only return records where the 'ind_name' field is greater than specified value.

=item * B<iso3166_2_code> => I<str>

Only return records where the 'iso3166_2_code' field equals specified value.

=item * B<iso3166_2_code.contains> => I<str>

Only return records where the 'iso3166_2_code' field contains specified text.

=item * B<iso3166_2_code.in> => I<array>

Only return records where the 'iso3166_2_code' field is in the specified values.

=item * B<iso3166_2_code.is> => I<str>

Only return records where the 'iso3166_2_code' field equals specified value.

=item * B<iso3166_2_code.isnt> => I<str>

Only return records where the 'iso3166_2_code' field does not equal specified value.

=item * B<iso3166_2_code.max> => I<str>

Only return records where the 'iso3166_2_code' field is less than or equal to specified value.

=item * B<iso3166_2_code.min> => I<str>

Only return records where the 'iso3166_2_code' field is greater than or equal to specified value.

=item * B<iso3166_2_code.not_contains> => I<str>

Only return records where the 'iso3166_2_code' field does not contain specified text.

=item * B<iso3166_2_code.not_in> => I<array>

Only return records where the 'iso3166_2_code' field is not in the specified values.

=item * B<iso3166_2_code.xmax> => I<str>

Only return records where the 'iso3166_2_code' field is less than specified value.

=item * B<iso3166_2_code.xmin> => I<str>

Only return records where the 'iso3166_2_code' field is greater than specified value.

=item * B<q> => I<str>

Search.

=item * B<random> => I<bool> (default: 0)

Return records in random order.

=item * B<result_limit> => I<int>

Only return a certain number of records.

=item * B<result_start> => I<int> (default: 1)

Only return starting from the n'th record.

=item * B<sort> => I<str>

Order records according to certain field(s).

A list of field names separated by comma. Each field can be prefixed with '-' to
specify descending order instead of the default ascending.

=item * B<tags> => I<str>

Only return records where the 'tags' field equals specified value.

=item * B<tags.contains> => I<str>

Only return records where the 'tags' field contains specified text.

=item * B<tags.in> => I<array>

Only return records where the 'tags' field is in the specified values.

=item * B<tags.is> => I<str>

Only return records where the 'tags' field equals specified value.

=item * B<tags.isnt> => I<str>

Only return records where the 'tags' field does not equal specified value.

=item * B<tags.max> => I<str>

Only return records where the 'tags' field is less than or equal to specified value.

=item * B<tags.min> => I<str>

Only return records where the 'tags' field is greater than or equal to specified value.

=item * B<tags.not_contains> => I<str>

Only return records where the 'tags' field does not contain specified text.

=item * B<tags.not_in> => I<array>

Only return records where the 'tags' field is not in the specified values.

=item * B<tags.xmax> => I<str>

Only return records where the 'tags' field is less than specified value.

=item * B<tags.xmin> => I<str>

Only return records where the 'tags' field is greater than specified value.

=item * B<with_field_names> => I<bool>

Return field names in each record (as hash/associative array).

When enabled, function will return each record as hash/associative array
(field name => value pairs). Otherwise, function will return each record
as list/array (field value, field value, ...).

=back

Return value:

Returns an enveloped result (an array).

First element (status) is an integer containing HTTP status code
(200 means OK, 4xx caller error, 5xx function error). Second element
(msg) is a string containing error message, or 'OK' if status is
200. Third element (result) is optional, the actual result. Fourth
element (meta) is called result metadata and is optional, a hash
that contains extra information.

 (any)

=head1 SEE ALSO

L<list-id-provinces>

Gudang Data Interim project, https://github.com/sharyanto/gudang-data-interim/

This API will also be available on GudangAPI, http://gudangapi.com/

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Locale-ID-Province>.

=head1 SOURCE

Source repository is at L<https://github.com/sharyanto/perl-Locale-ID-Province>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Locale-ID-Province>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut