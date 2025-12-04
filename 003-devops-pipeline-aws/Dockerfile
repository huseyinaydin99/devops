# Uygulamanın çalışması için JDK gereklidir; bu satır base image olarak OpenJDK 21'i seçer.
FROM openjdk:21

# Derleme sırasında kullanılacak JAR dosyasının yolunu argümanla tanımlar.
ARG JAR_FILE=target/*.jar

# Derleme çıktısındaki JAR dosyasını konteyner içine kopyalar ve tek bir isimle kaydeder.
COPY ${JAR_FILE} my-application.jar

# Konteyner başlatıldığında çalışacak komutlar için CMD kullanılır; burada paket listesi güncelleniyor.
# Not: Image build aşamasında paketleri kalıcı olarak eklemek istiyorsanız RUN tercih edilmelidir.
CMD apt-get update

# Konteyner başlatıldığında paketlerin yükseltilmesini sağlar.
# Not: Bu satır da CMD olduğu için sadece container çalıştığında tetiklenir; kalıcı imaj değişikliği için RUN kullanın.
CMD apt-get upgrade -y

# Konteyner içinde açılması beklenen uygulama portunu belirtir.
EXPOSE 8083

# Uygulamayı çalıştırmak için kullanılacak başlangıç komutunu tanımlar.
ENTRYPOINT ["java","-jar","my-application.jar"]