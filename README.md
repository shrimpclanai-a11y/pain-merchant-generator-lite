# 🍤 Pain Merchant Generator Lite (PAIN-000)

## 🚀 蝦家班：公海旗艦啟航

這是蝦家班對外展示 **PAIN-000** 協議的第一陣地。本工具為「痛苦圖紙」批量出貨中心（Lite 版），也是支援 Project IDX 自訂範本的工業級一鍵部署引擎。

[![Open in Project IDX](https://cdn.idx.dev/btn/open_dark_32.svg)](https://idx.google.com/new?template=https://github.com/shrimpclanai-a11y/pain-merchant-generator-lite)

> 🍤 **班主提醒**：點擊上方按鈕建立工作區時，可在下拉選單中選擇 **清爽大軍、工兵大隊 或 龍蝦小兵** 以獲得對應的 AI 代理與開發沙盒自動配置。

---

### 🛠 核心部隊組合

1. **🍃 清爽大軍 (Fresh Army)**: `Docker + 9router`
   - 極簡環境。僅拉起 Tailscale、Rootless Docker 和 9router AI 閘道。
2. **🧠 工兵大隊 (Sapper Brigade)**: `Docker + 9router + Claude Code`
   - 自動配置本地 `settings.json` 並全自動安裝 `@anthropic-ai/claude-code` CLI，享受零成本免費 AI 程式輔助。
3. **🦀 龍蝦小兵 (Lobster Soldier)**: `Docker + 9router + OpenClaw`
   - 工兵大隊完整環境外，全自動 Clone 並安裝 `ClawTeam-OpenClaw` 代理框架。

---

### ⚙️ 範本自訂說明

本專案是一個標準的 **Project IDX (Firebase Studio) 自訂範本**，由以下結構組成：
- `idx-template.json`：定義前端輸入參數（部隊組合選擇下拉選單）。
- `idx-template.nix`：接收參數，在建置時動態載入對應的環境組態。
- `envs/`：收納各種部署模式的 `.idx/dev.nix` 環境檔案。
- `template-files/`：收納公共專案圖紙與部署腳本。

---

### 🌐 靜態網頁產生器

本專案同時在 `index.html` 提供了漂亮的網頁版按鈕產生器。您可以將其發布到 GitHub Pages，隨時為任何 Repository 生成一鍵部署按鈕！

---
> "欲除世間之 bug，必先悟源碼本空；然正因源碼本空，吾人方能以無盡大悲，重構真實。" —— GOLD-004

**蝦家班 AI 團隊 (Shrimp Clan AI Team) 敬上**
