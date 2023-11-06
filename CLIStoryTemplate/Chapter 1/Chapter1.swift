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
    static var dead = false
    
    
    
  
    
    mutating func changeChoice(setOfChoices: [String]) {
        self = storyInfo(choice: setOfChoices)
    }
    
   
    
}



    var info = storyInfo(choice: ["Laser Blazer 9000", "Fly Guys 25's", "Dark Doagans Invisibility potion"])
    
    // Your portion of the story goes here
   

   
    
    func survive(alive: Bool) -> String {
        if alive == true {
            return "\(info.names.joined(separator: ", ")) live to continue this great adventure!"
        }
        else {
            return "Oh no! \(info.names.joined(separator: ", ")) have perished, try again :("
            
        }
    }
    
    
    func Introduction() {
        print(
"""
The Fiery Manuever
In 2057, a world gone completely in the direction expected by the most influential scientist 34 years ago.
A group of friends, \(info.names.joined(separator: ", ")), grew up on the East side of Wisconson, where they attended Mitt Romney High.
These three we're very big into the virtual world, to the point they started they're own club, \(info.club).
Today they decided to enter \(info.game), and fight the newest challenge made by the great corruption that darkens their world.
"""
        )
    }
    
    
    func chall1(){
        print("\(info.names[2]) come up with the decision to pick their first tool of the day. They can etiher pick up the \(info.choice[0]), the \(info.choice[1]), or \(info.choice[2]).")
        repeat {
        for (index, tool) in info.choice.enumerated() {
            print("Choose \(index + 1) for \(tool)")
        }
        
            if let userInput = readLine() {
            let userChoice = userInput
                if userChoice == "1" {
                    storyInfo.userAnswer = true
                    storyInfo.dead = true
                    print(
                          """
                          You can't shoot through dragon skin!
                          \(survive(alive: true))
                          """
                    )
                    
                }
                else if userChoice == "2" {
                    storyInfo.userAnswer = true
                    storyInfo.dead = false
                    print(
                          """
                          Good choice, \(info.names.joined(separator: ", ")) used the boots and got away!
                          \(survive(alive: true))
                          """
                          )
                    
                }
                else if userChoice == "3" {
                    storyInfo.userAnswer = true
                    storyInfo.dead = true
                    print(
                          """
                          The dragon just burned the whole room!
                          \(survive(alive: false))
                          """
                        )
            
                }
                else {
                    print("Please re run and enter the correct number!")
                }
            }
            
        } while !storyInfo.userAnswer || storyInfo.dead == true
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
                    _ = pathchoice.path1
                    storyInfo.userAnswer = true
                    storyInfo.dead = false
                    print(
                        """
                        You chose the \(info.choice[0])
                        And you chose right! \(info.names[1]) ran accross the path and ran into the rest of the team, everyone was just so happy to see \(info.names[1]).
                        """
                    )
                case 2:
                    _ = pathchoice.path2
                    storyInfo.userAnswer = true
                    storyInfo.dead = true
                    print(
                    """
                    You chose the \(info.choice[1])
                    Sadly, down this path \(info.names[1]) ran into a giant bear guarding her cubs.
                    \(info.names[1]) really sat and thought about it for a while, damn, he should've been married by now.
                    """
                    )
                    
                    
                case 3:
                    _ = pathchoice.path3
                    storyInfo.userAnswer = true
                    storyInfo.dead = true
                    print(
                        """
                        You chose the \(info.choice[2])
                        Sadly, down this path \(info.names[1]) ran striaght into a giant hole that had you falling for 2 hours.
                        \(info.names[1]) contemplated about life for a while and thought, wow, he should've got married.
                        """
                    )
                        
                default:
                    print("Please enter 1, 2, or 3!")
                }
            } else {
                print("Please enter a valid number!")
            }
        } while !storyInfo.userAnswer || storyInfo.dead == true
        print(
        """
        All they had to do was move a little further down the path and they found the exit.
        As soon as they got out, they all said screw this game hoped of for the day.
        END OF CHAPTER
        """
        )
        
        
        
        
    }
        
        
func chapterOne() {
        
    Introduction()
        chall1()
        chall2()
}
    
   
 
        
