//
//  Chapter1.swift
//  CLIStoryTemplate
//

import Foundation

func chapterOne() {
    // Your portion of the story goes here
    let names = "Tavon, Hassan, and Tre"
    let club = "The Virtual Justice Club"
    let game = "The Cyber Space"

    var alive = true
    
    
    
    func survive() {
        if alive == true {
            print("\(names) live to continue this great adventure!")
        }
        else {
            print("Oh no! \(names) have perished, try again :(")
            
        }
    }
    func Introduction() {
        print("Chapter 1 The Beginning of The End \n\tIn 2057, a world gone completely in the direction expected by the most influential scientist 34 years ago.")
        print("A group of friends, \(names), grew up on the East side of Wisconson, where they attended Mitt Romney High. These three we're very big into the virtual world, to the point they started they're own club, \(club)")
        print("Today they decided to enter \(game), and fight the newest challenge made by the great corruption that darkens their world.")
    }
    func chall1(){
        let blaster = "Laser Blazer 9000"
        let boots = "Fly Guys 25's"
        let invisibility = "Dark Doagans Invisibility potion"
        var haveBoots = false
        var haveInvis = false
        var haveBlaster = false
        
        
        print("\(names) come up with the decision to pick their first tool of the day. They can etiher pick up the \(blaster), the \(boots), or \(invisibility). Choose 1 for \(blaster), 2 for \(boots), 3 for \(invisibility)")
        
        
        if haveBlaster == true {
            alive.toggle()
            print("You can't shoot through dragon skin!")
            survive()
            return
            }
        else if haveInvis == true {
                alive.toggle()
                print("The dragon just burned the whole room!")
                survive()
            return
        }
        else {
            print("Good choice, \(names) used the boots and got away!")
            survive()
            
        }
        
        
        
        
        
        
        func chall2() {
            print("Just when they thought they cleared the tough stuff out the way, \(names) ran into someth")
        }
        
        
        
        
    }
    print(Introduction())
    
 
        
}
