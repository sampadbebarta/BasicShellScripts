#!/bin/bash

echo "Running forloop for filtering only txt files";
for files in `ls *.txt`;
do
      echo "Creating folder names from respective file names";
      folderName =`echo $files | awk -F. '{print $1}'`;

      echo "Creating folderName -->" $folderName;
      mkdir $folderName;
      echo "Folder Name is --> " $folderName;

      echo "Copying" $files " to "$folderName;
      cp $files $folderName;
      echo "File" $files " copied to " $folderName " folder"
done
