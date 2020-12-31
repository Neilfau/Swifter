//
//  UserFields.swift
//  Swifter
//
//  Created by Srijan Bhatia on 31/12/20.
//  Copyright © 2020 Matt Donnelly. All rights reserved.
//

import Foundation

public class UserFields {
    let createdAt: Bool
    let description: Bool
    let entities: Bool
    let id: Bool
    let location: Bool
    let name: Bool
    let pinnedTweetId: Bool
    let profileImageUrl: Bool
    let protected: Bool
    let publicMetrics: Bool
    let url: Bool
    let userName: Bool
    let verified: Bool
    let withHeld: Bool
    
    public init(createdAt: Bool = false,
                description: Bool = false,
                entities: Bool = false,
                id: Bool = false,
                location: Bool = false,
                name: Bool = false,
                pinnedTweetId: Bool = false,
                profileImageUrl: Bool = false,
                protected: Bool = false,
                publicMetrics: Bool = false,
                url: Bool = false,
                userName: Bool = false,
                verified: Bool = false,
                withHeld: Bool = false) {
        self.createdAt = createdAt
        self.description = description
        self.entities = entities
        self.id = id
        self.location = location
        self.name = name
        self.pinnedTweetId = pinnedTweetId
        self.profileImageUrl = profileImageUrl
        self.protected = protected
        self.publicMetrics = publicMetrics
        self.url = url
        self.userName = userName
        self.verified = verified
        self.withHeld = withHeld
    }
    
    func getFieldsString() -> String {
        var fields = [String]()
        if self.createdAt {
            fields.append("created_at")
        }
        if self.description {
            fields.append("description")
        }
        if self.entities {
            fields.append("entities")
        }
        if self.id {
            fields.append("id")
        }
        if self.location {
            fields.append("location")
        }
        if self.name {
            fields.append("name")
        }
        if self.pinnedTweetId {
            fields.append("pinned_tweet_id")
        }
        if self.profileImageUrl {
            fields.append("profile_image_url")
        }
        if self.protected {
            fields.append("protected")
        }
        if self.publicMetrics {
            fields.append("public_metrics")
        }
        if self.url {
            fields.append("url")
        }
        if self.userName {
            fields.append("username")
        }
        if self.verified {
            fields.append("verified")
        }
        if self.withHeld {
            fields.append("withheld")
        }
        return fields.joined(separator: ",")
    }
}
