//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Admin on 03/09/2024.
//

import Foundation
import SwiftUI

struct DailyScrum : Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var lengthInMunitesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme){
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = 
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .navy),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis"], lengthInMinutes: 5, theme: .purple),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Eden", "Aga"], lengthInMinutes: 10, theme: .magenta),
        DailyScrum(title: "Marketing", attendees: ["Chad", "Jenn", "Lindsye", "Darla"], lengthInMinutes: 4, theme: .indigo)
    ]
}
