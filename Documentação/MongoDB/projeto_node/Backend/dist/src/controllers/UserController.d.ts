import Clientes from "../models/Clientes";
import interfaceClientes from "../models/interfaces/interfaceClientes";
export default class ClienteController extends Clientes {
    constructor();
    index(): Promise<import("mongodb").WithId<import("bson").Document>[] | undefined>;
    create(cliente: interfaceClientes): Promise<"Cliente inserido com sucesso!" | "Erro ao inserir clientes no Banco de Dados!\n\nErro:\n\n${error}">;
}
//# sourceMappingURL=UserController.d.ts.map