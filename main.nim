import jester, asyncdispatch, htmlgen

routes:
  get "/":
    let isim = "John Doe"
    let html = $"""
    <html>
      <body>
        <h1>Nim HTTP Server Denemesi</h1>
        <b>""" & isim & """</b>
        <form method="POST" action="/isim-degis">
          <input type="text" id="isim" name="isim">
          <input type="submit">
        </form>
      </body>
    </html>
    """
    resp html

  post "/isim-degis":
    var isim = request.params["isim"]
    let html = $"""
    <html>
      <body>
        <h1>Nim HTTP Server Denemesi</h1>
        <b>""" & isim & """</b>
        <form method="POST" action="/isim-degis">
          <input type="text" id="isim" name="isim">
          <input type="submit">
        </form>
      </body>
    </html>
    """
    resp html

runForever()
