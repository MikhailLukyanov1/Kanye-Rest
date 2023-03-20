//
//  ContentView.swift
//  Kanye-Rest
//
//  Created by MIKHAEL LUKYANOV on 17/03/2023.
//

import SwiftUI

struct ActivityView: View {
    @State var participants: Int = 0
    @State var stateController = StateController()
    @State var activity = ""
    
    var body: some View {
        VStack {
            Text("Random Activity:")
                .padding(20)
            Text("Acitivty: \(activity)")
                .padding(5)
            Text("Number of participants: \(String(participants))")

            Button("Generate Activity", action: {
                stateController.getData()
                activity = stateController.suggestedActivity
                participants = stateController.numberOfParticipants
            })
                .padding()
                .multilineTextAlignment(.center)
        }

        
    }
}
