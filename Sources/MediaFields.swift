//
//  MediaFields.swift
//  Swifter
//
//  Created by Srijan Bhatia on 31/12/20.
//  Copyright © 2020 Matt Donnelly. All rights reserved.
//

import Foundation

public class MediaFields {
    let duration: Bool
    let height: Bool
    let mediaKey: Bool
    let previewImageUrl: Bool
    let type: Bool
    let url: Bool
    let width: Bool
    let publicMetrics: Bool
    let nonPublicMetrics: Bool
    let organicMetrics: Bool
    let promotedMetrics: Bool
    
    public init(duration: Bool = false,
                height: Bool = false,
                mediaKey: Bool = false,
                previewImageUrl: Bool = false,
                type: Bool = false,
                url: Bool = false,
                width: Bool = false,
                publicMetrics: Bool = false,
                nonPublicMetrics: Bool = false,
                organicMetrics: Bool = false,
                promotedMetrics: Bool = false) {
        
        self.duration = duration
        self.height = height
        self.mediaKey = mediaKey
        self.previewImageUrl = previewImageUrl
        self.type = type
        self.url = url
        self.width = width
        self.publicMetrics = publicMetrics
        self.nonPublicMetrics = nonPublicMetrics
        self.organicMetrics = organicMetrics
        self.promotedMetrics = promotedMetrics
    }
    
    func getFieldsString() -> String {
        var fields = [String]()
        
        if self.duration {
            fields.append("duration_ms")
        }
        if self.height {
            fields.append("height")
        }
        if self.mediaKey {
            fields.append("media_key")
        }
        if self.previewImageUrl {
            fields.append("preview_image_url")
        }
        if self.type {
            fields.append("type")
        }
        if self.url {
            fields.append("url")
        }
        if self.width {
            fields.append("width")
        }
        if self.publicMetrics {
            fields.append("public_metrics")
        }
        if self.nonPublicMetrics {
            fields.append("non_public_metrics")
        }
        if self.organicMetrics {
            fields.append("organic_metrics")
        }
        if self.promotedMetrics {
            fields.append("promoted_metrics")
        }
        return fields.joined(separator: ",")
    }
}
