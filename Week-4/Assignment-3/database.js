const mysql = require('mysql2');
const dotenv = require('dotenv');
const bcrypt = require('bcryptjs');

dotenv.config();

const pool = mysql.createPool({
	host: process.env.MYSQL_HOST,
	user: process.env.MYSQL_USER,
	password: process.env.MYSQL_PASSWORD,
	database: process.env.MYSQL_DATABASE
}).promise();

async function getUser(email) {
	const [rows] = await pool.query(
		'SELECT * FROM `user` WHERE `email` = ?', [email]);
	return rows;
}

async function createUser(email, password) {
	password = bcrypt.hashSync(password, 8);
	const [result] = await pool.query(`
        INSERT INTO user (email, password)
        VALUES (?, ?)
        `, [email, password]
	).catch( () => {
		return [{}];
	});
	return {
		id: result.insertId,
		email
	};}

module.exports = { getUser, createUser };
