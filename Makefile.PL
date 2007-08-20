use inc::Module::Install;

name 'Catalyst-Action-RenderView-ErrorHandler';
all_from 'lib/Catalyst/Action/RenderView/ErrorHandler.pm';

build_requires 'Test::More';
build_requires 'Text::Diff';
build_requires 'FindBin';
build_requires 'Catalyst::Runtime';
build_requires 'HTTP::Request';

requires 'Catalyst::Action::RenderView';
requires 'Moose';
requires 'Catalyst::View::TT' => '0.25';
requires 'Class::Inspector';

auto_install;

WriteAll;

