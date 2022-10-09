//
//  recipe.swift
//  List Practice
//
//  Created by Sam Reed on 10/8/22.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name = ""
    var cuisine = ""
    
}
