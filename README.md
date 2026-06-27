# dev-kit

`dev-kit` 是一個用於**環境建置**的工具包，協助快速建立、切換與維護開發環境。

## 使用方式

請搭配 `devpod.sh` 使用本工具包，透過對應的 branch 分支啟動環境：

```bash
devpod up https://github.com/caffbit/dev-kit@devcontainer/<context> --dotfiles https://github.com/caffbit/dev-kit@dotfiles/<context>
```

## Branch 類別

- `dotfiles/<context>`：用於管理與同步開發環境設定檔。
- `devcontainer/<context>`：用於定義與維護 Dev Container 環境。
- `themes/<context>`：用於不同情境的主題設定，例如特定專案、團隊或工作流。

## 建議流程

1. 選擇對應的 `context`。
2. 使用 `devpod up` 套用 `devcontainer/<context>` 與 `dotfiles/<context>`。
3. 視需要調整設定並提交到對應分支。
