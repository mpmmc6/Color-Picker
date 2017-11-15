//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Matthew McCarthy on 11/13/17.
//  Copyright © 2017 tech innovator. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    
    @IBOutlet weak var colorPicker: UIPickerView!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    
    let startIndex = 2
    
   let colors =    [Color (name:"Red", uiColor: UIColor.red),
                     Color (name:"Orange", uiColor: UIColor.orange),
                     Color (name:"Yellow", uiColor: UIColor.yellow),
                     Color (name:"Green", uiColor: UIColor.green),
                     Color (name:"Blue", uiColor: UIColor.blue),
                     Color (name:"Purple", uiColor: UIColor.purple)
    ]
    //var colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"];
    override func viewDidLoad() {
        super.viewDidLoad()
            colorPicker.dataSource = self
            colorPicker.delegate = self
        
        
        self.title="Colors"
        let startColor = colors[startIndex]
        
        colorLabel.text = startColor.name
        self.view.backgroundColor = startColor.uiColor;
        colorPicker.selectRow(startIndex, inComponent: 0, animated: true)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Defining the rows in each thing
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //Defining what text should be in that row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       return colors[row].name
    }
    //Defining what it does when you select the row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedColor = colors[row]
        colorLabel.text = selectedColor.name
        self.view.backgroundColor = selectedColor.uiColor;
        
    }
    //Defining how many rows in the picker

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
