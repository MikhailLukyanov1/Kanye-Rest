//
//  ContentView.swift
//  Kanye-Rest
//
//  Created by MIKHAEL LUKYANOV on 17/03/2023.
//

import SwiftUI

struct KanyeQuoteView: View {
    @State var quote: String = ""
    @State var stateController = StateController()
    
    var body: some View {
        VStack {
            Text("Random Kanye West Quote:")
                .padding(20)
            Text(quote)
            Button("Generate Quote", action: {
                Task {
                    await quote = stateController.getData()
                }
            })
                .padding()
                .multilineTextAlignment(.center)
        }

        
    }
}
