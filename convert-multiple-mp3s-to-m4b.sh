for f in *.mp3; do echo "file '$f'" >> inputs.txt; done
ffmpeg -f concat -safe 0 -i inputs.txt -c copy output.mp3
ffmpeg -i output.mp3 output.m4a
mv output.m4a output.m4b