# Script create to rename all folders and remove white space
for file in *;
do
    NewName="$(echo $file | tr ' ' '-')";
    if [[ "$NewName" != "$file" ]]; then
        echo -e "Old File Name: $file, New File Name: $NewName"
	    mv $file $NewName
    else
        echo "Names match"
    fi
done
