//
//  LevelModel.swift
//  Achievements
//
//  Created by Ayman Zeine on 7/31/18.
//  Copyright © 2018 Ayman Zeine. All rights reserved.
//

import Foundation

struct DataFile: Decodable {
    var success: Bool
    var status: Int
    var overview: Info
    var achievements: [LevelModel]
}

struct Info: Decodable {
    var title: String
}

struct LevelModel: Decodable {
    
    var id: Int
    var level: String
    var progress: Int
    var total: Int
    var bg_image_url: String
    var accessible: Bool
    
}
