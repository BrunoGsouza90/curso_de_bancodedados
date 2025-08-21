"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const mongodb_1 = require("mongodb");
const dotenv_1 = __importDefault(require("dotenv"));
const path_1 = __importDefault(require("path"));
class dbConnection {
    constructor() {
        dotenv_1.default.config({
            path: path_1.default.resolve(__dirname, "../../.env")
        });
        this.cliente = new mongodb_1.MongoClient(process.env.DB_CONNECTION);
        this.database = this.cliente.db("projeto_node");
    }
    run() {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                yield this.cliente.connect();
                console.log("Banco de Dados conectado com sucesso!");
            }
            catch (error) {
                console.log(`Erro ao realizar conexão com o Banco de Dados!\n\nErro:\n\n\${error}`);
            }
        });
    }
    stop() {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                yield this.cliente.close();
                console.log("Banco de Dados desconectado com sucesso!");
            }
            catch (error) {
                console.log("Erro ao se desconectar do Banco de Dados!");
            }
        });
    }
}
exports.default = dbConnection;
//# sourceMappingURL=dbconnection.js.map