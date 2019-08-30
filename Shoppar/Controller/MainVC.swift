//
//  ViewController.swift
//  Shoppar
//
//  Created by Nazar Petruk on 30/08/2019.
//  Copyright © 2019 Nazar Petruk. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var wageTxt: TxtFields!
    @IBOutlet weak var priceTxt: TxtFields!
    @IBAction func clearCalc(_ sender: Any) {
        hoursLbl.isHidden = true
        resultLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.6023162007, blue: 0, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcButton
        priceTxt.inputAccessoryView = calcButton
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text{
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(for: wage, andPrice: price))"
            }
        }
    }


}

