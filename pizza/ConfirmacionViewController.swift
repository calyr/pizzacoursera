//
//  ConfirmacionViewController.swift
//  pizza
//
//  Created by Roberto Carlos Callisaya Mamani on 6/13/16.
//  Copyright © 2016 Roberto Carlos Callisaya Mamani. All rights reserved.
//

import UIKit

class ConfirmacionViewController: UIViewController {

    var tamanio : String = ""
    var tipomasa : String = ""
    var tipoqueso : String = ""
    var ingredientes: String = ""
    
    @IBOutlet weak var lbIngredientes: UILabel!
    @IBOutlet weak var lbMasa: UILabel!
    @IBOutlet weak var lbTamanio: UILabel!
    @IBOutlet weak var lbQueso: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnConfirmar(sender: UIButton) {
        
        let alert = UIAlertView()
        
        alert.title = "Coursera By CalyrSoft"
        alert.message = "Estimado Cliente su solicitud fue procesada."
        alert.addButtonWithTitle("Aceptar")
        alert.show()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        print("El tamanio final \(tamanio)")
        lbTamanio.text = tamanio
        print("El tipomasa final \(tipomasa)")
        lbMasa.text = tipomasa
        print("El tipoqueso final \(tipoqueso)")
        lbQueso.text = tipoqueso
        print("El ingredientes final \(ingredientes)")
        let alert = UIAlertView()
        
        
        if(ingredientes == ""){
            alert.title = "Estimado Cliente"
            alert.message = "Favor seleccionar por lo menos un ingrediente."
            alert.addButtonWithTitle("Aceptar")
            alert.show()
            self.navigationController?.popViewControllerAnimated(true)

        }
        lbIngredientes.text = ingredientes
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
