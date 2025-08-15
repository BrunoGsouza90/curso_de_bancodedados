import { MongoClient, Db, Collection } from "mongodb"
import interfaceClientes from "./interfaces/interfaceClientes"
import dbConnection from "../settings/dbconnection"

export default class Clientes extends dbConnection{

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

    async inserirCliente(cliente: interfaceClientes) {

        try {

            this.run()

            await this.collection.insertOne(cliente)

        } catch(error) {

            console.log(`Erro ao inserir clientes no Banco de Dados!\n\nErro:\n\n\${error}`)

        } finally {

            this.stop()

        }

    }

    // ============================================================

}