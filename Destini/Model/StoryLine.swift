import Foundation

class StoryLine {
    var stories = [Int: Story]()
    
    init () {
        self.stories[1] = Story(text: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"", answerLeft: "I\'ll hop in. Thanks for the help!", answerRight: "Better ask him if he\'s a murderer first.", targetLeft: 3, targetRight: 2)
        
        self.stories[2] = Story(text: "He nods slowly, unphased by the question", answerLeft: "At least he\'s honest. I\'ll climb in.", answerRight: "Wait, I know how to change a tire.", targetLeft: 3, targetRight: 4)
        
        self.stories[3] = Story(text: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", answerLeft: "I love Elton John! Hand him the cassette tape.", answerRight: "It\'s him or me! You take the knife and stab him", targetLeft: 6, targetRight: 5)
        
        self.stories[4] = Story(text: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?")
        
        self.stories[5] = Story(text: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.")
        
        self.stories[6] = Story(text: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"")
    }
    
    func getStory(index: Int) -> Story {
        return self.stories[index]!
    }
}
