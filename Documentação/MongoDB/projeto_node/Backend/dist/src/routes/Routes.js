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
const express_1 = require("express");
const ClienteController_1 = __importDefault(require("../controllers/ClienteController"));
const router = (0, express_1.Router)();
// ============================================================
router.get("/", (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    res.send("Seja Bem-vindo!");
}));
// ============================================================
router.get("/clientes", (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    let clientes = new ClienteController_1.default();
    return res.json(clientes.index());
}));
// ============================================================
router.post("/clientes/create", (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    let cliente = new ClienteController_1.default();
    const resultado = yield cliente.create(req.body);
    return res.json(resultado);
}));
// ============================================================
router.put("/clientes/update/:id", (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    let cliente = new ClienteController_1.default();
    const resultado = yield cliente.update(req.params.id, req.body);
    return res.json(resultado);
}));
// ============================================================
router.delete("/clientes/delete/:id", (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    let cliente = new ClienteController_1.default();
    const resultado = yield cliente.delete(req.params.id);
    return res.json(resultado);
}));
// ============================================================
exports.default = router;
//# sourceMappingURL=Routes.js.map