const express = require('express');

const SchemeRouter = require('./schemes/scheme-router.js');

const server = express();

server.use(express.json());
server.use('/api/schemes', SchemeRouter);
server.get('/', (req, res) => {
  res.send('<h2>THE SERVER IS UP</h2>')
})

module.exports = server;