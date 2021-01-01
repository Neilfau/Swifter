//
//  SwifterSearch.swift
//  Swifter
//
//  Copyright (c) 2014 Matt Donnelly.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

public extension Swifter {

    /**
     GET    search/tweets
     
     Returns a collection of relevant Tweets matching a specified query.
     
     Please note that Twitter’s search service and, by extension, the Search API is not meant to be an exhaustive source of Tweets. Not all Tweets will be indexed or made available via the search interface.
     
     In API v1.1, the response format of the Search API has been improved to return Tweet objects more similar to the objects you’ll find across the REST API and platform. However, perspectival attributes (fields that pertain to the perspective of the authenticating user) are not currently supported on this endpoint.

     */
    func searchTweet(using query: String,
                     endTime: String? = nil,
                     expansions: Expansions? = nil,
                     maxResults: Int? = nil,
                     mediaFields: MediaFields? = nil,
                     nextToken: String? = nil,
                     placeFields: PlaceFields? = nil,
                     pollFields: PollFields? = nil,
                     sinceID: String? = nil,
                     startTime: String? = nil,
                     tweetFields: TweetFields? = nil,
                     untilId: String? = nil,
                     userFields: UserFields? = nil,
                     success: SuccessHandler? = nil,
                     failure: @escaping FailureHandler) {
        let path = "tweets/search/recent"

        var parameters = [String: Any]()
        parameters["query"] = query
        parameters["end_time"] ??= endTime
        parameters["expansions"] ??= expansions?.getFieldsString()
        parameters["max_results"] ??= maxResults
        parameters["media.fields"] ??= mediaFields?.getFieldsString()
        parameters["next_token"] ??= nextToken
        parameters["place.fields"] ??= placeFields?.getFieldsString()
        parameters["poll.fields"] ??= pollFields?.getFieldsString()
        parameters["since_id"] ??= sinceID
        parameters["start_time"] ??= startTime
        parameters["tweet.fields"] ??= tweetFields?.getFieldsString()
        parameters["until_id"] ??= untilId
        parameters["user.fields"] ??= userFields?.getFieldsString()

        self.getJSON(path: path, baseURL: .api, parameters: parameters, success: { json, _ in
            success?(json)
            }, failure: failure)
    }
    
}
