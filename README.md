# GestureRecognizerApp
Gesture Recognizer, Swift'te kullanıcıların bir cihazla etkileşim kurmak için yaptığı dokunma, kaydırma, kıstırma, döndürme gibi hareketleri algılamak için kullanılan bir mekanizmadır. Apple'ın UIKit framework'ünde bulunur ve dokunmatik ekran tabanlı hareketleri tanımlamak ve işlemek için yaygın olarak kullanılır.

Türleri
Swift'te UIKit'in sağladığı çeşitli Gesture Recognizer türleri şunlardır:

UITapGestureRecognizer: Bir veya daha fazla dokunma ile tıklama hareketini algılar.
UIPinchGestureRecognizer: İki parmakla yakınlaştırma veya uzaklaştırma hareketini algılar.
UIRotationGestureRecognizer: İki parmakla döndürme hareketini algılar.
UISwipeGestureRecognizer: Belirli bir yönde kaydırma hareketini algılar.
UIPanGestureRecognizer: Parmağın sürekli hareketini algılar (sürükleme gibi).
UILongPressGestureRecognizer: Dokunmanın belli bir süre boyunca devam ettiğini algılar.
UIScreenEdgePanGestureRecognizer: Ekranın kenarından yapılan sürükleme hareketlerini algılar.

Kullanım Alanları
UI bileşenleri üzerinde tıklama, kaydırma gibi kullanıcı hareketlerini işlemek.
Daha doğal ve sezgisel bir kullanıcı deneyimi oluşturmak.
Özelleştirilmiş hareketler tasarlamak (örneğin, oyunlarda veya özel animasyonlarda).

UIPinchGestureRecognizer, Swift'te bir nesnenin yakınlaştırılması veya uzaklaştırılması için kullanılan iki parmakla yapılan kıstırma hareketlerini algılamanızı sağlar. Özellikle fotoğraf galerisi uygulamalarında görüntüleri büyütmek/küçültmek için yaygın olarak kullanılır.

Açıklamalar
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

Kullanım Alanları
Fotoğraf yakınlaştırma/uzaklaştırma: Galerilerde görüntüleri büyütüp küçültmek için.
Harf veya obje boyutlandırma: Tasarım veya oyun uygulamalarında element boyutlandırma için.
Etkileşimli kullanıcı arayüzleri: Haritalar, çizim uygulamaları veya özel UI öğeleri.
