//
//  CafeView.swift
//  School-App-Grp-Project
//
//  Created by Anant Natekar on 3/19/23.
//

import SwiftUI

struct GroceryModel: Identifiable {
    let id: String = UUID().uuidString
    let item: String
    let cost: Int
    let isVerified: Bool
    //let image:
}

struct CafeView: View {
    @State private var show = false
    @State var animate: Bool = false
    
    @State var grocery: [GroceryModel] = [
        GroceryModel(item: "Pizza", cost: 2, isVerified: true),
        GroceryModel(item: "Mac & Cheese", cost: 1, isVerified: true),
        GroceryModel(item: "Fried Rice", cost: 3, isVerified: true),
        GroceryModel(item: "Burger & Fries", cost: 4, isVerified: false),
        GroceryModel(item: "Chicken Nuggets", cost: 1, isVerified: false),
        GroceryModel(item: "Milk", cost: 5, isVerified: true),
        GroceryModel(item: "Fruits", cost: 2, isVerified: true),
    ]
    
    var body: some View {
        ZStack{
            Color.blue
            VStack{
                NavigationView{
                    List {
                        ForEach(grocery) {user in
                            HStack(spacing: 15.0){
                                Circle()
                                    .frame(width:35, height:35)
                                VStack(alignment: .leading) {
                                    Text(user.item)
                                        .font(.headline)
                                        .foregroundColor(.blue)
                                }
                                Spacer()
                            }
                        }
                        .onDelete {grocery.remove(atOffsets: $0)}
                        .onMove {grocery.move(fromOffsets: $0, toOffset: $1) }
                        /*
                         if isVerified {
                         Image("checkmark.seal.fill")
                         .foregroundColor(.indigo)
                         }*/
                    }
                    .listStyle(InsetGroupedListStyle())
                    .navigationTitle("Cafe Menu")
                    //.toolbar{EditButton()}
                    //.padding(.vertical,15)
                    Spacer()
                }
                /*
                 HStack(spacing: 15.0){
                 Image(systemName: "cart.circle.fill")
                 .foregroundColor(.blue)
                 .font(.system(size:60))
                 //.aspectRatio(contentMode: .fill)
                 //.frame(width:55, height:55)
                 Button{show.toggle()}
                 label:{
                 Text("Submit !!")
                 .foregroundColor(.black)
                 .font(.title)
                 //.background(animate ? Color.red : Color.accentColor)
                 //.background(.black)
                 .cornerRadius(10)
                 .shadow(
                 color:.black,
                 radius:10,
                 x:0.0,
                 y:0.0
                 )
                 //.offset(y: animate ? +7 : 0)
                 }
                 .padding()
                 //.sheet(isPresented: $show){ResultView()}
                 }
                 */
            }
        }
        
    }
}
    
    struct CafeView_Previews: PreviewProvider {
        static var previews: some View {
            CafeView()
        }
    }

