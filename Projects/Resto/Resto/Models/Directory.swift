//
//  Directory.swift
//  Resto
//
//  Created by Ludovic on 27/08/2019.
//  Copyright © 2019 Ludovic. All rights reserved.
//

import Foundation

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
