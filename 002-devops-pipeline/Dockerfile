# Uygulamanın çalışması için temel imaj: OpenJDK 17 çalışma zamanı sağlar.
# temel çalışma zamanı imajı
FROM openjdk:17

# Derleme çıktısı olarak kullanılacak JAR dosyasının yolunu parametre olarak alır.
# derleme sonrası oluşacak jar dosyasını belirtir
ARG JAR_FILE=target/*.jar

# Derlenen JAR dosyasını imaj içine kopyalar ve çalıştırma için sabit isim verir.
# jar'ı imaj içine my-application.jar olarak kopyala
COPY ${JAR_FILE} my-application.jar

# Konteyner çalıştığında sistem paketlerini güncelleme komutu (NOT: build yerine runtime'da çalışır).
# konteyner başında paket listesini günceller (genelde RUN olmalı)
CMD apt-get update

# Konteyner çalıştığında sistem paketlerini yükseltme komutu (NOT: build yerine runtime'da çalışır).
# paketleri otomatik onayla ve güncelle (genelde RUN olmalı)
CMD apt-get upgrade -y

# Konteynerin dışarıya açtığı iç portu bildirir; dokümantasyon amaçlıdır.
# uygulamanın dinlediği portu belgelemek için
EXPOSE 8081

# Konteyner başladığında Java ile JAR'ı çalıştıracak ana komut.
# uygulamayı JVM ile başlatır
ENTRYPOINT ["java", "-jar", "my-application.jar"]