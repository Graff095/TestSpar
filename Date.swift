//
//  Date.swift
//  TestSpar
//
//  Created by Visarg on 16.08.2023.
//

import Foundation
struct StatusDate:Identifiable {
    var id = UUID()
    var statusImage:String
    var statusTitle: String

}

var statusArray = [StatusDate(statusImage: "status 1", statusTitle: "Привилении Мой SPAR"),
                   StatusDate(statusImage: "status 2", statusTitle: "Мы в соцсетях"),
                   StatusDate(statusImage: "status 3", statusTitle: "Три рецепта коктейлей"),
                   StatusDate(statusImage: "status 4", statusTitle: "Дегустации в SPAR")
]

struct ProductDate:Identifiable {
    var id = UUID()
    var image:String
    var price: Int

}

var productRecommed = [ProductDate(image: "product 1",  price: 279),
                       ProductDate(image: "product 2",  price: 279),
                       ProductDate(image: "product 3",  price: 399),
                       ProductDate(image: "product 4",  price: 76)
]

var productSweet = [ProductDate(image: "productSweet 1",  price: 99),
                       ProductDate(image: "productSweet 2",  price: 99),
                       ProductDate(image: "productSweet 3",  price: 99)
]
