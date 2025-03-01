use strict;
use Test::More;
use Config;
if(!$Config{taint_disabled}) {
    exec(
        $^X, '-T',
        (map { "-I$_" } @INC),
        't/07_taint.pl'
    );
} else {
    plan skip_all => 'Test not relevant on a perl built without taint support';
}
