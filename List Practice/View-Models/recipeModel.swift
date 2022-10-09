//
//  recipeModel.swift
//  List Practice
//
//  Created by Sam Reed on 10/8/22.
//

import Foundation

class RecipeModel:ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if pathString != nil {
            //Create url object
            let url = URL(fileURLWithPath: pathString!)
            
            //create data object with the data at the url
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for r in recipeData {
                    r.id = UUID()
                }
                
                self.recipes = recipeData;
                
            }
            catch {
                print(error)
            }
        }
    
    }
    
}
