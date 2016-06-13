//
//  IngredientesViewController.swift
//  pizza
//
//  Created by Roberto Carlos Callisaya Mamani on 6/13/16.
//  Copyright © 2016 Roberto Carlos Callisaya Mamani. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {

    
    @IBOutlet weak var txtResult: UILabel!
    var tamanio = ""
    var tipomasa = ""
    var tipodequeso = ""
    var ingredientesdata = Set<String>()
    @IBOutlet weak var swithJamon: UISwitch!
    @IBOutlet weak var swiftPepperoni: UISwitch!
    @IBOutlet weak var swithPavo: UISwitch!
    @IBOutlet weak var swithSalchicha: UISwitch!
    @IBOutlet weak var swithAceituna: UISwitch!
    @IBOutlet weak var swithPimiento: UISwitch!
    @IBOutlet weak var swithPina: UISwitch!
    @IBOutlet weak var swithAnchoa: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        swithJamon.on = false
        swiftPepperoni.on = false
        swithPavo.on = false
        swithSalchicha.on = false
        swithAceituna.on = false
        swithPimiento.on = false
        swithPina.on = false
        swithAnchoa.on = false
        txtResult.numberOfLines = 0
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let viewConfirmacion = segue.destinationViewController as! ConfirmacionViewController
        viewConfirmacion.ingredientes = self.ingredientesdata.joinWithSeparator(",")
        viewConfirmacion.tamanio = self.tamanio
        viewConfirmacion.tipomasa = self.tipomasa
        viewConfirmacion.tipoqueso = self.tipodequeso
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        print("Tamanio \(tamanio)")
        print("Tipo de masa \(tipomasa)")
        print("Tipodequeso  \(tipodequeso)")
    }
    

    @IBAction func ejamon(sender: UISwitch) {
        print("El valor es \(swithJamon.on)")
        if( swithJamon.on == true){
            if( agregar("jamon") == false ){
                swithJamon.on = false
            }
        }else{
            quitar("jamon")
        }
    }
    
    func cargar(){
       /* for ingre in ingredientesdata {
            dataSet = dataSet + ", " + ingre
        }
 
        txtResult.text = dataSet
            print("Los valores son \(ingredientesdata)")
        */
        txtResult.text = ingredientesdata.joinWithSeparator(",")
    }
    
    func agregar(ingr:String)->Bool{
        var resultAgregar:Bool = false
        if(ingredientesdata.count < 5){
            ingredientesdata.insert(ingr)
            resultAgregar = true
        }else{
            //ingredientesdata.insert(ingr)
            resultAgregar = false
            print("Estimado Cliente solo puede agregar hasta 5 ingredientes. Favor deshabilitar los otros")
        }
        cargar()
        
        return resultAgregar
        
    }
    
    func quitar(ingr:String){
       // if(ingredientesdata.count <= 5){
            ingredientesdata.remove(ingr)
       // }else{
            //ingredientesdata.insert(ingr)
        /*
            print("Estimado Cliente solo puede agregar hasta 5 ingredientes. Favor deshabilitar los otros")
        }*/
        cargar()
    }
    
    
    
    
    
    @IBAction func epepperoni(sender: UISwitch) {
        if( swiftPepperoni.on == true){
            if( agregar("pepperoni") == false ){
                swiftPepperoni.on = false
            }
        }else{
            quitar("pepperoni")
        }
    }
    
    @IBAction func epavo(sender: UISwitch) {
        if( swithPavo.on == true){

            swithPavo.on = agregar("pavo")
            
        }else{
            quitar("pavo")
        }
    }
    
    @IBAction func esalchicha(sender: UISwitch) {
        if( swithSalchicha.on == true){
            swithSalchicha.on = agregar("salchicha")
        }else{
            quitar("salchicha")
        }
    }
    @IBAction func eaceituna(sender: UISwitch) {
        if( swithAceituna.on == true){
            swithAceituna.on = agregar("aceituna")
        }else{
            quitar("aceituna")
        }
    }
    @IBAction func epimiento(sender: UISwitch) {
        if( swithPimiento.on == true){
            swithPimiento.on = agregar("pimiento")
        }else{
            quitar("pimiento")
        }
    }
    @IBAction func epina(sender: UISwitch) {
        if( swithPina.on == true){
            swithPina.on = agregar("piña")
        }else{
            quitar("piña")
        }
    }
    @IBAction func eanchoa(sender: UISwitch) {
        if( swithAnchoa.on == true){
            swithAnchoa.on = agregar("anchoa")
        }else{
            quitar("anchoa")
        }
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
