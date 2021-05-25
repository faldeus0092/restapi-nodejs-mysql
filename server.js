const express = require('express');
const bodyParser = require('body-parser');
var morgan = require('morgan');
const app = express();
const PORT = process.env.PORT || 3000;

app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());
app.use(morgan('dev'));

// routes
// var routes = require('./routes');
// routes(app);

// register routes menu from index.js
app.use('/auth', require('./middleware'));

app.listen(PORT, () => {
    console.log(`Server started on port`, PORT);
});