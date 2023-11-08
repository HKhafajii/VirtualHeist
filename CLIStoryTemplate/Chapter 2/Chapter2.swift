//
//  Chapter2.swift
//  CLIStoryTemplate
//

import Foundation


    // Your portion of the story goes here
    
// this is a struct that provides all the info for the story like names, and careers. There is also a mutating function that changes the skills array inside the struct.
    struct StoryInfo {
        var names: [String] = ["Tavon", "Hassan", "Tre"]
        let club = "The Virtual Justice Club"
        let game = "The Cyber Space"
        let year = 2057
        let VR = "virtual reality"
        let VJC = "Virtual Justice Club"
        var career: [String]?
        var skills: [String]
        var challQuestion: String?
        static var userAnswered = false
        
        mutating func changeSkills() {
            self = StoryInfo(skills: ["Teamwork", "Charismatic", "Strength"])
        }

    }
    
//  this function is the first "challenge" in here is a var called info, that is a version of the struct above with difference career options.
    func chall1() {
        var info = StoryInfo(career: ["innovation", "activism", "camaraderie"], skills: ["stuff"])
        
//        a pring statement that uses string interpolation to take the information from the struct using the variable I created. This type of string with the tripple quotations makes it so its more readable for someone else looking at the code, while giving you the format you want.
         print( """
    In the year \(info.year), the world had transformed into a vast digital landscape where \(info.VR) was as real as the physical world.
    In this technologically advanced era, three extraordinary individuals named -
    """)
        
//        Here is a for-in loop that prints every name in the names array from the same variable
        for name in info.names {
            print(name)
            }
        
             print("""
                   rose to fame in the virtual world.
                   One day, the trio had a vision - they wanted to create a space in the virtual world where justice prevailed, where people could come together to solve problems, fight for causes, and make a difference.
                   And so, they founded The \(info.VJC). The club was not just a gathering place; it was a hub of
                   """)
       
//        this is an optional unwrapping using the if let method so that if there is any string in the array carrer, to use it in a for loop as a characteristic and print them off one by one.
        if let career = info.career {
            for characteristic in career {
                print(characteristic)
            }
        } else {
            print("Career information is not available.")
        }
        
        
//        Here is a challenge statement asking a question
        print("Where do you feel you best fit from these characteristics?")
        
//        This is a start of a while loop that repeats a for loop that unwraps the index integer and string for each item in the array, making it a questionaire choosing 1 for A 2 for B 3 for C.
        repeat {
        if let career = info.career {
            for (index, number) in career.enumerated() {
                print("Choose \(index + 1) for \(number)")
                
            }
        } else {
            print("sdf")
        }
            
            
//        This is a enum that has different cases.
        enum Choice {
            case innovation
            case activism
            case camaraderie
        }
        
//            This is another unwrapping statement, where that take a users input aka the readline, and make it equal to an integer, and the switch function is the different possibilities of the story. Theres a variable in the struct called userAnswered, and when one of the cases is met that bool is turned true so the while loop can come to a close
            if let userInput = readLine(), let userChoice = Int(userInput) {
                switch userChoice {
                case 1:
                    print( "You chose Innovation!")
                    StoryInfo.userAnswered = true
                case 2:
                    print("You chose Activism!")
                    StoryInfo.userAnswered = true
                case 3:
                    print("You chose Camaraderie!")
                    StoryInfo.userAnswered = true
                default:
                    print("You aint chose shit!")
                    StoryInfo.userAnswered = false
                }
            }
//            This is the while loop condition, saying as long as userAnswered isn't true keep repeating the code thats in the repeat block
        } while !StoryInfo.userAnswered
        
        
                   
          

    
            
        
        
    }
                  

                  
//print("Members of \(info.club) worked together to address real-world issues, using their diverse skills to raise awareness and initiate positive change. Tavon built \(info.VR) simulations to demonstrate the impact of climate change, Tre organized gaming tournaments to raise funds for charitable causes, and Hassan rallied people to support social and political movements.")
//                  
//                  print("Their influence extended far beyond the virtual realm. The trio became renowned ambassadors for the power of technology and unity. They traveled the world, giving talks and inspiring others to use the digital platform for the greater good. In a world that often seemed divided, The Virtual Justice Club became a symbol of hope, demonstrating how collaboration and empathy could bridge gaps and bring people together.")
//                  
//   print("As the years passed, the impact of \(info.VJC). continued to grow. It inspired a new generation of digital activists, programmers, and gamers to use their talents for positive change. \(info.names)")


                  //              lopp in array
                  
                  

                  
             // condition
                  // let isLegends: Bool = true
                  // if isLegends {
                  // print("They became legends, not just in the \(VR) world, but in the hearts of millions who had been touched by their vision and dedication. In the year \(year), amid the endless possibilities of the digital universe, The \(VJC) stood as a beacon of light, reminding the world that even in the realm of ones and zeros, empathy, compassion, and unity could shape a better future for all. .")
                  // }
                  // else
                  // { print ("IF NOT LEGENDS")}
                  

                  
                  
    //              "Legends or Villians" became legends, not just in the \(VR) world, but in the hearts of millions who had been touched by their vision and dedication. In the year \(year), amid the endless possibilities of the digital universe, The \(VJC) stood as a beacon of light, reminding the world that even in the realm of ones and zeros, empathy, compassion, and unity could shape a better future for all.")
func chapterTwo() {
    chall1()
}

