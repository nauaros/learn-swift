import Foundation

// ---------------
// | Challenge A |
// ---------------

//struct List {
//    let name: String
//    var movies: [String] = []
//    
//    init(name: String) {
//        self.name = name
//    }
//    
//    func printList() {
//        print("Movie List: \(name)")
//        for movie in movies {
//            print(movie)
//        }
//        
//        print("\n")
//    }
//}
//
//class User {
//    var lists: [String: List] = [:]
//    
//    func addList(list: List) {
//        lists[list.name] = list
//    }
//    
//    func listForName(name: String) -> List? {
//        return lists[name]
//    }
//}
//
//let john = User()
//let jene = User()
//var actionList = List(name: "Action")
//
//john.addList(actionList)
//jene.addList(actionList)
//
//john.lists["Action"]?.movies.append("Rambo")
//jene.lists["Action"]?.movies.append("Terminator")
//
//john.lists["Action"]?.movies.append("Die Hard")
//
//john.lists["Action"]?.printList()
//jene.lists["Action"]?.printList()




// ---------------
// | Challenge B |
// ---------------


struct TShirt {
    let style: String
    let size: String
    let color: String
    let price: Double
    let image: String?
    
    init(style: String, size: String, color: String, price: Double, image: String?) {
        self.style = style
        self.size = size
        self.color = color
        self.price = price
        self.image = image
    }
    
    init(style: String, size: String, color: String, price: Double) {
        self.style = style
        self.size = size
        self.color = color
        self.price = price
        self.image = nil
    }
}

class ShoppingCart {
    var tshirts: [TShirt] = []
    let address: Address
    
    init(address: Address) {
        self.address = address
    }
    
    func totalCost() -> Double {
        var totalCost = 0.0
        for shirt in tshirts {
            totalCost += shirt.price
        }
        
        return totalCost
    }
}

struct Address {
    let street: String
    let city: String
    let zip: String
    
    init(street: String, city: String, zip: String) {
        self.street = street
        self.city = city
        self.zip = zip
    }
}

class User {
    var name: String
    var email: String
    var address: Address
    var shoppingCart: ShoppingCart? = nil
    
    init(name: String, email: String, address: Address) {
        self.name = name
        self.email = email
        self.address = address
        self.shoppingCart = ShoppingCart(address: address)
    }
}













