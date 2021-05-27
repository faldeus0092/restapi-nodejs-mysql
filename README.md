# project-2-faldeus0092
https://employee-app-faldeus0092.herokuapp.com/auth

This API is a simulation of organizing employee's salaries within company. All data on this API are purely fictional, and only created for learning purposes.
Supports restful CRUD API and authorization over JWT tokens.

Created by Gavin Bagus (05311940000028) for fulfilling Integrative Programming final project.

## Installation Guide
1. Clone this repo
```git clone https://github.com/2021-IT-Pemrograman-Integratif/project-2-faldeus0092.git``` (this repo proprably private'd for classroom purpose, will change later)
2. Install the npm packages
```npm install```
3. Use the database provided on [restapidb.sql](sql/restapidb.sql) and configure [db.config.js](config/db.config.js) wether you want to run it on either localhost or your own deployed app
```
module.exports = {
    HOST: "your-db-host",
    USER: "your-username",
    PASSWORD: "your-password",
    DB: "your-db-name"
};
```
5. Run the app
```node server```

If you want to host this by yourself, i suggest following [this tutorial](https://bezkoder.com/deploy-node-js-app-heroku-cleardb-mysql/) by bezkoder

## Documentation and examples
Refer to this [postman documentation link](https://documenter.getpostman.com/view/15174748/TzXumeyp)
