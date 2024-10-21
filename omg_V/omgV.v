module main
import vweb

struct App {
    vweb.Context
}

fn main() {
    println("So it is written.")
    vweb.run(&App{}, 8080)
}

pub fn (mut app App) init_once() {
    app.handle_static("stylish", false)
}

pub fn (mut app App) index() vweb.Result {
    return $vweb.html()
}