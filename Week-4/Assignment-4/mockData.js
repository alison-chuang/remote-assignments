const mysql = require('mysql2');
const dotenv = require('dotenv');

dotenv.config();

const pool = mysql.createPool({
	host: process.env.MYSQL_HOST,
	user: process.env.MYSQL_USER,
	password: process.env.MYSQL_PASSWORD,
	database: process.env.MYSQL_DATABASE
}).promise();

async function genMockData() {
	const [rows] = await pool.query(
		'SELECT id FROM `user`');
	userIds = rows.map(item => item.id);

	let mockData = [ ];
	const staOpt = ['draft', 'published', 'archived', 'deleted'];
		
	for(let i = 0; i <= 30; i++){
		mockData.push([
			userIds[Math.floor(Math.random()*userIds.length)], 
			staOpt[Math.floor(Math.random()*staOpt.length)],
			Math.random().toString(36).substring(0,10)
		]);
	}	
	console.log(mockData);
	return mockData;
}



async function createArticles() {
	pool.query(`
        INSERT INTO article (authorId, status_, title)
        VALUES ?
        `, [await genMockData()]   //values is an array of arrays wrapped in an array
	).catch( (err) => {
		throw err;
	});
}

createArticles();



