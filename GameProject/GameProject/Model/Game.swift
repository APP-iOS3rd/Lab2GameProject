//
//  Game.swift
//  GameProject
//
//  Created by 김지훈 on 2023/11/09.
//

import Foundation

class GameObservable: ObservableObject {
    @Published var gamesList: [Game] = []
    @Published var rpg: [Game] = [
        Game(name: "legend", image: "legend_rpg" , category: "rpg", isLike: false),
        Game(name: "hero", image: "hero_rpg" , category: "rpg", isLike: false),
        Game(name: "squareEnix", image: "squareEnix_rpg" , category: "rpg", isLike: false),
        Game(name: "rostArk", image: "rostArk_rpg" , category: "rpg", isLike: false),
        Game(name: "camco", image: "camco_rpg" , category: "rpg", isLike: false)
    ]
    @Published var fps: [Game] = [
        Game(name: "rainbowSix", image: "rainbowSix_fps" , category: "fps", isLike: false),        
        Game(name: "specialForce", image: "specialForce_fps" , category: "fps", isLike: false),
        Game(name: "overWatch", image: "overWatch_fps" , category: "fps", isLike: false),
        Game(name: "fortNine", image: "fortNine_fps" , category: "fps", isLike: false),
        Game(name: "battleGround", image: "battleGround_fps" , category: "fps", isLike: false),
    ]
}

struct Game: Hashable, Identifiable {    
    let id = UUID()
    var name: String   //게임 이름
    var image: String  //게임 이미지 링크
    var category: String    //카테고리
    var isLike: Bool        //좋아요
}
