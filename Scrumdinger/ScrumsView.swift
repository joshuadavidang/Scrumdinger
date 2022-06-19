//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Joshua David Ang on 19/6/22.
//

import SwiftUI

struct ScrumsView: View {
    
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums, id: \.title) { scrum in
                CardView(scrum: scrum)
            }
        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
        
    }
}
