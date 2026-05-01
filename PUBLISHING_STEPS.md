# 🚀 خطوات النشر — ودجت الصلاة

> دليل سريع لإكمال نشر التطبيق على App Store. اتبعها بالترتيب.

---

## ✅ ما تم إنجازه (انتهى)

- [x] فحص شامل للكود ضد قواعد App Store.
- [x] إنشاء `PrivacyInfo.xcprivacy` للتطبيق والودجت.
- [x] إضافة روابط الخصوصية والدعم داخل تبويب "About" في التطبيق.
- [x] تحسين نص إذن الموقع.
- [x] توحيد `IPHONEOS_DEPLOYMENT_TARGET` على iOS 17.0 (لتغطية أكبر شريحة).
- [x] استبدال `MKReverseGeocodingRequest` و `MKGeocodingRequest` (iOS 26+) بـ `CLGeocoder` (iOS 5+).
- [x] نقل Bundle IDs و App Group لحساب Ali Almatrafi (`com.alialmatrafi.*`).
- [x] تبديل `DEVELOPMENT_TEAM` لـ `RVKBN5RV4F`.
- [x] التحقق من البناء بنجاح في Xcode.
- [x] إنشاء صفحات `privacy.html` و `support.html` و `index.html` في `/docs/`.
- [x] كتابة كل بيانات App Store Connect في [APP_STORE_METADATA.md](APP_STORE_METADATA.md).

---

## 📋 الخطوات المتبقية

### 1️⃣ Push التعديلات للـ GitHub

```bash
cd "/Users/alialmatrafi/Documents/Mobile Development/Salah Widget/PrayWidget"

git add PrayWindow/PrivacyInfo.xcprivacy \
        PrayWindowWidget/PrivacyInfo.xcprivacy \
        PrayWindow/ContentView.swift \
        PrayWindow.xcodeproj/project.pbxproj \
        docs/ \
        APP_STORE_METADATA.md \
        PUBLISHING_STEPS.md

git commit -m "App Store readiness: privacy manifest, in-app links, GitHub Pages"

git push origin main
```

---

### 2️⃣ تفعيل GitHub Pages

1. افتح: https://github.com/nahedh/PrayWidget/settings/pages
2. تحت **Source**، اختر:
   - Branch: `main`
   - Folder: `/docs`
3. اضغط **Save**.
4. انتظر دقيقتين.
5. تأكد إن الروابط تفتح بنجاح:
   - https://almatrafi-ali.github.io/PrayWidget/
   - https://almatrafi-ali.github.io/PrayWidget/privacy.html
   - https://almatrafi-ali.github.io/PrayWidget/support.html

> ⚠️ **مهم:** Apple ترفض التطبيق إذا روابط الخصوصية أو الدعم لا تعمل. تأكد بنفسك قبل الإرسال.

---

### 3️⃣ بناء التطبيق وتشغيله على جهاز الاختبار (لي ولك)

**على جهاز Ali:**
1. افتح Xcode، اختر `PrayWindow.xcodeproj`.
2. اربط جهاز iPhone عبر USB.
3. في Xcode، اختر الجهاز من شريط الأدوات.
4. ✅ Signing Team تم تعديلها مسبقاً لحسابك (`Ali Almatrafi - RVKBN5RV4F`) - افتح Signing & Capabilities للتأكد فقط.
5. ⚠️ App Group الجديد `group.com.alialmatrafi.PrayWindow`:
   - في **Signing & Capabilities** للتارجت `PrayWindow`، اضغط على ⊕ بجانب App Groups.
   - اضغط **Refresh** ⟳ ليسجّله Xcode تلقائياً في حسابك.
   - إذا فشل، ادخل https://developer.apple.com/account/resources/identifiers/ → "+" → App Group → سجّله يدوياً.
   - افعل نفس الشي لـ Target `PrayWindowWidget`.
6. اضغط **Run (▶️)** لبناء وتركيب التطبيق على جهازك.
7. أضف الودجت من شاشة iPhone الرئيسية للتأكد من عمله.

> 💡 إذا واجهت "Untrusted Developer" على الـiPhone:
> اذهب إلى Settings → General → VPN & Device Management → ثق بالشهادة.

---

### 4️⃣ إنشاء التطبيق في App Store Connect

1. افتح https://appstoreconnect.apple.com/ بحساب Ali.
2. **My Apps** → **+** → **New App**.
3. اختر:
   - **Platform:** iOS
   - **Name:** Prayer Widget (سيتم تغييره لاحقاً للعربية)
   - **Primary Language:** Arabic
   - **Bundle ID:** `com.alialmatrafi.PrayWindow` (يجب يكون مسجّل في Identifiers)
   - **SKU:** `PRAYWIDGET2026`
   - **User Access:** Full Access
4. اضغط **Create**.

---

### 5️⃣ تعبئة بيانات التطبيق

افتح [APP_STORE_METADATA.md](APP_STORE_METADATA.md) وانسخ كل قيمة في حقلها المناسب:
- **App Information** (Section 1)
- **Localizations** (Sections 3 و 4 — عربي + إنجليزي)
- **Age Rating** (Section 5)
- **App Privacy** (Section 6)
- **Pricing & Availability** (Section 7)

---

### 6️⃣ رفع لقطات الشاشة

من جهاز iPhone (محاكاة أو حقيقي)، التقط 6 لقطات:
1. شاشة الإعدادات (الألوان والخطوط).
2. شاشة الإعدادات (اختيار الصورة).
3. معاينة جميع المقاسات.
4. الشاشة الرئيسية مع الودجت الكبير (Mockup).
5. شاشة About مع الروابط.
6. ودجت قفل الشاشة (Mockup).

ارفعها في App Store Connect → App Store → Localization → Screenshots.

---

### 7️⃣ Archive ورفع البيلد

في Xcode:
1. اختر **Any iOS Device (arm64)** من شريط الأدوات.
2. **Product** → **Archive**.
3. انتظر اكتمال الأرشفة.
4. عند ظهور Organizer:
   - اضغط **Distribute App**.
   - اختر **App Store Connect** → **Upload**.
   - تأكد إن Manage Version والـ Bitcode إعداداتها صح.
   - اضغط **Upload**.
5. انتظر ١٥-٣٠ دقيقة لمعالجة Apple للبيلد.

---

### 8️⃣ اختيار البيلد وإرسال للمراجعة

في App Store Connect:
1. ادخل التطبيق → **Build** → اختر البيلد المرفوع.
2. تأكد من ملء **App Review Information** (Section 10).
3. اضغط **Add for Review** ثم **Submit for Review**.

---

## ⏰ الوقت المتوقع للمراجعة

- متوسط مراجعة Apple: **24-48 ساعة**.
- في حالة الرفض، تظهر الأسباب في App Store Connect → Resolution Center.

---

## 📞 ماذا لو واجهنا مشكلة؟

- **الـ Build فشل:** تأكد من Signing Team صح.
- **Privacy Manifest مفقود:** تم إنشاؤه - تأكد من commit.
- **روابط لا تعمل:** انتظر تفعيل GitHub Pages وامتحنها.
- **Apple رفضت:** اقرأ سبب الرفض من Resolution Center، صحّح، وأعد الإرسال.

---

**🎯 ملاحظة أخيرة:** التطبيق الآن مهيّأ بالكامل لحساب Ali Almatrafi:
- Bundle IDs بنطاق `com.alialmatrafi.*`
- App Group بنطاق `group.com.alialmatrafi.*`
- Team ID = `RVKBN5RV4F`
- النشر يتم من حساب Ali على App Store Connect.

اسم نهد سيظهر في:
- البريد الإلكتروني `praywidget@nahedh.com` (إذا اخترتم الإبقاء عليه).
- روابط GitHub Pages على `almatrafi-ali.github.io/PrayWidget`.
- ملف الكود (Created by Nahedh Alharbi).

إذا أردت نقل صفحات الخصوصية والدعم لحسابك على GitHub:
1. أنشئ repo باسم `PrayWidget` على حسابك `alialmatrafi`.
2. انسخ مجلد `docs/` للـ repo الجديد.
3. فعّل GitHub Pages من إعداداته.
4. عدّل الروابط في `ContentView.swift` و `APP_STORE_METADATA.md` لـ `alialmatrafi.github.io/PrayWidget/...`.
