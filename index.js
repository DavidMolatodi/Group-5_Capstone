/*import { appenFile } from 'fs';
/*import * as sqlite from 'sqlite';
import sqlite3 from 'sqlite3';
import express from 'express';


const app = express();

//make req.body work
app.use(express.json());

const db = await sqlite.open({
    filename: './project_plan.db',
    driver: sqlite3.Database
});

console.log('db initialized');

await db.migrate();*/





import * as sqlite from 'sqlite';
import sqlite3 from 'sqlite3';
import express from 'express';

const app = express();
//app.use(express.static('public'))


//app.use(express.urlencoded({ extended: false }))
app.use(express.json())


/*app.get("/api", function (req, res) {
    res.json({ msg: "Group 5 API" });
});*/

const db = await sqlite.open({
    filename: './project_plan.db',
    driver: sqlite3.Database
});

console.log('db initialized');

await db.migrate();


app.post('/api/Names/update', async function (req, res) {

    console.log(req.body)

    const { Names,
        Race,
        Age,
        Sex,
        typesOfSkin,
        ProductsIngredients

    } = req.body

    const result = await db.run(`update Names set Race = ?,Age = ?,Sex = ?,typesOfSkin = ?,ProductsIngredients = ? where Names = ?`,
        Names,
        Race,
        Age,
        Sex,
        typesOfSkin,
        ProductsIngredients
    );

    console.log(result)

    res.json({
        status: 'success'
    })
});


app.get('/api/Names', async function (req, res) {

    const Names = await db.all(`select * from Names`);

    res.json({
        Names
    })
});

console.log("done");



let PORT = process.env.PORT || 3007;

app.listen(PORT, function () {
    console.log('App starting on port', PORT);
});


