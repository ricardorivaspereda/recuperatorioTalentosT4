import { pool } from "./database.js";

class UsuarioController {


    async getAll(req, res) {
        try {
          const [result] = await pool.query('SELECT * FROM usuarios');
          res.status(200).json({" Datos traido correctamente":result});
        } catch (error) {
          // Manejo de excepciones
          console.error();
          res.status(500).json({ error: "Error del servidor, verifique la conexion con la bd" });
        }
      }

      async getOne(req,res) {
        try{
          const usuario = req.body;
          const [result] = await pool.query(`SELECT * FROM usuarios WHERE id_usuario=(?)`,[usuario.id_usuario]);
          res.status(200).json({" Dato traido correctamente":result});
        } catch (error) {
          console.error();
          res.status(500).json({ error: "Error en la consulta a la base de datos" });
      }
      }
      
    

    async add(req, res) {
      try {
          const usuario = req.body;
          const [result] = await pool.query(`INSERT INTO usuarios (nombre,apellido,usuario,email,pass,perfil_id,baja) VALUES (?,?,?,?,SHA(?),?,?)`, [usuario.nombre, usuario.apellido, usuario.usuario, usuario.email, usuario.pass, usuario.perfil_id, usuario.baja]);
          res.json({ "Datos ingresados correctamente": result.insertId });
      } catch (error) {
          // Manejo de la excepción
          console.error();
          res.status(500).json({ error: "Error al agregar datos" });
      }
  }

    
     
    async delete(req,res){
      try{
        const usuario = req.body;
        const [result] = await pool.query(`DELETE FROM usuarios WHERE id_usuario=(?)`,[usuario.id_usuario]);
        res.json({"Registros eliminado correctamente": result.affectedRows});
    } catch (error) {
      console.error();
      res.status(404).json({ error: "Error al eliminar datos, no hay conexion con la bd" });
  }
}

    
    async update(req,res){
      try{
        const usuario = req.body;
        const [result] = await pool.query(`UPDATE usuarios SET nombre=(?), apellido=(?), usuario=(?),email=(?), pass=SHA(?), perfil_id=(?), baja=(?) WHERE id_usuario=(?)`,[usuario.nombre,usuario.apellido,usuario.usuario,usuario.email,usuario.pass,usuario.perfil_id,usuario.baja,usuario.id_usuario]);
        res.json({"Registros actualizados corecctamente": result.changedRows});
    } catch (error) {
      console.error();
      res.status(404).json({ error: "servidor no encontrado" });  
  }
}


}

export const usuario = new UsuarioController();