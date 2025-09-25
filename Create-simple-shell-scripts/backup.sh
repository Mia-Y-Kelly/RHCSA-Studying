#!/bin/bash

echo "Please enter the absolute path to the directory you wish to backup: "
read dir

cd $dir
mkdir -p backup
ls > contents.tmp

whle read -r file; do
    echo $file | grep .txt > /dev/null
    if [ $? -eq 0 ]; then
        no_extension=$(echo $file | sed "s/.txt//g")
        echo "Making a backup of $file called $no_extension.bak"
        cp "$no_extension".txt "$no_extension".bak
        mv "$no_extension".bak $dir/backup/
    else
        echo "$file is not a txt file...not backing up this file"
    fi
done < contents.tmp
rm contents.tmp

echo "Backups contents: "
ls -lh $dir/backup
rm $dir/backup/*