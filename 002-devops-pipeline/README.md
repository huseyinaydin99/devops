### 🚀 Kubernetes Deployment ile Uygulamamı Ayağa Kaldırma Hikâyem

Kendi uygulamamı Kubernetes üzerinde ayağa kaldırırken, sadece çalışan bir YAML dosyası yazmakla yetinmedim; satır satır ne yaptığımı düşünerek, ileride kendim okuduğumda bile “burada ne tasarlamışım, neyi amaçlamışım?” sorusunun cevabını net şekilde görebileceğim bir manifest oluşturmaya çalıştım. 💡 Bu dokümanda, hem yazdığım Deployment + Service manifestini paylaşıyorum, hem de Kubernetes Deployment kavramını; özellikleri, avantajları, dezavantajları ve Service ile beraber nasıl bir bütün mimari oluşturduğunu kendi gözümden detaylıca anlatıyorum. 🧱⚙️

---

### 📦 Kullandığım Kubernetes Deployment + Service Manifesti

Aşağıdaki kod bloğu, benim `my-application` isimli uygulamamı Kubernetes üzerinde ayağa kaldırmak için yazdığım, satır satır düşünülmüş ve yorumlarla beslenmiş Deployment + Service manifestini gösteriyor. Bu haliyle hem doğrudan `kubectl apply -f` ile kullanabileceğim bir yapı sunuyor, hem de yorum satırları sayesinde gelecekteki “ben” için mini bir dokümantasyon görevi görüyor. 📘🧠

```yaml
# Deployment kaynağının apps/v1 API sürümünde tanımlandığını belirtir.
apiVersion: apps/v1

# Bu kaynağın bir Deployment olduğunu ve bir grup Pod’un yaşam döngüsünü yöneten üst denetleyici olduğunu gösterir.
kind: Deployment

# Deployment’a ait ad ve tanımlayıcı bilgilerin tutulduğu metadata alanı.
metadata:
  # Deployment’ın adı; kubectl çıktılarında ve loglarda kolayca tanınmasını sağlar.
  name: my-application-deployment

# Deployment’ın nasıl davranacağını belirleyen ana yapılandırma alanı.
spec:
  # Deployment’ın yönetmesi gereken Pod’ları, etiket filtreleriyle seçen kısım.
  selector:
    # Belirtilen etiketlere sahip Pod’ların bu Deployment’a ait olduğunu gösterir.
    matchLabels:
      # app=my-application etiketi, Deployment’ın kontrol edeceği Pod kümesini tanımlar.
      app: my-application

  # Deployment’ın yeni Pod’ları hangi şablona göre oluşturacağını belirleyen bölüm.
  template:
    # Pod seviyesindeki kimlik bilgilerinin tanımlandığı meta veri.
    metadata:
      # Pod’lara verilecek etiket; hem Deployment hem Service seçicileriyle uyumlu olmasını sağlar.
      labels:
        app: my-application

    # Pod içinde çalışacak container'ların ve davranışlarının tanımlandığı alan.
    spec:
      # Pod’a ait container listesinin başlangıcı.
      containers:
        # my-application adındaki container’ın temel tanımı.
        - name: my-application

          # Container’ın çalışacağı imajın Docker registry’den alınan tam adı.
          image: huseyin11/my-application:latest

          # Container için CPU ve bellek kullanım sınırlarının belirlendiği bölüm.
          resources:
            # Container’ın aşamayacağı maksimum kaynak değerleri.
            limits:
              # Bellek üst sınırının 512Mi olarak belirlenmesi.
              memory: "512Mi"
              # CPU üst sınırının 500m olarak tanımlanması.
              cpu: "500m"

          # Container’ın içerde hangi portu dinlediğini tanımlar.
          ports:
            # Uygulamanın container içinde 8081 portunu dinlediği.
            - containerPort: 8081

# Aynı dosyada ikinci bir Kubernetes kaynağının tanımlandığını gösterir.
---
# Yeni kaynağın v1 API sürümünde tanımlanan bir Service olduğunu belirtir.
apiVersion: v1

# Bu kaynağın bir Service olduğunu ve Pod’lara erişim için mantıksal bir ağ uç noktası sağladığını ifade eder.
kind: Service

# Service’e ait ad ve tanımlayıcı bilgilerin bulunduğu bölüm.
metadata:
  # Service’in adı; ilgili Pod’lara yönlendirilecek trafiğin giriş kapısını tanımlar.
  name: my-application-service

# Service’in trafik yönlendirme davranışlarını belirleyen yapılandırma alanı.
spec:
  # Service’in trafiği hangi etiketlere sahip Pod’lara yönlendireceğini belirleyen seçici.
  selector:
    # app=my-application etiketi, Service’in hedefleyeceği Pod kümesini tanımlar.
    app: my-application

  # Service’in dinleyeceği portu ve trafiği Pod içindeki hangi porta ileteceğini gösteren tanım.
  ports:
    # Service’in cluster içinde 8081 portundan erişilebilir olduğunu belirtir.
    - port: 8081
      # Gelen trafiğin Pod içindeki 8081 portuna iletileceğini ifade eder.
      targetPort: 8081

  # Service’in NodePort türünde olduğunu ve her node üzerinden belirli bir port ile dış erişim sağladığını belirtir.
  type: NodePort
```

---

### 🧭 Kubernetes Deployment Nedir, Benim Gözümden?

Kubernetes Deployment’i kafamda şu şekilde konumlandırıyorum: Tek tek Pod’lara dokunup elle yönetmek yerine, “şu imajdan şu özelliklerde şu etiketle çalışan Pod havuzu istiyorum” diye deklaratif bir istek bırakıyorum ve gerisini Kubernetes’in denetleyicilerine emanet ediyorum. 🧠

Deployment benim için; ölçekleme, sürüm geçişi (rolling update), rollback ve self-healing gibi operasyonel yükü otomatikleştiren, Pod seviyesindeki karmaşıklığı benden saklayıp daha üst bir soyutlama düzeyinde uygulamayı yönetmemi sağlayan güçlü bir kontrol katmanı anlamına geliyor. 💪

---

### 🧩 Kubernetes Deployment Özellikleri (Kendi Pratiğimden)

- 🧱 **Deklaratif durum tanımı ile çalışan Pod sayısını ve davranışını tek bir manifest üzerinden belirleyebilmem**, benim için manuel Pod oluşturma veya silme gibi operasyonları tamamen devre dışı bırakarak, “sadece istediğim son durumu tanımladığım” sade ama güçlü bir çalışma şekli sağlar; böylece “nasıl” sorusundan çok “ne istiyorum” sorusuna odaklanırım.

- 🔁 **Deployment’ın arka planda ReplicaSet nesneleri üzerinden Pod havuzunu yönetmesi**, benim doğrudan ReplicaSet ile uğraşmamı gereksiz kılar; ben sadece Deployment manifestini güncellediğimde, Kubernetes’in yeni ReplicaSet oluşturup eski Pod’ları yavaş yavaş devreden çıkaracağını bilmek, bana hem güven verir hem de mimariyi zihnimde daha net oturtmamı sağlar.

- 🩹 **Self-healing mekanizması sayesinde, herhangi bir Pod çöktüğünde veya node’dan düştüğünde otomatik olarak yeniden ayağa kaldırılması**, özellikle prod ortamda “tek tek Pod’ları kontrol edip, yeniden başlatma derdi” yaşamamamı sağlar; bu da hem uptime’ı yüksek tutar hem de benim operasyonel yükümü ciddi anlamda hafifletir.

- 🚀 **Rolling update desteği ile, yeni versiyon imajı tanımladığımda Pod’ların kontrollü ve adım adım güncellenmesi**, kullanıcı tarafında kesintiyi minimize ederek, eski versiyondan yeni versiyona yumuşak geçiş yapmamı sağlar; bu sayede “şimdi deploy yapsam ortamı komple çökertir miyim?” endişesi yerini daha kontrollü bir güven duygusuna bırakır.

- 📉 **Rollback imkânı ile, yanlış bir versiyon deploy ettiğimde veya konfigürasyon hatası yaptığımda önceki stabil sürüme hızla geri dönebilmem**, deneme-yanılma yaparken bile daha cesur olmamı, çünkü her zaman bir önceki “çalışan” noktaya dönebileceğimi bilmemi sağlar; bu da geliştirme hızımı ve konforumu ciddi biçimde artırır.

---

### 💎 Kubernetes Deployment Avantajları

- 💼 **Operasyonel yükü azaltıp uygulama yönetimini politika odaklı hale getirmesi**, bana tek tek komutlarla Pod yaratmak yerine uzun vadeli bakım yapılabilir bir altyapı kurma imkânı verir; bu sayede Kubernetes’i sadece bir “container çalıştırma aracı” olarak değil, bütünsel bir uygulama orkestrasyon platformu olarak kullanırım.

- 📏 **Kaynak yönetimi ve ölçekleme davranışını tek bir noktadan tanımlayabilmem**, gerektiğinde HPA (Horizontal Pod Autoscaler) gibi mekanizmalarla birlikte kullanıldığında, yük altındaki uygulamayı otomatik olarak ölçeklendiren ve boşta kaldığında kaynakları geri veren esnek bir sistem kurmama izin verir; bu da altyapı maliyetlerimi ve performans optimizasyonlarımı doğrudan etkiler.

- 🧪 **Deployment ile düzenli, tekrar edilebilir ve versiyonlanabilir bir deploy süreci oluşturabilmem**, CI/CD hattına entegre ettiğimde her pipeline çalışmasında aynı manifest üzerinden ilerlememi sağlar; bu da “müşteride çalışan ile benim lokalde çalıştırdığım şey aynı mı?” sorusuna daha güvenle “evet” diyebileceğim bir düzen sunar.

- 🌍 **Farklı ortamlarda (dev, test, prod) aynı Deployment mantığını küçük değişikliklerle tekrar kullanabilmem**, bana konfigürasyonu ortam bazlı ayırırken bile ana mimari pattern’i koruma şansı verir; böylece zihnimde tek bir model tutar, sadece yan parametreleri değiştirerek farklı ortamlara uyarlama yaparım.

---

### ⚠️ Kubernetes Deployment Dezavantajları / Dikkat Noktaları

- 🧩 **Deployment kavramının, ReplicaSet, Pod ve Service gibi diğer Kubernetes objeleriyle birlikte düşünülmesi gerektiği için öğrenme eğrisini yükseltmesi**, özellikle ilk kez Kubernetes’e girerken zihnimde “çok fazla obje” varmış hissi uyandırır; bu da başlangıçta kafa karışıklığına sebep olsa da, mantığı yerleştirdikten sonra güçlü bir esnekliğe dönüşür.

- 🧬 **Declarative yaklaşımın gücü, aynı zamanda yanlış yazılmış manifestlerde istenmeyen sonuçlara yol açabildiği için**, küçük bir YAML hatasının onlarca Pod’u silip yeniden oluşturmasına neden olabileceğini bilmek, beni her değişiklikte daha dikkatli olmaya zorlar; bu da otomasyonun yanında disiplin ihtiyacını da artırır.

- 🧱 **Deployment’lar arttıkça manifest sayısının ve konfigürasyon karmaşıklığının büyümesi**, özellikle büyük projelerde iyi bir repo yapısı, naming convention ve dokümantasyon olmadığı takdirde yönetilmesi zor bir yığına dönüşebilir; bu yüzden ben, her Deployment tanımını yorum satırları ve anlamlı isimlendirmelerle destekleyerek gelecekte kendi işimi kolaylaştırmaya çalışırım.

---

### 🌉 Kubernetes Service Nedir ve Bu Manifestteki Rolü Ne?

Benim YAML dosyamda, Deployment sadece Pod’ların nasıl üretileceğini ve yönetileceğini tarif ederken, Service ise bu Pod havuzuna **tutarlı ve sabit bir erişim katmanı** sağlıyor. 🌐

`my-application-service` adını verdiğim Service; label selector ile `app=my-application` etiketli Pod’ları hedefleyerek, arka plandaki Pod sayısı değişse bile istemciler için aynı isimle (ve NodePort tipi ile dış dünyadan bir port üzerinden) erişilebilen mantıksal bir uç nokta sunuyor. Yani Deployment uygulamayı “var ediyor”, Service ise bu uygulamayı “bulunabilir ve adreslenebilir” hale getiriyor. 🧭

---

### 🧩 Kubernetes Service Özellikleri

- 🎯 **Label selector kullanarak hedef Pod’ları dinamik şekilde seçebilmesi**, benim için IP adresi gibi uçucu değerlerle uğraşmadan, sadece etiketleri doğru kurgulayarak doğru Pod havuzuna trafik yönlendirme rahatlığı sağlar; bu sayede ölçeklendirme veya yeniden schedule durumlarında müşteri tarafında hiçbir yapı bozulmaz.

- 🌉 **Mantıksal bir erişim noktası (DNS adı + port) tanımlaması**, cluster içi servisler ve dış dünya için uygulamaya erişimi standardize eder; ben NodePort kullandığım senaryoda, her node üzerinden belirli bir port aralığıyla uygulamama dışarıdan doğrudan ulaşılmasını sağlayarak, basit ama iş gören bir yayınlama modeli kurmuş olurum.

- 🔁 **Arka plandaki Pod’lar arasında load balancing yapabilmesi**, gelen isteklerin tek bir Pod’u boğmak yerine havuza dağıtılmasını sağlar; bu da performans ve dayanıklılık açısından uygulamanın genel sağlığını olumlu yönde etkiler ve benim ekstra bir yük dengeleyici yazmamı veya yönetmemi gereksiz hale getirir.

---

### 💎 Kubernetes Service Avantajları

- 📡 **Uygulamamı IP bağımlılığından kurtarıp isim tabanlı bir erişim modeline taşımış olması**, hem iç servisler arası iletişimde hem de dış dünyaya açarken mimariyi daha okunur ve yönetilebilir kılar; ben de bu sayede “şu Pod’un IP’si neydi?” gibi sorularla uğraşmadan, sadece Service adını bilerek entegrasyon yapabilirim.

- 🛡️ **Pod sayısı değiştikçe bile aynı erişim noktasını koruması**, otomatik ölçekleme veya yeniden başlatma durumlarında bile istemcilerin herhangi bir şeyden haberdar olmadan çalışmaya devam etmesini sağlar; böylece altyapıdaki dinamizm, üst katmandaki istikrarı bozmadan akmaya devam eder.

- 🧰 **Farklı Service tipleri (ClusterIP, NodePort, LoadBalancer, vs.) ile farklı yayınlama senaryolarına uyum sağlaması**, benim node içi, cluster içi veya dış dünya ihtiyaçlarıma göre esnek seçimler yapmamı mümkün kılar; bu projede NodePort tercih ederek, basit ama doğrudan erişilebilir bir kurulum hedefledim.

---

### ⚠️ Kubernetes Service Dezavantajları / Dikkat Noktaları

- 🛰️ **NodePort tipinin, daha profesyonel prod ortamlarında tek başına yeterli olmayıp genellikle ingress veya harici load balancer çözümleriyle desteklenmesi gerektiği**, mimari olgunlaştıkça beni “daha iyi yayınlama desenleri” düşünmeye iter; yani NodePort, pratik bir başlangıç sağlasa da uzun vadede daha gelişmiş çözümlerle yer değiştirme ihtiyacı doğurabilir.

- 🧪 **Yanlış selector kullanıldığında trafiğin ya hiç Pod bulamaması ya da yanlış Pod havuzuna yönlenmesi riski**, özellikle büyük cluster’larda kritik hata senaryolarına yol açabileceği için, label ve selector tasarımını Deployment ile Service arasında çok dikkatli koordine etmem gerektiğini bana sürekli hatırlatır.

- 🗺️ **Service katmanı arttıkça, karmaşık mikro servis topolojilerinde trafiğin kimden kime aktığını zihnimde takip etmenin zorlaşması**, iyi bir dokümantasyon, diyagramlar ve isimlendirme standartları olmadan yönetimi zor bir ağ haritasına dönüşebilir; bu nedenle ben, özellikle isimleri sade, tutarlı ve anlamlı seçmeye özen gösteriyorum.

---

### 🔗 Deployment ve Service İkisi Bir Arada Nasıl Bir Bütün Oluşturuyor?

Benim gözümde Deployment ve Service birbirinden kopuk iki obje değil; tam tersine, uygulamanın “yaşam döngüsü” ile “erişilebilirlik” boyutunu birlikte tamamlayan iki yarım küre gibi çalışıyor. 🌗

Deployment; Pod’ların nasıl yaratılacağını, kaç adet olacağını, hangi imajı kullanacağını ve nasıl güncelleneceğini belirleyen orkestrasyon tarafını üstlenirken, Service; bu dinamik Pod havuzunun arkasına saklanmış uygulamayı, sabit bir isim ve port üzerinden erişilebilir yapan ağ soyutlama katmanını sağlıyor. Bu ikisi doğru etiketlerle birbirine bağlandığında, benim açımdan hem içeride kendini iyileştiren, ölçeklenen bir uygulama kümesi, hem de dışarıdan bakıldığında değişmeyen bir adres görünümü ortaya çıkıyor. 🎯

---

### 📊 Özetleyen Bir Tablo: Deployment + Service Mimarisini Nasıl Okuyorum?

Aşağıdaki tabloyu, kendi kafamda kurduğum modeli özetlemek için kullanıyorum; her satır, manifestteki bileşenleri uzun ama anlamlı bir cümleyle tarif ediyor:

| Bileşen 🧩                | Rolü 🌐                                                                                     | Benim Açıklamam 🧠                                                                                                                                                                                                 |
|---------------------------|---------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Deployment**           | Pod havuzunun nasıl oluşturulacağını ve yönetileceğini deklaratif olarak tanımlar.         | Deployment’i, uygulamamın “üretim bandı” gibi görüyorum; hangi imajdan, kaç kopya, hangi kaynak limitleriyle Pod üretileceğini tarif ettiğim ve Kubernetes’ten bunları sürekli bu durumda tutmasını istediğim yer. |
| **Pod**                  | Container’ların çalıştığı en küçük deployable birimdir.                                    | Pod’ları, Deployment’in sahneye sürdüğü oyuncular gibi değerlendiriyorum; her biri aynı rolü oynuyor ama herhangi biri düşerse, arkadan yeni bir oyuncu otomatik olarak sahneye çıkıyor.                             |
| **Service (NodePort)**   | Pod havuzuna sabit bir isim ve node seviyesinden erişilebilir bir port sağlayan katmandır. | Service’i, Deployment ile üretilen Pod ordusunun önüne konmuş akıllı bir kapı gibi hayal ediyorum; ben bu kapıya istek atıyorum, o da arkadaki uygun Pod’a isteği geçirip, geri dönüşü yine kapı üzerinden sağlıyor.  |
| **Label / Selector**     | Deployment ve Service arasında ilişki kurmak için kullanılan etiket mekanizmasıdır.        | Label ve selector’ı, mimariyi birbirine dikişleyen etiketler olarak görüyorum; doğru etiketi doğru yere koyduğumda her şey temizce akıyor, yanlış etiket koyarsam bütün trafik yanlış kapıya yönlenebiliyor.          |
| **Resources (limits)**   | CPU ve RAM kullanımını sınırlandırarak node sağlığını korur.                               | Resource limitlerini, sadece kendi uygulamamı değil, aynı node üzerinde çalışan diğer servisleri de koruyan emniyet bariyerleri olarak kullanıyorum; böylece kimse tüm kaynakları tek başına tüketemiyor.           |

---

### 🧠 Bu Çalışmadan Çıkardığım Dersler

Bu Deployment + Service manifestini yazarken, aslında “sadece bir YAML daha” oluşturmaktan çok daha fazlasını yaptığımı fark ettim; her satırda, Kubernetes’in deklaratif dünyasına biraz daha alışıyor, uygulamamın yaşam döngüsünü ve erişim modelini kod haline getirmenin rahatlığını hissediyorum. 📜

Kubernetes Deployment ile; ölçekleme, rolling update, self-healing ve rollback gibi operasyonel yükleri denetleyiciye devrederek, zihnimi daha çok iş mantığına ve mimari tasarıma ayırabiliyorum. Service ile de; bu dinamik ve değişken Pod dünyasının üstüne sabit, erişilebilir ve anlaşılır bir ağ katmanı koyarak, hem kendi projelerim hem de dış entegrasyonlar için net bir giriş noktası sunuyorum. 🌉

Sonuç olarak, bu manifest hem benim için çalışan bir altyapı tanımı, hem de gelecekte tekrar baktığımda “neden böyle yapmışım, burada neyi hedeflemişim?” sorusunun cevabını bulabildiğim bir mini teknik günlük (log) gibi; Kubernetes dünyasında ilerlerken, Deployment ve Service ikilisini bu kadar içselleştirmiş olmak, sonraki adımlarda kuracağım daha karmaşık mikro servis mimarilerinin de temelini şimdiden sağlamlaştırıyor. 🚀🧱
