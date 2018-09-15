//
//  Fish.swift
//  plasticfishes-mvc
//
//  Created by Rodriguez Isaac on 9/14/18.
//  Copyright © 2018 RodriguezIsaac. All rights reserved.
//

import Foundation
struct Fish: Decodable {
    let id: String
    let name: String
    let text: String
    let apiUrlString: String
    let webUrlString: String
    let imageUrlString: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case text = "text"
        case apiUrlString = "api_url"
        case webUrlString = "web_url"
        case imageUrlString = "image_url"
    }
    
    
    var apiUrl: URL? {
        return URL(string: apiUrlString)
    }
    
    var webUrl: URL? {
        return URL(string: webUrlString)
    }
    
    var imageUrl: URL? {
        return URL(string: imageUrlString)
    }
    
    
    
    var imageData: Data? {
        guard let url = imageUrl else {return nil}
        do {
            return try Data(contentsOf: url)
        } catch  {
            return nil
        }
    }
    
}
