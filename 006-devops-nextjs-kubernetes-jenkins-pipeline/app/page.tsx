import {
    Server,
    Database,
    Cloud,
    Activity,
    Github,
    ArrowRight,
} from "lucide-react";

export default function Home() {
    return (
        <div className="min-h-screen bg-zinc-950 text-white">
            {/* Background */}
            <div className="absolute inset-0 bg-[radial-gradient(circle_at_top,rgba(59,130,246,0.15),transparent_40%)]" />

            <main className="relative mx-auto max-w-7xl px-6">
                {/* Navbar */}
                <nav className="flex items-center justify-between py-8">
                    <div>
                        <h2 className="text-xl font-bold">Bulut Yerel Platform</h2>
                    </div>

                    <div className="flex gap-4">
                        <button className="rounded-xl border border-zinc-800 px-4 py-2 hover:border-blue-500 transition">
                            Dokümantasyon
                        </button>

                        <button className="rounded-xl bg-blue-600 px-4 py-2 hover:bg-blue-500 transition">
                            GitHub
                        </button>
                    </div>
                </nav>

                {/* Hero */}
                <section className="flex min-h-[80vh] items-center">
                    <div className="max-w-4xl">
                        <span className="rounded-full border border-blue-500/30 bg-blue-500/10 px-4 py-2 text-sm text-blue-400">
                            🚀 Üretime Hazır Bulut Yerel Mimari
                        </span>

                        <h1 className="mt-8 text-6xl font-black leading-tight md:text-8xl">
                            Kubernetes
                            <br />
                            <span className="bg-gradient-to-r from-blue-400 via-cyan-400 to-indigo-400 bg-clip-text text-transparent">
                                Terraform
                            </span>
                            <br />
                            Platform
                        </h1>

                        <p className="mt-8 max-w-2xl text-xl leading-relaxed text-zinc-400">
                            Spring Boot, Kubernetes, Terraform, Kafka, PostgreSQL, Prometheus
                            ve Grafana ile güçlendirilmiş modern mikroservis ekosistemi.
                            Ölçeklenebilirlik, gözlemlenebilirlik ve otomasyon odaklı olarak tasarlanmıştır.
                        </p>

                        <div className="mt-10 flex flex-wrap gap-4">
                            <button className="flex items-center gap-2 rounded-xl bg-blue-600 px-6 py-3 font-semibold hover:bg-blue-500 transition">
                                Canlı Demo
                                <ArrowRight size={18} />
                            </button>

                            <button className="flex items-center gap-2 rounded-xl border border-zinc-800 px-6 py-3 hover:border-zinc-600 transition">
                                <Github size={18} />
                                Kaynak Kod
                            </button>
                        </div>
                    </div>
                </section>

                {/* Stats */}
                <section className="grid gap-6 md:grid-cols-4">
                    {[
                        { value: "12+", label: "Mikroservisler" },
                        { value: "99.9%", label: "Erişilebilirlik" },
                        { value: "50+", label: "Container" },
                        { value: "24/7", label: "İzleme" },
                    ].map((item) => (
                        <div
                            key={item.label}
                            className="rounded-3xl border border-zinc-800 bg-zinc-900/50 p-8"
                        >
                            <h3 className="text-4xl font-bold text-blue-400">
                                {item.value}
                            </h3>
                            <p className="mt-2 text-zinc-400">
                                {item.label}
                            </p>
                        </div>
                    ))}
                </section>

                {/* Technologies */}
                <section className="py-32">
                    <h2 className="mb-12 text-center text-4xl font-bold">
                        Teknoloji Yığını
                    </h2>

                    <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-4">
                        {[
                            {
                                icon: <Cloud size={36} />,
                                title: "Terraform",
                                desc: "Altyapı Kod Olarak (Infrastructure as Code)"
                            },
                            {
                                icon: <Server size={36} />,
                                title: "Kubernetes",
                                desc: "Container Orkestrasyonu"
                            },
                            {
                                icon: <Database size={36} />,
                                title: "PostgreSQL",
                                desc: "İlişkisel Veritabanı"
                            },
                            {
                                icon: <Activity size={36} />,
                                title: "Prometheus",
                                desc: "İzleme ve Metrikler"
                            },
                        ].map((item) => (
                            <div
                                key={item.title}
                                className="
                group
                rounded-3xl
                border
                border-zinc-800
                bg-zinc-900/40
                p-8
                transition-all
                duration-300
                hover:-translate-y-2
                hover:border-blue-500
                hover:shadow-2xl
                hover:shadow-blue-500/10
              "
                            >
                                <div className="text-blue-400">
                                    {item.icon}
                                </div>

                                <h3 className="mt-6 text-2xl font-bold">
                                    {item.title}
                                </h3>

                                <p className="mt-3 text-zinc-400">
                                    {item.desc}
                                </p>
                            </div>
                        ))}
                    </div>
                </section>

                {/* Architecture */}
                <section className="pb-32">
                    <h2 className="mb-12 text-center text-4xl font-bold">
                        Mimari Genel Bakış
                    </h2>

                    <div className="rounded-3xl border border-zinc-800 bg-zinc-900/40 p-10">
                        <div className="flex flex-wrap items-center justify-center gap-6 text-center">

                            <div className="rounded-xl bg-zinc-800 px-6 py-4">
                                Kullanıcılar
                            </div>

                            <ArrowRight />

                            <div className="rounded-xl bg-zinc-800 px-6 py-4">
                                Ingress
                            </div>

                            <ArrowRight />

                            <div className="rounded-xl bg-zinc-800 px-6 py-4">
                                API Gateway
                            </div>

                            <ArrowRight />

                            <div className="rounded-xl bg-zinc-800 px-6 py-4">
                                Kafka
                            </div>

                            <ArrowRight />

                            <div className="rounded-xl bg-zinc-800 px-6 py-4">
                                Mikroservisler
                            </div>

                            <ArrowRight />

                            <div className="rounded-xl bg-zinc-800 px-6 py-4">
                                PostgreSQL
                            </div>
                        </div>
                    </div>
                </section>
            </main>
        </div>
    );
}