//
//  EndView.swift
//  Quiz Game
//
//  Created by StudentAM on 4/22/24.
//

import SwiftUI // to use SwiftUI
 
struct EndView: View { // start of EndView
    @Binding var score: Int // to use variable score in GameView
    
    var body: some View { // body start
        ZStack{ // start of ZStack 1
            Image("startImage") // display start image
                .resizable() // to change size
                .aspectRatio(contentMode: .fill) // to use image on all the screen space
                .edgesIgnoringSafeArea(.all) // to use image on all the screen space
            
            ZStack{ // start of ZStack 2
                Rectangle() // for box
                    .fill(.yellow) // make box yellow
                    .frame(width: 300, height: 600) // size of box
                    .cornerRadius(8) // make box corners a bit round
                
                VStack{ // start of VStack
                    Text("Congrats! You Finished!") // to congratulate user on finishing game
                        .padding() // for spacing
                        .font(.system(size: 28)) // for making text a bit bigger
                    
                    Text("Your final score: \(score)") // for displaying user's final score
                        .padding() // for spacong
                        .font(.system(size: 28)) // for making text a bit bigger
                } // end of VStack
            } // end of ZStack 2
        } // end of ZStack 1
    } // body end
} // end of EndView

#Preview { // start of #Preview
    EndView(score: .constant(0)) // for using variable score in GameView (value starts @ 0)
} // end of #Preview/
