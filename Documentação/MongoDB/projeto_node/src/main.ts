// Importamos os arquivos de CSS.
import 'bootstrap/dist/css/bootstrap.min.css'

// Importamos os arquivos de elementos.
import { cadastrarUsuario } from "./usuarios.ts"

document.querySelector<HTMLDivElement>('#app')!.innerHTML = `


`

const form_user = window.document.querySelector("#form_user") as HTMLFormElement

form_user.addEventListener("submit", (evento) => {

    evento.preventDefault()

    const campos = evento.target as HTMLFormElement

    const dados = new FormData(campos) as FormData

    const nome = dados.get("nome") as string

    const email = dados.get("email") as string

    const senha = dados.get("senha") as string

    const dadosUsuario = {

        "nome": nome,
        "email": email,
        "senha": senha

    } as InterfaceUsuario

    cadastrarUsuario(dadosUsuario)

})

// Interfaces.

interface InterfaceUsuario {

    nome: string,
    email: string,
    senha: string

}