//
//  GameModel.swift
//  Submission Aplikasi Bentuk Katalog
//
//  Created by Arya Moehammad Ilham on 11/05/23.
//

import Foundation

public struct GameModel {
    public init() {}
    
    public var id: Int?
    public var name, released: String?
    public var backgroundImage: String?
    public var rating: Double?
    public var ratingTop, metacritic: Int?
    public var description: String?
    public var tags: [TagsModel] = []
}


public struct TagsModel {
    public init() {}

    public var id: Int?
    public var name: String?
}
