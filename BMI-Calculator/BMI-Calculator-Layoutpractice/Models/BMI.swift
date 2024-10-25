
import UIKit

struct BMI {
    let value: Float
    var color: UIColor
    var advice: String
    
    init(value: Float) {
        self.value = value
        switch value {
        case 0..<18.5:
            self.color = .systemTeal
            self.advice = "You are underweight"
        case 18.5..<25:
            self.color = .systemBlue
            self.advice = "You are normal weight"
        case 25..<30:
            self.color = .systemOrange
            self.advice = "You are overweight"
        case 30...:
            self.color = .systemRed
            self.advice = "You are obese"
        default :
            self.color = .systemRed
            self.advice = "You are obese"
        }
    }
    
}
