"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
require('dotenv').config();
require("reflect-metadata");
const routing_controllers_1 = require("routing-controllers");
const http_1 = require("http");
const websocket_1 = __importDefault(require("./modules/websocket/websocket"));
const orders_socket_1 = __importDefault(require("./modules/websocket/orders.socket"));
const port = process.env.APP_PORT || 3000;
const routingControllerOptions = {
    routePrefix: 'v1',
    controllers: [`${__dirname}/modules/http/*.controller.*`],
    classTransformer: true,
    cors: true,
    defaultErrorHandler: true
};
const app = (0, routing_controllers_1.createExpressServer)(routingControllerOptions);
const httpServer = (0, http_1.createServer)(app);
const io = websocket_1.default.getInstance(httpServer);
io.initializeHandlers([
    { path: '/orders', handler: new orders_socket_1.default() }
]);
httpServer.listen(port, () => {
    console.log(`This is working in port ${port}`);
});
//# sourceMappingURL=server.js.map