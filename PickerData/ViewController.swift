//
//  ViewController.swift
//  PickerData
//
//  Created by Nicolas Theodore on 2016-01-09.
//  Copyright © 2016 Nicolas Theodore. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    // array of different mood options
    let moodArray = ["Happy", "Sad", "Maudlin", "Ecstatic", "Overjoyed", "Optimistic", "Bewildered", "Cynical", "Giddy", "Indifferent", "Relaxed"]
    
    // number of "turning wheels" in the picker
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // We only have on component, so we return moodArray.count
    // If we have mulitple components, we call this method mutliple times, each time passing in a parameter saying which component we're talking about.
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
    
    
    // Several titles possible. Return whichever string is in a given 'row' for moodArray
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return moodArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackgroundColor : UIColor
        
        switch row {
        case 0,3,5,8:
            newBackgroundColor = UIColor.yellowColor()
        case 1,2:
            newBackgroundColor = UIColor.darkGrayColor()
        case 6,7,9:
            newBackgroundColor = UIColor.lightGrayColor()
        default:
            newBackgroundColor = UIColor(red: 200/255, green: 255/255, blue: 200/255, alpha: 1.0)
        }
        
        self.view.backgroundColor = newBackgroundColor
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

