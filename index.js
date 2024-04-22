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
// app.post('/featuredcarsdetails', (req, res) => {
//   console.log(req.body.car)
//   let query = `SELECT * FROM featuredcars WHERE model='${req.body.car}'`;
//   console.log(query);
//     db.query(query, (err, results) => {
      
//       if (err) {
//         res.status(500).send('Internal Server Error');
//         return;
//       }
      
//       console.log(results)
//       res.json(results);
      
//     });
//   }
// );



// API Routes
app.post('/carsdata', (req, res) => {
  console.log(req.body.car)
  let query = `SELECT * FROM carsdata`;
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


app.post('/featuredcars', (req, res) => {
  console.log(req.body.car)
  let query = `SELECT * FROM featuredcars`;
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
app.post('/carsimages', (req, res) => {
  console.log(req.body.id)
  let query = `SELECT * FROM carsimages WHERE carid='${req.body.id}'`;
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
  const { name, email, mobile, location, pickuptime, pickupdate, dropdate , carmodel } = req.body;

  // Use parameterized query to prevent SQL injection
  let query = `INSERT INTO bookings (name, mobile, email, location, pickuptime, pickupdate, dropdate, carmodel) VALUES (?, ?, ?, ?, ?, ?, ?, ?)`;

  db.query(query, [name, mobile, email, location, pickuptime, pickupdate, dropdate , carmodel], (err, results) => {

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



app.post('/insertcars', (req, res) => {
  const { model, drivername, driverrating, carrating, seats, priceperday, drivercontact, driveremail, thumbnail } = req.body;

  // Use parameterized query to prevent SQL injection
  let query = `INSERT INTO carsdata(model, drivername, driverrating, carrating, seats, priceperday, drivercontact, driveremail, thumbnail) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

  db.query(query, [model, drivername, driverrating, carrating, seats, priceperday, drivercontact, driveremail,thumbnail], (err, results) => {

    if (err) {
      console.error('Error inserting data:', err);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(results);
    // res.status(200).send('Data received and inserted into the database.');

  });
});



app.post('/updatecars', (req, res) => {
  const { model, drivername, driverrating, carrating, seats, priceperday, drivercontact, driveremail, thumbnail} = req.body;

  // Use parameterized query to prevent SQL injection
  let query = `UPDATE carsdata SET 
  drivername='${drivername}', driverrating='${driverrating}', carrating='${carrating}',seats='${seats}',priceperday='${priceperday}', drivercontact ='${drivercontact}',driveremail='${driveremail}',
  thumbnail='${thumbnail}' WHERE model='${model}' `;

  db.query(query, (err, results) => {

    if (err) {
      console.error('Error inserting data:', err);
      res.status(500).send('Internal Server Error');
      return;
    }

    console.log(results);
    // res.status(200).send('Data received and inserted into the database.');

  });
});



app.post('/deletecar', (req, res) => {
  const model = req.body.model; //carId is sent in the request body

  // Use parameterized query to prevent SQL injection
  let query = `DELETE FROM carsdata WHERE carsdata.model = '${model}'`;

  console.log(query)

  db.query(query,[model] , (err, results) => {
    if (err) {
      console.error('Error deleting data:', err);
      res.status(500).send('Internal Server Error');
      return;
    }

    if (results.affectedRows === 0) {
      res.status(404).json({ error: 'Car not found for deletion' });
      return;
    }

    console.log(results);
    res.status(200).json({ message: 'Car deleted from the database.' });
  });
});


app.post('/bookingdetails', (req, res) => {
  console.log(req.body.car)
  let query = `SELECT * FROM bookings`;
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


// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
