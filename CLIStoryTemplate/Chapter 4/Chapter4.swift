//
//  Chapter4.swift
//  CLIStoryTemplate
//

import Foundation

// Objects I can call back on throughout story
struct chapterFourInfo {
    let chapterTitle = ("Title: Investigation")
    let characters = ["Dante", "Hassan", "Tre", "Ayme", "Tavon", "The Chief", "You"]
    let settings = ["Cyber Space Security Department", "Chiefs Office", "Your Office", "The Void"]
    var choice: [String]
    static var userInput = false
    static var contUserInput = false
    
    
    mutating func chooseChoice(setOfChoices: [String]) {
        self = chapterFourInfo(choice: setOfChoices)
    }
    
}

var chapFourInfo = chapterFourInfo(choice: [])

func chapterFour(){
    
    func intro() {
        //Introduction to Story
        print("""
              \n\(chapFourInfo.chapterTitle)\n\nYou’re a detective that has started working for the \(chapFourInfo.settings [0]). There are a number of missing persons cases open that has stumped the security department for ten years now and has since turned cold. You decided to reopen the, suspecting that it’s a key thing that the department is ignoring… \(chapFourInfo.settings[3]).\n\nThis is a story where the choices you make dictates the outcome. Will you uncover the truth behind the case, or will you fall short like everyone else before you? Will you explore the Void and return to tell the tale, or will you get lost The Void? You’ll meet friends, uncover secrets, and discover why exactly the missing persons case went cold.
        """)
    }
    
    var sceneOneInfo = chapterFourInfo(choice: ["There's something that was ignored in the past", "You wouldn't understand. I know more than your officers", "..."])
    
    
    func sceneOne() {
        //checks for input regarding the array above
        func checkUserInput1() {
            print("What would you like to say?")
            repeat{
                for (index, option) in sceneOneInfo.choice.enumerated() {
                    print("Type \(index + 1) for \(option)")
                }
                if let userInput = readLine() {
                    let userInput = userInput
                    if userInput == "1" {
                        chapterFourInfo.userInput = true
                        print("\n\(chapFourInfo.characters[6]): \(sceneOneInfo.choice[0])")
                        print("""
                              \n"Whatever. If there's something was left out, I'm sure you don't know it and even if you do find it, it's not going to lead no where."
                              """)
                    }
                    else if userInput == "2" {
                        chapterFourInfo.userInput = true
                        print("\n\(chapFourInfo.characters[6]): \(sceneOneInfo.choice[1])")
                        print ("""
                                \n"Listen. I don't want you coming in here and messing everything up. Got it?" He looks down at you patronizingly.\n\n\(chapFourInfo.characters[5]) was a hot-headed, patronizing, tyrant who took his job very seriously. He was eager to keep this case closed… too eager in fact.
                                """)
                    }
                    else if userInput == "3" {
                        chapterFourInfo.userInput = true
                        print("\n\(chapFourInfo.characters[6]): \(sceneOneInfo.choice[2])")
                        print ("""
                                \n "What? You're one of them silent types?".
                                """)
                    }
                    else {
                        print("Invalid input, please try again:\n")
                    }
                }
                
            } while !chapterFourInfo.userInput == true
        }
        //Location
        print("\n\(chapFourInfo.settings[0]) | \(chapFourInfo.settings[1])")
        //The Cheifs phrases and description
        print("""
              \n"You’re wasting your time, no one else was able to crack this case.\" He looks down at you condenscendingly.\n\n\(chapFourInfo.characters[5]) was a hot-headed, patronizing, tyrant who took his job very seriously. He was eager to keep this case closed… too eager in fact.\n
              """)
        //Verbal choice
        checkUserInput1()
        print("""
            \n"You have six months." He hands you 3 files. "You have to choose a partner to accompany you on this… waste of time." \nthe files have the label “officers” on them. He walks away without saying another thing, leaving you in The \(chapFourInfo.characters[5]) alone. “Hate that guy.” you say under your breath. There’s no point in waiting and should start the case, so you head to \(chapFourInfo.settings[2]).
            """)
        
    }
    
    
    let sceneTwoObjects = chapterFourInfo(choice: ["Plants", "Picture of Family", "Window", "Desk"])
    
    func sceneTwo() {
        func checkUserInput2() {
            print("What would you like to inspect?")
            repeat {
                for (index, option) in sceneTwoObjects.choice.enumerated() {
                    print("Type \(index + 1) for \(option)")
                }
                if let userInput = readLine() {
                    let userInput = userInput
                    let contUserInput = userInput
                    if userInput == "1" {
                        chapterFourInfo.userInput = true
                        chapterFourInfo.contUserInput = false
                        print("You examine the plants sitting on your desk and notice that they’re wilted and droopy. “Jeez I gotta do a better job at taking care of you guys,” you think.")
                    }
                    else if userInput == "2" {
                        chapterFourInfo.userInput = true
                        chapterFourInfo.contUserInput = false
                        print("""
                            you walk over to your desk and pick up the picture of your family. “Now that I’m in a new city, I’m going to miss mom, dad, Aniah, and Donovan" you think
                            """)
                    }
                    else if userInput == "3" {
                        chapterFourInfo.userInput = true
                        chapterFourInfo.contUserInput = false
                        print("""
                            You glance out the window, seeing sunlight shine on the seat at your desk. “How peculiar” you think.
                            """)
                    }
                    else if contUserInput == "4" {
                        chapterFourInfo.userInput = false
                        chapterFourInfo.contUserInput = true
                        print("""
                            You go to sit at your desk when you notice some files with the label “confidential on it”.  You wonder where they might’ve came from, but you quickly assume that the Chief must’ve put them there for information on the missing person’s case. You lay the partner files that the chief gave you next to the confidential files
                            """)
                    }
                    else {
                        print("Invalid input, please try again:\n")
                    }
                }
            }while !chapterFourInfo.contUserInput == true
            
        }
        print("\n\(chapFourInfo.settings[2]) \n\nYou enter \(chapFourInfo.settings[2]) ready to get started with the case that’s went unsolved for far too long. You plan to solve it.")
        
        checkUserInput2()
        
        //        let sceneTwoPartners = chapterFourInfo(choice: ["Dante", "Hassan", "Ayme"])
        //
        //        enum PartnerOptions {
        //            case Dante
        //            case Hassan
        //            case Ayme
        //        }
        //        repeat {
        //            print("""
        //                You open the partner files and are presented descriptions of three officers you can choose as a partner: \(chapFourInfo.characters[0]), \(chapFourInfo.characters[1]), or \(chapFourInfo.characters[3]).
        //                """)
        //            for (index, option) in chapFourInfo.choice.enumerated() {
        //                print("Type \(index + 1) for \(option) as a partner")
        //            }
        //            if let userInput = readLine() {
        //
        //            }while
        //        }
    }
        intro()
        sceneOne()
        sceneTwo()
    }


