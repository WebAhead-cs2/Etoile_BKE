
const express=require("express");
const PORT = process.env.PORT || 3001;
const app= express();
//const db = require('./database/connection');

app.get("/api"),(req,res)=>{
    res.json({message:"Hello from server!"});
}

app.listen(PORT,()=>{
    console.log(`Server listening on ${PORT}`);
});