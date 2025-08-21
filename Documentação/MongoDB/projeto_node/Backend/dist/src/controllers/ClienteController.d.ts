import Clientes from "../models/Clientes";
import interfaceClientes from "../models/interfaces/interfaceClientes";
export default class ClienteController extends Clientes {
    constructor();
    index(): Promise<import("mongodb").WithId<import("bson").Document>[] | {
        status: number;
        mensagem: string;
    }>;
    create(cliente: interfaceClientes): Promise<{
        status: number;
        mensagem: string;
        cliente: interfaceClientes;
    } | {
        status: number;
        mensagem: string;
        cliente?: never;
    }>;
    update(id: string, cliente: interfaceClientes): Promise<{
        status: number;
        mensagem: string;
        cliente: interfaceClientes;
    } | {
        status: number;
        mensagem: string;
        cliente?: never;
    }>;
    delete(id: string): Promise<{
        status: number;
        mensagem: string;
    }>;
}
//# sourceMappingURL=ClienteController.d.ts.map