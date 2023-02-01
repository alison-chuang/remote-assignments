const http = require('http');
const express = require('express');
const app = express();
const port = 3000;
const path = require('path');

app.set('views', './views');
app.set('view engine', 'ejs');

const bcrypt = require('bcryptjs');
const session = require('express-session');
const flash = require('connect-flash');

const db = require('./database');
const getUser = require('./database.js').getUser;
const createUser = require('./database.js').createUser;

app.use(session({
	secret: 'mysqlandexpress',
	resave: true,
	saveUninitialized: false,
}));

app.use(express.static('./views'));
app.use(express.urlencoded({extended : false}));
app.use(express.json());
app.use(flash());

app.get('/', async (req, res) => {
	const errMsg = req.flash('Error');
	res.render('homePage.ejs', {errMsg});
});

// sign in successfully
function login(id, email, req, res) {
	req.session.userId = id; // 登入的認定：在 session 裡放 userId
	req.session.email = email;
	res.redirect('/member');
}

// sign up
app.post('/user', async (req, res) => {
	const { newEmail, newPsw } = req.body;
	const userData = await createUser(newEmail, newPsw);  // db端

	if(!userData.id) { // email uniqueKey, 註冊信箱重複時 userData undefined
		req.flash('Error', 'Failed to sign up .. Please try again with another email address.');
		res.redirect('/');
	} else{
		login(userData.id, userData.email, req, res);
	}
});

// sign in 
app.post('/signin', async (req, res) => {
	const { email, psw } = req.body;

	if (email && psw) {
		const query = await getUser(email);  // db 端資料
		if (query.length === 0) {
			req.flash('Error', 'member not exist');
			return res.redirect('/');
		}
		const rightPsw = query[0].password;

		if (bcrypt.compareSync(psw, rightPsw)) {
			console.log('signin success');
			login(query[0].id, query[0].email, req, res);
		} else {
			req.flash('Error', 'Please enter correct email and password.');
			res.redirect('/');
		}
	} else {
		req.flash('Error', 'email and password are required.');
		res.redirect('/');
	}
});

// member page (exclusive for sign in) 
app.get('/member', async (req, res) => {
	if (!req.session.userId) {
		res.redirect('/');
	} else {
		console.log(req.session);
		res.render('memberPage.ejs', {email : req.session.email});
	}
});

// sign out 
app.post('/signout', (req, res) => {
	req.session.destroy();
	res.redirect('/');
});

app.use((err, req, res, next) => {
	console.error(err.stack);
	res.send('Error : Something broke >< Please contact us at 0800-000-000 for help');
});

app.listen(port, () => {
	console.log(`The application is runnung on localhost ${port}`);
});
