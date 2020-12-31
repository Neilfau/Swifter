//
//  TweetFields.swift
//  Swifter
//
//  Created by Srijan Bhatia on 31/12/20.
//  Copyright © 2020 Matt Donnelly. All rights reserved.
//

import Foundation

public class TweetFields {
    let attachments: Bool
    let authorId: Bool
    let contextAnnotations: Bool
    let conversationId: Bool
    let createdAt: Bool
    let entities: Bool
    let geo: Bool
    let id: Bool
    let inReplyToUserId: Bool
    let lang: Bool
    let nonPublicMetrics: Bool
    let publicMetrics: Bool
    let organicMetrics: Bool
    let promotedMetrics: Bool
    let possiblySensitive: Bool
    let referencedTweets: Bool
    let replySettings: Bool
    let source: Bool
    let text: Bool
    let withHeld: Bool
    
    
    /// Used for user lookup parameters
    public init(attachments: Bool = false,
                authorId: Bool = false,
                contextAnnotations: Bool = false,
                conversationId: Bool = false,
                createdAt: Bool = false,
                entities: Bool = false,
                geo: Bool = false,
                id: Bool = false,
                inReplyToUserId: Bool = false,
                lang: Bool = false,
                nonPublicMetrics: Bool = false,
                publicMetrics: Bool = false,
                organicMetrics: Bool = false,
                promotedMetrics: Bool = false,
                possiblySensitive: Bool = false,
                referencedTweets: Bool = false,
                source: Bool = false,
                text: Bool = false,
                withHeld: Bool = false) {
        
        self.attachments = attachments
        self.authorId = authorId
        self.contextAnnotations = contextAnnotations
        self.conversationId = conversationId
        self.createdAt = createdAt
        self.entities = entities
        self.geo = geo
        self.id = id
        self.inReplyToUserId = inReplyToUserId
        self.lang = lang
        self.nonPublicMetrics = nonPublicMetrics
        self.publicMetrics = publicMetrics
        self.organicMetrics = organicMetrics
        self.promotedMetrics = promotedMetrics
        self.possiblySensitive = possiblySensitive
        self.referencedTweets = referencedTweets
        self.replySettings = false
        self.source = source
        self.text = text
        self.withHeld = withHeld
    }
    
    /// Used for follower lookup parameters
    public init(attachments: Bool = false,
                authorId: Bool = false,
                contextAnnotations: Bool = false,
                conversationId: Bool = false,
                createdAt: Bool = false,
                entities: Bool = false,
                geo: Bool = false,
                id: Bool = false,
                inReplyToUserId: Bool = false,
                lang: Bool = false,
                nonPublicMetrics: Bool = false,
                publicMetrics: Bool = false,
                organicMetrics: Bool = false,
                promotedMetrics: Bool = false,
                possiblySensitive: Bool = false,
                referencedTweets: Bool = false,
                replySettings: Bool = false,
                source: Bool = false,
                text: Bool = false,
                withHeld: Bool = false) {
        
        self.attachments = attachments
        self.authorId = authorId
        self.contextAnnotations = contextAnnotations
        self.conversationId = conversationId
        self.createdAt = createdAt
        self.entities = entities
        self.geo = geo
        self.id = id
        self.inReplyToUserId = inReplyToUserId
        self.lang = lang
        self.nonPublicMetrics = nonPublicMetrics
        self.publicMetrics = publicMetrics
        self.organicMetrics = organicMetrics
        self.promotedMetrics = promotedMetrics
        self.possiblySensitive = possiblySensitive
        self.referencedTweets = referencedTweets
        self.replySettings = replySettings
        self.source = source
        self.text = text
        self.withHeld = withHeld
    }
    
    func getFieldsString() -> String {
        var fields = [String]()
        if self.attachments {
            fields.append("attachments")
        }
        if self.authorId {
            fields.append("author_id")
        }
        if self.contextAnnotations {
            fields.append("context_annotations")
        }
        if self.conversationId {
            fields.append("conversation_id")
        }
        if self.createdAt {
            fields.append("created_at")
        }
        if self.entities {
            fields.append("entities")
        }
        if self.geo {
            fields.append("geo")
        }
        if self.id {
            fields.append("id")
        }
        if self.inReplyToUserId {
            fields.append("in_reply_to_user_id")
        }
        if self.lang {
            fields.append("lang")
        }
        if self.nonPublicMetrics {
            fields.append("non_public_metrics")
        }
        if self.publicMetrics {
            fields.append("public_metrics")
        }
        if self.organicMetrics {
            fields.append("organic_metrics")
        }
        if self.promotedMetrics {
            fields.append("promoted_metrics")
        }
        if self.possiblySensitive {
            fields.append("possibly_sensitive")
        }
        if self.referencedTweets {
            fields.append("referenced_tweets")
        }
        if self.source {
            fields.append("source")
        }
        if self.text {
            fields.append("text")
        }
        if self.withHeld {
            fields.append("withheld")
        }
        return fields.joined(separator: ",")
    }
}
