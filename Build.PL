use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    name               => 'Data-Iterator-SlidingWindow',
    module_name        => 'Data::Iterator::SlidingWindow',
    dist_author        => 'Hideaki Ohno<hide.o.j55@gmail.com>',
    license            => 'perl',
    configure_requires => { 'Module::Build' => '0.38' },
    build_requires     => {
        'Test::More'  => '0.98',
        'Test::Fatal' => '0.008',
    },
    requires => {
        'parent'   => 0,
        'Exporter' => 0,
    },
    no_index => { 'directory' => [ 't', 'xt', 'inc', 'eg' ] },
    test_files => ( -d '.git' || $ENV{RELEASE_TESTING} ) ? [qw(t/ xt/)] : ['t/'],
    create_makefile_pl => 'small',
    create_readme      => 1,
    add_to_cleanup     => ['Data-Iterator-SlidingWindow-*'],
    meta_merge         => {
        keywords  => ['Sliding Window'],
        resources => {
            repository => 'git://github.com/hideo55/Data-Iterator-SlidingWindow.git',
            bugtracker => 'https://github.com/hideo55/Data-Iterator-SlidingWindow/issues',
        },
    },
);

$builder->create_build_script();
