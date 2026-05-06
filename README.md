# 日本自由行行程規劃

兩個版本：
- **6 月 1 人 solo・北海道**（5 天 4 夜，札幌・小樽・登別溫泉，海鮮＋成吉思汗＋1 泊 2 食溫泉旅館）
- **10 月 5 人團・本州**（6 天 5 夜，名古屋 → 奈良 → 大阪）

## 📁 檔案結構

```
.
├── index.html                       # 主網頁（家人瀏覽用，含版本切換器）
├── japan_itinerary_june_solo.md     # 6 月 1 人 solo・每日行程
├── travel_tips_june_solo.md         # 6 月 1 人 solo・準備資訊
├── japan_itinerary_oct_5p.md        # 10 月 5 人團・每日行程
└── travel_tips_oct_5p.md            # 10 月 5 人團・準備資訊
```

## 🌐 部署到 GitHub Pages

1. 建立新 repo（例如 `japan-trip`），**設為 Public**
2. 上傳所有檔案到 repo 根目錄
   ```bash
   git init
   git add .
   git commit -m "initial commit"
   git branch -M main
   git remote add origin https://github.com/<你的帳號>/japan-trip.git
   git push -u origin main
   ```
3. GitHub 網頁 → Repo → **Settings → Pages**
4. Source 選 `Deploy from a branch`，Branch 選 `main` / `/ (root)`，按 Save
5. 等約 1–2 分鐘，網址會是 `https://<你的帳號>.github.io/japan-trip/`
6. 把網址傳給家人即可

## ✏️ 修改內容

直接編輯 `.md` 檔案後 `git push`，網頁會自動重新載入最新內容（無需改 HTML）。

## 🔒 若不想公開

若希望只有家人能看：
- GitHub Pages 免費版**只支援 Public Repo**
- 替代方案：Cloudflare Pages（Public）+ Cloudflare Access 限 Email 存取
- 或用 Netlify Drop 拖曳部署（有密碼保護付費功能）
