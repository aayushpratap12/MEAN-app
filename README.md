In this DevOps task, you need to build and deploy a full-stack CRUD application using the MEAN stack (MongoDB, Express, Angular 15, and Node.js). The backend will be developed with Node.js and Express to provide REST APIs, connecting to a MongoDB database. The frontend will be an Angular application utilizing HTTPClient for communication.  

The application will manage a collection of tutorials, where each tutorial includes an ID, title, description, and published status. Users will be able to create, retrieve, update, and delete tutorials. Additionally, a search box will allow users to find tutorials by title.

## Project setup

### Node.js Server

cd backend

npm install

You can update the MongoDB credentials by modifying the `db.config.js` file located in `app/config/`.

Run `node server.js`

### Angular Client

cd frontend

npm install

{"id":"53128","variant":"standard","title":"MEAN Stack App - Nginx + Docker Setup"}
#  MEAN Stack App – Deployed with Docker & Nginx on AWS EC2
##  Tech Stack Used

- Node.js
- Express.js
- MongoDB
- Mongo Express
- Docker & Docker Compose
- Nginx
- AWS EC2 (Ubuntu)
- Bootstrap
- DockerHub

---

##  Screenshots

###  Mongo Express Dashboard
![Mongo Express](screenshots/mongo-express.png)

###  Tutorials List Page
![Tutorials List](screenshots/tutorials-list.png)

###  Add Tutorial Page
![Add Tutorial](screenshots/add-tutorial.png)

---

##  Docker Containers Used

```
- backend (Node.js + Express)
- frontend (HTML/CSS)
- mongodb
- mongo-express
- nginx
```

##  How To Run This Project on Any System

### 1️. Clone the repo

```
git clone https://github.com/aayushpratap12/MEAN-app.git
cd MEAN-app
```

### 2️. Run Docker

```
docker-compose up --build -d
```

Wait for containers to start.

### 3️. Access app in browser

```
http://localhost
```

Mongo Express:
```
http://localhost:8081
```

---

##  NGINX Configuration (Reverse Proxy)

```nginx
server {
    listen 80;

    location / {
        proxy_pass http://localhost:8080;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }

    location /api {
        proxy_pass http://localhost:5000;
    }

    location /mongo {
        proxy_pass http://localhost:8081;
    }
}
```

### Restart NGINX

```
sudo nginx -t
sudo systemctl restart nginx
```

---


##  AWS EC2 Setup Summary

- Instance Type: t2.micro  
- OS: Ubuntu 22.04
- Ports Open: 80, 22, 8081, 5000
- Docker & Nginx installed
- Code pulled from GitHub
- Containers deployed using Docker Compose

---

---




