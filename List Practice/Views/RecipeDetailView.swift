//
//  RecipeDetailView.swift
//  List Practice
//
//  Created by Sam Reed on 10/9/22.
//  Copyright © 2022 Sam Reed. All rights reserved.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            Text(recipe.name)
            Text(recipe.cuisine)
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //create a dummy recipe so we can preveiw
        let model = RecipeModel()
        
        
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
