//
//  Chapter1.swift
//  CLIStoryTemplate
//

import Foundation

func chapterOne() {
    // Your portion of the story goes here
    let names: [String] = ["Tavon", "Hassan", "Ayme", "Tre", "Dante"]
    let club = "The Virtual Justice Club"
    let game = "The Cyber Space"
//    var userInput: String


    
    
    
    
    func survive(alive: Bool) -> String {
        if alive == true {
            return "\(names.joined(separator: ", ")) live to continue this great adventure!"
        }
        else {
            return "Oh no! \(names.joined(separator: ", ")) have perished, try again :("
            
        }
    }
    func Introduction() {
        print("The Fiery Manuever \n\tIn 2057, a world gone completely in the direction expected by the most influential scientist 34 years ago. A group of friends, \(names.joined(separator: ", ")), grew up on the East side of Wisconson, where they attended Mitt Romney High. These three we're very big into the virtual world, to the point they started they're own club, \(club). Today they decided to enter \(game), and fight the newest challenge made by the great corruption that darkens their world.")
    }
    
    func chall1(){
        let tools: [String] = ["Laser Blazer 9000", "Fly Guys 25's", "Dark Doagans Invisibility potion"]
        var haveBlaster = false
        var haveBoots = false
        var haveInvis = false
       
        
        
        
        print("\(names[2]) come up with the decision to pick their first tool of the day. They can etiher pick up the \(tools[0]), the \(tools[1]), or \(tools[2]).")
        print("Choose 1 for \(tools[0])")
        print("Choose 2 for \(tools[1])")
        print("Choose 3 for \(tools[2])")
        
        if var userInput = readLine() {
            var choice = userInput
            
            
            
            
            if choice == "1" {
                haveBlaster = true
            }
            else if choice == "2" {
                
                haveBoots = true
            }
            else if choice == "3" {
                haveInvis = true
            }
            else {
                print("Please re run and enter the correct number!")
            }
            
            if haveBlaster == true {
                //alive.toggle()
                print("You can't shoot through dragon skin!")
                print(survive(alive: false))
                return
            }
            else if haveInvis == true {
                //alive.toggle()
                print("The dragon just burned the whole room!")
                print(survive(alive: false))
                return
            }
            else {
                print("Good choice, \(names.joined(separator: ", ")) used the boots and got away!")
                print(survive(alive: true))
                
                
            }
        }
    }
        
        
        
        
        
        
        
        func chall2() {
            print("Just when they thought they cleared the tough stuff out the way, \(names.joined(separator: ", ")) ran into someth")
        }
        
        
    Introduction()
    chall1()
        
    }
    
    
 
        
