import { Router } from "express"

const router = Router()

router.get("/", async (req, res) => {

    console.log("Seja Bem-vindo!")
    res.send("Seja Bem-vindo!")

})

export default router