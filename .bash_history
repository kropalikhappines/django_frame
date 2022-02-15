exit
curl http://127.0.0.1:8000
sudo nano /etc/systemd/system/gunicorn.service
sudo chown -R django:www-data /home/django/geekshop
ssh-keygen -t rsa -b 4096 -C "arsik30394@gmail.com"
ls -lah
touch ~/.ssh/authorized_keys
cat ~/.ssh/id_rsa.pub
nano ~/.ssh/authorized_keys
pip install --no-cache-dir -U psycopg2-binary
useradd -g www-data -m django
sudo apt update && sudo apt upgrade -y && sudo apt-get install -y postgresql postgresql-contrib
sudo -u postgres psql
pg_ctlcluster 12 main start
systemctl status postgresql
cd /home/django/
sudo apt install -y python3-venv
ls -la
python3 -m venv venv
ls -la
source ./venv/bin/activate
cd /home/django/geekshop/
pip install --no-cache-dir -r ./requirements.txt
gunicorn geekshop.wsgi
sudo systemctl enable gunicorn
sudo systemctl start gunicorn
sudo systemctl status gunicorn
sudo apt install -y nginx
sudo nano /etc/nginx/sites-available/geekshop
sudo ln -s /etc/nginx/sites-available/geekshop /etc/nginx/sites-enabled/geekshop
sudo nginx -t
sudo systemctl restart nginx
sudo systemctl status nginx
export DJANGO_PRODUCTION=1; python manage.py migrate
python manage.py collectstatic
