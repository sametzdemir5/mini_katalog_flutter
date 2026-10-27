# Mini Katalog Uygulaması

Bu proje, 5 günlük Flutter kampı bitirme görevi kapsamında geliştirilmiş bir Mini Katalog ve Sepet uygulamasıdır. Koyu tema (Dark Mode) desteklemektedir.

## 🚀 Özellikler
* Sadece `material.dart` kullanılarak (ekstra paket olmadan) geliştirildi.
* Ürünler JSON simülasyonu ile `assets/products.json` üzerinden asenkron (`FutureBuilder`) olarak okunmaktadır.
* Dinamik GridView kullanılarak ürün kataloğu listelenmektedir.
* Sayfalar arası veri taşıma (Route Arguments) ile ürün detay sayfası oluşturuldu.
* Global state mantığı ile (CartManager) sepete ürün ekleme, sepetten silme ve toplam fiyat hesaplama işlemleri yapıldı.

## 📁 Proje Yapısı
* `lib/models`: Ürün modeli (Product)
* `lib/data`: Veri okuma (ProductsRepository) ve Sepet yönetimi (CartManager)
* `lib/pages`: Arayüz ekranları (Ana sayfa, Detay, Sepet)
* `assets`: Ürün verileri (products.json)

## 📸 Ekran Görüntüleri
*(Ekran görüntüleri screenshots klasöründedir)*