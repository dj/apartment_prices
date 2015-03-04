#!/bin/sh
regex = '.txt'
for file in ./*
do
  if [[ file =~ $regex  ]];
  then
    echo "drawing $(file)"
    python draw_heatmap.py $file
    echo 'finished'
  else
    echo 'skipping'
  fi
done

