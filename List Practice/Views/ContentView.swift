//
//  ContentView.swift
//  List Practice
//
//  Created by Sam Reed on 10/1/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var recipeModel = RecipeModel()
    
    
    var body: some View {
        VStack{
            List(recipeModel.recipes) { r in
              
                VStack(alignment: .leading){
                    Text(r.name)
                    Text(r.cuisine)
                }
                
            }
        } // End VStack
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
