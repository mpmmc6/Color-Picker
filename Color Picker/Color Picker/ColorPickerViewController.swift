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
    
    

    
  /*  let colors =    [Color (name:"Red", uiColor: UIColor.red),
                     Color (name:"Orange", uiColor: UIColor.orange),
                     Color (name:"Yellow", uiColor: UIColor.yellow),
                     Color (name:"Green", uiColor: UIColor.green),
                     Color (name:"Blue", uiColor: UIColor.blue),
                     Color (name:"Purple", uiColor: UIColor.purple)
    ]*/
    var colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"];
    override func viewDidLoad() {
        super.viewDidLoad()
            colorPicker.dataSource = self
            colorPicker.delegate = self
        self.title="Colors"
        colorLabel.text = colors[0]
        self.view.backgroundColor = UIColor.red;
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
       return colors[row]
    }
    //Defining what it does when you select the row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.red;
            colorLabel.text = colors[0]
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.orange;
            colorLabel.text = colors[1]
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.yellow;
            colorLabel.text = colors[2]
        }
        else if(row == 3){
                self.view.backgroundColor =  UIColor.green;
                colorLabel.text = colors[3]
        }
        else if(row == 4)
        {
            self.view.backgroundColor =  UIColor.blue;
            colorLabel.text = colors[4]
        }
        
        else
        {
            self.view.backgroundColor = UIColor.purple;
            colorLabel.text = colors[5]
        }
        }
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


