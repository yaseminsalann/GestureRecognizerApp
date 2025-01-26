//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Yasemin salan on 24.01.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var isSakura = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func tapGestureRecognizerButton(_ sender: Any) {
        //görselin tıklanabilir olmasını sağlıyoruz
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changeImage() {
        //görsele tıklandığında changeImage fonksiyonu çalışır.
        
        //tıklandığında resimler değişmesi için kontrol eklendi.
        if isSakura {
            isSakura = false
            imageView.image = UIImage(named: "sakura")
            myLabel.text = "SAKURA"
        } else {
            isSakura = true
            imageView.image = UIImage(named: "sakuralar")
            myLabel.text = "SAKURALAR"
        }
    }

}

