package Locale::ID::Province;

use 5.010;
use strict;
use warnings;
use Sub::Spec::Gen::ReadTable qw(gen_read_table_func);

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
                       list_id_provinces
               );

our %SPEC;

# BEGIN IMPORT DATA
# src: /home/s1/proj/gdint/data/ind_province/data.csv
# revision: e1a96f6
# date: Wed Dec 14 12:21:04 2011 +0700
# imported-by: /home/s1/bin/csv2perl
my $data = [
    ['11','ID-AC','Aceh','Aceh','Banda Aceh','Sumatera','["special territory"]'],
    ['12','ID-SU','Sumatera Utara','North Sumatra','Medan','Sumatera',''],
    ['13','ID-SB','Sumatera Barat','West Sumatra','Padang','Sumatera',''],
    ['14','ID-RI','Riau','Riau','Pekanbaru','Sumatera',''],
    ['15','ID-JA','Jambi','Jambi','Jambi','Sumatera',''],
    ['16','ID-SS','Sumatera Selatan','South Sumatra','Palembang','Sumatera',''],
    ['17','ID-BE','Bengkulu','Bengkulu','Bengkulu','Sumatera',''],
    ['18','ID-LA','Lampung','Lampung','Bandar Lampung','Sumatera',''],
    ['19','ID-BB','Kepulauan Bangka Belitung','Bangka Belitung Islands','Pangkal Pinang','Sumatera',''],
    ['21','ID-KR','Kepulauan Riau','Riau Islands','Tanjung Pinang','Sumatera',''],
    ['31','ID-JK','Daerah Khusus Ibukota Jakarta','Jakarta Special Capital Territory','Jakarta Pusat','Jawa','["special territory", "special capital territory", "capital"]'],
    ['32','ID-JB','Jawa Barat','West Java','Bandung','Jawa',''],
    ['33','ID-JT','Jawa Tengah','Central Java','Semarang','Jawa',''],
    ['34','ID-YO','Daerah Istimewa Yogyakarta','Yogyakarta Special Territory','Yogyakarta','Jawa','["special territory"]'],
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
    ['91','ID-PB','Papua Barat','West Papua','Manokwari','Papua','["special territory"]'],
    ['94','ID-PA','Papua','Papua','Jayapura','Papua','["special territory"]'],
];
# END IMPORT DATA

# BEGIN IMPORT META
# src: /home/s1/proj/gdint/data/ind_province/meta.yaml
# revision: 071860a
# date: Wed Dec 14 11:11:24 2011 +0700
# imported-by: /home/s1/bin/yaml2dd
my $meta = {
  "columns" => {
    bps_code => [
      "int*",
      {
        "column_index"    => 0,
        "column_sortable" => 1,
        "column_unique"   => 1,
        "summary"         => "BPS code",
        "summary:ind"     => "Kode BPS",
      },
    ],
    eng_name => [
      "str*",
      {
        "column_index"    => 3,
        "column_sortable" => 1,
        "column_unique"   => 1,
        "summary"         => "Name (in English)",
        "summary:ind"     => "Nama (bahasa Inggris)",
      },
    ],
    ind_capital_name => [
      "str*",
      {
        "_note"           => "TODO link to locality_id",
        "column_index"    => 4,
        "column_sortable" => 1,
        "summary"         => "Capital name (Indonesian)",
        "summary:ind"     => "Nama ibukota (bahasa Indonesia)",
      },
    ],
    ind_island_name => [
      "str*",
      {
        "_note"        => "TODO link to island_id",
        "arg_pos"      => 7,
        "column_index" => 5,
        "ind_summary"  => "Pulau",
        "summary"      => "Island (Indonesian)",
        "summary:ind"  => "Pulau",
      },
    ],
    ind_name => [
      "str*",
      {
        "column_index"    => 2,
        "column_sortable" => 1,
        "column_unique"   => 1,
        "summary"         => "Name (in Indonesian)",
        "summary:ind"     => "Nama (bahasa Indonesia)",
      },
    ],
    iso3166_2_code => [
      "str*",
      {
        "column_index"    => 1,
        "column_sortable" => 1,
        "column_unique"   => 1,
        "match"           => "^[A-Z]{2}-[A-Z]{2}\$",
        "summary"         => "ISO 3166-2 code",
        "summary:ind"     => "Kode ISO 3166-2",
      },
    ],
    tags => [
      "str*",
      { "column_index" => 6, "summary:ind" => "Tag (bahasa Inggris)" },
    ],
  },
  "pk" => "ind_name",
  "summary" => "Provinces in Indonesia",
  "summary:ind" => "Provinsi di Indonesia",
  "table_aliases:ind" => ["provinsi_ind"],
};
# END IMPORT META

my $res = gen_read_table_func(
    table_data => $data,
    table_spec => $meta,
);

die "BUG: Can't generate func: $res->[0] - $res->[1]"
    unless $res->[0] == 200;

my $spec = $res->[2]{spec};
$SPEC{list_id_provinces} = $spec;
no warnings;
*list_id_provinces = $res->[2]{code};
use warnings;

1;


=pod

=head1 NAME

Locale::ID::Province - List of provinces in Indonesia

=head1 VERSION

version 0.01

=head1 SYNOPSIS

 use Locale::ID::Province qw(list_id_provinces);
 my $res = list_id_provinces();

=head1 DESCRIPTION

This module provides API access for list of provinces in Indonesia. Data is
currently retrieved from the B<gudang-data-interim> repository at
https://github.com/sharyanto/gudang-data-interim/tree/master/data/ind_province/

This module's functions has L<Sub::Spec> specs.

=head1 FUNCTIONS

None are exported by default, but they are exportable.

=head2 list_id_provinces(%args) -> [STATUS_CODE, ERR_MSG, RESULT]


Returns a 3-element arrayref. STATUS_CODE is 200 on success, or an error code
between 3xx-5xx (just like in HTTP). ERR_MSG is a string containing error
message, RESULT is the actual result.

Field selection arguments (C<*> denotes required arguments):

=over 4

=item * B<detail> => I<bool> (default C<0>)

Return detailed data (all fields).

=item * B<fields> => I<array>

Select fields to return.

=item * B<show_field_names> => I<bool>

Show field names in result (as hash/assoc).

When off, will return an array of values without field names (array/list). When
on, will return an array of field names and values (hash/associative array).

=back

Filter arguments:

=over 4

=item * B<q> => I<str>

Search.

=back

Filter for bps_code arguments:

=over 4

=item * B<bps_code> => I<int>

Only return results having certain value of bps_code.

=item * B<max_bps_code> => I<int>

Only return results having a certain maximum value of bps_code.

=item * B<min_bps_code> => I<int>

Only return results having a certain minimum value of bps_code.

=back

Filter for eng_name arguments:

=over 4

=item * B<eng_name> => I<str>

Only return results having certain value of eng_name.

=item * B<eng_name_contain> => I<str>

Only return results with eng_name containing certain text.

=item * B<eng_name_match> => I<str>

Only return results with eng_name matching specified regex.

=item * B<eng_name_not_contain> => I<str>

Only return results with eng_name not containing certain text.

=item * B<eng_name_not_match> => I<str>

Only return results with eng_name matching specified regex.

=item * B<max_eng_name> => I<str>

Only return results having a certain maximum value of eng_name.

=item * B<min_eng_name> => I<str>

Only return results having a certain minimum value of eng_name.

=back

Filter for ind_capital_name arguments:

=over 4

=item * B<ind_capital_name> => I<str>

Only return results having certain value of ind_capital_name.

=item * B<ind_capital_name_contain> => I<str>

Only return results with ind_capital_name containing certain text.

=item * B<ind_capital_name_match> => I<str>

Only return results with ind_capital_name matching specified regex.

=item * B<ind_capital_name_not_contain> => I<str>

Only return results with ind_capital_name not containing certain text.

=item * B<ind_capital_name_not_match> => I<str>

Only return results with ind_capital_name matching specified regex.

=item * B<max_ind_capital_name> => I<str>

Only return results having a certain maximum value of ind_capital_name.

=item * B<min_ind_capital_name> => I<str>

Only return results having a certain minimum value of ind_capital_name.

=back

Filter for ind_island_name arguments:

=over 4

=item * B<ind_island_name> => I<str>

Only return results having certain value of ind_island_name.

=item * B<ind_island_name_contain> => I<str>

Only return results with ind_island_name containing certain text.

=item * B<ind_island_name_match> => I<str>

Only return results with ind_island_name matching specified regex.

=item * B<ind_island_name_not_contain> => I<str>

Only return results with ind_island_name not containing certain text.

=item * B<ind_island_name_not_match> => I<str>

Only return results with ind_island_name matching specified regex.

=item * B<max_ind_island_name> => I<str>

Only return results having a certain maximum value of ind_island_name.

=item * B<min_ind_island_name> => I<str>

Only return results having a certain minimum value of ind_island_name.

=back

Filter for ind_name arguments:

=over 4

=item * B<ind_name> => I<str>

Only return results having certain value of ind_name.

=item * B<ind_name_contain> => I<str>

Only return results with ind_name containing certain text.

=item * B<ind_name_match> => I<str>

Only return results with ind_name matching specified regex.

=item * B<ind_name_not_contain> => I<str>

Only return results with ind_name not containing certain text.

=item * B<ind_name_not_match> => I<str>

Only return results with ind_name matching specified regex.

=item * B<max_ind_name> => I<str>

Only return results having a certain maximum value of ind_name.

=item * B<min_ind_name> => I<str>

Only return results having a certain minimum value of ind_name.

=back

Filter for iso3166_2_code arguments:

=over 4

=item * B<iso3166_2_code> => I<str>

Only return results having certain value of iso3166_2_code.

=item * B<iso3166_2_code_contain> => I<str>

Only return results with iso3166_2_code containing certain text.

=item * B<iso3166_2_code_match> => I<str>

Only return results with iso3166_2_code matching specified regex.

=item * B<iso3166_2_code_not_contain> => I<str>

Only return results with iso3166_2_code not containing certain text.

=item * B<iso3166_2_code_not_match> => I<str>

Only return results with iso3166_2_code matching specified regex.

=item * B<max_iso3166_2_code> => I<str>

Only return results having a certain maximum value of iso3166_2_code.

=item * B<min_iso3166_2_code> => I<str>

Only return results having a certain minimum value of iso3166_2_code.

=back

Filter for tags arguments:

=over 4

=item * B<max_tags> => I<str>

Only return results having a certain maximum value of tags.

=item * B<min_tags> => I<str>

Only return results having a certain minimum value of tags.

=item * B<tags> => I<str>

Only return results having certain value of tags.

=item * B<tags_contain> => I<str>

Only return results with tags containing certain text.

=item * B<tags_match> => I<str>

Only return results with tags matching specified regex.

=item * B<tags_not_contain> => I<str>

Only return results with tags not containing certain text.

=item * B<tags_not_match> => I<str>

Only return results with tags matching specified regex.

=back

Order arguments:

=over 4

=item * B<random> => I<bool> (default C<0>)

If on, return result in random order.

=item * B<sort> => I<str>

Order data according to certain fields.

A list of field names separated by comma. Each field can be prefixed with '-' to
specify descending order instead of the default ascending.

=back

Paging arguments:

=over 4

=item * B<result_limit> => I<int>

Only return a certain number of results.

=item * B<result_start> => I<int> (default C<1>)

Only return results from a certain position.

=back

=head1 SEE ALSO

L<list-id-provinces>

Gudang Data Interim project, https://github.com/sharyanto/gudang-data-interim/

This API will also be available on GudangAPI, http://gudangapi.com/

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__
# ABSTRACT: List of provinces in Indonesia

