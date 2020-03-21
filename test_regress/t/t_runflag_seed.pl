#!/usr/bin/perl
if (!$::Driver) { use FindBin; exec("$FindBin::Bin/bootstrap.pl", @ARGV, $0); die; }
# DESCRIPTION: Verilator: Verilog Test driver/expect definition
#
# Copyright 2003 by Wilson Snyder. This program is free software; you
# can redistribute it and/or modify it under the terms of either the GNU
# Lesser General Public License Version 3 or the Perl Artistic License
# Version 2.0.
# SPDX-License-Identifier: LGPL-3.0-only OR Artistic-2.0

scenarios(vlt_all => 1);

compile(
    );

execute(
    all_run_flags => ["+verilator+seed+5 +SEED=fffffff4"],
    fails => 0,
    );

execute(
    all_run_flags => ["+verilator+seed+6 +SEED=fffffff2"],
    fails => 0,
    );

ok(1);

1;
