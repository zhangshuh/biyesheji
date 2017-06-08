cd /var/www/html/onlineTest/
sudo python3 manage.py makemigrations
sudo python3 manage.py migrate
sudo python3 manage load_data
python3 manage.py loaddata init_data.json
sudo python3 manage.py createsuperuser
sudo python3 manage.py collectstatic
sudo a2ensite onlineTest
sudo service apache2 restart
sudo pkill -9 judged
sudo judged