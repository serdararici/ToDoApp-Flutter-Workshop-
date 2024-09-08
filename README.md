# Flutter Workshop - ToDo App

![toDo_App](https://github.com/serdararici/ToDoApp-Flutter-Workshop-/blob/master/toDo_App.png)

Bu proje, Techcareer.net'in düzenlediği Kasım Adalan'ın eğitmenliğinde gerçekleştirilen Flutter workshop'unda geliştirilmiştir. Proje, temel Flutter bilgilerini pekiştirmek ve uygulama geliştirme becerilerini artırmak amacıyla hazırlanmıştır.

## Proje Özeti

Bu ToDo uygulaması, Flutter kullanarak geliştirilmiş bir mobil uygulamadır. Uygulama, temel CRUD (Create, Read, Update, Delete) işlemlerini gerçekleştirebilecek şekilde tasarlanmıştır. Ayrıca, uygulama mimarisi ve BLoC pattern kullanımı konularında bilgi edinilmiştir.

## Kullanılan Teknolojiler

- **Flutter**: Mobil uygulama geliştirme için kullanılan framework.
- **Dart**: Flutter ile uygulama geliştirmek için kullanılan programlama dili.
- **SQLite**: Uygulama veritabanı işlemleri için kullanılan yerel veritabanı.
- **Dio**: HTTP istemcisi ve API ile veri alışverişi için kullanılan kütüphane.
- **BLoC Pattern**: Uygulama mimarisi ve durum yönetimi için kullanılan desen.

## Özellikler

- **Tasarım Araçları**: Renk paleti seçildi ve projede renkler sayfası oluşturularak renkler eklendi.
- **Sayfalar**: Ana sayfa, kayıt sayfası ve detay sayfası oluşturuldu.
- **Navigasyon**: Sayfalar arası geçişler kodlandı ve detay sayfasına veri geçişi sağlandı.
- **Veri Yönetimi**:
  - `ToDo` sınıfı oluşturuldu ve bu sınıf ile veriler yönetildi.
  - Anasayfada verileri yüklemek için `Future` ile `toDosYukle` fonksiyonu yazıldı.
  - `ListView` ve `Card` kullanılarak verilerin görselleştirilmesi yapıldı.
- **Arama ve Filtreleme**:
  - `CupertinoSearchView` ile arama fonksiyonu eklendi.
  - `ListView` içinde arama sonuçlarına göre filtreleme yapıldı.
- **Veritabanı İşlemleri**:
  - SQLite ile veritabanı oluşturuldu ve `todo` tablosu eklendi.
  - `VeritabaniYardimci` sınıfı ile veritabanının cihazda kopyalanması sağlandı.
- **Web Servisleri**:
  - `Dio` kütüphanesi kullanılarak internetten veri çekildi ve `jsonParse` ile `ToDo` nesnesine dönüştürüldü.


 ## --------------------------------------
![Flutter Workshop](https://github.com/serdararici/ToDoApp-Flutter-Workshop-/blob/master/flutter_workshop.png)


