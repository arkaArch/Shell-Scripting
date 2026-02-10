#!/bin/bash
cd $HOME/Music

echo "Total mp3 files in Music directory (also its subdirectory):"
find . -name "*.mp3" | wc -l

echo "Number of different file types in Music directory (also its subdirectory):"
find . -type f | perl -ne 'print $1 if m/\.([^.\/]+)$/' | sort | uniq -c | sort -rn

echo "Files which match *.mp3 and are of size zero"
find . -name '*.mp3' -size 0

