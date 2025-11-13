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

---

---

####  🐇 RABBITMQ VE VHOST — SİSTEMLERİN KONUŞMA DİLİ, MESAJLAŞMA SİSTEMİNİN GÖRÜNMEYEN KAHRAMANI ⚙️

####  🚀 GİRİŞ — RABBITMQ NEDİR, NE DEĞİLDİR?

**RabbitMQ**, modern yazılımların “arka plandaki konuşma dili”dir — yani farklı uygulamaların, sistemlerin ve servislerin **birbirine dokunmadan haberleşmesini** sağlayan sessiz ama güçlü bir köprüdür. 🗣️  
Bir uygulama başka birine doğrudan bağlanmak zorunda kalmadan, ona bir **mesaj** gönderir.  
Bu mesaj hemen işlenmek zorunda değildir; **kuyruğa alınır**, saklanır ve uygun alıcı hazır olduğunda güvenle teslim edilir.  
İşte bu yapı, RabbitMQ’nun kalbidir — sistem bileşenleri arasındaki iletişimi **zaman, yük ve bağımlılıklardan kurtarır.** 🕊️

Kısaca, RabbitMQ bir **mesaj kuyruğu (message broker)** sistemidir.  
Veriyi gönderen ve alan tarafları **gevşek bağlı (loosely coupled)** hale getirir.  
Bu sayede bir servis çalışmasa bile, diğerleri durmaz — mesaj kuyruğa alınır ve sistem “nefes almaya devam eder.” 🌬️  
İşte bu, modern mimarilerin olmazsa olmazı olan **asenkron iletişim** modelinin özüdür. ⚡  
Yani RabbitMQ, “beklemeden konuşmayı” öğreten sistemler arası diplomattır. 🤝

#### Ne değildir?  
RabbitMQ bir **veritabanı** değildir; amacı veriyi uzun süre saklamak değil, **iletişimi yönetmektir.** 🧭  
Veritabanı, bilginin kalıcı hafızasıdır; RabbitMQ ise bilginin **hareket halindeki taşıyıcısıdır.**  
O, uygulamalar arasındaki “haberci”dir — mesajı alır, sıraya koyar, teslim edilene kadar korur ve en sonunda doğru adrese ulaştırır. 📬  
Tıpkı bir postacının, mektubun içeriğini bilmeden ama doğru kapıya bırakması gibi. 📨

RabbitMQ’nun gücü; **göze görünmemesinde, ama sistemin tüm nabzını elinde tutmasındadır.**  
Bir hata oluştuğunda, bir gecikme yaşandığında veya bir servis devre dışı kaldığında bile, mesajlar kaybolmaz —  
çünkü RabbitMQ her mesajı bir **söz** gibi görür: “Senin mesajın güvenli ellerde.” 🤲

#### 🎯 ANA AMACI — DÜZENLİ, GÜVENLİ VE ASENKRON İLETİŞİM SAĞLAMAK ⚙️

RabbitMQ’nun **ana amacı**, sistemler arasındaki veri akışını **düzenli**, **güvenli** ve **bağımsız** hale getirmektir.  
Yani yazılım bileşenlerinin doğrudan birbirine bağlanmadan, mesajlar üzerinden haberleşmesini sağlayarak **gevşek bağlı (loosely coupled)** bir mimari kurmaktır. 🔄  
Bu sayede bir servis geçici olarak devre dışı kalsa bile, gönderilen mesajlar kaybolmaz; **kuyrukta saklanır** ve servis yeniden ayağa kalktığında otomatik olarak teslim edilir. 🕊️  
Bu yapı, sistemdeki bileşenlerin hem **esnekliğini** hem de **dayanıklılığını (resilience)** artırır. 💪  
Kısacası, RabbitMQ’nun amacı, “zamanlama bağımlılığını” ortadan kaldırarak **asenkron bir dünya** yaratmaktır —  
her mesaj doğru yere, doğru zamanda, doğru şekilde ulaşır. 🎯📬

#### 🎯 ANA AMACI 2 — GÜVENLİ, HIZLI VE KAYIPSIZ VERİ İLETİŞİMİ SAĞLAMAK ⚙️

RabbitMQ’nun ana amacı, **veri kaybı olmadan**, sistemler arası iletişimi **güvenli**, **tutarlı** ve **yüksek performanslı** şekilde sağlamaktır. ⚡  
Bir sistem geçici olarak down olsa bile, gönderilen mesajlar **kuyrukta (queue)** güvenle bekler; hiçbir veri kaybolmaz, sadece zamanı gelene kadar sabırla sırasını bekler. 🕊️  
Bu mimari sayesinde sistemler arasındaki iletişim, **zamanlama bağımsız** hale gelir — gönderici ve alıcı aynı anda aktif olmak zorunda kalmaz.  
RabbitMQ, böylece servisler arasındaki trafiği düzenler, yükü dengeler ve veri akışını kontrol altında tutar. 📦

Ayrıca RabbitMQ’nun önemli bir yönü, büyük verilerin **dağıtık işleme sistemlerine** (örneğin **Apache Spark** veya **Hadoop**) güvenli şekilde aktarılmasını sağlamaktır. 🧠💾  
Bu sayede devasa boyuttaki loglar, sensör verileri veya işlem kayıtları, kayıpsız biçimde büyük veri platformlarına taşınabilir.  
Kısacası RabbitMQ’nun özü, **veriyi kaybetmeden taşımak, sistemleri ayırmadan konuşturmak ve altyapıya hız kazandırmaktır.** 🚀📬

>Sonuç olarak, RabbitMQ sadece bir mesaj yönlendirici değil, modern yazılım dünyasında **dayanıklılık (resilience)**, **bağımsızlık (decoupling)** ve **ölçeklenebilirlik (scalability)** kavramlarının somut karşılığıdır. 🚀  
Onunla sistemler konuşur, ama birbirini yormadan; iletişim kurar, ama bağımlı olmadan;  
ve sonunda, yazılımın karmaşık senfonisinde düzeni sağlar. 🎼


---

####  🎯 ANA AMAÇ — NEDEN KULLANILIR?

RabbitMQ’nun ana amacı, sistem bileşenleri arasındaki iletişimi **güvenli, hızlı ve esnek** hale getirmektir.
- 🔄 **Asenkron Çalışma:** Gönderici, alıcıdan cevap beklemeden işlemine devam eder; bu da sistemin performansını artırır.
- 🧱 **Bağımsızlık:** Farklı teknolojilerde yazılmış servislerin birbiriyle iletişimini sağlar.
- 🚦 **Yük Dengeleme:** Gelen mesajları sıraya alarak sistemin aşırı yüklenmesini önler.
- 🔒 **Güvenilirlik:** Mesajlar teslim edilene kadar kaybolmaz; gerektiğinde yeniden gönderilir.

Kullanılmazsa ne olur?  
Tüm servislerin birbiriyle doğrudan bağlantı kurması gerekir, bu da sistemin **kırılgan**, **bağımlı** ve **ölçeklenemez** hale gelmesine yol açar. ⚠️

---

####  🧩 VHOST (VIRTUAL HOST) — SANAL DÜZENİN KALBİ 🏗️

**vhost**, RabbitMQ içinde bir tür **sanal çalışma alanıdır.**  
Birden fazla uygulamanın aynı RabbitMQ sunucusunu paylaşmasını sağlar ama her birini **izole (bağımsız)** tutar.

Örneğin:  
Bir sistemde hem “sipariş yönetimi” hem de “fatura işlemleri” için RabbitMQ kullanıyorsam, her biri kendi **vhost’unda** çalışabilir.  
Bu sayede kuyruklar, exchange’ler ve kullanıcı izinleri birbirine karışmaz. 🔐

- 🧠 **Amaç:** Farklı servislerin birbirini etkilemeden aynı RabbitMQ’yu kullanabilmesini sağlamak.
- 🧩 **Yapı:** Her vhost, kendi kuyruklarını, değişimlerini (exchange) ve yetkilerini barındırır.
- ⚙️ **Kullanım Durumu:** Mikroservis mimarisinde veya çoklu ortam kurulumlarında (dev, test, prod) idealdir.
- 🚫 **Kullanılmazsa:** Tüm kuyruklar tek bir ortamda karışır, güvenlik ve düzen kaybolur.

Vhost, RabbitMQ için bir **şehir planı** gibidir — her sistem kendi mahallesinde çalışır ama aynı şehirde yaşar. 🏙️

---

####  🧠 RABBITMQ PROGRAMCIYA NE KATAR?

- 💬 **Mikroservis Uyumunu Öğretir:** Servisler arasında doğrudan bağı yerine olay temelli iletişimi öğretir.
- ⏱️ **Performans Bilinci Kazandırır:** Asenkron mesajlaşmanın sistem yükünü nasıl azalttığını gösterir.
- 🧰 **Kuyruk Yönetimi Becerisi:** Backpressure, retry ve acknowledgment gibi kavramların önemini öğretir.
- 🧩 **Disiplin:** Her mesajın bir amaca hizmet ettiği, her kuyruk yapısının bir sorumluluk taşıdığı bir düzen sunar.

---

####  ⚙️ ÖZELLİKLERİ, AVANTAJLARI VE DEZAVANTAJLARI

| 🧩 Özellik | 🌟 Avantaj | ⚠️ Dezavantaj |
|------------|------------|---------------|
| **Mesaj Kuyruğu Yapısı** | Görevler sıraya alınır, sistem yükü dengelenir. ⚖️ | Kuyruk çok büyürse bellek tüketimi artar. |
| **Asenkron İletişim** | Servisler birbirini beklemez, performans artar. ⚡ | Hataların takibi senkron sistemlere göre zordur. |
| **VHost Desteği** | Birden çok uygulama aynı sunucuyu izole biçimde kullanabilir. 🧩 | Yanlış yapılandırma güvenlik açığı oluşturabilir. |
| **Yönetim Paneli (15672)** | Gerçek zamanlı kuyruk izleme, kullanıcı yönetimi sağlar. 📊 | Web arayüzü açık bırakılırsa dış saldırılara açık hale gelir. |

---

####  ⚡ RABBITMQ VE VHOST — BİR ARADA NASIL ÇALIŞIR?

RabbitMQ, “şehir” gibidir; vhost’lar ise o şehrin “mahalleleri”dir. 🏙️  
Her mahallede farklı kurallar, izinler ve kullanıcılar olabilir.  
Bu sayede hem **düzenli** hem **güvenli** bir mesajlaşma altyapısı oluşur.  
Bir kuyruk sadece kendi vhost’undaki exchange ile konuşur; diğer mahallelerin trafiği karışmaz.

Bu yapı, özellikle **mikroservis tabanlı sistemlerde**, loglama, ödeme, bildirim gibi alt servislerin bağımsız olarak çalışmasına olanak tanır. 🔄

---

####  🧱 DOCKER-COMPOSE AYAR DOSYAM

```yaml
# 🧱 Docker Compose sürümünü belirtiyorum (3.9 ile modern Compose özelliklerini kullanıyorum).
version: "3.9"

# 🧩 Servisleri tanımlamaya başlıyorum (her biri ayrı bir container olacak).
services:

  # 🐇 RabbitMQ servisini tanımlıyorum — mesajlaşma kuyruğu sistemim.
  rabbitmq:
    # 🐳 RabbitMQ’nun yönetim paneli içeren imajını kullanıyorum (3-management sürümü).
    image: rabbitmq:3-management
    # 🏷️ Container’a anlamlı bir isim veriyorum, izlemeyi kolaylaştırıyorum.
    container_name: rabbitmq-1
    # 🚪 Dış dünyadan erişim için gerekli portları açıyorum (5672 = mesaj trafiği(ana/baba instance), 15672 = yönetim paneli).
    ports:
      - 5672:5672
      - 15672:15672
    # 🌍 Ortam değişkenleriyle RabbitMQ’nun ilk kullanıcı ayarlarını yapıyorum.
    environment:
      # 🔑 Varsayılan kullanıcı şifresini admin olarak belirliyorum.
      - "RABBITMQ_DEFAULT_PASS=admin"
      # 👤 Varsayılan kullanıcı adını admin olarak belirliyorum.
      - "RABBITMQ_DEFAULT_USER=admin"
      # 📦 Varsayılan sanal host’u (vhost) tanımlıyorum.
      # 🐇 vhost (virtual host), RabbitMQ içinde farklı uygulamaların veya servislerin birbirinden izole şekilde kendi kuyruklarını, değişkenlerini ve izinlerini yönetebildiği sanal bir çalışma alanıdır. 🧩
      - "RABBITMQ_DEFAULT_VHOST='vhost'"
    # 💾 RabbitMQ verilerinin kalıcı olması için volume tanımlıyorum.
    volumes:
      - rabbitmq_data:/var/lib/rabbitmq

# 💽 Volume tanımını yapıyorum, container silinse bile veriler kaybolmasın diye.
volumes:
  rabbitmq_data:
```

#### ❤️‍🔥 SONUÇ — MESAJLAŞMANIN GÖRÜNMEYEN MİMARİSİ

>RabbitMQ ve vhost, yazılım sistemlerinde iletişimi düzenleyen görünmez kahramanlardır.
>Birlikte çalıştıklarında, sistemler arasındaki kaos yerini sessiz bir uyuma bırakır. 🔄
>Her mesaj doğru zamanda, doğru adrese, doğru formatta ulaşır.
>Yani “bağlantısız ama uyumlu” sistemler dünyasının en sessiz ama en etkili altyapısıdır. 🧠💬

---

---

### ❤🚀 Kubernetes Notlarım

Kendi projelerimde yaşayarak öğrendiğim çekirdek kavramlar ve mimari bakış açım

---

### ❤1️⃣ Çekirdek Bileşenler & Mimari

#### ❤1.1 🧠 Control Plane (Master) ve ⚙️ Worker Node’lar

Kubernetes mimarisini kafamda oturturken, Control Plane’i karar veren beyin, Worker Node’ları ise bu kararları icra eden kas gücü gibi düşünmeye başladığım anda her şey çok daha anlamlı hâle geliyor.

Control Plane (API Server, Scheduler, Controller Manager, etcd), cluster içindeki tüm kaynakların durumunu takip eden, hangi Pod’un hangi node’da çalışacağını planlayan, istenen durum ile mevcut durumu sürekli karşılaştıran ve gerektiğinde düzeltici aksiyon alan merkezi zekâ katmanıdır; bu katman olmadan Kubernetes sadece birbirinden habersiz makinelerden oluşan sıradan bir sunucu grubu olurdu. 🧠

Worker Node’lar, container’ların (dolayısıyla Pod’ların) gerçekten çalıştığı fiziksel veya sanal makineler olup, Control Plane’den gelen emirleri yerine getirerek uygulamaları ayağa kaldıran, network trafiğini taşıyan ve depolama erişimini sağlayan icra katmanıdır; bu node’lar olmadığı zaman teorik olarak bir cluster tanımı kâğıt üzerinde var olsa bile fiilen hiçbir iş yapan canlı bir sistemimiz olmaz. ⚙️

#### ❤1.2 🧱 Pod’lar

Pod’ları, bir uygulama bileşenini çalıştırmak için Kubernetes’in verdiği en küçük, en saf çalışma birimi olarak görüyorum; tek ya da birbirine çok yakın bağları olan birkaç container’ı aynı network ve depolama bağlamında bir araya getirip tek bir mantıksal paket hâline getiriyorlar.

Pod, container’ların tek başına Kubernetes tarafından doğrudan yönetilemediği bir dünyada, bu container’ları ortak IP, port alanı ve volume paylaşımı ile birlikte yaşamaya zorlayan temel sarma birimidir; Pod olmadan Kubernetes scheduler’ı container’ları nereye ve nasıl yerleştireceğini bilemez ve bütün orkestrasyon mantığı çöker. 🧩

Pod’ların kısa ömürlü (ephemeral) olması, onların birer sunucu gibi değil, her an öldürülüp yeniden yaratılabilecek, versiyonlanabilir ve kolayca çoğaltılabilir birer çalıştırma birimi olduğunu hatırlatır; bunu kavradıktan sonra asıl kalıcı olanın “durum” ve “tanım” (Deployment, YAML, PV vs.) olduğunu, çalıştırma ortamının ise her zaman yeniden üretilen tüketilebilir bir parça olduğunu görüyorum. 🔁

#### ❤1.3 ⚙️ İki Farklı Pod Yapılandırması

Kendi kafamda kurguladığım iki farklı Pod senaryosunu yan yana düşünüp, aralarındaki farkları ve hangi durumda hangisini tercih ettiğimi netleştiriyorum.

#### ❤1.3.1 🧩 Pod #1 – Basit “Hello” Servisi

```yaml
# Kubernetes'in bu dosyayı hangi API sürümüyle yorumlayacağını belirtir. 📘
apiVersion: v1

# Oluşturulan kaynağın bir Pod olduğunu ifade eder. 📦
kind: Pod

metadata:
  # Pod'un adını belirler; kümede benzersiz olması gerekir. 🏷️
  name: devops-001-hello
  labels:
    # Pod’a etiket ekleyerek onu gruplayıp kolayca bulmamızı sağlar. 🧩
    name: devops-001-hello
    # Bu Pod’un backend tarafında çalışan bir bileşen olduğunu belirtir. ⚙️
    type: backend
    # Bu Pod’un hello-service uygulamasına ait olduğunu gösterir. 🔔
    app: hello-service
    # Bu Pod’un hangi projeye ait olduğunu işaret eder. 📂
    project-name: mydemo

spec:
  containers:
    - name: devops-001-hello
      # Pod içinde çalışacak Docker imajını tanımlar. 🐳
      image: huseyin11/devops-001-hello
      resources:
        limits:
          # Pod'un kullanabileceği en fazla bellek miktarını sınırlar. 💾
          memory: "128Mi"
          # Pod'un kullanabileceği CPU gücünü sınırlar. 🧠
          cpu: "500m"
      ports:
        - containerPort: 9090
          # Container’ın dinlediği port numarasını belirtir. 🌐
```

Bu ilk Pod konfigürasyonunda, aslında tek container’lı, hafif bir backend servisini ayağa kaldırmak için gerekli olan minimum ama anlamlı alanların hepsini toplayıp net bir yapı kurmuş oluyorum.

İmajı (image) ve port’u net tanımlayarak, Kubernetes’in bu container’ı hangi Docker imajından ayağa kaldıracağını ve cluster içi servislerin bu Pod’a hangi port üzerinden ulaşacağını belirlemiş oluyorum; bu sayede “çalışıyor ama nereden dinliyor” sorusu daha baştan çözülüyor. 🌐

Resources limits ile bellek ve CPU sınırlarını belirleyerek, hem cluster’ın toplam kaynaklarının tek bir Pod tarafından tüketilip sistemi kilitlemesini engelliyor hem de ileride autoscaling gibi mekanizmaları devreye alırken daha öngörülebilir bir kaynak kullanım modeli yakalamış oluyorum. 📊

Labels kısmında `type=backend`, `app=hello-service` gibi etiketler kullanarak, bu Pod’u hem insan gözüyle hem de Service ve Deployment gibi Kubernetes nesneleri tarafından kolayca seçilebilir, filtrelenebilir ve gruplanabilir hâle getiriyor; böylece hem mantıksal ayrımı hem de operasyonel görünürlüğü artırıyorum. 🧭

#### ❤1.3.2 🧩 Pod #2 – Problu, Env’li, Biraz Daha “Production’a Yakın” Tasarım

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: devops-002-advanced
  labels:
    app: hello-service
    tier: backend
    environment: production
spec:
  containers:
    - name: devops-002-advanced
      image: huseyin11/devops-001-hello
      env:
        - name: APP_ENV
          value: "prod"
      resources:
        requests:
          cpu: "200m"
          memory: "64Mi"
        limits:
          cpu: "800m"
          memory: "256Mi"
      livenessProbe:
        httpGet:
          path: /actuator/health
          port: 9090
        initialDelaySeconds: 5
        periodSeconds: 10
      readinessProbe:
        httpGet:
          path: /actuator/health
          port: 9090
        initialDelaySeconds: 3
        periodSeconds: 5
```

Bu ikinci Pod tasarımında, ilkine göre bakışımı biraz daha “gerçek üretim ortamına yakın” bir seviyeye çekip, uygulamanın sağlığını izleyen problar, minimum kaynak talepleri ve ortam bilgisini yöneten environment değişkenleri ekliyorum.

Liveness ve readiness probelarını ekleyerek, Kubernetes’e uygulamanın sadece çalışıyor olup olmadığını değil, gerçekten sağlıklı cevap verip vermediğini ve trafiği kaldırmaya hazır olup olmadığını sorgulatıyor; bozulmuş, kilitlenmiş veya hazırlık aşamasında kalmış container’ların cluster’ın geri kalitesini bozmasını bu şekilde engelliyorum. ❤️‍🩹

Requests alanıyla minimum CPU ve bellek talebi tanımlayarak, scheduler’ın bu Pod’u zayıf bir node’a rastgele koymasını engelliyor, daha dengeli bir yerleşim (scheduling) algoritması ile cluster’ın topyekûn stabil çalışmasını kolaylaştırıyorum. ⚖️

Environment değişkenleri ile ortam tipini (prod, dev, test) dışarıdan ileterek, aynı imajı farklı ortamlarda yeniden build almadan sadece konfigürasyonla oynayarak kullanabiliyor, DevOps tarafında tekrar eden, manuel ve riskli müdahaleleri azaltıyorum. 🎛️

#### ❤1.4 🏗️ Deployment’lar

Deployment, Kubernetes’te benim gözümde “Pod tarifinin versiyonlanabilir, ölçeklenebilir ve kendini iyileştirebilir hâli” gibi; yani yalnızca tek bir Pod’u değil, o Pod’un arkasındaki niyeti ve istenen durumu temsil eden üst seviye controller.

Deployment kullanarak, “bu Pod’dan her zaman en az X adet çalışsın” diye bir söz veriyor ve Kubernetes’ten bu sözü tutmasını talep ediyorum; Pod çökerse yeniden yaratılıyor, node kaybolursa başka node’da ayağa kalkıyor ve sonuçta sistem manuel restart işlerinden beni kurtarıyor. ⚙️

Rolling update özelliği sayesinde, yeni versiyonları canlı sisteme aktarırken tüm trafiği aniden kesmek yerine yavaş yavaş, kontrollü ve geri alınabilir bir şekilde dağıtabiliyor, böylece hem downtime riskini azaltıyor hem de hatalı deploy durumunda hızlı rollback ile güvenli bir emniyet supabı oluşturuyorum. 🔄

Kısa bir örnek:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: devops-hello-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: hello-service
  template:
    metadata:
      labels:
        app: hello-service
    spec:
      containers:
        - name: devops-001-hello
          image: huseyin11/devops-001-hello
          ports:
            - containerPort: 9090
```

#### ❤1.5 🌐 Servisler (Services)

Service, Pod’ların değişken IP adreslerini ve ömürlerini soyutlayan, dış dünya ile uygulamam arasında stabil bir köprü kuran, load balancing işini üstlenen ağ katmanı nesnesi gibi çalışıyor ve ben Kubernetes kullanırken neredeyse her ciddi senaryoda bir Service tanımıyla karşılaşıyorum.

Service kullanmadığım bir senaryoda, her Pod’un IP’sini tek tek bulmak, Pod her öldüğünde yeni IP’ye göre konfigürasyonları manuel güncellemek ve trafiği elle paylaştırmak zorunda kalırım ki bu modern bir mimaride tam anlamıyla sürdürülemez ve yönetilemez bir kaos demektir. 🌪️

Service, selector’lar üzerinden etiketlere (labels) bakarak doğru Pod’ları bulur ve gelen trafiği bu Pod’lar arasında dengeli bir şekilde dağıtır; böylece ben tek bir mantıksal adresle (örn: `devops-hello-service`) konuşurken arka tarafta kaç Pod çalıştığını düşünmek zorunda kalmam. ⚓

Örnek:

```yaml
apiVersion: v1
kind: Service
metadata:
  name: devops-hello-service
spec:
  type: ClusterIP
  selector:
    app: hello-service
  ports:
    - port: 80
      targetPort: 9090
```

#### ❤1.6 🗂️ Namespace’ler

Namespace kavramını, cluster içindeki kaynakları mantıksal olarak bölüp, çevreler, ekipler veya projeler bazında izole etmenin ve düzenlemenin pratik bir yolu olarak kullanıyorum; özellikle birden fazla ekip aynı cluster’ı paylaştığında namespace adeta hayat kurtarıyor.

Namespace kullanmadığımda, tüm Pod, Service, ConfigMap ve benzeri nesneler aynı düzlemsel isim alanında toplanıyor ve isim çakışmaları, erişim karmaşaları ve yönetimsel dağınıklık kaçınılmaz hâle geliyor; özellikle prod, dev, test gibi ayrımları namespace’e taşımak işleri ciddi anlamda sadeleştiriyor. 🧹

#### ❤1.7 🏷️ Etiketler (Labels) ve Seçiciler (Selectors)

Labels ve selectors, Kubernetes’te hem insan hem de sistem için kullanılan ortak bir sınıflandırma dili gibi; Pod’lara ve diğer nesnelere iliştirdiğim küçük anahtar-değer çiftleri, daha sonra Service, Deployment, NetworkPolicy veya monitoring tarafı için güçlü bir filtreleme mekanizmasına dönüşüyor.

Labels kullanarak, örneğin `environment=prod`, `tier=backend`, `app=hello-service` gibi bilgilerle hem log tarafında hem de `kubectl get pods -l app=hello-service` gibi komutlarla son derece esnek ve anlaşılır sorgular çalıştırabiliyor, işimi kolaylaştırıyorum. 🔍

Selectors ise, bu etiketleri okuyup “ben sadece şu özelliğe sahip Pod’larla konuşmak istiyorum” diyen taraf; yani Service bir selector ile kendine karşılık gelen Pod’ları buluyor, Deployment ise yine selector ile yönetmesi gereken Pod setini belirliyor ve bu ilişki zinciri Kubernetes mimarisinin esnekliğini ciddi şekilde artırıyor. 🧠

Label, Kubernetes’te bir objeye (Pod, Service, Deployment vs.) yapıştırdığım anahtar=değer etiketidir; bu etiketler objeyi “environment=prod”, “app=hello-service”, “tier=backend” gibi anlamlı gruplara ayırmamı ve hem insan hem sistem tarafından bulunabilir olmasını sağlar. 🎯
Selector ise, “şu label’a sahip olan objeleri bana getir” diyen sorgu tarafıdır; Service, Deployment, NetworkPolicy gibi yapılar selector kullanarak doğru label setine sahip Pod’ları hedef alır ve böylece doğru gruba doğru davranışı uygular. 🧠

environment=prod, app=hello-service, tier=backend aslında Pod’un üstüne yapıştırdığın isimli etiketler (etiketin adı = environment, app, tier; değeri = prod, hello-service, backend) ve Kubernetes bu etiketlere bakarak “hangi ortam”, “hangi uygulama”, “mimari olarak hangi katman” sorularının cevabını anlıyor, sonra da mesela selector kullanarak “app=hello-service olan tüm Pod’lara trafik gönder” gibi akıllı seçimler yapabiliyor. 🎯

---

#### ❤1.7.1 🧬 Kubernetes Ekosistemi, Katman Haritası ve Mimarisi: Cluster’dan Container’a Katmanlı Yolculuk

```text
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ 🛰️  KUBERNETES CLUSTER                                               ┃
┃ Tüm node’ların, namespace’lerin, ağ katmanının, depolama soyutlarının┃
┃ ve kontrol düzlemi bileşenlerinin tek bir mantıksal bütün olarak     ┃
┃ yönetildiği, sistemin hem beyni hem de sinir ağı gibi işleyen çatı   ┃
┃ orkestrasyon katmanıdır; her şey bu kabuğun içinde anlam kazanır.    ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
│
┌─────────────────┴─────────────────┐
▼                                   ▼
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓   ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ 🗂️  NAMESPACE: mydemo             ┃   ┃ 🗂️  NAMESPACE: monitoring     ┃
┃ Uygulama ekiplerini, ortamları    ┃   ┃ İzleme, log, metric gibi      ┃
┃ (dev, test, prod) ve projeleri    ┃   ┃ altyapı servislerini ayrı bir ┃
┃ mantıksal sınırlar içine alarak   ┃   ┃ isim alanında tutup, prod     ┃
┃ kaynak kotası ve RBAC kurallarıyla┃   ┃ uygulamalarıyla karışmasını   ┃
┃ yönettiğim izole çalışma alanıdır.┃   ┃ engelleyen yardımcı alanıdır. ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛   ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
│
▼
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ 🌍  INGRESS / EXTERNAL LOAD BALANCER (opsiyonel dış kabuk)           ┃
┃ Dış dünyadan gelen HTTP/HTTPS isteklerini domain ve path bazında     ┃
┃ tek bir giriş noktasında toplayıp, arkadaki Service'lere akıllıca    ┃
┃ yönlendiren, DNS ile entegre çalışan, trafiğin ilk karşılama katmanı ┃
┃ olup, Service’leri dış müşterilere düzgün ve kontrollü açmamı sağlar.┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
│
▼
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ 🌉  SERVICE: devops-hello-service                                    ┃ 
┃ Label selector kullanarak belirli bir işi yapan Pod grubunu tek bir  ┃
┃ sanal IP ve mantıksal ad altında toplayan, gelen trafiği arkadaki    ┃
┃ instance’lar arasında dengeli dağıtan ve Pod IP’lerindeki değişimi   ┃
┃ dış dünyadan tamamen gizleyen, ağ soyutlama katmanının merkezidir.   ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
│ (selector: app=hello-service, type=backend)
▼
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ 🏗️  DEPLOYMENT: devops-hello-deployment                              ┃
┃ Hangi container image’inden, hangi konfigürasyonla, aynı anda en az  ┃
┃ kaç adet Pod kopyasının çalışacağını tanımlayan; versiyon geçişlerini┃
┃ rolling update ile yöneten ve çökme durumunda Pod’ları otomatik      ┃
┃ yeniden ayağa kaldırarak uygulamanın hedeflenen duruma sadık kalmasını┃
┃ sağlayan, Pod yaşam döngüsünün asıl yöneticisidir.                   ┃
┃ Deployment, aslında aynı şablondan (aynı image, aynı config, aynı    ┃
┃ label’lar) üretilmiş, bire bir kopya olan Pod’ların bir grubunu      ┃
┃ yöneten ve bu grubun sayısını, versiyonunu ve hayatta kalma durumunu ┃
┃ otomatik olarak kontrol eden üst seviye kontrol mekanizmasıdır.💼🧱 ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
│
▼
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ ♻️  REPLICASET (Deployment'ın gölgedeki kolu)                        ┃
┃ Aynı şablona ve aynı label setine sahip Pod kopyalarının sayısını    ┃
┃ istenen replika sayısıyla sürekli karşılaştırıp, eksikse yeni Pod    ┃
┃ üreten, fazlaysa Pod kapatan ve ölçeklendirme kararlarını fiilen     ┃
┃ uygulayan, Deployment'ın arka plandaki sayıcı ve dengeleyici         ┃
┃ mekanizmasıdır; çoğu zaman adını bile görmem ama hep çalışır.        ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
│
┌─────────┴───────────────────────────────┐
▼                                         ▼
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓      ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ 🧱 POD #1: devops-001-hello   ┃      ┃ 🧱 POD #2: devops-001-hello ┃
┃ Kendi IP adresi, kendi port   ┃      ┃ Aynı Deployment’tan doğan,  ┃
┃ alanı, kendi process alanı ve ┃      ┃ aynı işi paralel yapan, yük ┃
┃ volume bağlamı olan, bir veya ┃      ┃ altında sistemi ayakta tutan┃
┃ birkaç container'ı birlikte   ┃      ┃ kardeş çalışma birimidir.   ┃
┃ barındıran en küçük çalışma   ┃      ┃ Her biri bağımsız ölür ve   ┃
┃ birimidir; ölmesi olağan,     ┃      ┃ yeniden doğar, kalıcı olan  ┃
┃ yeniden üretilmesi beklenen   ┃      ┃ aslında şablondur.          ┃
┃ tüketilebilir hücre gibidir.  ┃      ┃                             ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛      ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
│                                     │
▼                                     ▼
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓      ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ 📦 CONTAINER (Pod içindeki)   ┃      ┃ 📦 CONTAINER (Pod içindeki)  ┃
┃ Tek bir proses modeli etrafında┃     ┃ Aynı image’den doğsa bile,   ┃
┃ çalışan, dosya sistemi, ağ ve  ┃     ┃ runtime düzeyinde tamamen    ┃
┃ proses izolasyonu sağlayan     ┃     ┃ izole bir çalışma ortamıdır; ┃
┃ runtime ortamıdır; her biri    ┃     ┃ Pod içinde aynı IP’yi        ┃
┃ bir Docker image'inden ayağa   ┃     ┃ paylaşır ama process sınırlarını┃
┃ kalkar ve CPU/RAM limitleriyle ┃     ┃ korur; uygulamanın her kopyası┃
┃ cluster kaynaklarını kontrollü ┃     ┃ burada gerçek anlamda “yaşar”.┃
┃ tüketir.                       ┃     ┃                              ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ┛     ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
└─────────────────────┬─────────────────────────────────────┘
▼
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ 🖼️  IMAGE (DERLENMİŞ BUILD + DEPENDENCIES)                          ┃
┃ CI/CD pipeline'ımın çıktısı olan, uygulama kodunun derlenmiş hâlini,┃
┃ bağımlılıklarını ve runtime ortamını tek bir paket içinde toplayan,  ┃
┃ container’ların birebir kopya halinde çoğalmasını sağlayan sabit    ┃
┃ şablondur; registry’de saklanır ve her yeni container bu kalıptan    ┃
┃ üretilir, böylece “bende çalışıyor ama sende çalışmıyor” devri biter.┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
│
▼
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ 💻 SOURCE CODE + BUILD PIPELINE                                     ┃
┃ Geliştirici olarak yazdığım gerçek kaynak kodu, testler, konfigürasyon┃
┃ dosyaları ve bunların Maven/Gradle gibi araçlarla derlenip paketlendiği┃
┃ build aşamaları; burası hem iş mantığının hem de teknik kalitenin    ┃
┃ doğduğu yerdir ve yukarıdaki tüm katmanlar aslında bu kodun doğru,   ┃
┃ güvenli ve ölçeklenebilir şekilde koşmasını sağlamak için var olur.  ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
```

---

### ❤2️⃣ Uygulama Yaşam Döngüsü

#### ❤2.1 ♻️ ReplicaSet & Ölçeklendirme (Scaling)

ReplicaSet, belli bir label setine sahip Pod’ların sayısını sabit tutmakla görevli, Deployment’ın da temelinde çalışan bir controller türü olup, ölçeklendirme yaptığımda aslında perde arkasında ReplicaSet’in yeni Pod’lar üretmesini veya fazlalıkları kapatmasını sağlayan ana mekanizmadır; bu yapı olmazsa ölçekleme tamamen manuel Pod yaratma/kapatma işine dönüşür. 📈

#### ❤2.2 🧬 StatefulSet’ler (Durum Bilgisi Olan Uygulamalar)

StatefulSet, her Pod’un kimliğinin (hostname, sıralama, storage eşleşmesi) önemli olduğu, veritabanı gibi durum bilgisi taşıyan uygulamalar için tasarlanmış bir controller’dır; eğer böyle bir senaryoda sıradan Deployment kullanırsam Pod isimleri ve bağlı diskler kayar, cluster’da veri tutarlılığı ve replikasyon mantığı bozulur, bu yüzden StatefulSet ile her Pod’a yapışık bir “kişilik” kazandırmak hayati önem taşır. 🧱

#### ❤2.3 🛰️ DaemonSet’ler (Her Node’da Bir Pod)

DaemonSet, her node üzerinde belirli bir Pod’un (örneğin log toplayıcı, izleme ajanı veya node-level network bileşeni) mutlaka bir kopyasının çalışmasını garantileyen controller türüdür; DaemonSet kullanmadığım bir cluster’da merkezi izleme ve loglama gibi altyapısal işlevleri her node’a eşit yaymam mümkün olmaz ve bazı node’lar sistem dışında kalır. 🛰️

#### ❤2.4 ⏱️ Job & CronJob (Zamanlanmış ve Batch İşler)

Job, bir işi belirli sayıda tamamlamak üzere çalışan, iş bitince Pod’u sonlandıran ve tekrarlanabilir batch görevleri için kullanılan bir yapı olup, sonsuza kadar açık kalması gerekmeyen, örneğin rapor üretimi veya belli bir batch işlem gibi süreçleri Kubernetes mantığıyla yönetmeme yardımcı olur. 📄

CronJob, Job’un zamanlanmış hâli gibi düşünülebilir; cron formatında verdiğim zamanlama ile belirli aralıklarla yeni Job’lar türeten bir üst controller’dır ve klasik cron sistemlerinde yaşanabilen log kaybı, yeniden başlatmada kaybolma vb. dertleri Kubernetes ekosistemine taşıyarak daha yönetilebilir hale getirir. ⏰

#### ❤2.5 ❤️‍🩹 Canlılık ve Hazırlık Probları (Liveness & Readiness Probes)

Liveness probe, uygulamanın gerçekten canlı olup olmadığını (örn. kilitlenme, sonsuz döngü, cevap vermeme) test eden ve başarısız olduğunda Pod’u restart eden sağlık kontrolü mekanizmasıdır; bu probe’u kullanmadığımda “çalışıyor gözüken ama hiç cevap vermeyen” zombie container’lar sistemde kalabilir ve dışarıdan bakınca problem anlaşılmaz. 🧟‍♂️

Readiness probe, Pod’un trafiği karşılamaya hazır olup olmadığını belirler ve başarısızsa Service bu Pod’a istek yönlendirmez; böylece ayağa kalkmamış, cache’i dolmamış, migration’ı bitmemiş veya downstream bağlantıları hazır olmayan Pod’ların kullanıcı trafiğini bozmasını engellemiş olurum. 🧪

---

### ❤3️⃣ Depolama (Storage)

#### ❤3.1 ⚙️ ConfigMap’ler (Yapılandırma Yönetimi)

ConfigMap, uygulamanın kodu ile konfigürasyonunu birbirinden ayırmamı sağlayan, düz metin tabanlı key-value yapılandırma deposudur; bu sayede aynı container imajını farklı ortamlarda sadece ConfigMap değiştirerek kullanabilir, imaj rebuild etme bağımlılığından kurtulurum. 🗂️

#### ❤3.2 🔒 Secret’lar (Gizli Bilgi Yönetimi)

Secret, şifre, token, sertifika gibi hassas bilgileri ConfigMap’ten bir adım daha güvenli, base64 encode edilmiş ve RBAC ile korunabilen bir yapıda saklamamı sağlar; bu yapı olmazsa sensitive bilgileri plain-text bırakarak ciddi bir güvenlik açığı yaratmış olurum. 🕵️‍♂️

#### ❤3.3 📦 Volume’ler (Geçici Depolama)

Volume, Pod içindeki container’ların ortak bir depolama alanını paylaşmasını sağlayan temel soyutlama olup, container silinse bile Pod yaşadığı sürece verinin devam etmesini, logların veya temp dosyaların kaybolmamasını sağlar; Volume kullanmadan her container restart’ında dosyalar buhar olur. 💨

#### ❤3.4 🧱 Persistent Volumes (PV) & Persistent Volume Claims (PVC)

PV ve PVC, cluster içindeki fiziksel depolama kaynakları ile Pod’ların ihtiyaçlarını birbirinden ayıran iki seviyeli bir modeldir: PV altyapının sunduğu gerçek disk veya depolama birimini temsil ederken, PVC uygulamanın “bana şu kadar depolama lazım” diyerek yaptığı talebi temsil eder; bu yapı olmadan storage yönetimi node bazlı ve el yordamıyla yürütülmek zorunda kalır. 🗃️

#### ❤3.5 🏗️ StorageClass (Dinamik Depolama Sağlama)

StorageClass, farklı depolama türlerini (SSD, HDD, bulut sağlayıcı diskleri vb.) sınıflandırıp, PVC oluşturulduğunda dinamik olarak yeni diskler üreten bir ara katman sağlar; böylece her yeni depolama talebinde manuel disk oluşturmadan, tamamen Kubernetes odaklı bir “storage as a service” modeline geçmiş olurum. ⚡

---

### ❤4️⃣ Ağ (Networking)

#### ❤4.1 🌐 Service Tipleri (ClusterIP, NodePort, LoadBalancer)

ClusterIP, sadece cluster içinden erişilebilen sanal IP sağlayarak microservice’ler arası iletişimi düzenler; dış dünyadan erişim gerekmeyen iç servisler için ideal bir çözümdür.

NodePort, her node üzerinde belirli bir portu açarak dış dünyadan doğrudan node IP’si + port kombinasyonuyla erişim verir; daha basit ama sınırlı, bazen de güvenlik açısından dikkat isteyen bir yöntemdir.

LoadBalancer, bulut sağlayıcıların native load balancer’ı ile entegre olarak dışarıya tek bir IP ve DNS üzerinden ölçeklenebilir erişim sunar; gerçek üretim ortamlarında sık kullanılan, daha profesyonel bir layer’dır. ⚓

#### ❤4.2 🚪 Ingress & Ingress Controller (Harici Erişim)

Ingress, HTTP/HTTPS trafiğini domain, path ve kural bazlı olarak arka plandaki Service’lere yönlendiren üst seviye bir ters proxy/entrypoint tanımıdır; Ingress Controller ise bu kuralları hayata geçirip gerçek trafiği yöneten uygulamadır ve bu ikili kullanılmadığında her servis için ayrı LoadBalancer açmak zorunda kalır, maliyet ve karmaşıklığı artırırım. 🌍

#### ❤4.3 🧬 Container Network Interface (CNI)

CNI, Kubernetes’in ağ eklentilerinin (Calico, Flannel vb.) uyması gereken standart arayüz olup, Pod’lara IP atama, routing ve policy uygulama işlevlerini sağlayan altyapıdır; CNI olmadan cluster’daki Pod’lar birbirlerini bulamaz ve sistem sadece teori düzeyinde bir orkestrasyon çözümü olarak kalır. 📡

#### ❤4.4 🚧 Network Policies (Ağ Güvenlik Kuralları)

NetworkPolicy, hangi Pod’un hangi Pod veya IP aralığıyla hangi portlardan konuşabileceğini tanımlayan, zero-trust network mimarisine doğru atılmış güçlü bir adımdır; bunu kullanmadığımda cluster içi trafik tamamen serbesttir ve tek bir kötü niyetli veya ele geçirilmiş Pod tüm sistemi gezebilir. 🛡️

#### ❤4.5 📛 DNS Servisi

Kubernetes DNS servisi, servis adlarını (örn: `devops-hello-service.default.svc.cluster.local`) IP adreslerine çözüp cluster içi servis keşfini kolaylaştırır; DNS olmadan her şey IP bazlı kalır ve dinamik bir sistemde IP değiştikçe konfigürasyonlar sürekli kırılır. 🧾

---

### ❤5️⃣ Güvenlik (Security)

#### ❤5.1 👮 RBAC (Rol Tabanlı Erişim Kontrolü)

RBAC, hangi kullanıcının veya servisin API üzerinden hangi kaynaklara hangi seviyede (okuma, yazma, listeleme vb.) erişebileceğini belirleyen temel yetkilendirme modelidir; RBAC kullanmadığım bir cluster, pratikte herkese her şeyi yapma izni verilmiş, güvenlik açısından belirsiz bir açık kapı hâline gelir. 🚨

#### ❤5.2 🧾 Service Accounts (Pod Kimlikleri)

ServiceAccount, Pod’ların Kubernetes API’sine veya diğer servislerine kimlikli şekilde erişmesini sağlayan, insan kullanıcılardan ayrı ele alınan hesap türüdür; her Pod için default service account ile idare etmek yerine spesifik haklara sahip ServiceAccount’lar kullanmak, “least privilege” prensibini hayata geçirmeme yardımcı olur. 🪪

#### ❤5.3 🛡️ Security Context (Pod/Container Güvenlik Ayarları)

SecurityContext, bir Pod veya container’ın hangi kullanıcı kimliğiyle (UID/GID), hangi Linux yetkileriyle ve hangi güvenlik kısıtlarıyla çalışacağını belirleyen yapı olup, container’ların root ile koşmasını engelleyerek olası zafiyetlerin etkisini ciddi biçimde sınırlar; bunu kullanmamak, “içeride root olan her şey dışarıya da zıplayabilir” riskini büyütür. ⚔️

#### ❤5.4 🧱 Pod Security Standards (PSS)

PSS, cluster genelinde Pod’ların uyması gereken minimum güvenlik gereksinimlerini (privileged olmama, hostPath kısıtları, root kullanımı vs.) tanımlayan politika setleridir; PSS olmadan her ekip kendi kafasına göre Pod tanımı yapar ve bir noktadan sonra güvenlik seviyesi ekipler arasında vahşi bir çeşitlilik gösterir. 🏰

---

### ❤6️⃣ Bakım, Yönetim & İzleme

#### ❤6.1 📊 Kaynak Yönetimi (Requests & Limits)

Requests ve limits, CPU ve bellek tüketiminde minimum ve maksimum sınırları belirleyerek hem scheduler’ın doğru node seçimini yapmasına hem de her Pod’un cluster kaynaklarını adil şekilde kullanmasına yardımcı olur; bunu kullanmadığım senaryoda bazı Pod’lar açgözlü davranıp diğerlerinin nefesini kesebilir. 💨

#### ❤6.2 📦 Namespace Resource Quotas

ResourceQuota, belirli bir namespace içindeki toplam CPU, bellek, PVC veya Pod sayısını sınırlandırarak özellikle çok kullanıcılı veya çok ekipli cluster’larda kaynakların tek bir ekip tarafından tüketilmesini engeller ve daha kurumsal bir yönetişim modeli sağlar. ⚖️

#### ❤6.3 📦 Helm (Paket Yöneticisi)

Helm, Kubernetes manifest dosyalarını chart adı verilen paketlere dönüştürerek versiyonlanabilir, parametreli ve yeniden kullanılabilir uygulama paketleri üretmemi sağlar; büyük projelerde tek tek YAML dosyalarıyla boğuşmak yerine Helm chart’ları ile daha derli toplu bir DevOps akışı yakalıyorum. 📦

#### ❤6.4 🐞 Hata Ayıklama (Debugging) & Logging

`kubectl logs`, `kubectl exec` ve `kubectl describe` gibi komutlarla, Pod’ların içini ve olay geçmişini izleyip debugging yaparken, merkezi bir log sistemiyle (örn. EFK/ELK) tüm logları tek yerde toplayarak “hangi Pod ne yaptı, ne zaman yaptı” sorularına yanıt bulmayı kolaylaştırıyorum; aksini yaptığımda loglar Pod ile birlikte yok olur ve geçmişe dair izler kaybolur. 🕵️‍♂️

#### ❤6.5 📈 İzleme (Monitoring) ve Kubernetes Metrikleri

Prometheus, Grafana ve benzeri araçlarla, Kubernetes metriklerini (CPU, memory, Pod sayısı, restart sayıları, request süreleri vb.) toplayıp görselleştiriyor ve sistemdeki anomalileri fark ederek problem büyümeden müdahale etme şansı yakalıyorum; izleme olmadan çalışan bir cluster, karanlıkta giden bir araç gibi, ancak duvara çarpınca durumu fark ettirir. 🚗💥

---

### ❤7️⃣ Ekosistem & Araçlar

#### ❤7.1 🧰 kubectl (Komut Satırı Aracı)

`kubectl`, Kubernetes ile konuşurken en çok elimi kullandığım, adeta cluster’ın kumandasını elime veren komut satırı aracıdır; resource yaratmaktan silmeye, log okumaktan port-forward yapmaya kadar hemen her işlemi buradan yürütürüm ve bu araca hâkim olmadan Kubernetes’te gerçekten rahat edemem. 🎛️

#### ❤7.2 🖥️ Dashboard (Web Arayüzü)

Kubernetes Dashboard, cluster kaynaklarını web üzerinden görsel olarak izleyip temel operasyonları tıklayarak yapabileceğim, özellikle yeni başlayanlar veya hızlı gözlem yapmak isteyenler için faydalı bir arayüzdür; ama üretim ortamında genellikle RBAC ve güvenlik açısından dikkatli kullanılmalıdır. 🧿

#### ❤7.3 🤖 Operators (Operatör Deseni)

Operator deseni, Kubernetes API’sini kullanarak belirli uygulamaların (örneğin veritabanları) karmaşık yaşam döngülerini otomatik yöneten özel controller’lar geliştirme yaklaşımıdır; Operator kullanmadığım senaryolarda database scaling, backup, restore gibi kritik işleri hâlâ manuel script’lerle taşımak zorunda kalırım. 🧠

#### ❤7.4 🔁 CI/CD Pipeline Entegrasyonu

CI/CD entegrasyonu, kod push edildiği anda test, build, container imaj üretimi ve Kubernetes’e deploy adımlarını otomatikleştiren bir teslim sürecidir; bunu oturtunca “elle deploy” işini tarihe gömüp, daha güvenilir ve izlenebilir bir teslim akışı elde etmiş oluyorum. 🚀

#### ❤7.5 🌱 GitOps (ArgoCD, Flux)

GitOps, Kubernetes manifest’lerini Git deposunda tek gerçek kaynak (single source of truth) kabul edip, ArgoCD veya Flux gibi araçlarla cluster durumunu bu Git repo ile senkron tutan bir yaklaşımdır; bu sayede konfigürasyon değişiklikleri commit’lenir, review edilir ve gerektiğinde geçmiş commit’lere dönülerek infrastructure as code mantığıyla yönetilir. 🧾

---

---

#### ❤8.0 💠 Kubernetes Pod Çifti: Backend & Frontend Ayar Manifestlerim 🚀📦

```yaml
### Bu YAML dosyasında, Kubernetes cluster’ımda **iki ayrı Pod** tanımlıyorum;
# biri backend tarafını temsil eden `devops-001-hello`, diğeri ise farklı bir
# uygulama/proje için ayrılmış `my-new-pod2` Pod’u ve ikisini de bilinçli olarak
# ayrı **etiketler, portlar ve imajlar** üzerinden konumlandırarak hem mimariyi
# hem de yönetilebilirliği kafamda netleştiriyorum. 💼🧱

# Bu satır, Kubernetes manifest dosyasının hangi API sürümü ile işlendiğini belirtir. 📘
apiVersion: v1
# Bu satır, oluşturulan kaynağın türünün bağımsız çalışan bir Pod olduğunu söyler. 📦
kind: Pod
# Bu blok, Pod’un adı ve etiketleri gibi tanımlayıcı meta bilgilerini içerir. 🏷️
metadata:
  # Bu satır, Pod’un küme içinde benzersiz olacak adını belirler. 🧾
  name: devops-001-hello
  # Bu blok, Pod’a iliştirilecek etiketlerin (label) tanımlandığı yerdir. 🧩
  labels:
    # Bu satır, Pod’u isim bazlı gruplamak ve filtrelemek için kullanılan bir label değeridir. 🧷
    name: devops-001-hello
    # Bu satır, bu Pod’un mimaride backend tarafında çalışan bir bileşen olduğunu ifade eden etikettir. ⚙️
    type: backend
    # Bu satır, Pod’un hello-service adlı uygulamaya ait olduğunu gösteren uygulama etiketidir. 🔔
    app: hello-service
    # Bu satır, Pod’un hangi projeye ait olduğunu belirten proje etiketi tanımıdır. 📂
    project-name: mydemo
# Bu blok, Pod içinde çalışacak container’ların tanımlandığı ana kısımdır. 🧱
spec:
  # Bu liste, Pod içerisinde yer alacak tüm container tanımlarını barındırır. 📦
  containers:
    # Bu blok, Pod içindeki tek bir container örneğini ve özelliklerini tanımlar. 🧊
    - name: devops-001-hello
      # Bu satır, container’ın hangi Docker imajından (image) oluşturulacağını belirtir. 🐳
      image: huseyin11/devops-001-hello
      # Bu blok, container’ın kullanabileceği CPU ve bellek limitlerini tanımlar. 📊
      resources:
        # Bu blok, container’ın aşamayacağı üst kaynak sınırlarının belirtildiği yerdir. 🚦
        limits:
          # Bu satır, container’ın kullanabileceği en yüksek bellek miktarını 128Mi ile sınırlar. 💾
          memory: "128Mi"
          # Bu satır, container’ın CPU kullanımını 500 milicpu ile sınırlandırır. 🧠
          cpu: "500m"
      # Bu blok, container’ın hangi port(lar) üzerinden dinleme yapacağını tanımlar. 🌐
      ports:
        # Bu satır, container içinde uygulamanın 9090 numaralı port üzerinden erişilebilir olduğunu belirtir. 📡
        - containerPort: 9090

# Bu satır, manifest içinde yeni bir Kubernetes objesinin başladığını gösteren YAML ayırıcıdır. ✂️
---
# Bu satır, ikinci kaynağın da Kubernetes’in v1 API sürümünü kullandığını belirtir. 📘
apiVersion: v1
# Bu satır, ikinci kaynağın da bağımsız bir Pod olduğunu ifade eder. 📦
kind: Pod
# Bu blok, ikinci Pod’un adı ve etiketleri gibi kimlik bilgilerini içerir. 🏷️
metadata:
  # Bu satır, ikinci Pod’un küme içindeki benzersiz adını belirler. 🧾
  name: my-new-pod2
  # Bu blok, ikinci Pod’a ait etiketlerin tanımlandığı yerdir. 🧩
  labels:
    # Bu satır, Pod’u isim bazlı ayırt etmek için kullanılan name label’ını belirtir. 🧷
    name: my-new-pod2
    # Bu satır, bu Pod’un mimaride frontend tarafında konumlandığını anlatan tip etiketidir. 🎨
    type: fronend
    # Bu satır, Pod’un mydemo2-service adlı uygulama grubuna ait olduğunu ifade eden uygulama etiketidir. 🛎️
    app: mydemo2-service
    # Bu satır, ikinci Pod’un mydemo2 adlı projeye bağlı olduğunu belirten proje etiketidir. 📂
    project-name: mydemo2
# Bu blok, ikinci Pod içinde çalışacak container tanımlarını barındıran ana bölümdür. 🧱
spec:
  # Bu liste, ikinci Pod’a ait tüm container’ların tek tek tanımlandığı yerdir. 📦
  containers:
    # Bu blok, my-new-pod2 adlı tekil container’ın özelliklerini tanımlar. 🧊
    - name: my-new-pod2
      # Bu satır, container’ın kullanacağı Docker imajının adını ve sürüm etiketini (tag) belirtir. 🐳
      image: huseyin11/devops-001-hello:v001
      # Bu blok, container’a atanacak CPU ve bellek limitleri için kaynak yapılandırmasını içerir. 📊
      resources:
        # Bu blok, container’ın aşamayacağı maksimum kaynak kullanım limitlerini tanımlar. 🚦
        limits:
          # Bu satır, ikinci Pod’daki container’ın hafıza kullanımını 128Mi ile sınırlandırır. 💾
          memory: "128Mi"
          # Bu satır, container’ın CPU kullanımını 500 milicpu olarak üst sınırlandırır. 🧠
          cpu: "500m"
      # Bu blok, container’ın dışardan hangi port üzerinden dinleme yapacağını belirler. 🌐
      ports:
        # Bu satır, ikinci container’ın 9091 numaralı port üzerinden istekleri kabul edeceğini belirtir. 📡
        - containerPort: 9091
```

---

💠 1. devops-001-hello Pod’u – Backend Tarafını Temsil Eden Temel Birim
#### 🔍 Nedir, Ne Değildir?

devops-001-hello Pod’u, Kubernetes’te hello-service adını verdiğim backend uygulamamı tek bir container içinde koşturan, etiketleriyle birlikte belirli bir projeye (mydemo) ve belirli bir role (backend) bağlı olduğunu açıkça belli eden, sade ama mimari açıdan anlamlı bir çalışma birimidir.

Bu Pod’u, bir “sunucu” gibi değil, kolayca öldürüp yeniden üretebileceğim geçici bir çalışma hücresi olarak görüyorum; kalıcı olan kodum, image’im ve manifest’im iken, Pod’un kendisi aslında sadece o anki koşan instance’tan ibarettir. ⚙️

#### 🎯 Amacı, Kullanım Nedeni ve Kullanılmasa Ne Olur?

Bu Pod’un temel amacı, huseyin11/devops-001-hello Docker imajını, Kubernetes çatısı altında kontrollü CPU/RAM limitleriyle çalıştırmak ve backend servisini iç ağda 9090 portundan ulaşılabilir hâle getirmektir; bu sayede aynı imajı farklı ortamlarda aynı davranışla kullanabiliyorum.

Eğer böyle bir Pod tanımıyla çalışmasam, uygulamayı ya çıplak bir sunucuda ya da kontrolsüz bir container içinde koşturmak zorunda kalır, ne kaynak tüketimini sınırlandırabilir ne de Kubernetes’in self-healing ve orkestrasyon yeteneklerinden faydalanabilirdim. 🚀

#### 🧩 Özellikleri, Avantajları ve Dezavantajları

Özellik: Label seti (type=backend, app=hello-service, project-name=mydemo) sayesinde bu Pod, ileride tanımlayacağım Service ve Deployment gibi kaynaklar tarafından çok rahat seçilebilir ve backend grubunun bir üyesi olarak görülebilir.

Avantaj: CPU (500m) ve bellek (128Mi) limitleri, bu Pod’un cluster kaynaklarını hunharca tüketmesini engelleyerek, diğer Pod’ların da nefes alabileceği adil bir kaynak paylaşımı sağlar. 📊

Dezavantaj: Tek Pod tanımı, tek başına ölçeklendirme ve yüksek erişilebilirlik sağlamaz; yani bu haliyle sadece “tek instance” bir backend süreç gibi çalışır ve gerçek üretim yüklerinde mutlaka Deployment ile çoğaltılması gerekir. ⚠️

💠 2. my-new-pod2 Pod’u – Farklı Uygulama/Arayüz İçin Ayrı Bir Çalışma Hücresi
#### 🔍 Nedir, Ne Değildir?

my-new-pod2 Pod’u, ikinci bir uygulama veya arayüzü temsil etmesi için tanımladığım, etiketi type=fronend (bilerek yazım hatası korunmuş) olan ve mydemo2-service uygulamasına ait olduğunu gösteren, ayrı proje ve ayrı rol altında çalışan bağımsız bir çalışma birimidir. 🎨

Bu Pod, ilk Pod’un kopyası değildir; project-name=mydemo2, farklı app etiketi ve farklı port (9091) kullanarak, mimaride aslında başka bir uygulama ya da başka bir servis olarak konumlanır ve bu ayrım ileride mikroservis mimarisine geçerken benim işimi ciddi anlamda kolaylaştırır.

#### 🎯 Amacı, Kullanım Nedeni ve Kullanılmasa Ne Olur?

Bu Pod’un amacı, huseyin11/devops-001-hello:v001 image’i üzerinden farklı bir versiyon veya farklı bir rol (örneğin frontend ya da farklı endpoint’ler) çalıştırmak ve bunu ilk Pod’dan bağımsız bir proje alanına (mydemo2) bağlayarak yönetilebilir hâle getirmektir.

Bu tarz ikinci bir Pod tanımlamazsam, tüm denemelerimi, farklı sürümlerimi ve farklı rollerimi tek bir Pod veya tek bir proje etiketi içinde boğar, hem log okumayı hem hata ayıklamayı hem de Service/Ingress tanımlarını gereksiz yere karmaşıklaştırmış olurdum. 🧠

#### 🧩 Özellikleri, Avantajları ve Dezavantajları

Özellik: Farklı app ve project-name etiketleri, bu Pod’u bambaşka bir servis grubu ve proje altında konumlandırarak, ileride app=mydemo2-service seçici (selector) kullanan bir Service ile kolayca eşleştirmeme imkân tanır.

Avantaj: Aynı image’in v001 tag’ini kullanarak, versiyon kavramını Pod düzeyinde düşünmeyi öğreniyor ve container image versiyonlamasını canlı sistemle ilişkilendiriyorum; bu da CI/CD akışına kafa yorarken bana büyük avantaj sağlıyor. 🔁

Dezavantaj: Yine tek başına bir Pod olduğu için, ölçeklendirme ve high availability bu seviyede yok; gerçek dünyada bunu da Deployment ile çoğaltmak ve üzerinde Service tanımlamak zorunda kalacağımı bilerek ilerliyorum.

🔗 3. İki Pod’un Bir Arada Mimari Olarak Ne İfade Ettiği
#### 🧬 Mimari Bakış: Aynı Cluster’da İki Ayrı Uygulama Hücresi

Bu ayar dosyasında aslında aynı cluster ve aynı namespace içinde, iki farklı uygulama/proje için iki ayrı Pod hücresi oluşturuyor ve bunları etiketlerle net şekilde ayırarak, daha sonra Service, Deployment, Ingress gibi üst katmanları tanımlarken çok daha rahat yönetilebilecek bir zemin hazırlıyorum.

Backend’i temsil eden devops-001-hello ile, farklı bir proje ya da arayüzü temsil eden my-new-pod2 Pod’unu yan yana duracak şekilde tanımlayarak, Kubernetes dünyasında “her uygulama için ayrı Pod setleri, ayrı label’lar, ayrı portlar” yaklaşımını kendime refleks hâline getiriyorum. 💪

#### 📊 Küçük Bir Özet Tablosu
| Pod Adı            | Rol / Tip          | Proje     | Port   | Image                             | Ne Kazandırıyor?                                                                                                         |
| ------------------ | ------------------ | --------- | ------ | --------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| `devops-001-hello` | `backend`          | `mydemo`  | `9090` | `huseyin11/devops-001-hello`      | Backend mantığını tek bir Pod’da deneyimleyip, label mantığını backend ekseninde oturtmamı sağlıyor.                     |
| `my-new-pod2`      | `fronend` (etiket) | `mydemo2` | `9091` | `huseyin11/devops-001-hello:v001` | Farklı proje, farklı rol ve farklı versiyon kavramını tek dosya içinde görüp, çoklu servis düşünme pratiği kazandırıyor. |
