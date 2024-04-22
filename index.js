const express = require('express')
const app = express()
const port = 3000
app.use(express.json())
app.get('/', (req, res) => {
    res.json({message: 'GITHUB TRY 1 - Hellow World AWS Tho a dit: Helloww ca se termine pas par W try 1'})
})
let server  = app.listen(port, () => {
  console.log(`example app listening at port ${port}`)
})
function stop() {
  server.close();
}
module.export = server;
module.export.stop = stop;
