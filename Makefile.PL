use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'ttycolor',
    AUTHOR              => q{Magnus Woldrich <trapd00r@trapd00r.se>},
    VERSION_FROM        => './ttycolor',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    EXE_FILES =>           ['ttycolor'],
    PREREQ_PM => {
        'Term::ExtendedColor::TTY' => 0.002,
        'Term::ExtendedColor::TTY::Colorschemes' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'ttycolor-*' },
);
