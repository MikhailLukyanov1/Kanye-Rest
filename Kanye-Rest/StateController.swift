//
//  StateController.swift
//  Kanye-Rest
//
//  Created by MIKHAEL LUKYANOV on 17/03/2023.
//

import Foundation

class StateController: ObservableObject {
    
    func getData() async -> String {
        
        guard let url = URL(string: "https://api.kanye.rest/") else {
            print("invalid URL")
            return "Error"
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode(KanyeQuoteResponse.self, from: data) {
                return decodedResponse.quote
            }
        }
        catch {
            print("Invalid Data")

        }
        return "Error"
    }
    


    
    
}


