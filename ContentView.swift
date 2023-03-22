//
//  ContentView.swift
//  School-App-Grp-Project
//
//  Created by Anant Natekar on 2/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showTabViewHome = false
    @State var isActive = false
    
    var body: some View {
        if isActive {
            TabViewHome()
        } else {
            VStack(alignment: .center) {
                Text("Campus Loop").font(.largeTitle)
                Divider()
                Image("Picture1")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Divider()
                //Text("Welcome!").font(.title)
                //Divider()
                
                HStack {
                    Button {
                        showTabViewHome.toggle()
                        self.isActive = true
                    }
                label: {
                    Text("Welcome")
                        .fontWeight(.semibold)
                        .font(.title)
                    Image(systemName: "rectangle.portrait.and.arrow.forward.fill")
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.teal)
                .cornerRadius(40)
                }
                .padding()
                /*
                if showTabViewHome {
                    TabViewHome()
                }*/
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
