import { Router } from "express"
import ClienteController from "../controllers/ClienteController"

const router = Router()

// ============================================================

router.get("/", async (req, res) => {

    res.send("Seja Bem-vindo!")

})

// ============================================================

router.get("/clientes", async (req, res) => {

    let clientes = new ClienteController()

    return res.json(clientes.index())

})

// ============================================================

router.post("/clientes/create", async (req, res) => {

    let cliente = new ClienteController()

    const resultado = await cliente.create(req.body)

    return res.json(resultado)

})

// ============================================================

router.put("/clientes/update/:id", async (req, res) => {

    let cliente = new ClienteController()

    const resultado = await cliente.update(req.params.id ,req.body)

    return res.json(resultado)

})

// ============================================================

router.delete("/clientes/delete/:id", async (req, res) => {

    let cliente = new ClienteController()

    const resultado = await cliente.delete(req.params.id)

    return res.json(resultado)

})

// ============================================================

export default router