#!/usr/bin/env python
#
# FlatCAM uses Python 2.7, so this script was also designed for python 2.7

# Read each line of the gerber file
# If line starts with X, precede block by G36*
# If line doesn't start with X, end block with G37*
# remove X lines which end in D02

from __future__ import print_function

import argparse
import os
import sys

def main():
    """The main progam."""
    parser = argparse.ArgumentParser(
        prog="fill-edge-cut.py",
        usage="%(prog)s [options] gerber-file",
        description="Converts a polygon edge cut into a filled polygon edge cut"
    )
    parser.add_argument(
        "-d", "--debug",
        dest="debug",
        action="store_true",
        help="Turn on debugging",
        default=False
    )
    parser.add_argument(
        "gerber_filename",
        help="Name of the gerber file to process",
    )
    args = parser.parse_args(sys.argv[1:])

    if args.debug:
        print('debug =', args.debug)
        print('gerber_filename =', args.gerber_filename)

    gerber_root, gerber_ext = os.path.splitext(args.gerber_filename)
    filled_filename = gerber_root + '-filled' + gerber_ext

    print('filled_filename =', filled_filename)

    with open(args.gerber_filename, 'rb') as gerber_file:
        with open(filled_filename, 'wb') as filled_file:
            in_block = False
            for line in gerber_file:
                line = line.strip()
                if args.debug:
                    print('Line:', line)
                if line[0] == 'X':
                    if line[-4:] == 'D02*':
                        # Drop X lines that end in D02
                        continue
                    if not in_block:
                        print('G36*', file=filled_file)
                        in_block = True
                else:
                    if in_block:
                        print('G37*', file=filled_file)
                        in_block = False
                print(line, file=filled_file)
                        

main()


