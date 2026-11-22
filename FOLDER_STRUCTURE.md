# リポジトリ・フォルダ構成一覧（`FOLDER_STRUCTURE.md`）

最終更新日：2026-11-22

立教大学「教育社会学」（2026年度）の講義ノートおよび Reveal.js スライドを管理する Quarto Book リポジトリの全体構成です。  
新しいファイル・フォルダを追加、移動、整理した際は、このファイルも合わせて更新してください。

---

## 1. ディレクトリ構成の全体像

```text
lec2026-Rikkyo-SoE/
├── _quarto.yml                 # Quarto Book 全体設定（章立て・出力先 docs/・resources指定）
├── index.qmd                   # トップページ（シラバス・スケジュール・参考文献）
├── AGENTS.md                   # AIエージェント向けワークスペース運用ルール
├── FOLDER_STRUCTURE.md         # 本ファイル（フォルダ・ファイル構成の参照用ドキュメント）
├── README.md                   # リポジトリ概要
├── HOW_TO_UPDATE.md            # 講義ノート・スライドの更新・公開手順書
├── .gitignore                  # Git除外設定（comments/_raw/ 等）
├── references.bib              # 参考文献 BibTeX データベース
├── cover.png                   # Book カバー画像
├── _commentsWork.R             # コメントCSV整形用 R スクリプト（作業用）
├── lec2026-Rikkyo-SoE.Rproj    # RStudio プロジェクト設定
├── lec2026-Rikkyo-SoE.code-workspace # VS Code / IDE ワークスペース設定
│
├── *.qmd                       # 各回の講義ノートソース（Quarto Book の各章）
├── *_slide.qmd                 # 各回の Reveal.js スライドソース
├── *_slide.html                # 各スライドのビルド済み単体HTML（_quarto.yml の resources で docs/ に同期）
│
├── comments/                   # 学生コメントペーパー関連
│   ├── _raw/                   # 【Git除外】Canvas LMS から出力した生データ（CSV / XLSX・個人情報含む）
│   ├── 1_1.qmd 〜 7_2.qmd      # 匿名化・整形済みのコメント一覧（講義ノートへ include される）
│   └── 6_1.html, 6_2.html, *_files/ # 単体レンダー等で残存している補助出力
│
├── docs/                       # Quarto Book のビルド出力先（GitHub Pages 公開ディレクトリ）
├── fig/                        # 講義資料用の図表・画像ファイル（quarto render で docs/fig/ へ同期）
├── data/                       # 統計・調査データ（文科省調査 Excel 等）
├── memo/                       # トピック別の執筆・構成メモ（.qmd）
├── references/                 # index.qmd 等から include する参考文献パーツ（meritocracy_media.qmd 等）
├── report/                     # 小レポート課題の告知パーツ（announcement_report.qmd）
└── test/                       # テスト・予備用フォルダ（現在空）
```

> ほかに生成・管理系ディレクトリとして `.git/`, `.quarto/`, `.Rproj.user/`, `1_slideexample_files/`, `Socialization_Curriculum_Class_files/`, `Socialization_Curriculum_Class_Revised_files/` があります。

---

## 2. 講義回とファイル・コメントの対応表

`_quarto.yml` の `book.chapters` に登録されている講義章と、スライド・コメントファイルの対応は以下のとおりです。  
**注意**: 第 $N$ 回で提出された課題コメント（`comments/N_Y.qmd`）は、原則として次回（第 $N+1$ 回）の講義ノート冒頭でフィードバックとして `{{< include ... >}}` されます。

| 回（Book順） | テーマ / タイトル | 講義ノート（`.qmd`） | スライド（`*_slide.qmd`） | ノート内に掲載するフィードバック元 | 該当回で提出させるコメント |
|:---:|:---|:---|:---|:---|:---|
| 0 | トップページ・シラバス | `index.qmd` | — | — | — |
| 1 | イントロダクション: 教育社会学 | `1_intro.qmd` | `1_intro_slide.qmd` | — | `comments/1_1`〜`1_4.qmd` |
| 2 | 教育社会学と社会の中の教育 | `Education_in_Society.qmd` | `Education_in_Society_slide.qmd` | `comments/1_1`〜`1_4.qmd` | `comments/2_1`〜`2_3.qmd` |
| 3 | 社会化（1）：カリキュラムと知識 /学級・ホームルーム | `Socialization_Curriculum_Class_Revised.qmd` | `Socialization_Curriculum_Class_slide.qmd` | `comments/2_1`〜`2_3.qmd` | `comments/3_1`〜`3_3.qmd` |
| 4 | 社会化（2）：教育とジェンダー | `Socialization_Gender_Education.qmd` | `Socialization_Gender_Education_slide.qmd` | `comments/3_1`〜`3_3.qmd` | `comments/4_1`〜`4_2.qmd` |
| 5 | 社会化（3）：家族と子ども | `Socialization_Family_Children.qmd` | `Socialization_Family_Children_slide.qmd` | `comments/4_1`〜`4_2.qmd` | `comments/5_1`〜`5_2.qmd` |
| 6 | 選抜と配分（1）：メリトクラシーと学歴 | `Selection_Educational_Meritocracy.qmd` | `Selection_Educational_Meritocracy_slide.qmd` | `comments/5_1`〜`5_2.qmd` | `comments/6_1`〜`6_2.qmd` |
| 7 | 選抜と配分（2）：教育と社会階層、学力の階層差 | `Selection_Stratification.qmd` | `Selection_Stratification_slide.qmd` | `comments/6_1`〜`6_2.qmd` | `comments/7_1`〜`7_2.qmd` |
| 8 | 選抜と配分（3）：入試と選抜、学歴社会論と就職 | `Selection_EntranceExam_Labor.qmd` | `Selection_EntranceExam_Labor_slide.qmd` | `comments/7_1`〜`7_2.qmd` | —（今後追加） |
| 9 | 排除と包摂・逸脱（1）：子どもの貧困 | `Exclusion_Poverty.qmd` | `Exclusion_Poverty_slide.qmd` | — | — |
| 10 | 排除と包摂・逸脱（3）：逸脱と非行 | `Exclusion_Delinquency.qmd` | `Exclusion_Delinquency_slide.qmd` | — | — |
| 11 | 教育制度と政策（2）：教師と学校 | `Institution_Teacher.qmd` | `Institution_Teacher_slide.qmd` | — | — |
| 12 | 教育制度と政策（3）：教育政策とエビデンス | `Institution_Policy.qmd` | `Institution_Policy_slide.qmd` | — | — |

### Book末尾・その他のルート `.qmd` ファイル

- **Book末尾ページ（`_quarto.yml` 登録済み）**
  - `1_test.qmd`（テンプレート・テスト用章）
  - `intro.qmd`、`summary.qmd`（Quarto Book 初期テンプレート由来、R チャンク含む）
  - `references.qmd`（参考文献自動出力ページ）
- **Book未登録のルート `.qmd`（参考資料・旧版・テンプレート・メモ等）**
  - `Area_Education.qmd` / `Area_Education_slide.qmd`（参考資料：地域と学校。2026年度は授業回数の関係でカットし `_quarto.yml` から除外）
  - `PISA.qmd`（参考用スライド：PISA2025 関連）
  - `Socialization_Curriculum_Class.qmd`（`Socialization_Curriculum_Class_Revised.qmd` の改訂前旧版）
  - `1_slideexample.qmd`（`1_slideexample.html` あり：スライドテンプレート）
  - `1_slidetest.qmd`（`1_slidetest.html` あり：スライドテスト用）
  - `99_memo.qmd`（全体メモ）

---

## 3. 各サブフォルダの詳細

### `comments/`（学生コメント関連）
- **匿名化済みリスト（Git管理対象）**：`1_1.qmd` 〜 `1_4.qmd`, `2_1.qmd` 〜 `2_3.qmd`, `3_1.qmd` 〜 `3_3.qmd`, `4_1.qmd` 〜 `4_2.qmd`, `5_1.qmd` 〜 `5_2.qmd`, `6_1.qmd` 〜 `6_2.qmd`, `7_1.qmd` 〜 `7_2.qmd`
  - すべて匿名化済みで、1回答1行の `- <回答>` 形式。各講義ノートの `::: {.callout-note collapse="true"}` 内に `{{< include comments/X_Y.qmd >}}` として読み込まれる。
- **`comments/_raw/`（`.gitignore` によりGit管理外）**：
  - `1_コメントペーパー_9_28 Survey Student Analysis Report.csv` 〜 `7_コメントペーパー_11_16 Survey Student Analysis Report.csv`、一部回の `.xlsx`、および `4_1.csv` を格納。
  - **学生の氏名・学籍番号等が含まれるため絶対にGitにコミットしないこと。**

### `data/`
- `20240531-mxt_chousa01-000036236-4.xls`（文部科学省関連調査データ）

### `fig/`
- `family_sociAgent.png`, `family_sociType.png`, `family_triangle.png`
- `genGap_tertiary_zuhyo01-05-03.gif`, `genGap_zuhyo00-10.gif`
- `gen_Furuta2016_p17.png`, `gen_Lcurve.png`, `gen_PISA_Lang.png`, `gen_PISA_Math.png`, `gen_PISA_Science.png`
- `ijime_4layer.jpg`, `sch_caste.png`, `terakoya.jpg`

### `memo/`
- `大学進学率_ジェンダー_国際比較.qmd`
- `機能主義的階層論.qmd`

### `references/`
- `meritocracy_media.qmd`（`index.qmd` に include されるメディア資料まとめ。`meritocracy_media.html`, `meritocracy_media_files/` あり）

### `report/`
- `announcement_report.qmd`（`index.qmd` に include される小レポート課題の告知本文）

### `docs/`
- `quarto render` により生成される Book 全体の静的HTML一式（GitHub Pages 配信対象）。直接編集せず、必ず `.qmd` 編集後に `quarto render` で更新する。

---

## 4. 更新履歴

- **2026-11-22**: 初版作成。全フォルダ・ファイル構成、第1〜8回の講義・スライド・コメント対応関係を整理し、`comments/7_1.qmd`・`comments/7_2.qmd` および `AGENTS.md` の追加を反映。
- **2026-11-22**: `Area_Education.qmd` を授業回数の関係で Book 構成から外して参考資料扱いへ変更（`PISA.qmd` と同様の位置づけ）。
