//
//  ViewController.swift
//  Four-GasolinaOuAlcool
//
//  Created by Yan Alejandro on 30/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultadoLegenda: UILabel!
    @IBOutlet weak var campoPrecoAlcool: UITextField!
    @IBOutlet weak var campoPrecoGasolina: UITextField!
    
    
    @IBAction func calcularCombusivel(_ sender: Any) {
        if let precoAlcool = campoPrecoAlcool.text{
            if let precoGasolina = campoPrecoGasolina.text{
                
                //VALIDAR VALORES DIGITADOS
                let validaCampos = self.validaCampos(precoAlcool: precoAlcool, precoGasoline: precoGasolina)
                
                if validaCampos{
                    self.calcularMelhorPreco(precoAlcool: precoAlcool, precoGasoline: precoGasolina)
                }else{
                    resultadoLegenda.text =  "Digite os preços para calcular! "
                }
            }
        }
    }
    
    func calcularMelhorPreco(precoAlcool: String, precoGasoline: String){
        if let valorAlcool = Double(precoAlcool){
            if let valorGasolina = Double(precoGasoline){
                
                let resultadoPreco = valorAlcool / valorGasolina
                if resultadoPreco >= 0.7{
                    self.resultadoLegenda.text = "É melhor usar gasolina!"
                }else{
                    self.resultadoLegenda.text = "É melhor usar Álcool!"
                }
            }
        }
    }
    
    func validaCampos(precoAlcool: String, precoGasoline: String) -> Bool{
        var camposValidados = true
        
        if precoAlcool.isEmpty{
            camposValidados = false
        }else if precoGasoline.isEmpty{
            camposValidados = false
        }
            
        return camposValidados
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
