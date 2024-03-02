import  Express  from "express";
const app = Express();
import { usuario } from "./routes/routeUser.js";
import cors from 'cors';

// Middleware 
app.use(Express.json());
const corsOptions = {
    origin : 'http://localhost:5174', 
    credentials : true,
    methods: ['GET', 'PUT', 'POST', 'DELETE', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization']
}
app.use(cors(corsOptions));
// Rutas
app.use('/api/usuario', usuario);


//Puerto
app.listen(4000, ()=>{

    console.log("Esuchando en el puerto 4000");

});