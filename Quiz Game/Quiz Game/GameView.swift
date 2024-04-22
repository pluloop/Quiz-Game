//
//  GameView.swift
//  Quiz Game
//
//  Created by StudentAM on 4/22/24.
//

import SwiftUI // to use SwiftUI

// The following array is meant to be used to easily display the question and options on each level. It is also used to increment the score if the user selects the right answer.
var questions = [ // start of array questions
    Questions(question: "What is needed to neglect fall damage in Minecraft?", options: ["water bucket", "dirt block", "steak", "milk bucket"], answer: "water bucket"), // Question 1
    
    Questions(question: "What is Roblox's currency?", options: ["vbucks", "USD", "robux", "bitcoin"], answer: "robux"), // Question 2
    
    Questions(question: "What is California's capital?", options: ["Sacramento", "Fresno", "San Jose", "Los Angeles"], answer: "Sacramento"), // Question 3
    
    Questions(question: "How many does a spider have?", options: ["2", "8", "6", "12"], answer: "8"), // Question 4
    
    Questions(question: "What is Canada's capital?", options: ["Ottawa", "Ontario", "Quebec", "Toronto"], answer: "Ottawa"), // Question 5
    
    Questions(question: "Who was the first president of the US?", options: ["Washington", "Obama", "Bush", "Trump"], answer: "Washington"), // Question 6
    
    Questions(question: "How many moons dos Earth have?", options: ["1", "2", "4", "3"], answer: "1"), // Question 7
    
    Questions(question: "What is 9 x 9?", options: ["18", "9", "81", "1"], answer: "81"), // Question 8
    
    Questions(question: "What is the square root of 4?", options: ["2", "4", "1", "8"], answer: "2"), // Question 9
    
    Questions(question: "How many states does the US have?", options: ["1", "50", "40", "51"], answer: "50"), // Question 10
] // end of array questions -

struct GameView: View{ // start of GameView
    @State var score: Int = 0 // for displaying score
    @State var index: Int = 0 // for keeping track and displaying question #, options, and answer
    
    var body: some View{ // body start
        NavigationView{ // start of NavigationView
            ZStack{ // start of ZStack
                Image("startImage") // display start image
                    .resizable() // to change size
                    .aspectRatio(contentMode: .fill) // to use image on all the screen space
                    .edgesIgnoringSafeArea(.all) // to use image on all the screen space
                
                VStack{ // start of VStack
                    Text("Score: \(score)") // for displaying the score
                        .foregroundColor(.white) // for text to be white
                        .font(.system(size: 32)) // for text to be size 32
                    
                    Text(questions[index].question) // for displaying question
                        .frame(width: 300, height: 150) // for box size
                        .foregroundColor(.white) // for text to be white
                        .background(Color.purple) // for box around question (purple)
                    
                    Button(action: { // for displaying first option of question
                        checkOption(option: questions[index].options[0], answer: questions[index].answer) // for checking option with answer
                    }) { // end of button
                        Text(questions[index].options[0]) // text of option 1 of question
                            .frame(width: 300, height: 75) // for box size
                            .foregroundColor(.white) // for text to be white
                    } // end of text
                    .background(Color.blue) // for box to be blue
                    
                    Button(action: { // for displaying second option of question
                        checkOption(option: questions[index].options[1], answer: questions[index].answer) // for checking option with answer
                    }) { // end of button
                        Text(questions[index].options[1]) // text of option 2 of question
                            .frame(width: 300, height: 75) // for box size
                            .foregroundColor(.white) // for text to be white
                    } // end of text
                    .background(Color.blue) // for box to be blue
                    
                    Button(action: { // for displaying third option of question
                        checkOption(option: questions[index].options[2], answer: questions[index].answer) // for checking option with answer
                    }) { // end of button
                        Text(questions[index].options[2]) // text of option 3 of question
                            .frame(width: 300, height: 75) // for box size
                            .foregroundColor(.white) // for text to be white
                    } // end of text
                    .background(Color.blue) // for box to be blue
                    
                    Button(action: { // for displaying fourth option of question
                        checkOption(option: questions[index].options[3], answer: questions[index].answer) // for checking option with answer
                    }) { // end of button
                        Text(questions[index].options[3]) // text of option 4 of question
                            .frame(width: 300, height: 75) // for box size
                            .foregroundColor(.white) // for text to be white
                    } // end of text
                    .background(Color.blue) // for box to be blue
                    
                    if index < 9{ // if game not ended
                        Button("Next"){ // for button text
                            index += 1 // for changing questions and options
                        } // end of button Next
                        .frame(width: 300, height: 50) // for box size
                        .cornerRadius(8) // for corners of box to be a bit rounded
                        .background(Color.yellow) // for box to be yellow
                        .foregroundColor(.black) // for text to be black
                    } else{ // end of if, start of else
                        NavigationLink(destination: EndView(score: $score)){ // start of NavigationLink (press text = go to EndView)
                            Text("Finish") // for user to know how to end game
                        } // end of NavigationLink
                        .frame(width: 300, height: 50) // for box size
                        .cornerRadius(8) // for corners of box to be a bit rounded
                        .background(Color.yellow) // for box to be yellow
                        .foregroundColor(.black) // for text to be black
                    } // end of else
                } // end of VStack
            } // end of ZStack
        } // end of NavigationView
    } // body end
    
    func checkOption(option: String, answer: String){ // for checking if option is the answer, start of checkOption function
        if option == answer{ // if option is the answer, start of if
            score += 1 // increment score
        } // end of if
    } // end of function checkOption
} // end of GameView

#Preview { // start of #Preview
    GameView() // idk this came with start code but is essential
} // end of #Preview
