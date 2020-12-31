//
//  Exapansions.swift
//  Swifter
//
//  Created by Srijan Bhatia on 31/12/20.
//  Copyright © 2020 Matt Donnelly. All rights reserved.
//

import Foundation

public class Expansions {
    let pinnedTweetId: Bool
    let attachmentsPollIds: Bool
    let attachmentsMediaKeys: Bool
    let authorId: Bool
    let entitiesMentionsUsername: Bool
    let geoPlaceId: Bool
    let inReplyToUserId: Bool
    let referencedTweetsId: Bool
    let referencedTweetsAuthorId: Bool
    
    /// Used for user lookup and followers lookup
    public init(pinnedTweetId: Bool = false) {
        self.pinnedTweetId = pinnedTweetId
        self.attachmentsPollIds = false
        self.attachmentsMediaKeys = false
        self.authorId = false
        self.entitiesMentionsUsername = false
        self.geoPlaceId = false
        self.inReplyToUserId = false
        self.referencedTweetsId = false
        self.referencedTweetsAuthorId = false
    }
    
    /// Used for tweet lookup
    public init(attachmentsPollIds: Bool = false,
                attachmentsMediaKeys: Bool = false,
                authorId: Bool = false,
                entitiesMentionsUsername: Bool = false,
                geoPlaceId: Bool = false,
                inReplyToUserId: Bool = false,
                referencedTweetsId: Bool = false,
                referencedTweetsAuthorId: Bool = false) {
        self.pinnedTweetId = false
        self.attachmentsPollIds = attachmentsPollIds
        self.attachmentsMediaKeys = attachmentsMediaKeys
        self.authorId = authorId
        self.entitiesMentionsUsername = entitiesMentionsUsername
        self.geoPlaceId = geoPlaceId
        self.inReplyToUserId = inReplyToUserId
        self.referencedTweetsId = referencedTweetsId
        self.referencedTweetsAuthorId = referencedTweetsAuthorId
    }
    
    func getFieldsString() -> String {
        var fields = [String]()
        if self.pinnedTweetId {
            fields.append("pinned_tweet_id")
        }
        if self.attachmentsPollIds {
            fields.append("attachments.poll_ids")
        }
        if self.attachmentsMediaKeys {
            fields.append("attachments.media_keys")
        }
        if self.authorId {
            fields.append("author_id")
        }
        if self.entitiesMentionsUsername {
            fields.append("entities.mentions.username")
        }
        if self.geoPlaceId {
            fields.append("geo.place_id")
        }
        if self.inReplyToUserId {
            fields.append("in_reply_to_user_id")
        }
        if self.referencedTweetsId {
            fields.append("referenced_tweets.id")
        }
        if self.referencedTweetsAuthorId {
            fields.append("referenced_tweets.id.author_id")
        }
        return fields.joined(separator: ",")
    }
}
