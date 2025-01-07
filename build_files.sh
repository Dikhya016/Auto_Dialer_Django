#!/bin/bash

echo "BUILD START. I will build myself"

# Check if requirements.txt exists
if [ -f "requirements.txt" ]; then
    echo "Installing dependencies from requirements.txt"
    pip3 install -r requirements.txt
else
    echo "requirements.txt not found, installing Django separately"
    pip3 install django
fi

# Collect static files
echo "Collecting static files"
python3.9 manage.py collectstatic --noinput --clear

echo "BUILD END"
