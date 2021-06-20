//
//  ViewController.swift
//  I am Ege
//
//  Created by Ege Şenkul on 20.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblAgeHeader: UILabel!
    @IBOutlet weak var lblGenderHeader: UILabel!
    @IBOutlet weak var lblJobHeader: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblJob: UILabel!
    @IBOutlet weak var btnShowDetails: UIButton!
    @IBAction func showDetails(_ sender: Any) {
        
        // Labelların görünürlüklerini tam tersine çevirdim
        lblAgeHeader.isHidden = !lblAgeHeader.isHidden
        lblAge.isHidden = !lblAge.isHidden
        lblGenderHeader.isHidden = !lblGenderHeader.isHidden
        lblGender.isHidden = !lblGender.isHidden
        lblJobHeader.isHidden = !lblJobHeader.isHidden
        lblJob.isHidden = !lblJob.isHidden
        
        // Buttondaki yazıyı güncelleyeceğim
        if(lblAgeHeader.isHidden){
            btnShowDetails.setTitle("Detayları Göster", for: .normal)
        }
        else{
            btnShowDetails.setTitle("Detayları Gizle", for: .normal)
        }
        
        let year = Calendar.current.component(.year, from: Date()) // Mevcut yılı al
        lblAge.text = (String)(year-1996) // Mevcut yıldan doğum yılımı çıkart ve stringe çevir
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

