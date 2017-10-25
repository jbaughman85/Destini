import Foundation

class Story {
    let text : String
    
    let answerLeft : String?
    let answerRight : String?
    
    let targetLeft : Int?
    let targetRight : Int?
    
    init(text: String, answerLeft: String? = nil, answerRight: String? = nil, targetLeft: Int? = nil, targetRight: Int? = nil) {
        self.text = text
        
        self.answerLeft = answerLeft
        self.answerRight = answerRight
        
        self.targetLeft = targetLeft
        self.targetRight = targetRight
    }
}
