
import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var messageField: NSTextField!
    
    @IBOutlet weak var usesThreadedAnimationCheckButton: NSButton!
    
    @IBAction func usesThreadedAnimationAction(_ sender: Any) {
        
        guard let progressIndicator = self.progressIndicator else {
            return
        }
        progressIndicator.usesThreadedAnimation =
            self.usesThreadedAnimationCheckButton.state != .off ? true : false
    }
    
    
    @IBOutlet weak var minLabel: NSTextField!
    @IBOutlet weak var maxLabel: NSTextField!
    
    @IBOutlet weak var progressIndicator: NSProgressIndicator!
    
    @IBAction func minValueAction(_ sender: Any) {
        guard let progressIndicator = self.progressIndicator else {
            return
        }
        progressIndicator.doubleValue = progressIndicator.minValue
    }
    
    @IBAction func minusValueAction(_ sender: Any) {
        guard let progressIndicator = self.progressIndicator else {
            return
        }
        progressIndicator.doubleValue = progressIndicator.doubleValue - 10
    }
    
    @IBAction func plusValueAction(_ sender: Any) {
        guard let progressIndicator = self.progressIndicator else {
            return
        }
        progressIndicator.doubleValue =  progressIndicator.doubleValue + 10
    }
    
    @IBAction func maxValueAction(_ sender: Any) {
        guard let progressIndicator = self.progressIndicator else {
            return
        }
        progressIndicator.doubleValue = progressIndicator.maxValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let indicator = self.progressIndicator!
        self.usesThreadedAnimationCheckButton.state =
            indicator.usesThreadedAnimation ? .on : .off
        self.minLabel.stringValue = "\(indicator.minValue)"
        self.maxLabel.stringValue = "\(indicator.maxValue)"

        let ncenter = NotificationCenter.default
        ncenter.addObserver(forName: NSWindow.didBecomeKeyNotification,
                            object: self.view.window,
                            queue: nil) { (note) in
            guard let w = note.object as? NSWindow else {
                return
            }
            if w == self.view.window {
                self.messageField.stringValue = "Key Window"
            }
        }
        ncenter.addObserver(forName: NSWindow.didResignKeyNotification,
                            object: self.view.window,
                            queue: nil) { (note) in
            guard let w = note.object as? NSWindow else {
                return
            }
            if w == self.view.window {
                self.messageField.stringValue = "NOT Key Window"
            }
        }
    }


}

