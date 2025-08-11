import { MongoClient } from "mongodb"
import dotenv from "dotenv"

dotenv.config()

const cliente = new MongoClient(process.env.DB_CONNECTION as string)

async function run() {

    try {

        await cliente.connect()

        console.log("Banco de Dados conectado com sucesso!")

    } catch(error) {

        console.log("Erro ao realizar conexão com o Banco de Dados!")

    }
}

async function stop() {

    try {

        await cliente.close()

        console.log("Banco de Dados desconectado com sucesso!")

    } catch(error) {

        console.log("Erro ao se desconectar do Banco de Dados!")

    }

}

run().catch(console.dir)

export default run