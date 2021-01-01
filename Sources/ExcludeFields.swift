//
//  ExcludeFields.swift
//  Swifter
//
//  Created by Srijan Bhatia on 01/01/21.
//  Copyright © 2021 Matt Donnelly. All rights reserved.
//

import Foundation

public class ExcludeFields {
    let retweets: Bool
    let replies: Bool
    
    public init(retweets: Bool = false,
                replies: Bool = false) {
        self.retweets = retweets
        self.replies = replies
    }
    
    func getFieldsString() -> String {
        var fields = [String]()
        
        if self.retweets {
            fields.append("retweets")
        }
        if self.replies {
            fields.append("replies")
        }
        
        return fields.joined(separator: ",")
    }
}
