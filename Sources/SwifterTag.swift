//
//  SwifterTag.swift
//  Swifter
//
//  Created by Andy on 7/30/16.
//  Copyright © 2016 Matt Donnelly. All rights reserved.
//

import Foundation

public enum UserTag {
    case id(String)
    case screenName(String)
    
    var key: String {
        switch self {
        case .id:           return "user_id"
        case .screenName:   return "screen_name"
        }
    }
    
    var value: String {
        switch self {
        case .id(let id):           return id
        case .screenName(let user): return user
        }
    }
    
    var baseURL: String {
        switch self {
        case .id:           return "users/\(self.value)"
        case .screenName:   return "users/by/username/\(self.value)"
        }
    }
}

public enum UsersTag {
    case id([String])
    case screenName([String])
    
    var key: String {
        switch self {
        case .id:           return "ids"
        case .screenName:   return "usernames"
        }
    }
    
    var value: String {
        switch self {
        case .id(let id):           return id.joined(separator: ",")
        case .screenName(let user): return user.joined(separator: ",")
        }
    }
    
    var baseURL: String {
        switch self {
        case .id:           return "users"
        case .screenName:    return "users/by"
        
        }
    }
}

public enum ListTag {
    case id(String)
    case slug(String, owner: UserTag)
    
    var key: String {
        switch self {
        case .id:   return "list_id"
        case .slug: return "slug"
        }
    }
    
    var value: String {
        switch self {
        case .id(let id):           return id
        case .slug(let slug, _):    return slug
        }
    }
    
}
