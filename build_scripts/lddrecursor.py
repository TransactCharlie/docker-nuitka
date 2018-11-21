#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import subprocess
import sys


def get_linkages(filename):
    libs = []
    p = subprocess.Popen(["ldd", filename], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    result = p.stdout.readlines()

    for byte_line in result:
        line = byte_line.decode("utf-8").strip()

        s = line.split()
        if line == "statically linked":
            continue

        if '=>' in line:
            if len(s) == 3:  # virtual library
                continue
            else:
                libs.append(s[2].strip())
        else:
            if len(s) == 2:
                libs.append(s[0].strip())

    return libs


def recurse_links(filename, all_libs: set()):
    for lib in get_linkages(filename):
        if lib not in all_libs:
            all_libs.add(lib)
            recurse_links(lib, all_libs)


if __name__ == "__main__":
    f = sys.argv[1]
    found_libs = set([])
    recurse_links(f, found_libs)
    for lib in found_libs:
        print(lib)
