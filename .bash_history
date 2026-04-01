ls
ls -a
sudo apt update
clear
sudo adduser devuser
sudo -aG sudo devuser
clear
users
group
groups
sudo adduser devuser
sudo usermod -aG wheel devuser
sudo usermod -aG sudo devuser
sudo usermod -aG wheel devuser
sudo groupadd appgroup
sudo usermod -aG appgroup devuser
# Create the directory if it does not already exist
sudo mkdir -p /opt/apps
# Change the group ownership to appgroup
sudo chown :appgroup /opt/apps
# Set permissions: Read, Write, Execute for owner and group; no access for others
sudo chmod 770 /opt/apps
groups devuser
ls -ld /opt/apps
history
touch history >> file.txt
ls
cat file.txt 
touch history >> file.txt
touch "history" >> file.txt
cat file.txt 
history > file.txt
cat file.txt 
vim hello.py
cat hello.py 
python
sudo apt install python3
python
python hello.py 
clear
ls
cat hello.py 
git init
ls -ld /opt/apps/
git remote add origin https://github.com/Taneshbad/NGINX_TASK.git
git add .
git commit -m "files added"
git config --global --edit
git commit --amend --reset-author 
git push origin master
sudo mkdir -p /opt/apps/app1 /opt/apps/app2
sudo chown -R devuser:appgroup /opt/apps/app1 /opt/apps/app2
chown -R 770 /opt/apps/app1 /opt/apps/app2
sudo chmod -R 770 /opt/apps/app1 /opt/apps/app2
su - devuser 
sudo su - devuser 
[200~cat /opt/apps/app1/config.txt
cat /opt/apps/app1/config.txt
history
sudo su - devuser 
clear
sudo su - devuser 
sudo apt install nginx
sudo apt update -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status ngin
sudo systemctl status nginx
sudo dnf update -y
sudo dnf install nginx -y
sudo amazon-linux-extras install nginx1 -y
sudo yum install nginx -y
sudo apt update -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx
sudo tail -f /var/nginx/access.log
sudo ufw allow 'Nginx HTTP'
[200~sudo tail -f /var/log/nginx/access.log~
sudo tail -f /var/log/nginx/access.log
sudo tail -f /var/log/nginx/error.log
sudo tail -f /var/log/nginx/access.log 
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx
sudo journalctl -u nginx --no-pager | tail -n 50
sudo tail /var/log/nginx/access.log 
sudo tail -f /var/log/nginx/access.log 
sudo tail -n 50 -f /var/log/nginx/access.log
cat /var/log/nginx/access.log 
sudo tail -n 50 -f /var/log/nginx/access.log
sudo systemctl status nginx
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl restart
sudo systemctl restart nginx
while true; do echo -e "HTTP/1.1 200 OK\n\nWelcome to App 1 on Port 3001" | nc -l -p 3001; done
curl http://localhost/app1
sudo nano /etc/nginx/sites-available/default
sudo systemctl restart nginx
sudo nginx -t
[200~sudo tail -n 20 /var/log/nginx/error.log
~sudo tail -n 20 /var/log/nginx/error.log
sudo tail -n 20 /var/log/nginx/error.log
nc
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl reload nginx
curl -I http://localhost/app1
[200~sudo nano /etc/nginx/sites-available/default
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl reload nginx
sudo nano /etc/nginx/sites-available/default
sudo systemctl reload nginx
while true; do echo -e "HTTP/1.1 200 OK\n\nWelcome to App 2 on Port 3002" | nc -l -p 3002; done
sudo nginx -t
sudo systemctl restart nginx
echo "<h1>WELCOME TO MY NGINX</h1>" | sudo tee /var/www/html/index.nginx-debian.html
while true; do echo -e "HTTP/1.1 200 OK\n\nWelcome to App 1 on Port 3001" | nc -l -p 3001; done
while true; do echo -e "HTTP/1.1 200 OK\n\nWelcome to App 2 on Port 3002" | nc -l -p 3002; done
while true; do (echo -e "HTTP/1.1 200 OK\nContent-Type: text/plain\nContent-Length: 29\nConnection: close\n\nWelcome to App 1 on Port 3001") | nc -l -p 3001 -q 1; done
while true; do (echo -e "HTTP/1.1 200 OK\nContent-Type: text/plain\nContent-Length: 29\nConnection: close\n\nWelcome to App 1 on Port 3001") | nc -l -p 3001 -q 1; done
while true; do (echo -e "HTTP/1.1 200 OK\nContent-Type: text/plain\nContent-Length: 29\nConnection: close\n\nWelcome to App 2 on Port 3002") | nc -l -p 3002 -q 1; done
