import interfaceClientes from "./interfaces/interfaceClientes";
import dbConnection from "../settings/dbconnection";
export default class Clientes extends dbConnection {
    private collection;
    private nome;
    private sobrenome;
    private idade;
    constructor();
    get getNome(): string;
    set setNome(nome: string);
    get getSobrenome(): string;
    set setSobrenome(sobrenome: string);
    get getIdade(): number;
    set setIdade(idade: number);
    visualizarClientes(): Promise<import("mongodb").WithId<import("bson").Document>[] | {
        status: number;
        mensagem: string;
    }>;
    criarCliente(cliente: interfaceClientes): Promise<{
        status: number;
        mensagem: string;
        cliente: interfaceClientes;
    } | {
        status: number;
        mensagem: string;
        cliente?: never;
    }>;
    atualizarCliente(id: string, cliente: interfaceClientes): Promise<{
        status: number;
        mensagem: string;
        cliente: interfaceClientes;
    } | {
        status: number;
        mensagem: string;
        cliente?: never;
    }>;
    deletarCliente(id: string): Promise<{
        status: number;
        mensagem: string;
    }>;
}
//# sourceMappingURL=Clientes.d.ts.map