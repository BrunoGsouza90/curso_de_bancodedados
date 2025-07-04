/* Criando um novo Banco e acessando ele. */
use users

/* Verificamos os Bancos já criados. */
show databases

/* Criando a coleção. */
db.createCollection("users")

/* Verificamos as collections criadas. */
show collections

/* Inserindo dados na coleção */
db.users.insertMany([

    {

        nome: "Bruno",
        sobrenome: "Gonçalves",
        nascimento: ISODate("1999-07-20T00:00:00Z"),
        profissao: "Desenvolvedor de Software",

        endereco: {

            rua: "Rua Alcides Constantino dos Santos, 16",
            bairro: "Morradas do Bosque",
            cidade: "Itamonte",
            estado: "MG"

        },

    },

    {

        nome: "Roseli",
        sobrenome: "Gonçalves",
        nascimento: ISODate("1980-07-07T00:00:00Z"),
        profissao: "Dona de Casa",

        endereco: {

            rua: "Rua Alcides Constantino dos Santos, 16",
            bairro: "Morradas do Bosque",
            cidade: "Itamonte",
            estado: "MG"

        },

    },

    {

        nome: "Guilherme",
        sobrenome: "Souza",
        nascimento: ISODate("2000-04-03T00:00:00Z"),
        profissao: "Psicólogo",

        endereco: {

            rua: "Rua Dona Isaltina, 16",
            bairro: "CECAP",
            cidade: "Lorena",
            estado: "SP"

        },

    }

])

/* Filtrando o documento com o usuário com nome Bruno. */
db.users.find(
    
    {

        nome: "Bruno"

    }

)

/* Filtrando os documentos com data de nascimento posteriores ao ano de 1995. */
db.users.find(
    
    {

        nascimento: {
            
            $gt: ISODate("1995-01-01T00:00:00Z")

        }

    }
)

/* Filtrando os documentos dos usuários que moram na cidade de Itamonte. */
db.users.find(

    {

        "endereco.cidade": "Itamonte"

    }

)

/* Deletando um documento. */
db.users.deleteOne(

    {

        "endereco.bairro": "CECAP"

    }

)