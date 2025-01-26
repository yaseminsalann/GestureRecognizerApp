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
    var draggableView: UIView!
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
        /*
         UIPinchGestureRecognizer Oluşturma:
         Gesture Recognizer, hedef bir aksiyonu (metodu) çağırır.
         target: Gesture hareketinin tetikleyeceği sınıf.
         action: Kıstırma hareketini işlemek için çağrılan metod.
         Gesture'ı Bir Görünümde Kullanma:
         Gesture Recognizer, bir UIView veya alt sınıflarına (örneğin UIImageView) eklenir.
         isUserInteractionEnabled = true ayarı, UIView'ın kullanıcı etkileşimlerini algılayabilmesi için önemlidir.
         sender.scale:
         Kıstırma hareketinin ölçeğini temsil eder. Varsayılan değeri 1.0'dır.
         Bu değeri her hareket sırasında uygulayarak görünümün boyutunu dinamik olarak değiştirebilirsiniz.
         sender.scale = 1.0 ile hareketi sıfırlayarak sürekli büyüme/küçülme engellenir.
         */
    }
    
    @IBAction func rotationGestureRecognizerButton(_ sender: Any) {
        // Görüntü oluştur ve ekle
        imageView = UIImageView(image: UIImage(named: "sakura"))
        imageView.isUserInteractionEnabled = true // Gesture'ları algılamak için gerekli
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 100, y: 200, width: 200, height: 200)
        view.addSubview(imageView)

        // UIRotationGestureRecognizer oluştur ve hedef aksiyon ekle
        let rotationGesture = UIRotationGestureRecognizer(target: self, action: #selector(handleRotation(_:)))
        imageView.addGestureRecognizer(rotationGesture)
        
        /*
         UIRotationGestureRecognizer Tanımlama:
         UIRotationGestureRecognizer, hedef aksiyon (metod) ve hedef nesneyle (target) ilişkilendirilir.
         sender.rotation: Kullanıcının döndürme açısını temsil eder (radyan cinsinden).
         Dönüşü Uygulama:
         view.transform.rotated(by:): Döndürme işlemi, mevcut dönüş açısına göre güncellenir.
         sender.rotation = 0: Gesture'ın her hareket sonrası sıfırlanması sağlanır, böylece döndürme işlemi birikmez.
         isUserInteractionEnabled:
         Gesture'ların çalışabilmesi için ilgili görünümün isUserInteractionEnabled özelliği true olmalıdır.
         */
    }
    
    
    @IBAction func swipeGestureRecognizerButton(_ sender: Any) {
        // Sağa kaydırma
           let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
           swipeRight.direction = .right
           view.addGestureRecognizer(swipeRight)

           // Sola kaydırma
           let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
           swipeLeft.direction = .left
           view.addGestureRecognizer(swipeLeft)
        /*
         Gesture Tanımlama:
         UISwipeGestureRecognizer bir hedef ve bir aksiyon ile oluşturulur.
         target: Gesture hareketini işleyecek sınıf (genellikle self).
         action: Gesture algılandığında tetiklenecek metod.
         Yön Belirleme:
         direction özelliği kullanılarak gesture’ın algılayacağı yön belirtilir. Varsayılan yön .right (sağa doğru kaydırma) olarak ayarlanmıştır.
         Diğer yönler: .left, .up, .down.
         Gesture'ı Bir View'e Eklemek:
         Gesture, hangi view üzerinde çalışmasını istiyorsanız o view'e eklenir (view.addGestureRecognizer(...)).
         */
    }
    
    @IBAction func panGestureRecognizerButton(_ sender: Any) {
        // Sürüklenebilir bir view oluştur
        draggableView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        draggableView.backgroundColor = .blue
        view.addSubview(draggableView)

        // UIPanGestureRecognizer oluştur ve ekle
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        draggableView.addGestureRecognizer(panGesture)
        /*
         UIPanGestureRecognizer Tanımlama:
         UIPanGestureRecognizer, sürükleme hareketlerini algılamak için kullanılır.
         translation(in:): Sürükleme hareketindeki yer değişimini (x ve y) belirtir.
         sender.setTranslation(.zero, in:): Yeni çeviri değerini sıfırlayarak view'in birikimli hareket etmesini engeller.
         View’in Sürüklenebilirliği:
         draggableView.isUserInteractionEnabled = true özelliği, sürükleme işlemini mümkün kılar. Ancak UIView için bu özellik varsayılan olarak zaten truedur.
         Hareketin Sürekli Güncellenmesi:
         sender.translation(in:) her hareket ettiğinde, kullanıcının o anki sürükleme mesafesini verir.
         Bu değer, birikim olmaması için her seferinde sıfırlanır.
         */
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
    @objc func handleRotation(_ sender: UIRotationGestureRecognizer) {
           guard let view = sender.view else { return }

           // Görüntüyü döndür
           view.transform = view.transform.rotated(by: sender.rotation)

           // Gesture'ın rotation değerini sıfırla
           sender.rotation = 0
       }
    @objc func handleSwipe(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .right:
            print("Sağa kaydırma algılandı!")
        case .left:
            print("Sola kaydırma algılandı!")
        default:
            break
        }}
        @objc func handlePan(_ sender: UIPanGestureRecognizer) {
            guard let draggedView = sender.view else { return }
            let translation = sender.translation(in: view)

            // Yeni pozisyonu hesapla
            var newX = draggedView.center.x + translation.x
            var newY = draggedView.center.y + translation.y

            // Ekran sınırlarını kontrol et
            newX = max(draggedView.bounds.width / 2, min(view.bounds.width - draggedView.bounds.width / 2, newX))
            newY = max(draggedView.bounds.height / 2, min(view.bounds.height - draggedView.bounds.height / 2, newY))

            // View'i sınırlar içinde hareket ettir
            draggedView.center = CGPoint(x: newX, y: newY)
            sender.setTranslation(.zero, in: view)
        }

}

