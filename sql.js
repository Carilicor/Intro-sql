import pg from "pg"
const {Client,Pool} = pg
import {creds} from "./creds.js"

const pool = new Pool(creds)

const query = "select * from customers order by customers.customerid"

pool.query(query, (err,data) => {
    if (err) {
        console.error(er)
        return
    }
    console.table(data.rows)
    pool.end()
})