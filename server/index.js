const express = require('express');
const app = express();
const mysql = require('mysql');
const cors = require('cors');

app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
    user: 'root',
    host:'localhost',
    password:'',
    database:'pracownicydb'
});

app.post('/create', (req, res) => {
    const name = req.body.name;
    const age = req.body.age;
    const country = req.body.country;
    const wage = req.body.wage;

    db.query(
        "INSERT INTO pracownicy (name, age, country, wage) VALUES (?,?,?,?)",
        [name, age, country, wage],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send("values inserted");

            }
        }
    );
});

app.get('/employees', (req, res) =>{
    db.query("SELECT * FROM pracownicy", (err, result) => {
        if (err){
            console.log(err);
            console.log("Zaczytanie no work >:");
        }else{
            res.send(result);
        }
    });
});

app.listen(3001, () => {
    console.log("server dziala odpal jeszcze reacta i git :>");
});

