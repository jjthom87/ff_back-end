module.exports = (pg, app) => {
	pg.connect();

	app.get('/api/fat-fucks', (req, res) => {
		pg.query('SELECT * FROM users', (err, queryRes) => {
			err ? res.json(err) : res.json(queryRes.rows)
		})
	})
}