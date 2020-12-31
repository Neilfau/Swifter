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
    
    public init(pinnedTweetId: Bool = false) {
        self.pinnedTweetId = pinnedTweetId
    }
    
    func getFieldsString() -> String {
        var fields = [String]()
        if self.pinnedTweetId {
            fields.append("pinned_tweet_id")
        }
        return fields.joined(separator: ",")
    }
}
