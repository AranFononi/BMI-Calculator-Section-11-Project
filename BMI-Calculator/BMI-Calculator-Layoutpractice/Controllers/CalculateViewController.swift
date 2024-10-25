
import UIKit

class CalculateViewController: UIViewController {
    var appBrain = BMIBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResaultsViewController
            destinationVC.bmiValue = appBrain.calculateBMI()
            destinationVC.adviceText = appBrain.getBMIAdvice()
            destinationVC.backgroundColor = appBrain.getBMIColor()
        }
    }
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        appBrain.weight = Int(sender.value)
        weightLabel.text = appBrain.updateLabel(weightTrue: true)
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        appBrain.height = Int(sender.value)
        heightLabel.text = appBrain.updateLabel(weightTrue: false)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    


}

