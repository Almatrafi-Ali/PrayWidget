# 🚀 جاهز للنشر — ودجت الصلاة

> آخر خطوتين فقط قبل التطبيق يكون live على App Store!

---

## ✅ ما تم إنجازه (98%)

### 🌐 GitHub
- [x] Repo جديد: **https://github.com/Almatrafi-Ali/PrayWidget**
- [x] الكود تم رفعه على main branch.
- [x] **GitHub Pages مفعّل وشغّال** على `/docs`:
  - 🌐 https://almatrafi-ali.github.io/PrayWidget/
  - 🔒 https://almatrafi-ali.github.io/PrayWidget/privacy.html
  - 💬 https://almatrafi-ali.github.io/PrayWidget/support.html

### 📲 App Store Connect — ودجت الصلاة (App ID: **6765707381**)
- [x] **App Information**: الاسم، Subtitle، Categories (Lifestyle/Reference)، Content Rights
- [x] **Age Ratings**: 4+ (مناسب للجميع)
- [x] **Pricing**: مجاني في **175 دولة**
- [x] **App Privacy**: Published — Data Not Collected
- [x] **Privacy Policy URL**: `almatrafi-ali.github.io/PrayWidget/privacy.html`
- [x] **Version 1.0 Metadata**:
  - Promotional Text بالعربية ✓
  - Description كاملة 2,885 حرف ✓
  - Keywords ✓
  - Support URL + Marketing URL ✓
  - Copyright: 2026 Nahedh Alharbi ✓
- [x] **App Review Information**:
  - Contact: Ali Almatrafi
  - Phone: +966500624739
  - Email: a.f.almatrafi@gmail.com
  - Notes للمراجع (شامل) ✓

### 🛠️ الكود
- [x] Bundle IDs على حسابك: `com.alialmatrafi.PrayWindow` و `.widget`
- [x] App Group: `group.com.alialmatrafi.PrayWindow`
- [x] Team ID: `RVKBN5RV4F`
- [x] Deployment Target: iOS 17.0
- [x] PrivacyInfo.xcprivacy في كلا التارجتين
- [x] Build نجح في Xcode بدون warnings

---

## 📋 الخطوتان المتبقيتان (أنت تسوّيها الآن)

### 1️⃣ Archive + Upload من Xcode (10 دقائق)

افتح Xcode على الـ project:
```bash
open "/Users/alialmatrafi/Documents/Mobile Development/Salah Widget/PrayWidget/PrayWindow.xcodeproj"
```

ثم:

1. **اختر الجهاز:** من شريط الأدوات في الأعلى، اختر **"Any iOS Device (arm64)"** (مش simulator).
2. **Archive:** من القائمة، اضغط **Product → Archive** ⏱️ (3-5 دقائق).
3. عند اكتمال الأرشفة، Xcode يفتح **Organizer** تلقائياً.
4. اختر الـ Archive الجديد، ثم اضغط **Distribute App** على اليمين.
5. اختر **App Store Connect** → اضغط **Next**.
6. اختر **Upload** (مش Export) → اضغط **Next**.
7. وافق على الإعدادات الافتراضية:
   - ✅ Upload your app's symbols
   - ✅ Manage Version and Build Number
   - **Distribution certificate** و **Provisioning profile**: Automatic
8. اضغط **Upload** ⏱️ (دقيقتان).
9. لما يطلع "Upload Successful" — انت خلصت! ⏱️ Apple ياخذ 15-30 دقيقة لمعالجة البيلد.

---

### 2️⃣ اختيار البيلد + رفع لقطات الشاشة + الإرسال

بعد ما البيلد يكتمل المعالجة (Apple يبعث لك إيميل)، ادخل:
**https://appstoreconnect.apple.com/apps/6765707381/distribution/ios/version/inflight**

#### أ. اختر البيلد:
- في قسم **Build**، اضغط **+** واختر البيلد المرفوع.

#### ب. ارفع لقطات الشاشة (مطلوبة):
**iPhone 6.5" Display** (مطلوب على الأقل):
- المقاس: **1242 × 2688** أو **1320 × 2868**
- العدد: 6 لقطات بحد أقصى (ولا واحدة حد أدنى — لكن يفضّل 5-6)
- اقتراحات للقطات:
  1. شاشة "الإعدادات" (الـ Hero card)
  2. خيارات الألوان والخطوط
  3. اختيار الصور المرفقة
  4. معاينة الودجت الكبير
  5. معاينة ودجت قفل الشاشة
  6. شاشة "عن التطبيق" مع الروابط

📸 **كيف تأخذ Screenshots سريعاً:**
- شغّل التطبيق على Simulator (اختر iPhone 17 Pro Max في Xcode).
- في Simulator: **File → Save Screenshot** (أو **Cmd+S**).
- ارفعها في App Store Connect → Localization (Arabic) → Screenshots.

**iPad 13"** (مطلوب لأن التطبيق يدعم iPad):
- المقاس: **2064 × 2752**
- نفس العدد والاقتراحات.

#### ج. تحقق من كل شي:
- ✅ Promotional Text، Description، Keywords (محفوظة)
- ✅ Support URL + Marketing URL (محدّثة)
- ✅ Build مختار
- ✅ Screenshots مرفوعة
- ✅ App Review Information (Contact + Notes)

#### د. اضغط **Add for Review** ثم **Submit for Review**.

---

## ⏰ الوقت المتوقع للموافقة
- متوسط مراجعة Apple: **24-48 ساعة**
- بعد الموافقة، التطبيق يصبح live على App Store تلقائياً (لأنك اخترت "Automatically release this version").

## 📞 إذا حصل رفض (في الـ Resolution Center)
أكثر أسباب الرفض الشائعة لتطبيقات الصلاة:
1. **معلومات غير كافية للمراجع** → الـ Notes اللي حطيتها كافية، لكن لو رفضوا، نضيف تفاصيل أكثر.
2. **Crash عند البداية** → اختبر التطبيق على جهازك الفعلي قبل الـ Archive.
3. **رابط لا يعمل** → الروابط شغّالة (تأكدت من ذلك).

---

## 🔗 روابط سريعة للمشروع

| الموقع | الرابط |
|--------|--------|
| App Store Connect | https://appstoreconnect.apple.com/apps/6765707381 |
| GitHub Repo | https://github.com/Almatrafi-Ali/PrayWidget |
| GitHub Pages | https://almatrafi-ali.github.io/PrayWidget/ |
| Privacy Policy | https://almatrafi-ali.github.io/PrayWidget/privacy.html |
| Support Page | https://almatrafi-ali.github.io/PrayWidget/support.html |
| Apple Developer | https://developer.apple.com/account |

---

**🎯 ملاحظة: المطور الأصلي للكود هو Nahedh Alharbi (مذكور في الـ Copyright والـ Code comments)، لكن النشر على App Store من حساب Ali Almatrafi.**
