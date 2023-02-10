//
//  ContentView.swift
//  FinancialLiteracyApp
//
//  Created by Bernard Lyons on 1/24/23.
//

import SwiftUI

struct ContentView: View {
    

    var body: some View {
        NavigationView(){
            
            
            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Image(uiImage: UIImage(imageLiteralResourceName: "Pal"))
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                        .padding()
                    
                    NavigationLink(destination: infoPage()){
                        Text("PIGGY PAL")
                            .bold()
                            .font(.system(size: 60))
                            .foregroundColor(Color("MainPage"))
                    }
                    
                }
                .padding()
                
            }
        }
    }
        
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
