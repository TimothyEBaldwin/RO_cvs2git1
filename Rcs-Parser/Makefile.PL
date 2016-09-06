use ExtUtils::MakeMaker;

WriteMakefile(
  ABSTRACT => "Parse and analyze RCS files",
  AUTHOR   => 'Phil Pollard <bennie@cpan.org>',
  LICENSE  => 'artistic_2',
  NAME     => 'Rcs::Parser',
  VERSION  => '0.08',

  PREREQ_PM => {
          'Test::More' => 0,
          'Sort::Versions' => 0,
          'Test::Simple' => '0'
        },

  ( $ExtUtils::MakeMaker::VERSION < 6.46
        ? ()
        : ( META_MERGE => {
                'meta-spec' => { version => 2 },
                no_index => {directory => [qw/t/]},
                provides => 

	{
          'Rcs::Parser' => {
                             'version' => '0.08',
                             'file' => 'lib/Rcs/Parser.pm'
                           }
        },

                release_status => 'stable',
                resources => {
                    repository => {
                        type => 'git',
                        url  => 'git://github.com/bennie/perl-Rcs-Parser.git',
                        web  => 'http://github.com/bennie/perl-Rcs-Parser',
                    },
                    bugtracker => {
                        web => 'https://rt.cpan.org/Dist/Display.html?Name=Rcs-Parser',
                    },

                },
            },
        )
    ),

  ( $ExtUtils::MakeMaker::VERSION < 6.48
        ? ()
        : ( MIN_PERL_VERSION => '5.006001' )
  )

);