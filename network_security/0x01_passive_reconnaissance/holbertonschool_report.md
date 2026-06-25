# Passive Reconnaissance Report: holbertonschool.com

## 1. IP Ranges
Based on Shodan reconnaissance and DNS resolution for holbertonschool.com and its subdomains, the following IP addresses and infrastructure ranges are utilized:

* **Amazon Web Services (AWS) Infrastructure:**
    * `75.2.70.75` (AWS Global Accelerator)
    * `99.83.190.102` (AWS Global Accelerator)
    * `54.157.56.129` (AWS EC2 / CloudFront)
    * `52.85.96.0/24` (Amazon CloudFront / CDN range)
    * `44.214.9.111` (AWS EC2)

* **Fastly & Webflow CDN:**
    * `151.139.128.10` (Fastly CDN / Webflow hosting)
    * `63.35.51.142` (Amazon AWS Ireland / Webflow proxy)

* **Automattic / WordPress / Google:**
    * `192.0.78.131` (Automattic Inc. for blog hosting)
    * Google Workspace Mail Servers (MX infrastructure)

---

## 2. Technologies and Frameworks
The following technologies, content management systems, and frameworks were identified across the holbertonschool.com ecosystem via Shodan headers and open-source intelligence:

### Content Management Systems (CMS) & Platforms
* **Webflow:** Used for the main landing pages, marketing site, and localized subdomains (e.g., `fr.holbertonschool.com`, `www.holbertonschool.com`).
* **WordPress:** Detected on `blog.holbertonschool.com` for content management.
* **Discourse:** Used for community and staging forums (`lvl2-discourse-staging.holbertonschool.com`).

### Web Servers & Reverse Proxies
* **Nginx:** Frequently identified in server banners acting as a reverse proxy for internal applications and staging environments.
* **AWS Global Accelerator / CloudFront:** Used for traffic routing, low latency, and SSL/TLS termination.
* **OpenResty / Envoy:** Utilized by edge CDN networks (Webflow/Fastly integration).

### Frameworks & Languages
* **Ruby on Rails:** Identified on application portals (`apply.holbertonschool.com`, `rails-assets.holbertonschool.com`) for managing student admissions and platform assets.
* **React / Next.js:** Used on specific modern frontend subdomains and user interfaces.

### Security & Tools
* **HSTS (HTTP Strict Transport Security):** Enabled across major subdomains to enforce secure HTTPS connections.
* **Loader.io:** Token identified via TXT records for load testing verification.
