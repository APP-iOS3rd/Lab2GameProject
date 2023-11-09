//
//  LibraryView.swift
//  GameProject
//
//  Created by 김지훈 on 2023/11/09.
//

import SwiftUI

struct LibraryView: View {
    @StateObject var gameObservable: GameObservable
    @State var gameasd: [Game] = [Game(name: "롤", image: "applelogo", category: "RPG", isLike: true), Game(name: "배그", image: "swift", category: "FPS", isLike: false), Game(name: "배그", image: "swift", category: "FPS", isLike: false), Game(name: "배그", image: "swift", category: "FPS", isLike: false), Game(name: "롤", image: "applelogo", category: "RPG", isLike: true)]
    
    private let layouts: [GridItem] = [GridItem(), GridItem()]
    
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                LazyVGrid(columns: layouts, spacing: 5) {
                    ForEach(gameasd, id: \.self) { index in
                        if index.isLike {
                            VStack {
                                ZStack {
                                    Image(systemName: index.image)
                                        .font(.system(size: 100))
                                    
                                    Button(action: {
                                        if let asd = gameasd.firstIndex(of: index){
                                            gameasd[asd].isLike = false
                                        }
                                    }, label: {
                                        Image(systemName: "heart.fill")
                                            .foregroundStyle(.pink)
                                            .padding(.leading, 50)
                                            .padding(.top, 70)
                                    })
                                }
                                Text(index.name)
                                    .font(.largeTitle)
                            }
                        }
                    }
                }
                .padding()
            }
            
        }
    }
}

#Preview {
    LibraryView(gameObservable: GameObservable())
}
