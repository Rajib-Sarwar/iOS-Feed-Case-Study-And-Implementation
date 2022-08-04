//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Chowdhury Md Rajib  Sarwar on 4/8/22.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from : URL, completion:
             @escaping (HTTPClientResult) -> Void)
}
