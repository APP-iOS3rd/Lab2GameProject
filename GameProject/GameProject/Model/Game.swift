//
//  Game.swift
//  GameProject
//
//  Created by 김지훈 on 2023/11/09.
//

import Foundation

class GameObservable: ObservableObject {
    @Published var gamesList: [Game] = []
    @Published var rpg: [Game] = []
    @Published var fps: [Game] = []
}

struct Game: Hashable, Identifiable {    
    let id = UUID()
    var name: String   //게임 이름
    var image: String  //게임 이미지 링크
    var category: String    //카테고리
    var isLike: Bool?        //좋아요
}
