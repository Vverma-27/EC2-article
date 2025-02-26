#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ubuntu/my-express-app

#navigate into our working directory where we have all our github files
cd /home/ubuntu/my-express-app
npm i pm2 -g

pm2 stop my-express-app
#start our node app in the background
pm2 start app.js --name my-express-app