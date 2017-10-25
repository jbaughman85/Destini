import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    var storyLine : StoryLine = StoryLine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateView(story: self.storyLine.getStory(index: 1))
    }
    
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag != 0 {
            self.updateView(story: self.storyLine.getStory(index: sender.tag))
        }
    }
    
    @IBAction func restartPressed(_ sender: UIButton) {
        self.updateView(story: self.storyLine.getStory(index: 1))
    }
    
    func updateView(story: Story)
    {
        self.storyTextView.text = story.text
        
        self.topButton.setTitle(story.answerLeft, for: .normal)
        self.bottomButton.setTitle(story.answerRight, for: .normal)
        
        self.topButton.tag = 0
        
        if let target = story.targetLeft {
            self.topButton.tag = target
        }
        
        self.bottomButton.tag = 0
        
        if let target = story.targetRight {
            self.bottomButton.tag = target
        }
        
        self.topButton.isHidden = story.answerLeft != nil ? false : true
        self.bottomButton.isHidden = story.answerRight != nil ? false : true
        
        self.restartButton.isHidden = !(self.topButton.isHidden || self.bottomButton.isHidden)
    }
}
