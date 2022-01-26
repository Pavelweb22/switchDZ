//
//  ViewControllerTwo.swift
//  Lesson 3 Switch DZ
//
//  Created by Павел Яковенко on 25.11.2021.
//

import UIKit

class ViewControllerTwo: UIViewController {

    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var countOfguests: UILabel!
    
    @IBOutlet weak var numberTable: UILabel!
    
    let reserveTable = UISwitch()
    let prepayment = UISwitch()
    let vipRoom = UISwitch()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: создал свичи
        reserveTable.frame = CGRect(x: 290, y: 433, width: 0, height: 0)
        self.view.addSubview(self.reserveTable)
    
        prepayment.frame = CGRect(x: 290, y: 528, width: 0, height: 0)
        self.view.addSubview(self.prepayment)
        
        vipRoom.frame = CGRect(x: 290, y: 610, width: 0, height: 0)
        self.view.addSubview(self.vipRoom)
        
        // on-off
        reserveTable.setOn(true, animated: true)
        prepayment.setOn(false, animated: true)
        vipRoom.setOn(false, animated: false)
        
        reserveTable.addTarget(self, action: #selector(switchChange(paramTarget:)), for: .valueChanged)
        prepayment.addTarget(self, action: #selector(switchChange(paramTarget:)), for: .valueChanged)
        vipRoom.addTarget(self, action: #selector(switchChange(paramTarget:)), for: .valueChanged)
    }
    
    @objc func switchChange(paramTarget: UISwitch){
        print("param is = ", paramTarget)
        
        if paramTarget.isOn{
            print("sw on")
        } else {
            print("sw off")
        }
    }
    
    
    @IBAction func fieldUsername(_ sender: Any) {
        
    }
    
    @IBAction func fieldCountOfGuests(_ sender: Any) {
        
    }
    
    @IBAction func fieldNumberTable(_ sender: Any) {
        
    }
    
    @IBAction func invoiceButton(_ sender: Any) {
        invoiceButton(title: "Выставить счет?", message: "", style: .alert)
        }
        
        
    func invoiceButton(title: String, message: String, style: UIAlertController.Style){
        let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let actionCancel = UIAlertAction(title: "Cancel", style: .default) { (actionCancel) in }
        let actionInvoice = UIAlertAction(title: "Чек", style: .default) { (actionInvoice) in
        }
    
        a.addAction(actionCancel)
        a.addAction(actionInvoice)
        self.present(a, animated: true, completion: nil)
    
        if actionInvoice.isEnabled{
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ViewControllerThree")
            self.present(nextViewController, animated:true, completion:nil)
        }
    }
    
    
    
}
