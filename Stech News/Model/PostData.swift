//
//  PostData.swift
//  Stech News
//
//  Created by suhail on 15/09/22.
//

import Foundation

struct Results: Decodable{
    let hits : [Post]
    
    
    
}

struct Post: Decodable, Identifiable{
    
    var id: String{
        return objectID
    }
    
    let objectID: String
    let title: String
    let points: Int
    let url: String?
    
}
