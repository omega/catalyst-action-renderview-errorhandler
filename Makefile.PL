use inc::Module::Install;

name 'Catalyst-Action-RenderView-ErrorHandler';
all_from 'lib/Catalyst/Action/RenderView/ErrorHandler.pm';

build_requires 'Test::More';

requires 'Catalyst::Action::RenderView';

auto_install;

WriteAll;

