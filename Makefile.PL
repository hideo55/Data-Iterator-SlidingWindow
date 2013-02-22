use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Data::Iterator::SlidingWindow',
    AUTHOR        => 'Hideaki Ohno <hide.o.j55 {at} gmail.com>>',
    VERSION_FROM  => 'lib/Data/Iterator/SlidingWindow.pm',
    ABSTRACT_FROM => 'lib/Data/Iterator/SlidingWindow.pm',
    PL_FILES      => {},
    PREREQ_PM     => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'Data-Iterator-SlidingWindow-*' },
);

