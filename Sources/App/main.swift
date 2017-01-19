import Vapor
import VaporMix

let drop = Droplet()

if let leaf = drop.view as? LeafRenderer {
    leaf.stem.register(Mix())
}

drop.get { req in
    return try drop.view.make("welcome", [
    	"message": drop.localization[req.lang, "welcome", "title"]
    ])
}

drop.resource("posts", PostController())

drop.run()
