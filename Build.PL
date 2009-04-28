# $Id: Build.PL,v 1.1 2009/04/28 02:16:26 asc Exp $

use strict;
use Module::Build;

my $build = Module::Build->new(module_name => 'Net::XMPP:Simple',
			       # dist_author
			       # dist_abstract
			       dist_version_from => 'lib/Net/XMPP/Simple.pm',
			       license           => 'perl',
			       requires => {
				   'Net::XMPP'  => '0',
			       },
			       build_requires => {
				   'Test::Simple'              => '>= 0.47',
			       },
			       create_readme      => 1,
			       create_makefile_pl => 'passthrough');

$build->create_build_script();
