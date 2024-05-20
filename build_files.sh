 echo "BUILD START. I will build myself"
 pip3 install django
 echo "Django is installed in the above line"
 pip3 install -r requirements.txt
 python3.9 manage.py collectstatic --noinput --clear
 echo "BUILD END"
