//
//  CreatureDetail.swift
//  CatchEmAll
//
//  Created by Robert Beachill on 08/05/2025.
//

import Foundation

@Observable // Will watch objects for any changes so that SwiftUI will redraw the interface when needed
class CreatureDetail {
    private struct Returned: Codable {
        var height: Double
        var weight: Double
        var sprites: Sprite
    }
    
    struct Sprite: Codable {
        var other: Other
    }
    
    struct Other: Codable {
        var officialArtwork: OfficialArtwork
        
        enum CodingKeys: String, CodingKey {
            case officialArtwork = "official-artwork"
        }
    }
    
    struct OfficialArtwork: Codable {
        var front_default: String? // This might return null, which is nil in Swift
    }
    
    var urlString: String = "" // Update with string passed in from creature clicked on
    var height = 0.0
    var weight = 0.0
    var imageURL = ""
    
    func getData() async {
        print("🕸️ We are accessing the url \(urlString)")
        
        // Create a URL
        guard let url = URL(string: urlString) else {
            print("😡 ERROR: Could not create a URL from \(urlString)")
            return
        }
        
        do {
                        let configuration = URLSessionConfiguration.ephemeral
                        let session = URLSession(configuration: configuration)
                        let (data, _) = try await session.data(from: url)
//            let (data, _) = try await URLSession.shared.data(from: url)
            
            // Try to decode JSON data into our data structures
            guard let returned = try? JSONDecoder().decode(Returned.self, from: data) else {
                print("😡 JSON ERROR: Could not decode returned JSON data")
                return
            }
            self.height = returned.height
            self.weight = returned.weight
            self.imageURL = returned.sprites.other.officialArtwork.front_default ?? "n/a"
        } catch {
            print("😡 ERROR: Could not get data from \(urlString)")
        }
    }
}
