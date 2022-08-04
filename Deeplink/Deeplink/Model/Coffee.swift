//
//  Coffee.swift
//  Deeplink
//
//  Created by Startrip Dev on 2022/08/04.
//

import Foundation

struct Coffee: Identifiable {
  var id: String
  var title: String
  var description: String
  var productImage: String
  var productPrice: String
}

var coffees: [Coffee] = [
  Coffee(id: "COFFB11", title: "1 Coffee", description: "1 Coffee", productImage: "1", productPrice: "$10"),
  Coffee(id: "COFFB12", title: "2 Coffee", description: "2 Coffee", productImage: "2", productPrice: "$11"),
  Coffee(id: "COFFB13", title: "3 Coffee", description: "3 Coffee", productImage: "3", productPrice: "$12"),
  Coffee(id: "COFFB14", title: "4 Coffee", description: "4 Coffee", productImage: "4", productPrice: "$13"),
  Coffee(id: "COFFB15", title: "5 Coffee", description: "5 Coffee", productImage: "5", productPrice: "$14"),
  Coffee(id: "COFFB16", title: "6 Coffee", description: "6 Coffee", productImage: "6", productPrice: "$15"),
]
