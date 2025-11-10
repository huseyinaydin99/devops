####  ⚙️ DEVOPS VE FELSEFESİ — GELİŞTİRME İLE OPERASYONUN EL SIKIŞMASI 🤝

####  🚀 GİRİŞ — DEVOPS NEDİR, NE DEĞİLDİR?

DevOps, yalnızca bir araç seti veya süreç zinciri değildir; yazılım geliştirme (**Development**) ile sistem operasyonları (**Operations**) arasındaki duvarları yıkan bir **felsefedir**. 🧱  
Temel amacı, yazılımın geliştirilmesinden dağıtımına kadar olan tüm süreci **otomatize etmek**, **hızlandırmak** ve **insan hatasından arındırmaktır**.  
DevOps, bir ekip kültürüdür — kodun yalnızca yazıldığı değil, aynı zamanda **yaşadığı**, **ölçüldüğü** ve **iyileştirildiği** bir ekosistemi temsil eder. 🌍  
Ne değildir? Sadece Jenkins, Docker veya Kubernetes değildir. Çünkü DevOps bir araçlar listesi değil, **bir düşünme biçimi** ve **işbirliği modeli**dir. 🧠

---

####  🎯 ANA AMAÇ — NEDEN VAR, NEYİ ÇÖZER?

DevOps’un ana amacı, yazılım geliştirme yaşam döngüsündeki **geliştirme (Dev)** ve **operasyon (Ops)** ekipleri arasındaki bariyeri kaldırmaktır.
- 💡 **Hız:** Kodun fikir aşamasından üretime kadar geçirdiği süreyi minimuma indirir.
- 🔁 **Süreklilik:** Sürekli Entegrasyon (CI) ve Sürekli Dağıtım (CD) mekanizmalarıyla yazılımın her zaman güncel ve hatasız kalmasını sağlar.
- 🔒 **Güvenilirlik:** Otomatik testler, izleme (monitoring) ve geri bildirim döngüleriyle sistemin stabilitesini sürekli kontrol altında tutar.
- 🤝 **İşbirliği:** Yazılımcıların kod yazarken sistem mühendislerini, sistem mühendislerinin de geliştiricileri düşünmesini sağlar — tek bir hedef için birlikte hareket etmeyi öğretir.

---

####  ⚠️ DEVOPS KULLANILMAZSA NE OLUR?

- ❌ **İletişim kopukluğu:** Geliştirici “bende çalışıyor” derken, operasyon ekibi “ama sunucuda çöktü” der. Bu, klasik çatışmanın temelidir.
- 🐢 **Dağıtım yavaşlar:** Her sürüm için manuel test, manuel deploy, manuel rollback gerekir; bu da haftalar alabilir.
- 🔄 **Tutarsız ortamlar:** Local’de çalışan uygulama prod ortamında hata verir çünkü “konfigürasyon cehennemi” yaşanır.
- 💣 **İnsan hatası artar:** Otomatizasyon eksikliği, manuel hataları beraberinde getirir — küçük bir komutla büyük sistemler devre dışı kalabilir.

DevOps’un olmaması, sistemin yavaş, kırılgan ve stresli bir yapıya dönüşmesi anlamına gelir. 😓

---

####  🧩 DEVOPS NERELERDE KULLANILMALIDIR?

- 🌐 **Sürekli güncellenen projelerde:** Özellikle mikroservis mimarilerinde, sık deployment yapılan sistemlerde DevOps zorunluluktur.
- 🏢 **Büyük ekiplerde:** Geliştirme ve operasyon ayrımı büyüdükçe DevOps kültürü olmadan verimlilik düşer.
- ☁️ **Bulut tabanlı sistemlerde:** AWS, Azure veya GCP gibi platformlar zaten DevOps felsefesiyle uyumlu çalışır.
- 🧪 **Test otomasyonu ve CI/CD gerektiren projelerde:** Build, test ve deploy süreçlerinin otomatikleştirilmesi DevOps’un ruhudur.

---

####  🧱 YAZILIMCIYA NE KATAR, NE ÖĞRETİR?

- 🔄 **Sorumluluk duygusu:** Geliştirici artık sadece “kod yazan” değil, “yaşayan sistemi yöneten” kişidir.
- 🧠 **Süreç bilinci:** Kodun geliştirilmesi, test edilmesi, konteynerize edilmesi, deploy edilmesi ve izlenmesi arasındaki bütünlüğü öğretir.
- ⚙️ **Otomasyon disiplini:** İnsan eli değmeden hatasız süreçler kurmanın zevkini kazandırır.
- 📈 **Performans farkındalığı:** Her commit’in sistem kaynaklarına etkisini düşünmeyi öğretir.

DevOps, yazılımcıyı “kod yazan” kişiden çıkarıp, “ürün yöneten mühendis” seviyesine taşır. 🚀

---

####  ⚙️ ÖZELLİKLERİ, AVANTAJLARI VE DEZAVANTAJLARI

| 🧩 Özellik | 🌟 Avantaj | ⚠️ Dezavantaj |
|------------|------------|---------------|
| **Sürekli Entegrasyon (CI)** | Kod her push edildiğinde test ve build süreci otomatikleşir. 🧪 | Başta kurulum maliyeti ve karmaşıklığı yüksek olabilir. |
| **Sürekli Dağıtım (CD)** | Deploy süreci insan müdahalesi olmadan ilerler. 🚀 | Hatalı konfigürasyonlar hızla prod’a taşınabilir. |
| **Otomasyon** | Tekrar eden iş yüklerini azaltır, verimliliği artırır. 🤖 | Gereken script ve pipeline bilgisi başlangıçta karmaşık olabilir. |
| **İzleme (Monitoring)** | Sorunlar kullanıcı fark etmeden tespit edilir. 🕵️‍♂️ | Yanlış alarmlar fazla gürültü yaratabilir. |
| **Geri Bildirim Döngüsü** | Sürekli iyileştirme kültürü sağlar. 🔁 | Disiplin gerektirir; göz ardı edilirse etkisini kaybeder. |

---

####  ⚡ DEV VE OPS — “İKİSİ BİR ARADA” NASIL OLUR?

DevOps’un kalbi, **Development (Dev)** ile **Operations (Ops)** arasındaki “duvarı kaldırmaktır.”  
Bu iki taraf bir araya geldiğinde şu kazanımlar ortaya çıkar:
- 💬 **Ortak Dil:** Geliştirici “deploy edilebilir” kod yazar, operasyon ise “kodun yaşadığı ortamı” anlamaya başlar.
- 🔄 **Sürekli Geri Bildirim:** Kod prod ortamında izlenir, hatalar anında geliştiriciye iletilir.
- 🧠 **Tek Ekip - Tek Hedef:** “Benim kodum, senin sunucun” değil — “bizim ürünümüz” anlayışı oluşur.
- ⚙️ **Araç Uyumu:** Docker, Jenkins, Kubernetes, GitLab CI, Ansible gibi araçlar Dev ve Ops’un ortak oyun alanını oluşturur.

---

####  💻 ÖRNEK DEVOPS YAPILANDIRMASI (Docker + Jenkins + Git)

```yaml
version: '3.8'

services:
  jenkins:
    image: jenkins/jenkins:lts-jdk17
    ports:
      - 8080:8080
    volumes:
      - jenkins_home:/var/jenkins_home

  app:
    build: .
    ports:
      - 8081:8081
    depends_on:
      - jenkins

volumes:
  jenkins_home:
```

>🔹 Bu örnekte, Jenkins otomatik build ve deploy işlemlerini yürütürken, Docker uygulamayı konteynerize ederek taşınabilir hale getirir.
🔹 Böylece Dev (kod geliştirici) ve Ops (sistem yöneticisi) aynı ortamda aynı dili konuşur. 💬

#### 🧭 SONUÇ — DEVOPS’UN FELSEFESİ

DevOps, yazılım dünyasında bir metodoloji değil; bir felsefi dönüşümdür.
Kodun sadece “çalışması” değil, yaşaması, büyümesi ve ölmeden evrimleşmesi hedeflenir.
Eğer yazılım bir canlıysa, DevOps onun solunum sistemi gibidir — sürekli oksijen sağlar, sistemi dinamik tutar. 🌬️
Bir ekip DevOps kültürünü benimsediğinde, sadece kod kalitesi değil; ekip içi güven, hız, iletişim ve vizyon da büyür. 💪

---

---

#### 🧠 DOCKER-COMPOSE VE ELK YAPILANDIRMASI — GERÇEK ZAMANLI LOG FELSEFESİ 🔍

#### 🚀 GİRİŞ — ELK NEDİR, NE DEĞİLDİR?

ELK, **Elasticsearch**, **Logstash** ve **Kibana** bileşenlerinden oluşan güçlü bir log analiz ekosistemidir.  
Bu üçlü, sistemlerin ve uygulamaların ürettiği logları **toplamak**, **işlemek** ve **görselleştirmek** için birlikte çalışır.  
Her biri ayrı bir amaca hizmet eder:
- **Elasticsearch** verileri saklar ve arama motoru görevini üstlenir.
- **Logstash** verileri toplar, dönüştürür ve uygun formata getirir.
- **Kibana** ise tüm bu verileri gözle görünür hale getirir.  
  Ne değildir? Sadece bir izleme aracı değildir; bir organizasyonun dijital hafızasını tutan, arka plandaki “sessiz denetçi”dir. 🧩

---

#### 🧱 DOCKER-COMPOSE — TEMEL TAŞ VE OTOMASYONUN GÜCÜ ⚙️

**Docker Compose**, çoklu container yapılarının tek bir merkezden, düzenli ve otomatik biçimde yönetilmesini sağlayan güçlü bir orkestrasyon aracıdır. 🧩  
Kısacası, onlarca servis ve bileşeni tek bir **YAML** dosyasında tanımlayarak, tüm sistemi tek komutla ayağa kaldırmamı mümkün kılar. 🚀

Geleneksel yöntemlerde her servisin ayrı ayrı başlatılması, bağımlılıkların elle yönetilmesi ve ağ bağlantılarının tek tek ayarlanması gerekirken, Docker Compose bu karmaşayı ortadan kaldırır.  
Bütün servislere “orkestra şefi” gibi davranır — kim, ne zaman, hangi sırayla başlayacak, hangi portta dinleyecek, hangi volume’u kullanacak — hepsini bilir ve yönetir. 🎼

Compose dosyasında (örneğin `docker-compose.yml`) her servisi tanımlarım: **Elasticsearch**, **Logstash**, **Kibana** gibi.  
Bu tanımların içinde hangi Docker imajının kullanılacağı, hangi portların açılacağı, hangi environment değişkenlerinin yükleneceği yer alır.  
Sonrasında sadece şu komutu çalıştırmak yeterlidir:

```bash
docker-compose up -d
```
Ve sihir başlar. 🪄
Bütün servisler, ağ bağlantıları ve volume’ler birlikte, otomatik olarak ayağa kalkar.

Docker Compose’un bana kazandırdığı şey sadece kolaylık değil, standartlaşmadır.
Tüm ekip aynı Compose dosyasını kullandığında, herkesin çalışma ortamı birebir aynı olur — “bende çalışıyor ama sende neden çalışmıyor?” cümlesi tarihe karışır. 😄
Ayrıca Continuous Integration (CI) ve Continuous Deployment (CD) süreçlerinde Compose dosyası, test ve dağıtım otomasyonunun bel kemiğini oluşturur. 🧱

Ama yanlış yapılandırıldığında tehlikelidir: port çakışmaları, eksik environment değişkenleri veya hatalı volume bağlantıları tüm sistemi durdurabilir. ⚠️
Yani Compose, gücü kadar disiplin de ister — küçük bir yanlış indent bile büyük bir karmaşaya yol açabilir.

Sonuçta, Docker Compose, modern DevOps dünyasında “tek tuşla düzen” anlayışının en somut örneğidir.
Benim için yalnızca bir YAML dosyası değil, sistemin kalbiyle aynı ritimde atan bir otomasyon manifestosudur. ❤️‍🔥
Her servis, bağımsız bir container olarak çalışır, ama Compose onları tek bir organizma gibi yönetir.
- 🧩 **Amaç:** Tüm servislerin birbiriyle uyum içinde çalışmasını sağlamak ve ortam kurulumunu otomatize etmektir.
- 🧠 **Felsefe:** “Tek komutla sistem ayağa kalksın, elle hiçbir şey kurmayayım.”
- 🚀 **Avantaj:** Ortamlar arasında tutarlılığı korur, CI/CD süreçlerinde otomatikleştirilmiş kurulum sağlar.
- ⚠️ **Kullanılmazsa:** Her servisin ayrı ayrı kurulması gerekir, bağımlılıklar karmaşıklaşır, hata oranı artar.

---

#### 🧩 ELASTICSEARCH — VERİNİN KALBİ 💾

**Elasticsearch**, modern yazılım ekosistemlerinde verinin depolanması, aranması ve analiz edilmesi için kullanılan güçlü, **NoSQL tabanlı dağıtık bir arama ve indeksleme motorudur.** ⚙️  
Onu benzersiz kılan şey, devasa veri kümelerini bile saniyeler içinde tarayabilmesi ve sonuçları anında döndürebilmesidir. ⚡

Tüm logların, olayların ve metriklerin “yaşadığı yer” Elasticsearch’tür. 🌍  
Verileri **JSON** formatında saklar, böylece hem insan gözüyle okunabilir hem de makine tarafından işlenebilir bir yapı sunar.  
Arka planda verileri parçalara (shard) bölerek dağıtır ve bu sayede **yüksek performans**, **yüksek erişilebilirlik** ve **ölçeklenebilirlik** sağlar. 📈  
Bir sorgu geldiğinde, tüm bu parçalardan veriyi eşzamanlı olarak çeker, birleştirir ve sonuçları anında sunar — adeta veri evreninin nabzını tutar. 💓

Elasticsearch sadece bir “veritabanı” değil, aynı zamanda bir **arama zekâsıdır**.  
Basit bir “veri getir” mantığının ötesinde, **relevans skorlaması**, **full-text search**, **agregasyon**, **filtreleme** ve **real-time analiz** gibi gelişmiş yetenekler sunar. 🔍  
Örneğin milyonlarca log kaydı arasında “error” içeren satırları milisaniyeler içinde bulabilir veya belirli bir IP’nin hangi servislerde hata ürettiğini grafiksel olarak analiz edebilirim. 🧠

Ancak gücü kadar dikkat ister — çünkü Elasticsearch yanlış konfigüre edilirse **RAM tüketimi artar**, **indeks boyutları şişer** ve sorgular yavaşlar. ⚠️  
Bu nedenle yapılandırması doğru yapılmadığında sistemin kalbi hızlı çarpar ama düzensiz atar.

Sonuç olarak, Elasticsearch, ELK üçlüsünün **merkezi sinir sistemi** gibidir.  
Logstash veriyi getirir, Kibana gösterir; ama verinin yaşam alanı, belleği ve hafızası Elasticsearch’tür. 💾  
O olmadan hiçbir logun anlamı olmaz; o varsa, her log bir hikâyeye dönüşür. 📜✨

- 🔍 **Amaç:** Log verilerini analiz etmek, filtrelemek ve arama işlemlerini ultra hızlı hale getirmektir.
- ⚙️ **Kullanım Alanı:** Sunucu logları, uygulama hataları, kullanıcı aktiviteleri gibi büyük veri akışlarını analiz eder.
- 🧠 **Programcıya Katkısı:** Uygulamasının sahadaki davranışını gerçek veriler üzerinden izleme becerisi kazandırır.
- 🚫 **Kullanılmazsa:** Loglar düz dosyalarda boğulur, arama ve analiz imkânsız hale gelir.
- 🌟 **Avantaj:** Gerçek zamanlı arama kabiliyeti ve ölçeklenebilirlik.
- ⚠️ **Dezavantaj:** Yüksek RAM tüketimi ve doğru konfigürasyon yapılmadığında performans düşüşü.

---

#### ⚙️ LOGSTASH — VERİYİ ŞEKLE SOKAN USTA 🧩

**Logstash**, verinin “ham halden anlamlı bilgiye” dönüşümündeki en kritik aşamayı yöneten güçlü bir veri işleme aracıdır. 🔧  
Kısaca, sistemin **damarlarında dolaşan log trafiğini yakalayan**, **filtreleyen**, **temizleyen** ve **anlamlı hale getirip Elasticsearch’e aktaran** bir yönlendirici (data pipeline) gibi çalışır. 🚦

Farklı kaynaklardan — ister bir web sunucusunun *access.log* dosyası olsun, ister bir mikroservisin REST API çağrıları, isterse Filebeat veya Syslog gibi dış veri akışları — gelen logları alır, formatlarını normalize eder, hatalı veya gereksiz satırları temizler ve okunabilir yapıya getirir. ✨  
Bu sayede milyonlarca log satırı arasından, uygulamanın performansını etkileyen kritik hataları, güvenlik açıklarını veya işlem sürelerini milisaniye düzeyinde analiz edebilirim. 📊

Logstash, **üç aşamalı bir felsefe** üzerine kuruludur:
- 🔹 **Input (Girdi):** Verinin kaynağını tanımlarım — örneğin bir dosya, bir TCP portu ya da bir mesaj kuyruğu (Kafka, RabbitMQ vb.).
- 🔹 **Filter (Filtreleme):** Gelen veriyi dönüştürür, temizler, hatta gerekirse Grok, Mutate, Date veya GeoIP gibi filtrelerle zenginleştiririm.
- 🔹 **Output (Çıktı):** İşlenmiş veriyi Elasticsearch, Kafka veya başka bir hedefe gönderirim.

Bu zincir sayesinde Logstash, sadece bir “veri taşıyıcısı” değil, aynı zamanda bir **veri sanatçısı**dır — çünkü ham logu yorumlanabilir, analiz edilebilir ve izlenebilir bir forma sokar. 🎨  
Doğru konfigüre edildiğinde, sistemdeki her hareketin “hikâyesini” anlatır.  
Ama yanlış ayarlandığında, veri akışı boğulur, CPU tüketimi artar ve loglar kaybolabilir. 😬

Sonuç olarak, Logstash; **veri kalitesi, bütünlüğü ve okunabilirliği** açısından ELK ekosisteminin kalp atışıdır. 💓  
O olmadan, loglar bir “kaos yığını” olur; onunla birlikte, kaos düzenin bir parçasına dönüşür. ⚙️

- 💡 **Amaç:** Veriyi anlamlı hale getirmek, karmaşayı düzenli bilgiye çevirmek.
- 🔄 **Felsefe:** “Veri kirlidir, ama doğru işlenirse altın değerindedir.”
- 🔌 **Kullanım Alanı:** Mikroservis loglarını birleştirme, güvenlik kayıtlarını normalize etme, özel pipeline’lar oluşturma.
- 🧠 **Programcıya Katkısı:** Farklı veri formatlarını tek çatı altında yönetmeyi öğretir.
- 🚫 **Kullanılmazsa:** Loglar düzensiz kalır, sorgulanabilir hale gelmez, analiz zayıflar.
- 🌟 **Avantaj:** Modüler yapı (input, filter, output) sayesinde esneklik sağlar.
- ⚠️ **Dezavantaj:** Yanlış yapılandırma performans kaybına yol açabilir.

---

#### 📊 KIBANA — GÖZÜNLE GÖRDÜĞÜN ANALİZ ARACI 👁️‍🗨️

**Kibana**, Elasticsearch’teki verileri anlamlı görsellere dönüştüren güçlü bir web arayüzüdür.  
Grafikler, çizelgeler ve dashboard’lar aracılığıyla sistemin nabzını tutmamı sağlar.
- 🎯 **Amaç:** Karmaşık logları okunabilir hale getirmek ve karar verme sürecini hızlandırmak.
- 📈 **Kullanım Alanı:** Uygulama performansını ölçmek, hata oranlarını görmek, kullanıcı trafiğini analiz etmek.
- 🧠 **Programcıya Katkısı:** Görsel analiz yeteneği kazandırır, soyut logları somut veriye çevirir.
- 🚫 **Kullanılmazsa:** Loglar yalnızca “yazı yığını” olarak kalır, ekip görsel farkındalık kazanamaz.
- 🌟 **Avantaj:** Kullanıcı dostu arayüz, gerçek zamanlı grafikler, filtreli sorgular.
- ⚠️ **Dezavantaj:** Çok büyük veri kümelerinde görselleştirme yavaşlayabilir.

---

#### 🤝 ÜÇÜ BİR ARADA — ELK EKOSİSTEMİ NASIL ÇALIŞIR?

| Bileşen | Görevi | Birlikte Çalışma Mantığı |
|----------|--------|---------------------------|
| **Logstash** | Veriyi toplar, temizler, dönüştürür. 🧹 | Veriyi Elasticsearch’e gönderir. 🔄 |
| **Elasticsearch** | Veriyi saklar ve indeksler. 💾 | Kibana’nın sorgularını yanıtlar. ⚙️ |
| **Kibana** | Veriyi görselleştirir ve raporlar. 📊 | Sonuçları kullanıcıya sunar. 👀 |

Bu üçlü, bir fabrikanın üretim hattı gibi çalışır:  
**Logstash** ham veriyi işler → **Elasticsearch** depolar → **Kibana** sunar.  
Birinin eksik olması, zincirin kopması demektir.

---

#### 🧱 DOCKER-COMPOSE AYAR DOSYAMIN AÇIKLAMASI

Aşağıdaki yapı, ELK bileşenlerinin hepsini tek komutla ayağa kaldırır:

```yaml
# 🧱 Docker Compose dosyası sürümünü belirtiyorum (v3 ile modern YAML yapısını kullanıyorum).
version: '3'

# 🌐 ELK (Elasticsearch, Logstash, Kibana) servislerinin iletişim kuracağı özel bir ağ tanımlıyorum.
networks:
  elk:

# 💾 Elasticsearch verilerini kalıcı tutmak için yerel bir volume oluşturuyorum.
volumes:
  elasticsearch:
    driver: local

# 🧩 Servisleri (container’ları) tanımlamaya başlıyorum.
services:

  # 🔍 Elasticsearch servisi — log verilerini saklayan ve sorgulayan motor.
  elasticsearch:
    environment:
      # 🌍 Elasticsearch’ün dış dünyadan gelen HTTP bağlantılarını kabul etmesini sağlıyorum.
      http.host: 0.0.0.0
      # 🔒 Node’lar arası iletişimin sadece localhost üzerinden yapılmasını belirtiyorum.
      transport.host: 127.0.0.1
    # 🐳 Elasticsearch’ün 6.2.1 sürümünü resmi Docker imajından çekiyorum.
    image: docker.elastic.co/elasticsearch/elasticsearch:6.2.1
    # 🔗 Bu servisi yukarıda tanımladığım “elk” ağına bağlıyorum.
    networks:
      elk: null
    # 🚪 Elasticsearch’ün dışarıya açılacak portunu belirliyorum (tarayıcıdan 9200 ile erişilebilir).
    ports:
      - 9200:9200
    # 🔁 Container kapansa bile otomatik olarak yeniden başlatılmasını sağlıyorum.
    restart: unless-stopped
    # 💽 Elasticsearch verilerini container dışında kalıcı olarak tutuyorum.
    volumes:
      - elasticsearch:/usr/share/elasticsearch/data:rw

  # ⚙️ Logstash servisi — logları alır, işler ve Elasticsearch’e gönderir.
  logstash:
    # 🐳 Resmi Logstash OSS (açık kaynak) imajını kullanıyorum.
    image: docker.elastic.co/logstash/logstash-oss:6.2.1
    # 🔗 Elasticsearch servisine bağımlı olduğunu belirtiyorum (önce Elasticsearch başlar).
    depends_on:
      - elasticsearch
    # 🌐 Aynı “elk” ağına dahil ediyorum, böylece servisler birbirini görebilir.
    networks:
      elk: null
    # 🚪 Logstash’in dinleyeceği portu dış dünyaya açıyorum (5044, genelde Beats için).
    ports:
      - 5044:5044
    # 🔁 Kapanırsa otomatik başlatılacak şekilde ayarlıyorum.
    restart: unless-stopped
    # 📂 Logstash pipeline yapılandırma dosyalarını dışarıdan container’a bağlıyorum (read-only).
    volumes:
      - ./etc/logstash/pipeline:/usr/share/logstash/pipeline:ro

  # 📊 Kibana servisi — Elasticsearch verilerini görselleştiren web arayüzü.
  kibana:
    # 🔗 Elasticsearch’e bağlı çalışması gerektiğini belirtiyorum.
    depends_on:
      - elasticsearch
    environment:
      # 🔑 Elasticsearch erişimi için gerekli kullanıcı şifresini tanımlıyorum.
      ELASTICSEARCH_PASSWORD: toor
      # 🌍 Elasticsearch’e bağlanacağı URL’yi belirtiyorum.
      ELASTICSEARCH_URL: http://elasticsearch:9200
      # 👤 Elasticsearch kullanıcı adını tanımlıyorum.
      ELASTICSEARCH_USERNAME: elastic
    # 🐳 Kibana’nın açık kaynak sürümünü kullanıyorum.
    image: docker.elastic.co/kibana/kibana-oss:6.2.1
    # 🌐 Kibana’yı da aynı “elk” ağına bağlıyorum.
    networks:
      elk: null
    # 🚪 Kibana’nın web arayüzüne 5601 portu üzerinden erişileceğini belirtiyorum.
    ports:
      - 5601:5601
    # 🔁 Kapanırsa otomatik yeniden başlatılsın.
    restart: unless-stopped
```