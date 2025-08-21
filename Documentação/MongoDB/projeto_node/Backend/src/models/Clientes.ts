import { Collection, ObjectId } from "mongodb"
import interfaceClientes from "./interfaces/interfaceClientes"
import dbConnection from "../settings/dbconnection"

export default class Clientes extends dbConnection {

    private collection: Collection
    private nome: string = ""
    private sobrenome: string = ""
    private idade: number = 0

    // ============================================================

    constructor() {

        super()

        this.collection = this.database.collection("clientes")

    }

    // ============================================================

    get getNome(): string {

        return this.nome

    }

    set setNome(nome: string) {

        this.nome = nome

    }

    get getSobrenome(): string {

        return this.sobrenome

    }

    set setSobrenome(sobrenome: string) {

        this.sobrenome = sobrenome

    }

    get getIdade(): number {

        return this.idade

    }

    set setIdade(idade: number) {

        this.idade = idade

    }

    // ============================================================

    async visualizarClientes() {

        try {

            this.run

            return await this.collection.find().toArray()

        } catch(error) {

            return {

                "status": 500,
                "mensagem": `Erro ao visualizar os clientes no Banco de Dados!\n\nErro:\n\n\${error}`

            }

        } finally {

            this.stop()

        }

    }

    // ============================================================

    async criarCliente(cliente: interfaceClientes) {

        try {

            this.run()

            await this.collection.insertOne(cliente)

            return {

                "status": 200,
                "mensagem": "Cliente criado com sucesso!",
                "cliente": cliente

            }

        } catch(error) {

            return {

                "status": 500,
                "mensagem": `Erro ao inserir cliente no Banco de Dados!\n\nErro:\n\n\${error}`

            }

        } finally {

            this.stop()

        }

    }

    // ============================================================

    async atualizarCliente(id: string, cliente: interfaceClientes) {

        try {

            this.run()

            const filtro = {

                _id: new ObjectId(id)

            }

            const atualizar = {
                
                $set: cliente 
            
            }

            await this.collection.updateOne(filtro, atualizar)

            return {

                "status": 200,
                "mensagem": "Cliente atualizado com sucesso!",
                "cliente": cliente

            }

        } catch(error) {

            return {

                "status": 500,
                "mensagem": `Erro ao atualizar cliente no Banco de Dados!\n\nErro:\n\n\${error}`

            }

        } finally {

            this.stop()

        }

    }

    // ============================================================

    async deletarCliente(id: string) {

        try {

            this.run()

            const filtro = {

                _id: new ObjectId(id)

            }

            await this.collection.deleteOne(filtro)

            return {

                "status": 200,
                "mensagem": "Cliente deletado com sucesso!"

            }

        } catch(error) {

            return {

                "status": 500,
                "mensagem": `Erro ao deletar cliente no Banco de Dados!\n\nErro:\n\n\${error}`

            }

        } finally {

            this.stop()

        }

    }
    
}