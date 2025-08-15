import { MongoClient, Db } from "mongodb"
import dotenv from "dotenv"
import path from "path";

export default class dbConnection {

    protected cliente: MongoClient
    protected database: Db

    constructor() {

        dotenv.config (
            
            {
                
                path: path.resolve(__dirname, "../../.env") 
            
            }

        )

        this.cliente = new MongoClient(process.env.DB_CONNECTION as string)

        this.database = this.cliente.db("projeto_node")

    }

    async run() {

        try {

            await this.cliente.connect()

            console.log("Banco de Dados conectado com sucesso!")

        } catch(error) {

            console.log(`Erro ao realizar conexão com o Banco de Dados!\n\nErro:\n\n\${error}`)

        }

    }

    async stop() {

        try {

            await this.cliente.close()

            console.log("Banco de Dados desconectado com sucesso!")

        } catch(error) {

            console.log("Erro ao se desconectar do Banco de Dados!")

        }

    }

}