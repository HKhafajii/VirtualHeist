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
    static var userAnswer = false
    
    
    
    //"Laser Blazer 9000", "Fly Guys 25's", "Dark Doagans Invisibility potion"
    
    mutating func changeChoice(setOfChoices: [String]) {
        self = storyInfo(choice: setOfChoices)
    }
    
   
    
}


func chapterOne() {
    var info = storyInfo(choice: ["Laser Blazer 9000", "Fly Guys 25's", "Dark Doagans Invisibility potion"])
    
    // Your portion of the story goes here
   
//    var userInput: String
   
    
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
                    storyInfo.userAnswer = true
                }
                else if userChoice == "2" {
                    storyInfo.userAnswer = true
                    
                    haveBoots = true
                }
                else if userChoice == "3" {
                    storyInfo.userAnswer = true
                    
                    haveInvis = true
                }
                else {
                    print("Please re run and enter the correct number!")
                }
            }
        } while !storyInfo.userAnswer
        
        
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
        var problem: String
        mutating func changeLines(newLines: [String], newProblem: String) {
            self = Chall2(chall2Lines: newLines, problem: newProblem)
        }
       
    }
    
    
    func chall2() {
        storyInfo.userAnswer = false
        let secChall = Chall2(chall2Lines: ["went to the", "They finally escaped"], problem: "They ran into a cave that's so dark they lost eachother")
        info.changeChoice(setOfChoices: ["left path", "right path", "straight path"])
        
       
        enum pathchoice{
            case path1
            case path2
            case path3
        }
        repeat {
            print("Just when they thought they cleared the tough stuff out the way, \(secChall.problem). \(info.names.joined(separator: ", ")). Being split apart \(info.names[1]) ends up all alone, split from group.")
         
                for (index, direction) in info.choice.enumerated() {
                    print("Choose \(index + 1) to take the \(direction)")
                }
            
            if let userInput = readLine(), let userChoice = Int(userInput) {
                switch userChoice {
                case 1:
                    let result = pathchoice.path1
                    print("You chose the \(info.choice[0])")
                    storyInfo.userAnswer = true
                case 2:
                    let result = pathchoice.path2
                    print("You chose the \(info.choice[1])")
                    storyInfo.userAnswer = true
                case 3:
                    let result = pathchoice.path3
                    print("You chose the \(info.choice[2])")
                    storyInfo.userAnswer = true
                default:
                    print("Please enter 1, 2, or 3!")
                }
            } else {
                print("Please enter a valid number!")
            }
        } while !storyInfo.userAnswer
//        if let userInput = readLine(){
//            switch pathchoice{
//            case .path1:
//            default:
//                return "Try entering a number again"
//            }
//        }
        
      
        
        
        
    }
        
        
        
        
    Introduction()
        chall1()
        chall2()
}
    
   
 
        
