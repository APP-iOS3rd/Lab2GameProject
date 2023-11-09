//
//  ContentView.swift
//  GameProject
//
//  Created by 김지훈 on 2023/11/09.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var gameObservable = GameObservable()
    
    var body: some View {
        NavigationStack {
            TabView {
                RecommendView(gameObservable: gameObservable)
                    .tabItem {
                        Image(systemName: "play")
                    }
                
                LibraryView(gameObservable: gameObservable)
                    .tabItem {
                        Image(systemName: "heart")
                    }
            }
        }
    }
}



