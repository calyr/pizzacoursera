//
//  TipomasaViewController.swift
//  pizza
//
//  Created by Roberto Carlos Callisaya Mamani on 6/13/16.
//  Copyright © 2016 Roberto Carlos Callisaya Mamani. All rights reserved.
//

import UIKit

class TipomasaViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var pickerMasa: UIPickerView!
    var pickerData: [String] = [String]()
    var tamaniopizza:String = ""
    var tipopizzaselected = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerMasa.dataSource = self
        self.pickerMasa.delegate = self
        pickerData = ["delgada","crujiente","gruesa"]
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        print("Tamanio \(tamaniopizza)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewTipoqueso = segue.destinationViewController as! TipoquesoViewController
        viewTipoqueso.tamanio = tamaniopizza
        viewTipoqueso.tipodemasa = tipopizzaselected
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
        tipopizzaselected = pickerData[row]
        return pickerData[row]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
