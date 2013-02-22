use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Data::Iterator::SlidingWindow',
    license             => 'perl',
    dist_author         => 'Hideaki Ohno <hide.o.j55 {at} gmail.com>',
    dist_version_from   => 'lib/Data/Iterator/SlidingWindow.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Data-Iterator-SlidingWindow-*' ],
);

$builder->create_build_script();
