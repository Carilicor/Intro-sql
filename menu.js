import pg from "pg"
import readline from "readline-sync"
const { Pool } = pg
import { creds } from "./creds.js"

const pool = new Pool(creds);

//const query = `select * from customers`

async function runQuery(query) {
    return await pool.query(query)
}
while (true) {
    const answer = readline.question("Run What?")
    let query = ""
    let results = ""
    switch (answer) {
        case "1"://1. select * from customers
             query = "select first_name, last_name from customers"
            results = await runQuery(query)
            console.table(results.rows)
            break;
        case "2"://2. add new customer
             query = `INSERT INTO customers(
                customer_id, first_name, last_name, email, phone)
               VALUES ('Cari', 'Licor', 'Carilicor@gmail.com', '3055468679');`
               results = await runQuery(query)
               console.log("customer added")
            break
        case "3"://3. update that customer
                query =`UPDATE customers
                SET first_name ='super', last_name ='star', 
                updated_at = NOW()
                WHERE customer_id=2;`
                results = await runQuery(query)
                console.log("customer updated")
                break
        //console.table((await runQuery("select * from customers")).rows)
        default:
            console.log("wat")
            break;
    }
}



    //(err,data) => {
    //if (err) {
      //  console.error(er)
        //return;
    //}
    //return data
//})