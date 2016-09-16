#!/usr/bin/env python
#
# FlatCAM draw the bottom layer as if it were a top layer, so we have
# some simple gcode which will mirror the X axis about the origin.

from __future__ import print_function

import argparse
import os
import sys

def main():
    """The main progam."""
    parser = argparse.ArgumentParser(
        prog="mirror-gcode.py",
        usage="%(prog)s [options] gcode-file",
        description="Mirrors a gcode file in the X-axis about the origin"
    )
    parser.add_argument(
        "-d", "--debug",
        dest="debug",
        action="store_true",
        help="Turn on debugging",
        default=False
    )
    parser.add_argument(
        "gcode_filename",
        help="Name of the gcode file to mirror",
    )
    args = parser.parse_args(sys.argv[1:])

    if args.debug:
        print('debug =', args.debug)
        print('gcode_filename =', args.gcode_filename)

    gcode_root, gcode_ext = os.path.splitext(args.gcode_filename)
    mirrored_filename = gcode_root + '-mirrored' + gcode_ext

    print('mirrored_filename =', mirrored_filename)

    with open(args.gcode_filename, 'rb') as gcode_file:
        with open(mirrored_filename, 'wb') as  mirrored_file:
            in_block = False
            for line in gcode_file:
                line = line.strip()
                if args.debug:
                    print('Line:', line)
                line = line.replace('X-', '%')
                line = line.replace('X', 'X-')
                line = line.replace('%', 'X')
                print(line, file=mirrored_file)
                        

main()


