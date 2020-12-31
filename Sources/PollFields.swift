//
//  PollFields.swift
//  Swifter
//
//  Created by Srijan Bhatia on 31/12/20.
//  Copyright © 2020 Matt Donnelly. All rights reserved.
//

import Foundation

public class PollFields {
    let durationMinutes: Bool
    let endDateTime: Bool
    let id: Bool
    let options: Bool
    let votingStatus: Bool
    
    public init(durationMinutes: Bool = false,
                endDateTime: Bool = false,
                id: Bool = false,
                options: Bool = false,
                votingStatus: Bool = false) {
        self.durationMinutes = durationMinutes
        self.endDateTime = endDateTime
        self.id = id
        self.options = options
        self.votingStatus = votingStatus
    }
    
    func getFieldsString() -> String {
        var fields = [String]()
        if self.durationMinutes {
            fields.append("duration_minutes")
        }
        if self.endDateTime {
            fields.append("end_datetime")
        }
        if self.id {
            fields.append("id")
        }
        if self.options {
            fields.append("options")
        }
        if self.votingStatus {
            fields.append("voting_status")
        }
        
        return fields.joined(separator: ",")
    }
}
