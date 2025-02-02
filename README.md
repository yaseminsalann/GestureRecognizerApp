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

UIRotationGestureRecognizer, Swift'te iki parmakla yapılan döndürme hareketlerini algılamak için kullanılır. Genellikle, görüntüleri veya diğer görsel öğeleri döndürmek gibi uygulamalarda kullanılır.

Açıklamalar
UIRotationGestureRecognizer Tanımlama:
UIRotationGestureRecognizer, hedef aksiyon (metod) ve hedef nesneyle (target) ilişkilendirilir.
sender.rotation: Kullanıcının döndürme açısını temsil eder (radyan cinsinden).

Dönüşü Uygulama:
view.transform.rotated(by:): Döndürme işlemi, mevcut dönüş açısına göre güncellenir.
sender.rotation = 0: Gesture'ın her hareket sonrası sıfırlanması sağlanır, böylece döndürme işlemi birikmez.

isUserInteractionEnabled:
Gesture'ların çalışabilmesi için ilgili görünümün isUserInteractionEnabled özelliği true olmalıdır.

Kullanım Alanları
Fotoğraf düzenleme uygulamaları: Fotoğrafları döndürme ve yeniden boyutlandırma.
Oyunlar: Oyun içi nesnelerin manipülasyonu.
UI/UX tasarımları: Döndürülebilir veya etkileşimli bileşenler.


UISwipeGestureRecognizer, Swift'te bir view üzerinde yapılan belirli bir yöndeki kaydırma (swipe) hareketlerini algılamak için kullanılır. Bu gesture genellikle ekranlarda sayfa değiştirme, menü açma veya kapatma gibi işlemler için tercih edilir.

Açıklamalar
Gesture Tanımlama:
UISwipeGestureRecognizer bir hedef ve bir aksiyon ile oluşturulur.

target: Gesture hareketini işleyecek sınıf (genellikle self).

action: Gesture algılandığında tetiklenecek metod.

Yön Belirleme:
direction özelliği kullanılarak gesture’ın algılayacağı yön belirtilir. Varsayılan yön .right (sağa doğru kaydırma) olarak ayarlanmıştır.
Diğer yönler: .left, .up, .down.

Gesture'ı Bir View'e Eklemek:
Gesture, hangi view üzerinde çalışmasını istiyorsanız o view'e eklenir (view.addGestureRecognizer(...)).

UIPanGestureRecognizer, Swift'te bir view üzerinde sürükleme (drag) hareketlerini algılamak için kullanılır. Kullanıcı, bir veya daha fazla parmakla bir view'i sürüklerken bu gesture çalışır. Sürükleme işlemi, genellikle view'i ekranda bir noktadan başka bir noktaya taşımak için kullanılır.

Açıklamalar
UIPanGestureRecognizer Tanımlama:UIPanGestureRecognizer, sürükleme hareketlerini algılamak için kullanılır.

translation(in:): Sürükleme hareketindeki yer değişimini (x ve y) belirtir.
sender.setTranslation(.zero, in:): Yeni çeviri değerini sıfırlayarak view'in birikimli hareket etmesini engeller.

View’in Sürüklenebilirliği:
draggableView.isUserInteractionEnabled = true özelliği, sürükleme işlemini mümkün kılar. Ancak UIView için bu özellik varsayılan olarak zaten truedur.

Hareketin Sürekli Güncellenmesi:
sender.translation(in:) her hareket ettiğinde, kullanıcının o anki sürükleme mesafesini verir.
Bu değer, birikim olmaması için her seferinde sıfırlanır.

Kullanım Alanları
Sürüklenebilir Nesneler:Kullanıcının bir nesneyi ekran üzerinde istediği konuma sürüklemesine olanak tanır.
Oyunlar:Karakter kontrolü veya nesne hareketleri için.
Animasyonlar:Kullanıcı hareketlerini taklit eden özel animasyon efektleri.
Scroll veya Panning:İçerik kaydırma veya büyük bir alanı ekranda gezmek için.

UILongPressGestureRecognizer, Swift'te bir view üzerinde uzun süre basılı tutma (long press) hareketini algılamak için kullanılır. Bu gesture genellikle bir eylemi tetiklemek (örneğin, menü açmak, bir öğeyi seçmek ya da düzenleme moduna geçmek) için kullanılır.
Açıklamalar
minimumPressDuration:
Kullanıcının view üzerinde ne kadar süre basılı tutması gerektiğini belirler. Varsayılan değer 0.5 saniyedir.
longPressGesture.minimumPressDuration = 2.0 ile bu süre 2 saniye olarak ayarlanabilir.

state Özelliği:
Gesture'ın durumunu belirtir:
.began: Kullanıcı uzun basma hareketine başladı.

.changed: Kullanıcı parmağını hareket ettiriyor ancak hala basılı tutuyor.

.ended: Kullanıcı parmağını kaldırdı (gesture tamamlandı).

Gesture'ın Tanımlandığı View:Gesture'ın çalışacağı bir view belirlenmelidir ve bu view'in isUserInteractionEnabled özelliği true olmalıdır (varsayılan olarak true'dur).

Kullanım Alanları
Seçim İşlemleri:Uzun basma ile bir öğeyi seçmek veya düzenleme moduna geçmek.
Menü Açma:Uzun basma hareketi ile bir menü veya eylem listesi açmak.
Etkileşimli Animasyonlar:Uzun basma hareketiyle görsel efektler veya geçişler başlatmak.
Sürükleme:Uzun süre basılı tutarak bir öğeyi sürüklemek.

UIScreenEdgePanGestureRecognizer, Swift'te bir view'in ekranın kenarından başlayan sürükleme (pan) hareketlerini algılamak için kullanılan bir gesture recognizer'dır. Bu gesture genellikle kenardan kaydırma hareketiyle bir menü, kontrol paneli veya başka bir işlemi başlatmak için kullanılır.

Açıklamalar
Edges Özelliği:
edges parametresi, hangi kenarın gesture hareketini algılayacağını belirtir:
.left: Sol kenar.
.right: Sağ kenar.
.top: Üst kenar.
.bottom: Alt kenar.
Örneğin, sağ kenardan algılamak için edgePanGesture.edges = .right ayarlanabilir.
Hareket Durumu:
Gesture recognizer'ın durumunu kontrol etmek için sender.state kullanılır:
.began: Gesture başladı.
.changed: Kullanıcı sürüklemeye devam ediyor.
.recognized veya .ended: Gesture tamamlandı.
Kullanılabilirlik:
Bu gesture yalnızca ekranın belirli bir kenarından başlatılan hareketleri algılar. Diğer alanlarda bu hareket algılanmaz.

Kullanım Alanları
Menü Açma ve Kapatma:Kenardan kaydırarak bir navigasyon menüsü açabilirsiniz.
Sayfa Geçişleri:Sağ veya sol kenardan kaydırma ile bir sonraki veya önceki sayfaya geçiş.
Özel Kontroller:Kenardan yapılan hareketlerle özelleştirilmiş kullanıcı etkileşimleri.
