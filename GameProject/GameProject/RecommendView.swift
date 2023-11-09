//
//  RecommendView.swift
//  GameProject
//
//  Created by 김지훈 on 2023/11/09.
//

import SwiftUI

struct RecommendView: View {
    @ObservedObject var gameObservable: GameObservable
    
    var body: some View {
            
        List {
            Section {
                ScrollView(.horizontal, showsIndicators: false) {
                    GridRow {
                        HStack {
                            ForEach($gameObservable.fps) { (game: Binding<Game>) in
                                VStack {
                                    Image(game.wrappedValue.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                    HStack {
                                        Text(game.wrappedValue.name)
                                        Button(action: {
                                            if let index = gameObservable.fps.firstIndex(of: game.wrappedValue) {
                                                gameObservable.fps[index].isLike = gameObservable.fps[index].isLike ? false : true

                                            }
                                        }, label: {
                                            Image(systemName: game.wrappedValue.isLike ? "heart.fill" : "heart" )
                                        })
                                    }
                                }
                            }
                        }
                    }
                }
            } header: {
                Text("FPS")
                    .font(.title3)
                    .foregroundStyle(.black)
            }
                        Section {
                            ScrollView(.horizontal, showsIndicators: false) {
                                GridRow {
                                    HStack {
                                        ForEach($gameObservable.rpg) { (game: Binding<Game>) in
                                            VStack {
                                                Image(game.wrappedValue.image)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 150, height: 100)
                                                HStack {
                                                    Text(game.wrappedValue.name)
                                                    Button(action: {
                                                        if let index = gameObservable.rpg.firstIndex(of: game.wrappedValue) {
                                                            gameObservable.rpg[index].isLike = gameObservable.rpg[index].isLike ? false : true
                                                        }
                                                    }, label: {
                                                        Image(systemName: game.wrappedValue.isLike ? "heart.fill" : "heart" )
                                                    })
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } header: {
                            Text("RPG")
                                .font(.title3)
                                .foregroundStyle(.black)
                        }
                    }
                    .navigationTitle("Recommendations")
                }
            }

//#Preview {
//    RecommendView()
//}
