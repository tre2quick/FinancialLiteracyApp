//
//  Backend View.swift
//  FinancialLiteracyApp
//
//  Created by Bernard Lyons on 2/9/23.
//

import SwiftUI

struct Backend_View: View {
    
    @State var chore1: String = ""
    @State var chore2: String = ""
    
    /*
     TODO:
     1. Pass in a @Binding to the chores that are your source of truth
     
     2. When a user creates a chore, tapping a button that can run logic that will append the newly created chore to the source of truth (array of chores passed in)
     */

    var body: some View {
    
        VStack {
            HStack {
                Text("Chore 1:")
                TextField("Enter a chore" , text: $chore1)
                
                
            }
            .padding()
            
            HStack {
                Text("Chore 2:")
                TextField("Enter a chore" , text: $chore2)
                
                
            }
            .padding()

        }
        
    }
}

struct Backend_View_Previews: PreviewProvider {
    static var previews: some View {
        Backend_View()
    }
}
