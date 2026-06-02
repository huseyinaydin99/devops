import type { Metadata } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import "./globals.css";

const geistSans = Geist({
    variable: "--font-geist-sans",
    subsets: ["latin"],
    display: "swap",
});

const geistMono = Geist_Mono({
    variable: "--font-geist-mono",
    subsets: ["latin"],
    display: "swap",
});

export const metadata: Metadata = {
    title: "☁️ Bulut Yerel DevOps Platformu",
    description:
        "Kubernetes, Terraform, Kafka ve Spring Boot ile geliştirilmiş modern mikroservis tabanlı bulut yerel platform.",
    keywords: [
        "DevOps",
        "Kubernetes",
        "Terraform",
        "Microservices",
        "Spring Boot",
        "Cloud Native",
    ],
    authors: [{ name: "Cloud Native Developer" }],
    openGraph: {
        title: "Bulut Yerel DevOps Platformu",
        description:
            "Ölçeklenebilir mikroservis mimarisi ile modern cloud native sistem.",
        type: "website",
    },
};

export default function RootLayout({
                                       children,
                                   }: Readonly<{
    children: React.ReactNode;
}>) {
    return (
        <html lang="tr" suppressHydrationWarning>
        <body
            className={`
          ${geistSans.variable}
          ${geistMono.variable}
          antialiased
          min-h-screen
          bg-zinc-950
          text-white
          selection:bg-blue-500/30
          selection:text-white
        `}
        >
        {/* Global background layer */}
        <div className="fixed inset-0 -z-10 bg-[radial-gradient(circle_at_top,rgba(59,130,246,0.15),transparent_60%)]" />

        {/* Grid overlay (CSS ile destekleniyor globals.css) */}
        <div className="fixed inset-0 -z-10 opacity-30" />

        {/* App container */}
        <div className="relative flex min-h-screen flex-col">
            {children}
        </div>
        </body>
        </html>
    );
}