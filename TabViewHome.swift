//
//  TabViewHome.swift
//  School-App-Grp-Project
//
//  Created by Anant Natekar on 3/19/23.
//

import SwiftUI

struct TabViewHome: View {

    @State private var selection: String = "Events"
    @State var isActive : Bool = false
    
    var body: some View {
        if isActive {
            SplashScreenView()
        } else {
            TabView(selection:$selection){
                AnnouncementView()
                    .tabItem{
                        Image(systemName: "speaker.wave.3.fill")
                        Text("Events")
                    }
                //Color.blue
                CafeView()
                    .tabItem{
                        Image(systemName: "fork.knife.circle.fill")
                        Text("Cafe")
                    }
                //Color.green
                InfoView()
                    .tabItem{
                        Image(systemName: "info.bubble")
                        Text("Information")
                    }
                //Color.gray
                FavoriteView()
                    .tabItem{
                        Image(systemName: "list.bullet.clipboard")
                        Text("Documents")
                    }
                //Color.brown
                ToDoView()
                    .tabItem{
                        Image(systemName: "figure.run")
                        Text("Extra")
                    }
            }
            /*
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation {
                        //self.isActive = true
                    }
                }
            }*/
        }
    }
    
}

struct TabViewHome_Previews: PreviewProvider {
    static var previews: some View {
        TabViewHome()
    }
}

struct AnnouncementView: View {
    var body: some View {
        ZStack{
            Color.red
            VStack(alignment: .center) {
                Text("B Day").font(.largeTitle)
                    .padding()
                Image("bhs")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding()
                Text("Today's Events").font(.title)
                    .padding()
                Text("Lunch Pep Rally @ The Pit!")
                    .padding()
                Text("TELPAS Testing in Academy 1 (check for your name in the list in the cafeteria)")
                //.frame(.center)
            }
        }
    }
}

struct InfoView: View {
    var body: some View {
        ZStack {
            Color.green
            VStack(alignment: .center) {
                Text("B Day").font(.largeTitle)
                    .padding()
                Image("bhs")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding()
                Text("Today's Events").font(.title)
                    .padding()
                Text("Lunch Pep Rally @ The Pit!")
                    .padding()
                Text("TELPAS Testing in Academy 1 (check for your name in the list in the cafeteria)")
                //.frame(.center)
            }
        }
    }
}

struct FavoriteView: View {
    var body: some View {
        ZStack{
            Color.teal
            VStack(alignment: .center) {
                Text("B Day").font(.largeTitle)
                    .padding()
                Image("bhs")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding()
                Text("Today's Events").font(.title)
                    .padding()
                Text("Lunch Pep Rally @ The Pit!")
                    .padding()
                Text("TELPAS Testing in Academy 1 (check for your name in the list in the cafeteria)")
                //.frame(.center)
            }
        }
    }
}

struct ToDoView: View {
    var body: some View {
        ZStack{
            Color.gray
            VStack(alignment: .center) {
                Text("B Day").font(.largeTitle)
                    .padding()
                Image("bhs")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .padding()
                Text("Today's Events").font(.title)
                    .padding()
                Text("Lunch Pep Rally @ The Pit!")
                    .padding()
                Text("TELPAS Testing in Academy 1 (check for your name in the list in the cafeteria)")
                //.frame(.center)
            }
        }
    }
}
