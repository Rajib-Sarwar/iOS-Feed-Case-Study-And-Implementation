//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Chowdhury Md Rajib  Sarwar on 2/8/22.
//

import Foundation



public final class RemoteFeedLoader {
    
    private var url: URL!
    private var client: HTTPClient!
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public typealias Result = LoadFeedResult
    
    public init(url: URL, client: HTTPClient) {
        self.client = client
        self.url = url
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        
        client.get(from: url) { [weak self] result in
            guard self != nil else { return }
            
            switch result {
            case let .success(data, response):
                completion(FeedItemsMapper.map(data, from: response))
            case .failure:
                completion(.failure(RemoteFeedLoader.Error.connectivity))
            }
        }
    }
}


