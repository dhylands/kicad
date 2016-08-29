#!/usr/bin/env python
#
# Renames the gerber files to match those required by:
#   http://dangerousprototypes.com/store/pcbs
#
# Basically rename gm1 to gml and drl to txt

from __future__ import print_function

import argparse
import glob
import os
import sys

def main():
    """The main progam."""
    parser = argparse.ArgumentParser(
        prog="rename-gerbers.py",
        usage="%(prog)s [options] [directory]",
        description="Renames gerber files for DirtyPCBs"
    )
    parser.add_argument(
        "-d", "--debug",
        dest="debug",
        action="store_true",
        help="Turn on debugging",
        default=False
    )
    parser.add_argument(
        "directory",
        help="Name of directory to process",
        nargs='?',
        default='.'
    )
    args = parser.parse_args(sys.argv[1:])

    if args.debug:
        print('debug =', args.debug)
        print('directory =', args.directory)

    for filename in glob.glob(args.directory + '/*'):
        filebase, ext = os.path.splitext(filename)
        if ext == '.gm1':
            ext = '.gml'
        elif ext == '.drl':
            ext = '.txt'
        new_name = filebase + ext
        if new_name != filename:
            print("Renaming '{}' to '{}'".format(filename, new_name));
            os.rename(filename, new_name)

main()


