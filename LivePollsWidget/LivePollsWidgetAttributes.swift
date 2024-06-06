//
//  LivePollsWidgetAttributes.swift
//  LivePoll
//
//  Created by daksh vasudev on 05/06/24.
//

import Foundation
import ActivityKit

struct LivePollsWidgetAttributes: ActivityAttributes {
    /// dynamic properties
    typealias ContentState = Poll

    // Fixed non-changing properties about your activity go here!
    public var pollId: String
    init(pollId: String) {
        self.pollId = pollId
    }
}
