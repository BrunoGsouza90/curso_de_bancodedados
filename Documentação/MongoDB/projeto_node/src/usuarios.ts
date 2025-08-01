import { MongoClient } from "mongodb"

const url = "mongodb+srv://BrunoGsouza90:%40Picanha123@cluster0.4gu2lok.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"

const cliente = new MongoClient(url)

async function conexao() {

    try {

        await cliente.connect()

        console.log("Conexão realizada com sucesso!")

    } catch (error) {

        console.log('opoa')
        console.log(error)

    } finally {

        await cliente.close()

    }

}

export function cadastrarUsuario(dadosUsuario: InterfaceUsuario) {

    window.alert("oi")

    // conexao()

    console.log(dadosUsuario)

}

// Interfaces.

interface InterfaceUsuario {

    nome: string,
    email: string,
    senha: string

}