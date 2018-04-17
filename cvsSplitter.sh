echo "File name: "
read fileName
echo "Number of lines: "
read lines
mkdir $fileName
tail -n +2 ${fileName}.csv | split -l $lines - ${fileName}_
for file in ${fileName}_*
do
    head -n 1 ${fileName}.csv > tmp_file
    cat $file >> tmp_file
    mv -f tmp_file $file
    mv $file ${fileName}/${file}.csv
done
