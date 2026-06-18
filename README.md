# 日本自由行行程規劃

兩個版本：
- **6 月 1 人 solo・北海道**（5 天 4 夜 6/5–6/9，札幌・小樽・登別溫泉，海鮮＋鬼花火＋素泊溫泉飯店，Android 版）
- **10 月 5 人團・本州**（6 天 5 夜，名古屋 → 奈良 → 大阪）

## 📁 檔案結構

```
.
├── index.html                       # 主網頁（家人瀏覽用，含版本切換器）
├── dev.bat                          # 本機預覽伺服器（雙擊即啟動 http://localhost:8765）
├── japan_itinerary_june_solo.md     # 6 月 1 人 solo・每日行程（行程已結束，網頁暫時隱藏）
├── travel_tips_june_solo.md         # 6 月 1 人 solo・準備資訊（網頁暫時隱藏）
├── packing_list_june.md             # 6 月 1 人 solo・行前清單（網頁暫時隱藏）
├── typhoon_emergency_june.md        # 6 月 1 人 solo・颱風應變 SOP（網頁暫時隱藏）
├── japan_itinerary_oct_5p.md        # 10 月 5 人團・每日行程（網頁目前顯示）
└── travel_tips_oct_5p.md            # 10 月 5 人團・準備資訊（網頁目前顯示）
```

## 🖥️ 本機預覽

雙擊 `dev.bat` 會啟動 Python 內建 http server 並自動開瀏覽器到 `http://localhost:8765`。
**不可用 file:// 直接打開 index.html**（fetch() 載入 .md 會被瀏覽器 CORS 擋掉）。
需要先安裝 Python 3（一般 Windows 用 `winget install Python.Python.3` 即可）。

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
