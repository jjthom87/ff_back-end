module.exports = (pg) => {
	let dbUrl;

	if(process.env.DATABASE_URL){
		dbUrl = process.env.DATABASE_URL
	} else {
		dbUrl = {
			user: process.argv.POSTGRES_USER,
			password: process.argv.POSTGRES_PASSWORD,
			database: 'fat_fucks',
			host: 'localhost',
			port: 5432
		};
	}

	return new pg.Client(dbUrl);
}
