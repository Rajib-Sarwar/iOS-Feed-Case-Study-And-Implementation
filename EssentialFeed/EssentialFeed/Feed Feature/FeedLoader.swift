//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Chowdhury Md Rajib  Sarwar on 1/8/22.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
