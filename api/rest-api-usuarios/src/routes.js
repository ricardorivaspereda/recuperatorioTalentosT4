import { Router } from "express";
import { usuario } from "./controller.js";

export const router = Router()

router.get('/usuarios', usuario.getAll); /*traer todos los usuarios*/
router.get('/usuario', usuario.getOne); /*traer un usuarios*/
router.post('/usuario', usuario.add); /*agregar un usuario*/
router.delete('/usuario', usuario.delete); /*borrar un usuario*/
router.put('/usuario', usuario.update); /*actualizar un usuario*/