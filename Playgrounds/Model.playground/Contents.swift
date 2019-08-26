import UIKit

protocol MonProt {
    var name: String { get }
}

enum Style: String {
    case japanese = "Japonais"
    case burger
    case healthy

    var intValue: Int {
        switch self {
        case .japanese:
            return 0
        case .burger:
            return 1
        case .healthy:
            return 2
        }
    }
}

let jap = Style.japanese
jap.rawValue
Style(rawValue: "Japonais")

struct Restaurant: Equatable, MonProt, Hashable {

    let name: String
    let adress: String

    //We use the auto synthesis for protocol
//    static func == (lhs: Restaurant, rhs: Restaurant) -> Bool {
//        return lhs.name == rhs.name
//    }
}

class Directory {

    static let instance = Directory()

    //Set is private, get is internal
    private(set) var restaurants: [Restaurant]

    private init() {
        restaurants = []
    }

    func add(_ newRestaurant: Restaurant) {
        restaurants.append(newRestaurant)
    }

    func remove(_ restaurantToRemove: Restaurant) {

        guard let index = restaurants.firstIndex(of: restaurantToRemove) else { return }
        restaurants.remove(at: index)

//        if let index = restaurants.firstIndex(of: restaurantToRemove) {
//            restaurants.remove(at: index)
//        }
    }
}

extension Directory: Equatable {
    static func == (lhs: Directory, rhs: Directory) -> Bool {
        return lhs.restaurants == rhs.restaurants
    }
}

extension String {
    func inversée() -> String {
        return String(self.reversed())
    }
}

"Ludovic".inversée()
