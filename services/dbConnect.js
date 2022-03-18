const pg = require('pg');
require('dotenv').config();

// set production variable. This will be called when deployed to a live host
const isProduction = process.env.NODE_ENV === 'production';

// configuration details
const connectionString = `postgresql://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_DATABASE}`;

// if project has been deployed, connect with the host's DATABASE_URL
// else connect with the local DATABASE_URL
const pool = new pg.Pool({
  connectionString: isProduction ? process.env.DATABASE_URL : connectionString,
  ssl: isProduction,
});

// display message on success if successful
// pool.on('connect', () => {
//  console.log('Teamwork Database connected successfully!');
//});