import UIKit
// Step 1 Create a currency type enum below the import statements

enum Currency {
    case cad
    case mxn
}
// Step 2 Create a constant called usToCad and set its value to the current conversion value. Do the same for a new constant called usToMxn

let usToCad = 1.30
let usToMxn = 18.80

//Step 3 Create a property named currency to type Currency. Set an intial value of .cad

let currency: Currency = .cad

/* Step 4 & 5 Create helper method to calculate a currency based on Currency. Check the value of currency to see whether you shoyld convert to CAD or MXN
// Perform the conversion with the dollars passed into this method
// Return the converted value */

func convert(_ dollars: Double) -> Double {
    switch currency {
    case .cad:
        return dollars * usToCad
    case .mxn:
        return dollars * usToMxn
    }
}

// Step 6 
func convert(amountString: String) -> String? {
     let amount = Double(amountString)
    guard let unwrappedAmount = amount, convert() else {
        return
    }
}
