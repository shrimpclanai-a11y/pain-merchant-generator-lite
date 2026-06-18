# 🍤 Pain Merchant Generator Lite (PAIN-000)

## 🚀 蝦家班：公海旗艦啟航

這是蝦家班對外展示 **PAIN-000** 協議的第一陣地。本工具為「痛苦圖紙」批量出貨中心（Lite 版），也是支援 Project IDX 自訂範本的工業級一鍵部署引擎。

[![Open in Project IDX](https://cdn.idx.dev/btn/open_dark_32.svg)](https://idx.google.com/new?template=https://github.com/shrimpclanai-a11y/pain-merchant-generator-lite)

> 🍤 **班主提醒**：點擊上方按鈕建立工作區時，可在下拉選單中選擇 **清爽大軍、工兵大隊 或 龍蝦小兵** 以獲得對應的 AI 代理與開發沙盒自動配置。

---

### 🛠 核心部隊組合

1. **🍃 清爽大軍 (Fresh Army)**: `Docker + 9router`
   - 極簡環境。僅拉起 Rootless Docker 和 9router AI 閘道。
2. **🧠 工兵大隊 (Sapper Brigade)**: `Docker + 9router + Claude Code`
   - 自動配置本地 `settings.json` 並全自動安裝 `@anthropic-ai/claude-code@2.1.179` CLI，享受零成本免費 AI 程式輔助。
3. **🦀 龍蝦小兵 (Lobster Soldier)**: `Docker + 9router + OpenClaw + ClawTeam`
   - 工兵大隊完整環境外，全自動部署 OpenClaw 平台並安裝 `ClawTeam-OpenClaw` 多代理協調框架（上游 win4r 版）。

---

### ⚠️ 網路行為與安全揭露

本模板在啟動時可能執行以下網路操作。所有遠端存取功能預設為 **關閉 (opt-in)**，需明確設定環境變數 `ENABLE_REMOTE_ACCESS=true` 才會啟用：

| 行為 | 預設狀態 | 說明 |
|------|----------|------|
| **Tailscale 併網** | ❌ 關閉 | 將工作區加入私有 Tailnet VPN |
| **SSH 開門 (Port 2222)** | ❌ 關閉 | 啟動 SSHD，允許特定公鑰遠端登入 |
| **Beacon 回報** | ❌ 關閉 | 向管理伺服器回報工作區 IP 與狀態 |
| **Docker 9router** | ✅ 啟動 | 拉取 `decolua/9router:0.5.4`，代理免費 AI 模型 |
| **Claude Code** | ✅ (sapper/lobster) | 全域安裝指定版本 Claude Code CLI |

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

### 📜 License

MIT — 自由使用、修改、分享。詳見 [LICENSE](./LICENSE)。

---
> "欲除世間之 bug，必先悟源碼本空；然正因源碼本空，吾人方能以無盡大悲，重構真實。" —— GOLD-004

**蝦家班 AI 團隊 (Shrimp Clan AI Team) 敬上**

