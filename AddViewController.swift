//
//  AddViewController.swift
//  dene
//
//  Created by ELANUR KIZILAY on 16.03.2023.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var lblTitle: UITextField!
    @IBOutlet weak var lblBody: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    public var completion: ((String, String,Date) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Kaydet", style: .done, target: self, action: #selector(btnSave))
        
    }
    
    @objc func btnSave () {
        if let titleText = lblTitle.text, !titleText.isEmpty,
           let bodyText = lblBody.text, !bodyText.isEmpty {
            let targetDate = datePicker.date
            completion?(titleText,bodyText,targetDate)
        }
        
    }

}
