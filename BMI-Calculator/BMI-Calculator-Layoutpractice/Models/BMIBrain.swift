

import UIKit


struct BMIBrain {
    var weight: Int?
    var height: Int?
    
    func calculateBMI() -> String {
        let weight = Float(self.weight ?? 100)
        let height = Float(self.height ?? 150)
        let heightMeter = height / 100
        return String(format: "%.2f", weight / pow(heightMeter, 2))
    }
    
    func updateLabel(weightTrue: Bool) -> String {
        if weightTrue {
            return "\(weight ?? 100)Kg"
        } else {
            return "\(height ?? 150)cm"
        }
    }
    func getBMIColor() -> UIColor {
        return BMI(value: Float(calculateBMI()) ?? 44.44).color
    }
    func getBMIAdvice() -> String {
        return BMI(value: Float(calculateBMI()) ?? 44.44).advice
    }
}
