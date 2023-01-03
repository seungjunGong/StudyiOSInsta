//
//  StackViewController.swift
//  StudyiOSInsta
//
//  Created by ho on 2023/01/03.
//

import UIKit

class StackViewController: UIViewController {

    @IBOutlet weak var labelPhone: UILabel!
    
    @IBOutlet var phoneNumberBtns: [UIButton]!
    
    @IBOutlet weak var phoneCallBtn: UIButton!
    var phoneNumberString = ""{
        didSet{
            DispatchQueue.main.async { [weak self] in
                
                guard let self = self else { return }
                self.labelPhone.textColor = .black
                self.labelPhone.text = self.phoneNumberString
            }
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for btnItem in phoneNumberBtns {
            btnItem.addTarget(self, action: #selector(onNumberBtnClicked(sender: )), for: .touchUpInside)
        }
        
        phoneCallBtn.addTarget(self, action: #selector(onPhoneCallBtnClicked(_:)), for: .touchUpInside)
      
    }
    
    @objc fileprivate func onNumberBtnClicked(sender: UIButton){
        guard let inputString = sender.titleLabel?.text else {return}
        phoneNumberString.append(inputString)
    }
    
    @objc fileprivate func onPhoneCallBtnClicked(_ sender: UIButton){
        phoneNumberString.removeAll()
    }
    

 
}
