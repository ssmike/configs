#!/bin/bash
gcc -march=native -Q --help=target | grep march | head -1
