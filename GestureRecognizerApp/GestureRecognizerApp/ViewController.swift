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
    
    @IBAction func pinchGestureRecognizerButton(_ sender: Any) {
        
        // Görüntü oluştur ve ekle
        imageView.image = UIImage(named: "sakura")
        imageView.isUserInteractionEnabled = true // Gesture Recognizer'lar için gerekli
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 50, y: 100, width: 300, height: 300)
        view.addSubview(imageView)
        
        // UIPinchGestureRecognizer oluştur ve hedef aksiyon ekle
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(_:)))
        imageView.addGestureRecognizer(pinchGesture)
    }
    
    @IBAction func rotationGestureRecognizerButton(_ sender: Any) {
    }
    
    
    @IBAction func swipeGestureRecognizerButton(_ sender: Any) {
    }
    
    @IBAction func panGestureRecognizerButton(_ sender: Any) {
    }
    
    @IBAction func longPressGestureRecognizerButton(_ sender: Any) {
    }
    
    @IBAction func screenEdgePanGestureRecognizerButton(_ sender: Any) {
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
    @objc func handlePinch(_ sender: UIPinchGestureRecognizer) {
          // Görüntüyü ölçeklendirme
          guard let view = sender.view else { return }
          
          view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
          
          // Gesture'ın ölçek değerini sıfırla
          sender.scale = 1.0
      }
}

