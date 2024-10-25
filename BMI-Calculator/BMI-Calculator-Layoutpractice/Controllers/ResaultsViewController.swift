

import UIKit

class ResaultsViewController: UIViewController {
    var bmiValue = "44.4"
    var backgroundColor = UIColor.blue
    var adviceText = "You are Obese"
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var advice: UILabel!
    
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        advice.text = adviceText
        view.backgroundColor = backgroundColor
        
    }
    
}
