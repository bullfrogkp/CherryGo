//
//  ContentView.swift
//  CherryGo
//
//  Created by Kevin Pan on 2020-06-06.
//  Copyright © 2020 Kevin Pan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    
    var body: some View {
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
        }
        
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            if self.showMenu == true {
                                withAnimation {
                                    self.showMenu = false
                                }
                            }
                        }
                    
                    MenuView()
                        .frame(width: geometry.size.width/2)
                        .offset(x: self.showMenu ? 0:  -geometry.size.width/2 )
                    
                }
                .gesture(drag)
            }
            .navigationBarTitle("樱桃北美代购🍒", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
        }
    }
}

struct MainView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.showMenu = true
            }
        }) {
            Text("Show Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
