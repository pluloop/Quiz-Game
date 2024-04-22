//
//  ContentView.swift
//  Quiz App
//
//  Created by StudentAM on 4/11/24.
//

import SwiftUI // to use SwiftUI

struct Questions{ // to easily access next level
    var question: String // for displaying in GameView
    var options: [String] // for displaying in GameView
    var answer: String // for incrementing score
} // end of struct Questions

struct ContentView: View { // ContentView start
    var body: some View { // body start
        NavigationView{ // to switch to game when button pressed
            ZStack{ // for game image
                Image("startImage") // display start image
                    .resizable() // to change size
                    .aspectRatio(contentMode: .fill) // to use image on all the screen space
                    .edgesIgnoringSafeArea(.all) // to use image on all the screen space
                VStack{ // display title and button on separate lines
                    Spacer() // for spacing
                    
                    Text("Quiz Game!") // for displaying game title
                        .padding(.horizontal, 75) // horizontal length of title
                        .padding(.vertical, 25) // vertical length of title
                        .foregroundColor(.white) // make text of title white
                        .background(Color.orange) // make button orange
                        .cornerRadius(8) // make corners of button more round
                        .font(.system(size: 40)) // make text of button bigger
                    
                    Spacer() // for spacing
                    
                    NavigationLink(destination: GameView()){ // for going to GameView once button clicked
                        Text("Start") // for user to know how to start game
                            .padding(.horizontal, 75) // horizontal length of button
                            .padding(.vertical, 25) // vertical length of button
                            .foregroundColor(.white) // make text of button white
                            .background(Color.blue) // make color of button blue
                            .cornerRadius(8) // make corners of button more round
                            .font(.system(size: 40)) // make text of button bigger
                    } // end of NavigationLink
                    
                    Spacer() // for spacing
                } // end of VStack
            } // end of ZStack
        } // end of NavigationView
    } // body end
} // ContentView end

#Preview { // start of #Preview
    ContentView() // idk this came with start code but is essential
} // end of #Preview
