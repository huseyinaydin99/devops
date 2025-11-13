# Uygulamanın container içinde çalışabilmesi için Java sanal makinesini sağlayan bir JDK taban imajına ihtiyaç duyduğumu ve bu Dockerfile’ın da böyle bir temel üzerine inşa edildiğini vurguluyorum. 💻☕
# FROM amazoncorretto:17
# Bu satırda, alternatif olarak Amazon Corretto imajını da kullanabileceğimi gösteriyor ama şimdilik devre dışı bırakıp asıl temel imaj olarak aşağıdaki OpenJDK satırını tercih etmiş oluyorum. 🐳🧱
FROM openjdk:17

# Burada, build sürecinde oluşan JAR dosyamın Docker context içindeki konumunu parametrik hale getirerek farklı JAR isimleriyle bile aynı Dockerfile’ı esnek biçimde kullanabilmemi sağlayan bir argüman tanımlıyorum. 🎯
ARG JAR_FILE=target/*.jar

# Bu satırda, derlenmiş uygulama çıktımı (JAR dosyasını) host ortamdan alıp container’ın dosya sistemine kopyalayarak runtime sırasında çalıştırılacak asıl artefaktı `devops-hello-app.jar` ismiyle içeride konumlandırıyorum. 📦📁
COPY ${JAR_FILE} devops-hello-app.jar

# Bu satır, teoride container başlarken paket yöneticisinin indeksini güncellemek için yazılmış olsa da Docker’da birden fazla CMD kullanıldığında yalnızca son CMD geçerli olacağı için burada amaçlanan davranışın her zaman gerçekleşmeyebileceğini bilmek önemlidir. 🔄📦
CMD apt-get update
# Bu satırda, sistem paketlerinin etkileşimsiz (`-y`) olarak yükseltilmesi hedefleniyor fakat yine Docker davranışı gereği önceki CMD’nin üzerine yazıldığı için pratikte sadece son ENTRYPOINT ile birlikte çalışan komutun hayat bulacağını unutmamak gerekir. ⚙️⬆️
CMD apt-get upgrade -y

# EXPOSE komutuyla, uygulamanın container içinde dinlediği 8080 portunu hem belgelemiş hem de Docker/Kubernetes gibi orkestrasyon katmanlarına “iç kapı” bilgisini vermiş oluyor, ağ yönlendirmesini bu porta göre kurgulamayı kolaylaştırıyorum. 🌐🚪
EXPOSE 8080

# ENTRYPOINT satırında, container ayağa kalktığında Java komutunu çalıştırıp `devops-hello-app.jar` dosyasını JVM üzerinde ana süreç olarak başlatarak container’ın yaşam döngüsünü doğrudan uygulamamın kendisine bağlamış oluyorum. 🚀☕📦
ENTRYPOINT ["java","-jar","devops-hello-app.jar"]