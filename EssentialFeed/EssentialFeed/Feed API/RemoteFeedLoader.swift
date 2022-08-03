//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Chowdhury Md Rajib  Sarwar on 2/8/22.
//

import Foundation

public protocol HTTPClient {
    func get(from : URL)
}

public final class RemoteFeedLoader {
    private var url: URL!
    private var client: HTTPClient!
    
    public init(url: URL, client: HTTPClient) {
        self.client = client
        self.url = url
    }
    
    public func load() {
        client.get(from: url)
    }
}

