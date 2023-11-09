//
//  LibraryView.swift
//  GameProject
//
//  Created by 김지훈 on 2023/11/09.
//

import SwiftUI

struct LibraryView: View {
    @StateObject var gameObservable = GameObservable()
    
    private let layouts: [GridItem] = [GridItem(), GridItem()]
    
    var body: some View {
        VStack {
            HStack {
                Text("Library")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            HStack {
                Text("RPG")
                    .font(.title)
                    .bold()
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            ScrollView(.vertical) {
                LazyVGrid(columns: layouts, spacing: 20) {
                    ForEach($gameObservable.rpg, id: \.self) { (game: Binding<Game>) in
                        if !game.wrappedValue.isLike {
                            VStack {
                                ZStack {
                                    Image(game.wrappedValue.image)
                                        .resizable()
                                        .frame(width: 150, height: 100)
                                        .aspectRatio(contentMode: .fit)
                                        
                                    Button(action: {
                                        if let index = gameObservable.rpg.firstIndex(of: game.wrappedValue){
                                            gameObservable.rpg[index].isLike = false
                                        }
                                    }, label: {
                                        Image(systemName: "heart.fill")
                                            .font(.system(size: 30))
                                            .foregroundStyle(.pink)
                                            .padding(.leading, 110)
                                            .padding(.top, 65)
                                    })
                                }
                                Text(game.wrappedValue.name)
                                    .bold()
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
