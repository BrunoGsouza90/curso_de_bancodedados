import express from "express"
import run from "./settings/dbconnection"
import Routes from "./routes/Routes"
import dotenv from "dotenv"
import path from "path"

dotenv.config (

    {

        path: path.resolve(__dirname, "../../.env")

    }

)

const app = express()

app.use(express.json())

app.use("/", Routes)

async function serverRun() {

    try {

        run()

        app.listen(Number(process.env.PORT) as number, process.env.URL as string, () => {

            console.log("Servidor rodando!")

        })

    } catch(error) {

        console.log("Erro ao se conectar com o servidor!")

    }

}

serverRun()