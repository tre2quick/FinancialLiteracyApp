//
//  childPages.swift
//  FinancialLiteracyApp
//
//  Created by Bernard Lyons on 2/6/23.
//

import SwiftUI

struct childPages: View {
    @Binding var chores: [Chore]
    
    var body: some View {
        let chore = chores[0]
        
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                    Text("Good Morning Chloe!")
                    .bold()
                    .foregroundColor(Color("PinkColor"))
                    .font(.system(size: 30))
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color("PinkColor"))
                    .frame(width: 350, height: 300)
                    .overlay(
                        
                        VStack{
                            
                            Text("Today's To-Do List")
                                .foregroundColor(.white)
                                .bold()
                                .font(.system(size:25))
                                .padding(.bottom, 40)
                            
                            
                            
                            // TODO: Wrap this HStack (lines 42 - 70) in a SwiftUI ForEach loop to prevent repeat code
                            // https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-views-in-a-loop-using-foreach
                            
                            // Can you extract this row into it's own view?
                            
                            // Is there a simpler way to show the different images? (Look up the ternary operator)
                            
                            HStack(){
                                
                                if chore.isCompleted {
                                   Image(systemName: "checkmark.circle")
                                        .bold()
                                        .imageScale(.large)
                                } else {
                                    Image(systemName: "circle")
                                        .bold()
                                        .imageScale(.large)
                                }
                                
                                
                                Text(chore.choreName)
                                    .padding(.trailing, 20)
                                
                                ForEach(1...chore.coinValue, id: \.self) { coin in
                                    Image(uiImage: UIImage(imageLiteralResourceName: "Coin"))
                                        //.frame(width: -10, height: -10)
                                }
                                
                                
                                
                                Spacer()
                            }
                            .padding(.bottom, 30)
                            
                            HStack(){
                                
                                Image(systemName: "checkmark.circle")
                                    .bold()
                                    .imageScale(.large)

                                
                                Text("Take Trash Out")
                                    .padding(.trailing, 20)
                                
                                Image(uiImage: UIImage(imageLiteralResourceName: "Coin"))
                                    .frame(width: -10, height: -10)
                                
                                Spacer()
                                
                                
                            }
                            .padding(.bottom, 30)

                            
                            HStack(){
                                
                                Image(systemName: "circle")
                                    .bold()
                                    .imageScale(.large)

                                
                                Text("Cut Grass")
                                    .padding(.trailing, 20)
                                
                                Image(uiImage: UIImage(imageLiteralResourceName: "Coin"))
                                    .frame(width: -10, height: -10)
                                
                                Spacer()
                                
                                
                            }
                        })
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color("PinkColor"))
                    .frame(width: 350, height: 300)
                
            }
        }
    }
}

struct childPages_Previews: PreviewProvider {
    
    static var previews: some View {
        childPages(chores: .constant([Chore(choreName: "Wash Dishes", coinValue: 1)]))
    }
}
