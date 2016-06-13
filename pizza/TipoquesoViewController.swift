//
//  TipoquesoViewController.swift
//  pizza
//
//  Created by Roberto Carlos Callisaya Mamani on 6/13/16.
//  Copyright © 2016 Roberto Carlos Callisaya Mamani. All rights reserved.
//

import UIKit

class TipoquesoViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    var tipodemasa : String = ""
    var tamanio : String = ""
    var pickerData : [String] = [String]()
    var tipoquesoselected = ""
    @IBOutlet weak var pickerQueso: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerQueso.delegate = self
        self.pickerQueso.dataSource = self
        pickerData = ["mozarela", "cheddar", "parmesano", "sin queso"]
        // Do any additional setup after loading the view.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let viewIngredientes = segue.destinationViewController as! IngredientesViewController
        
        viewIngredientes.tamanio = tamanio
        viewIngredientes.tipomasa = tipodemasa
        viewIngredientes.tipodequeso = tipoquesoselected
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        print("Tamanio \(tamanio)")
        print("Tipo de masa \(tipodemasa)")
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
   
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        tipoquesoselected = pickerData[row]
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
