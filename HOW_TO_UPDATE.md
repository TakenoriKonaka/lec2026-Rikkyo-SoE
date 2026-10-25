# 講義ノート・スライドの更新・公開手順書

このリポジトリ（`lec2026-Rikkyo-SoE`）は、**Quarto Book** として構築されており、ビルド生成物を `docs/` ディレクトリに格納して **GitHub Pages** からWeb公開しています。

公開URL: [https://takenorikonaka.github.io/lec2026-Rikkyo-SoE/](https://takenorikonaka.github.io/lec2026-Rikkyo-SoE/)

---

## 普段の更新ワークフロー（基本の3ステップ）

講義ノート（`*.qmd`）やスライド（`*_slide.qmd`）を編集した後は、以下の手順でWebサイトを更新します。

### ステップ1：編集とレンダリング

#### パターンA：講義ノート（本文）のみを修正した場合
プロジェクト全体をレンダリングします：
```powershell
quarto render
```
※ `docs/` ディレクトリ内のHTMLが最新の内容に更新されます。

#### パターンB：スライド（`*_slide.qmd`）を修正した場合
1. 先に対象のスライドを単体レンダリングします（ルートの `*_slide.html` を生成）：
   ```powershell
   quarto render Socialization_Family_Children_slide.qmd
   ```
2. その後、プロジェクト全体をレンダリングします（`docs/` にスライドHTMLを自動同期）：
   ```powershell
   quarto render
   ```

---

### ステップ2：変更をGitにコミットする

PowerShell（またはターミナル）で以下を実行します：

```powershell
git add .
git commit -m "講義ノート・スライドの微調整"
```

---

### ステップ3：GitHubにプッシュする

```powershell
git push
```

プッシュが完了すると、GitHub Pagesが自動的に検知して1〜2分程度でWebサイトが更新されます。

---

## 便利なコマンド・Tips

### 1. ローカルでリアルタイムプレビューを確認したい場合
ブラウザで仕上がりを確認しながら執筆できます（ファイル保存時に自動再読み込み）：
```powershell
quarto preview
```
※ 終了するときはターミナルで `Ctrl + C` を押します。

### 2. 新しい画像や図表を追加したい場合
- 画像ファイルはすべて `fig/` ディレクトリに配置してください。
- `_quarto.yml` の `resources` 設定により、`quarto render` を実行すると自動的に `docs/fig/` にコピーされます。

### 3. 新しい講義回（新しい章）を追加したい場合
1. 新しい `.qmd` ファイルを作成します（例：`New_Chapter.qmd`）。
2. `_quarto.yml` を開き、`book.chapters` のリストに対象ファイル名を追加します：
   ```yaml
   book:
     chapters:
       - index.qmd
       - ...
       - New_Chapter.qmd
   ```
3. `quarto render` を実行して反映します。

---

## トラブルシューティング

- **Q. スライドの変更がWeb上で反映されない**
  - スライドファイル（`*_slide.qmd`）を編集した場合は、必ずスライド単体のレンダリング（`quarto render [スライド名].qmd`）を行ってから、`quarto render` を実行してください。
- **Q. `quarto render` でエラーが出る**
  - ルートディレクトリに古いチャプターHTML（`Socialization_Family_Children.html` など）が残っていると競合することがあります。その場合はルート直下のスライド以外のHTMLを削除してから再度お試しください。
