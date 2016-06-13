//
//  ViewController.swift
//  pizza
//
//  Created by Roberto Carlos Callisaya Mamani on 6/13/16.
//  Copyright © 2016 Roberto Carlos Callisaya Mamani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var tamanioselected = ""
    @IBOutlet weak var pickerTamanio: UIPickerView!
    var pickerData: [String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pickerTamanio.delegate = self
        self.pickerTamanio.dataSource = self
        pickerData =  ["Chica","Mediana","Grande"]
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let viewTipomasa = segue.destinationViewController as! TipomasaViewController
        viewTipomasa.tamaniopizza = tamanioselected
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        tamanioselected = pickerData[row]
        return pickerData[row]
    }


}

