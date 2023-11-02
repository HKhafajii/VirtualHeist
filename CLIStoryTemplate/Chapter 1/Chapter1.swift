//
//  Chapter1.swift
//  CLIStoryTemplate
//

import Foundation
struct storyInfo {
    var names = ["Tavon", "Hassan", "Ayme", "Tre", "Dante"]
    let club = "The Virtual Justice Club"
    let game = "The Cyber Space"
    var choice: [String]
    
    let chall2Lines = [""]
    
    //"Laser Blazer 9000", "Fly Guys 25's", "Dark Doagans Invisibility potion"
    
    mutating func changeChoice(setOfChoices: [String]) {
        self = storyInfo(choice: setOfChoices)
    }
        
   
    
}


func chapterOne() {
    var info = storyInfo(choice: ["Laser Blazer 9000", "Fly Guys 25's", "Dark Doagans Invisibility potion"])
    
    // Your portion of the story goes here
   
//    var userInput: String
    var userAnswer: Bool = false
    
    func survive(alive: Bool) -> String {
        if alive == true {
            return "\(info.names.joined(separator: ", ")) live to continue this great adventure!"
        }
        else {
            return "Oh no! \(info.names.joined(separator: ", ")) have perished, try again :("
            
        }
    }
    
    
    func Introduction() {
        print("The Fiery Manuever \nIn 2057, a world gone completely in the direction expected by the most influential scientist 34 years ago. \nA group of friends, \(info.names.joined(separator: ", ")), grew up on the East side of Wisconson, where they attended Mitt Romney High. \nThese three we're very big into the virtual world, to the point they started they're own club, \(info.club). \nToday they decided to enter \(info.game), and fight the newest challenge made by the great corruption that darkens their world.")
    }
    
    
    func chall1(){
        
        var haveBlaster = false
        var haveBoots = false
        var haveInvis = false
       
        
        
        
        print("\(info.names[2]) come up with the decision to pick their first tool of the day. They can etiher pick up the \(info.choice[0]), the \(info.choice[1]), or \(info.choice[2]).")
        repeat {
        for (index, tool) in info.choice.enumerated() {
            print("Choose \(index + 1) for \(tool)")
        }
        
        if let userInput = readLine() {
            let userChoice = userInput
            
            
            
                
                if userChoice == "1" {
                    haveBlaster = true
                    userAnswer = true
                }
                else if userChoice == "2" {
                    userAnswer = true
                    
                    haveBoots = true
                }
                else if userChoice == "3" {
                    userAnswer = true
                    
                    haveInvis = true
                }
                else {
                    print("Please re run and enter the correct number!")
                }
            }
        } while !userAnswer
        
        
            if haveBlaster == true {
                //alive.toggle()
                print("You can't shoot through dragon skin!")
                print(survive(alive: false))
              
            }
            else if haveInvis == true {
                //alive.toggle()
                print("The dragon just burned the whole room!")
                print(survive(alive: false))
                
            }
            else {
                print("Good choice, \(info.names.joined(separator: ", ")) used the boots and got away!")
                print(survive(alive: true))
                
                
            }
        
    }
   
        
        
        
        
    struct Chall2 {
        var chall2Lines: [String]
        mutating func changeLines(newLines: [String]) {
            self = Chall2(chall2Lines: newLines)
            
        }
        
    }
    func chall2() -> String {
        var secChall = Chall2(chall2Lines: ["asd"])
        info.changeChoice(setOfChoices: ["left path", "right path"])
        print("Just when they thought they cleared the tough stuff out the way, \(info.names.joined(separator: ", ")) ended up being split apart!")
        
        print("\(info.names[1]) ends up all alone, split from group. ")
        
    }
        
        
        
        
    Introduction()
        chall1()
}
    
   
 
        
