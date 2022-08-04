//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Chowdhury Md Rajib  Sarwar on 1/8/22.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let ImageURL: String
}
