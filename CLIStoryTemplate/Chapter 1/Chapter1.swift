//
//  Chapter1.swift
//  CLIStoryTemplate
//

import Foundation

func chapterOne() {
    // Your portion of the story goes here
    let names = "Tavon, Hassan, Ayme, Tre, Dante"
    let club = "The Virtual Justice Club"
    let game = "The Cyber Space"

    var alive = true
    
    
    
    func survive(alive: Bool) -> String {
        if alive == true {
           return "\(names) live to continue this great adventure!"
        }
        else {
            return "Oh no! \(names) have perished, try again :("
            
        }
    }
    func Introduction() {
        print("The Fiery Manuever \n\tIn 2057, a world gone completely in the direction expected by the most influential scientist 34 years ago. A group of friends, \(names), grew up on the East side of Wisconson, where they attended Mitt Romney High. These three we're very big into the virtual world, to the point they started they're own club, \(club). Today they decided to enter \(game), and fight the newest challenge made by the great corruption that darkens their world.")
    }
    func chall1(haveBoots: Bool, haveInvis: Bool, haveBlaster: Bool){
        let blaster = "Laser Blazer 9000"
        let boots = "Fly Guys 25's"
        let invisibility = "Dark Doagans Invisibility potion"
        
        
        
        print("\(names) come up with the decision to pick their first tool of the day. They can etiher pick up the \(blaster), the \(boots), or \(invisibility). Choose 1 for \(blaster), 2 for \(boots), 3 for \(invisibility)")
        print("Choose 1 for \(blaster)")
        print("Choose 2 for \(boots)")
        print("Choose 3 for \(invisibility)")
        var userInput = readLine()
        if userInput == 1 {
            
        }
        else if userInput = 2 {
            
        }
        else {
            
        }
       
        
//        if let int = Int(userInput) {
//            
//        }
        let int = userInput
       
        
        
        if haveBlaster == true {
            alive.toggle()
            print("You can't shoot through dragon skin!")
            print(survive(alive: false))
            return
            }
        else if haveInvis == true {
                alive.toggle()
                print("The dragon just burned the whole room!")
                print(survive(alive: false))
            return
        }
        else {
            print("Good choice, \(names) used the boots and got away!")
            print(survive(alive: true))
            
            
        }
        
        
        
        
        
        
        
        func chall2() {
            print("Just when they thought they cleared the tough stuff out the way, \(names) ran into someth")
        }
        
        
        
        
    }
    Introduction()
    chall1(haveBoots: false, haveInvis: true, haveBlaster: false)
    
 
        
}
