//
//  PlaceFields.swift
//  Swifter
//
//  Created by Srijan Bhatia on 31/12/20.
//  Copyright © 2020 Matt Donnelly. All rights reserved.
//

import Foundation

public class PlaceFields {
    let containedWithin: Bool
    let country: Bool
    let countryCode: Bool
    let fullName: Bool
    let geo: Bool
    let id: Bool
    let name: Bool
    let placeType: Bool
    
    public init(containedWithin: Bool = false,
                country: Bool = false,
                countryCode: Bool = false,
                fullName: Bool = false,
                geo: Bool = false,
                id: Bool = false,
                name: Bool = false,
                placeType: Bool = false) {
        self.containedWithin = containedWithin
        self.country = country
        self.countryCode = countryCode
        self.fullName = fullName
        self.geo = geo
        self.id = id
        self.name = name
        self.placeType = placeType
    }
    
    func getFieldsString() -> String {
        var fields = [String]()
        
        if self.containedWithin {
            fields.append("contained_within")
        }
        if self.country {
            fields.append("country")
        }
        if self.countryCode {
            fields.append("country_code")
        }
        if self.fullName {
            fields.append("full_name")
        }
        if self.geo {
            fields.append("geo")
        }
        if self.id {
            fields.append("id")
        }
        if self.name {
            fields.append("name")
        }
        if self.placeType {
            fields.append("place_type")
        }
        return fields.joined(separator: ",")
    }
}
