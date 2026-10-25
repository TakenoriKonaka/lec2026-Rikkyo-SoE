# 立教大学 教育社会学 (2026年度) 講義資料

立教大学における「教育社会学」講義の講義ノートおよび講義スライドをまとめた Quarto Book リポジトリです。

- **Web公開サイト（GitHub Pages）：**  
  👉 [https://takenorikonaka.github.io/lec2026-Rikkyo-SoE/](https://takenorikonaka.github.io/lec2026-Rikkyo-SoE/)

---

## 本リポジトリの構成

- `*.qmd`：各回の講義ノートソース
- `*_slide.qmd`：各回のReveal.js講義スライドソース
- `docs/`：Quarto Book のビルド生成物（GitHub Pages 公開対象ディレクトリ）
- `fig/`：講義資料用画像リソース
- `comments/`：授業内コメントペーパー等の集計データ・引用ファイル

---

## 講義ノート・スライドの更新手順

日常的な講義ノートやスライドの編集・Webサイトへの反映手順は、以下のドキュメントをご覧ください：

👉 [**HOW_TO_UPDATE.md（更新手順書）**](HOW_TO_UPDATE.md)

### 更新の簡易フロー
```powershell
# 1. ビルド（スライド更新時は先に quarto render [スライド名].qmd）
quarto render

# 2. コミット＆プッシュ
git add .
git commit -m "講義内容の更新"
git push
```
