//
//  SongViewModel.swift
//  spotify-clone-a
//
//  Created by Linder Anderson Hassinger Solano    on 15/06/24.
//

import Foundation
import AVKit

class SongViewModel: ObservableObject {
    
    @Published var songs: [Song] = [Song]()
    @Published var isPlay: Bool = false
    @Published var audioPlayer: AVPlayer?
    
    func makeHttpRequest() async {
        guard let url = URL(string: "https://spotify-api-lac-kappa.vercel.app/api/songs") else {
            return
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            if let response = response as? HTTPURLResponse {
                if response.statusCode != 200 {
                    return
                }
            }
            
            if let decoder = try? JSONDecoder().decode([Song].self, from: data) {
                self.songs = decoder
            } else {
                print("hubo un error en el decoder")
            }
        } catch let error {
            print("error", error.localizedDescription)
        }
    }
    
    func playSong(url: String) {
        if let url = URL(string: url) {
            self.audioPlayer = AVPlayer(url: url)
        }
    }
}
