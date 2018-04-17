read fileName
read lines
tail -n +2 $fileName | split -l $lines - diarias_
for file in diarias_*
do
    head -n 1 $fileName > tmp_file
    cat $file >> tmp_file
    mv -f tmp_file $file
done
