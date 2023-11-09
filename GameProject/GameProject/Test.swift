//
//  Test.swift
//  GameProject
//
//  Created by 이민호 on 2023/11/09.
//

import SwiftUI



struct Test: View {
    
    var body: some View {
        VStack {
            ForEach(gameObjs.gamesList, id: \.self) { game in
                game.image
            }
        }

    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
