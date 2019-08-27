//
//  Restaurant.swift
//  Resto
//
//  Created by Ludovic on 27/08/2019.
//  Copyright © 2019 Ludovic. All rights reserved.
//

import Foundation

enum FormError: Error {
    case outOfRange
    case emptyField
}

enum Style: String, CaseIterable {
    case japanese = "Japonais"
    case burger = "Burger"
    case healthy = "Healthy"

    init?(intValue: Int) {
        switch intValue {
        case 0:
            self = .japanese
        case 1:
            self = .burger
        case 2:
            self = .healthy
        default:
            return nil
        }
    }
    
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

struct Restaurant: Equatable, Hashable {

    let name: String
    let adress: String
    let style: Style
    let review: Int?
    let comment: String
    let isVisited: Bool

    //We use the auto synthesis for protocol
//    static func == (lhs: Restaurant, rhs: Restaurant) -> Bool {
//        return lhs.name == rhs.name
//    }
}
