//
//  infoPage.swift
//  FinancialLiteracyApp
//
//  Created by Bernard Lyons on 2/6/23.
//

import SwiftUI

struct infoPage: View {
    @State private var chores: [Chore] = [
        Chore(choreName: "Clean Dishes", coinValue: 1)
    ]
    
    var body: some View {

            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Image(uiImage: UIImage(imageLiteralResourceName: "PiggyPal"))
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.accentColor)
                        .padding()
                    
                    Text("Your go-to friend for saving and goal tracking!")
                        .multilineTextAlignment(.center)
                        .bold()
                        .foregroundColor(Color("PinkColor"))
                        .font(.system(size: 35))
                        
                    
                    HStack(spacing: 40){
                            
                        NavigationLink(destination: childPages(chores: $chores)){
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("MainPage"))
                                    .frame(width:150, height: 90)
                                    .overlay(Text("I'm a Child")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.system(size:25)))
                            }
                            
                            
                            
                            NavigationLink(destination: parentPages()){
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color("MainPage"))
                                    .frame(width:150, height: 90)
                                    .overlay(Text("I'm a Parent")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.system(size:25)))
                            }
                            
                        }
                        
                }
                .padding()
                
            }
        
    }
}

struct infoPage_Previews: PreviewProvider {
    static var previews: some View {
        infoPage()
    }
}
