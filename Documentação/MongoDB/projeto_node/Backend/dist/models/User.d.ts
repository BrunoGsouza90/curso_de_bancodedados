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
    inserirCliente(cliente: interfaceClientes): Promise<void>;
}
//# sourceMappingURL=User.d.ts.map