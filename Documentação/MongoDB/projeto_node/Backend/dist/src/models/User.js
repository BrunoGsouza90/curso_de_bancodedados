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
const dbconnection_1 = __importDefault(require("../settings/dbconnection"));
class Clientes extends dbconnection_1.default {
    // ============================================================
    constructor() {
        super();
        this.nome = "";
        this.sobrenome = "";
        this.idade = 0;
        this.collection = this.database.collection("clientes");
    }
    // ============================================================
    get getNome() {
        return this.nome;
    }
    set setNome(nome) {
        this.nome = nome;
    }
    get getSobrenome() {
        return this.sobrenome;
    }
    set setSobrenome(sobrenome) {
        this.sobrenome = sobrenome;
    }
    get getIdade() {
        return this.idade;
    }
    set setIdade(idade) {
        this.idade = idade;
    }
    // ============================================================
    visualizarClientes() {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                this.run;
                return yield this.collection.find().toArray();
            }
            catch (error) {
                console.log(`Erro ao visualizar os clientes no Banco de Dados!\n\nErro:\n\n\${error}`);
            }
            finally {
                this.stop();
            }
        });
    }
    // ============================================================
    inserirCliente(cliente) {
        return __awaiter(this, void 0, void 0, function* () {
            try {
                this.run();
                yield this.collection.insertOne(cliente);
                console.log("Cliente inserido com sucesso!");
            }
            catch (error) {
                console.log(`Erro ao inserir clientes no Banco de Dados!\n\nErro:\n\n\${error}`);
            }
            finally {
                this.stop();
            }
        });
    }
}
exports.default = Clientes;
//# sourceMappingURL=User.js.map