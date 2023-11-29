const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
const port = 3000;

// Enable CORS for all routes
app.use(cors());

// MySQL Connection
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'cars',
});

db.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
  } else {
    console.log('Connected to MySQL');
  }
});

// Express Middleware
app.use(express.json());


// API Routes
app.post('/cars', (req, res) => {
  console.log(req.body.car)
  let query = `SELECT * FROM featuredcars WHERE model='${req.body.car}'`;
  console.log(query);
    db.query(query, (err, results) => {
      
      if (err) {
        res.status(500).send('Internal Server Error');
        return;
      }
      
      console.log(results)
      res.json(results);
      
    });
  }
);




// API Routes
app.post('/cars/carsdata', (req, res) => {
  console.log(req.body.car)
  let query = `SELECT * FROM carsdata WHERE model='${req.body.car}'`;
  console.log(query);
    db.query(query, (err, results) => {
      
      if (err) {
        res.status(500).send('Internal Server Error');
        return;
      }
      
      console.log(results)
      res.json(results);
      
    });
  }
);



app.post('/cars/bookings', (req, res) => {
  const { name, email, mobile, location, date, pickup, droptime } = req.body;

  // Use parameterized query to prevent SQL injection
  let query = `INSERT INTO bookings (name, mobile, email, location, date, pickup, droptimen) VALUES (?, ?, ?, ?, ?, ?, ?)`;



  db.query(query, [name, mobile, email, location, date, pickup, droptime], (err, results) => {

    if (err) {
      console.error('Error inserting data:', err);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(results);
    // res.status(200).send('Data received and inserted into the database.');

  });
});



app.post('/cars/contact', (req, res) => {
  const { firstname, lastname, email,  mobile,  message } = req.body;

  // Use parameterized query to prevent SQL injection
  let query = `INSERT INTO contact (firstname, lastname, email, mobile, message) VALUES (?, ?, ?, ?, ?)`;

  db.query(query, [firstname, lastname, email,  mobile,  message], (err, results) => {

    if (err) {
      console.error('Error inserting data:', err);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(results);
    // res.status(200).send('Data received and inserted into the database.');

  });
});





// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
