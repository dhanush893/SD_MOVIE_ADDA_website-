import type { Metadata } from "next";
import "./globals.css";
export const metadata: Metadata = { title: "SD MOVIE ADDA", description: "Discover movie details and authorized viewing links." };
export default function RootLayout({children}:{children:React.ReactNode}) { return <html lang="en"><body>{children}</body></html>; }
