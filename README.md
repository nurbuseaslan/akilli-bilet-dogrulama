# Akıllı Bilet Doğrulama Sistemi 🎫

Bu proje, sahte biletleri engellemek ve bilet doğrulama sürecini güvenli hale getirmek için Ethereum blockchain üzerinde geliştirilmiş bir sistemdir.

## 🔧 Kullanılan Teknolojiler

- Solidity (Akıllı Sözleşme)
- Remix IDE
- Ganache (Lokal Blockchain)
- MetaMask (Cüzdan)
- Web3.js
- HTML + Bootstrap (Kullanıcı Arayüzü)

## ⚙️ Sözleşme Fonksiyonları

- `addTicket(string ticketId)` → Sadece owner çağırabilir. Yeni bir bilet ekler.
- `verifyTicket(string ticketId)` → Herkes kullanabilir. Bilet geçerli mi kontrol eder.
- `useTicket(string ticketId)` → Bilet kullanıldıysa geçersiz hale getirir.

## 🧪 Kullanım Senaryosu

1. Owner (sözleşmeyi dağıtan kişi), `"ABC123"` ve `"XYZ789"` olmak üzere iki geçerli bilet eklemiştir.
2. Kullanıcılar, bu arayüzde MetaMask ile giriş yaparak biletlerini doğrulayabilir.
3. Geçerli biletler için ✅, sahte/eksik biletler için ❌ sonucu görüntülenir.

## 👨‍💻 Nasıl Kullanılır?

1. `index.html` dosyasını bir tarayıcıda aç
2. MetaMask ile bağlan
3. Bilet ID gir → “Doğrula” butonuna tıkla

## 📁 Dosya Yapısı

