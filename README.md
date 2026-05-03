# banking-customer-product-analytics
End-to-end data analytics project using BigQuery and Looker Studio
# 📊 Customer & Product Performance Dashboard for Banking Analytics

Project End-to-End Data Analytics menggunakan Google BigQuery (SQL) dan Looker Studio untuk mengubah data transaksi mentah menjadi dashboard bisnis interaktif.

---

## 🎯 Latar Belakang Project
Perusahaan perbankan membutuhkan pemahaman yang baik terkait perilaku nasabah dan performa produk untuk mendukung pengambilan keputusan berbasis data.

Namun data transaksi masih berupa tabel terpisah sehingga sulit dianalisis secara cepat oleh stakeholder.

Project ini bertujuan membangun dataset terpusat dan dashboard bisnis yang mudah digunakan untuk monitoring performa.

---

## ❓ Pertanyaan Bisnis
Project ini dibuat untuk menjawab:

- Produk apa yang menghasilkan revenue tertinggi?
- Produk apa yang paling sering digunakan nasabah?
- Berapa rata-rata nilai transaksi nasabah?
- Kota mana dengan spending tertinggi?
- Bagaimana performa kategori produk berdasarkan revenue dan quantity?

---

## 🗂️ Dataset
Dataset terdiri dari 4 tabel:
- Customers
- Orders
- Products
- Product Category

Semua tabel digabung menjadi **Master Dataset** untuk analisis.

---

## ⚙️ Data Preparation (SQL – BigQuery)
Langkah yang dilakukan:
- Data cleaning & validasi
- Join 4 tabel menjadi master dataset
- Membuat metrik:
  - Total Sales = Quantity × Price
  - Average Order Value
  - Average Quantity per Order

---

## 🛠️ Tools
- SQL
- Google BigQuery
- Looker Studio

---

## 📈 Dashboard
Dashboard terdiri dari 2 halaman:

### Executive Overview
- KPI utama
- Revenue by Category
- Sales Trend
- Sales by City

### Product & Customer Insights
- Top Products by Revenue
- Most Purchased Products
- Category Performance
- Customer Spending by City

---

## 🔎 Insight Utama
- Revenue terkonsentrasi pada beberapa kategori produk utama
- Produk dengan quantity tertinggi tidak selalu menghasilkan revenue tertinggi
- Spending customer berbeda antar kota
- Terdapat peluang optimasi pricing & marketing

---

## 💡 Rekomendasi
- Fokus marketing pada produk revenue tinggi
- Optimasi pricing produk demand tinggi
- Prioritaskan campaign di kota dengan spending tinggi

## 👤 Author
Dinal Priyatna – Aspiring Data Analyst
