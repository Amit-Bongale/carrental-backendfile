const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
const port = process.env.PORT || 3000;

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



app.post('/bookings', (req, res) => {
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
    res.status(200).send({message : 'Car Booked Sucessfully'});

  });
});



app.post('/contactus', (req, res) => {
  const { firstname, lastname, email,  mobile,  message } = req.body;

  // Use parameterized query to prevent SQL injection
  let query = `INSERT INTO contact_us (firstname, lastname, email, mobile, message) VALUES (?, ?, ?, ?, ?)`;

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
  let query = `INSERT INTO carsdata(model, drivername, driverrating, carrating, seats, priceperday, drivercontact, driveremail, thumbnail) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`;

  db.query(query, [model, drivername, driverrating, carrating, seats, priceperday, drivercontact, driveremail,thumbnail], (err, results) => {

    if (err) {
      console.error('Error inserting data:', err);
      res.status(500).send({ sqlMessage: err.sqlMessage });
      return;
    }

    console.log(results);
    res.status(200).send('car inserted Sucessfully');

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
      res.status(500).send({ sqlMessage: err.sqlMessage });
      return;
    }

    console.log(results);
    res.status(200).send('Car Updated Sucessfully');

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



app.post('/allcarsimages', (req, res) => {
  console.log(req.body.car)
  let query = `SELECT * FROM carsimages`;
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



app.post('/deleteimage', (req, res) => {
  const {carid , image} = req.body; //carId is sent in the request body

  // Use parameterized query to prevent SQL injection
  let query = `DELETE FROM carsimages WHERE carid = '${carid}' AND image='${image}'`;

  console.log(query)

  db.query(query , (err, results) => {
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


app.post('/insertcarimage', (req, res) => {
  const {carid , image} = req.body;

  // Use parameterized query to prevent SQL injection
  let query = `INSERT INTO carsimages (carid, image) VALUES (?, ?)`;

  console.log(query)

  db.query(query ,[carid , image], (err, results) => {
    if (err) {
      console.error('Error Inserting data:', err);
      res.status(500).send('Internal Server Error');
      return;
    }

    if (results.affectedRows === 0) {
      res.status(404).json({ error: 'Can not Insert Image' });
      return;
    }

    console.log(results);
    res.status(200).json({ message: 'image Inserted into the database.' });
  });
});



app.post('/signup', (req, res) => {
  const { name , email , mobile , password } = req.body;

  let query = `INSERT INTO users(name, email, password, phone) VALUES (? , ? , ? , ?)`;

  db.query(query, [name , email , password , mobile], (err, results) => {

    if (err) {
      console.error('Error inserting data:', err);
      res.status(500).send({ sqlMessage: err.sqlMessage });
      return;
    }

    console.log(results);
    res.status(200).send({ message: 'Account Created Successfully'});

  });
});


app.post('/login', (req, res) => {
  const { email , password } = req.body;

  let query = `select * from users where email = '${email}' and password= '${password}' `;
  console.log(query);

  db.query(query, (err, results) => {

    if (err) {
      console.error('Error Fetching data:', err);
      res.status(500).send({ sqlMessage: err.sqlMessage });
      return;
    }
    
    if(results.length > 0){
      // return res.json("Login Sucessfull");
      return res.status(200).send({ message: 'Loged in Sucessfully'});

    } else {
      // return res.json("Login failed");
      return res.status(401).send({ message: 'Incorrect ID or Password'});
    }
    console.log(results);
    // res.status(200).send({ message: 'Acces granted'});

  });
});



app.post('/adminlogin', (req, res) => {

  const { id , password } = req.body;

  let query = `select * from admin where id ='${id}' and password='${password}' `;
  console.log(query);

  db.query(query, (err, results) => {

    if (err) {
      console.error('Error Fetching data:', err);
      res.status(500).send({ sqlMessage: err.sqlMessage });
      return;
    }
    
    if (results.length > 0) {
      return res.status(200).send({ message: 'acess granted'});
    } else {
      return res.status(401).send({ message: 'Incorrect ID or Password'});
    }

    console.log(results);

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