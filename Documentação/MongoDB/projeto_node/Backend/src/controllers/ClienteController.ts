import Clientes from "../models/Clientes";
import interfaceClientes from "../models/interfaces/interfaceClientes";

export default class ClienteController extends Clientes {

    constructor() {

        super()

    }

    // ============================================================

    async index() {

        return this.visualizarClientes()

    }

    // ============================================================

    async create(cliente: interfaceClientes) {

        return this.criarCliente(cliente)

    }

    // ============================================================

    async update(id: string, cliente: interfaceClientes) {

        return this.atualizarCliente(id, cliente)

    }

    // ============================================================

    async delete(id: string) {

        return this.deletarCliente(id)

    }

    // ============================================================

}