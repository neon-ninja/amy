#!/usr/bin/env bash

# Semi-manual testing of command-line upload.

for i in upload-person-3.csv upload-person-3-dupname.csv upload-person-task-3.csv upload-empty-middle.csv upload-missing-email.csv upload-missing-family.csv upload-missing-personal-email.csv
do
    echo $i
    rm db.sqlite3
    make database
    python manage.py upload workshops/test/$i
    echo ""
done
