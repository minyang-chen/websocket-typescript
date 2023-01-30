"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const websocket_1 = __importDefault(require("../modules/websocket/websocket"));
class OrdersService {
    insertOrder(order) {
        //save in your database
        //send the update to the browser
        this.updateSockets(order);
    }
    updateSockets(order) {
        const io = websocket_1.default.getInstance();
        io.of('orders').emit('orders_updated', { data: [order] });
    }
}
exports.default = OrdersService;
//# sourceMappingURL=orders.service.js.map