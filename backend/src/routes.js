const { Router } = require('express');
const DevController = require('./controllers/DevController');

const routes = Router();


//TIpos de parâmetros do express
// - Query params: (GET) req.query (Filtros, ordenação, paginação...)
// - Route params: (DELETE) request.params (Remover um dado ... )
// - Body: (POST e PUT) request.body (Criação ou alteração de dados ...)


routes.get('/devs', DevController.index);


module.exports = routes;