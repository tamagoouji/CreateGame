# Git 練習問題集（200問・4択・解説付き）

- 出題形式: 日本語（丁寧）
- 各問題: 問題文、選択肢A〜D、正答、解説（2〜4行）
- 難易度配分: 初級 80問 / 中級 80問 / 上級 40問
- トピック: a) 基本コマンド, b) ブランチ管理/マージ, c) リモート操作, d) 履歴操作・修正, e) 応用（サブモジュール等）
- 配布形式: 問題と解答が同ファイルに含まれます（問題の下に正答・解説を配置）

---

## 使い方
各問題の下に正答と解説があります。PDF/PPTX用のスライド化はこのファイルを元に行います。

---

<!-- 問題一覧開始 -->

<!-- 以下、200問（番号 / 難易度 / カテゴリ）の順で出力 -->

1) [初級][a]
問題: リモートリポジトリをローカルに複製して作業ディレクトリを用意したい。正しいコマンドはどれですか？
A. `git pull <url>`
B. `git clone <url>`
C. `git init <url>`
D. `git fetch <url>`

正答: B
解説: `git clone` はリポジトリの複製を行い、新しい作業ディレクトリを作成します。`git pull` は既存のクローンに対して更新を取り込むコマンドです。

2) [初級][a]
問題: 変更したファイル `file.txt` をコミットに含めるため、まずステージに追加したい。どのコマンドを使いますか？
A. `git commit file.txt`
B. `git add file.txt`
C. `git push file.txt`
D. `git stage file.txt`

正答: B
解説: `git add` で変更をインデックス（ステージ）に追加します。その後 `git commit` でインデックスの内容をコミットできます。`git stage` は存在しない一般的なコマンドです。

3) [初級][a]
問題: 直前のコミットメッセージを修正したい（まだ push していない）。どのコマンドが適切ですか？
A. `git commit --amend`
B. `git revert HEAD`
C. `git reset --hard HEAD~1`
D. `git rebase -i` 

正答: A
解説: `git commit --amend` で直前のコミットを修正（メッセージや内容の追加）できます。公開済みコミットに対しては注意が必要です。

4) [初級][a]
問題: ローカルリポジトリの現在の状態（変更があるファイルやステージ済みの状態）を確認したい。どのコマンドですか？
A. `git log`
B. `git status`
C. `git diff --stat`
D. `git show`

正答: B
解説: `git status` は作業ツリーとステージの状態を要約して表示します。変更内容の詳細は `git diff` を使います。

5) [初級][a]
問題: 変更を確定して履歴に保存するコマンドはどれですか？
A. `git push`
B. `git add`
C. `git commit -m "msg"`
D. `git save`

正答: C
解説: `git commit` でインデックスの内容をコミット（履歴に保存）します。`git push` はリモートへ送信するコマンドです。

6) [初級][a]
問題: リポジトリのコミット履歴を簡単に一覧で見たい。最も基本的なコマンドはどれですか？
A. `git history`
B. `git log`
C. `git list`
D. `git show --all`

正答: B
解説: `git log` はコミットの履歴を表示します。`--oneline` や `--stat` などのオプションで出力を調整できます。

7) [初級][a]
問題: 特定のファイルの差分（作業ツリーとステージの差）を見たい。どのコマンドを使いますか？
A. `git diff file.txt`
B. `git show file.txt`
C. `git log file.txt`
D. `git status file.txt`

正答: A
解説: `git diff` は作業ツリーとインデックス、またはインデックスとHEADの差分を表示します。`git show` はコミットなどの情報を表示します。

8) [初級][b]
問題: 新しいブランチ `feature` を作成してすぐ切り替えたい。どのコマンドが適切ですか？
A. `git branch feature && git checkout feature`
B. `git checkout -b feature`
C. `git branch -c feature`
D. `git new feature`

正答: B
解説: `git checkout -b feature` はブランチ作成と切替を同時に行います（新しいコマンド `git switch -c feature` でも同等です）。

9) [初級][b]
問題: 現在のブランチ名を確認したいときに使う簡単なコマンドはどれですか？
A. `git branch --show-current`
B. `git whoami`
C. `git current-branch`
D. `git remote -v`

正答: A
解説: `git branch --show-current` は現在チェックアウトしているブランチ名を表示します。`git branch` 単体でもブランチ一覧に `*` が付いて確認できます。

10) [初級][c]
問題: ローカルの変更をリモート `origin` の `main` に送信する正しい順序は？
A. `git push origin main`（事前に `git commit` を実行済みの想定）
B. `git add` → `git push`
C. `git push` → `git commit`
D. `git commit` → `git add` → `git push`

正答: A
解説: まず `git add` → `git commit` でローカルコミットを作成し、その後 `git push origin main` でリモートへ送ります。設問の前提で適切なのは A です。

11) [初級][a]
問題: リポジトリを初期化して新しいローカルリポジトリを作成するコマンドはどれですか？
A. `git create`
B. `git init` 
C. `git new repo` 
D. `git start`

正答: B
解説: `git init` で空の Git リポジトリを初期化し、.git ディレクトリを作成します。

12) [初級][a]
問題: ファイルの変更をステージした後、その内容を確認するにはどのコマンドが便利ですか？
A. `git status`
B. `git diff` 
C. `git diff --staged`
D. `git log`

正答: C
解説: `git diff --staged`（または `--cached`）で、ステージされた変更の差分を確認できます。`git status` は概要を表示します。

13) [初級][a]
問題: 直前のコミットを取り消して、変更を作業ツリーに残したい。どのコマンドを使いますか？
A. `git reset --soft HEAD~1` 
B. `git revert HEAD`
C. `git reset --hard HEAD~1`
D. `git checkout -- .`

正答: A
解説: `git reset --soft HEAD~1` は HEAD を1つ前に戻し、変更はステージのまま残ります。`--hard` は作業ツリーも戻してしまいます。

14) [初級][b]
問題: 別ブランチで作業している内容を current ブランチに取り込みたいが、マージコミットを残したくない。どの操作が有効ですか？
A. `git merge --no-ff feature`
B. `git merge feature`
C. `git rebase feature`
D. `git cherry-pick feature`

正答: C
解説: `git rebase` はコミットを移動して直線的な履歴にし、マージコミットを作らずに反映できます（使い方に注意）。

15) [初級][b]
問題: ブランチ `dev` を削除したい。ローカルから削除するコマンドはどれ？
A. `git branch -d dev`
B. `git delete branch dev`
C. `git branch --remove dev`
D. `git rm dev`

正答: A
解説: `git branch -d` はマージ済みブランチを削除。未マージのブランチを強制削除したい場合は `-D` を使います。

16) [初級][c]
問題: リモートリポジトリの一覧と URL を確認するコマンドは？
A. `git list remotes`
B. `git remote -v` 
C. `git show remotes`
D. `git config remotes`

正答: B
解説: `git remote -v` でリモート名と fetch/push の URL を確認できます。

17) [初級][a]
問題: あるファイルを Git の管理対象から外したい（削除はしない）。どのコマンドを使いますか？
A. `git rm --cached file.txt`
B. `git rm file.txt`
C. `git ignore file.txt`
D. `git remove --cached file.txt`

正答: A
解説: `git rm --cached` はインデックスから削除しますが、作業ツリーのファイルは残します。`.gitignore` の設定と組み合わせて使います。

18) [初級][a]
問題: コミットの単位として複数のファイルをまとめてコミットする一般的な方法はどれですか？
A. `git add file1 file2` → `git commit -m "msg"`
B. `git commit file1 file2 -m "msg"`
C. `git push file1 file2`
D. `git stage file1 file2`

正答: A
解説: まず `git add` で複数ファイルをステージし、その後 `git commit` でまとめてコミットします。

19) [中級][d]
問題: 誤ってコミットしたファイルを履歴から完全に消し、公開履歴も書き換えたい（慎重に行う操作）。どれが該当しますか？
A. `git revert <commit>`
B. `git filter-branch`（または `git filter-repo`）← 正解
C. `git reset --soft <commit>`
D. `git rm --cached <file>`

正答: B
解説: 大量の履歴書き換えやファイル削除には `git filter-branch`（旧）や `git filter-repo`（推奨）が用いられます。公開済みの履歴を書き換えるため、協調作業者と調整が必要です。

20) [中級][d]
問題: あるコミットを取り消したいが、その取り消しを履歴に記録として残したい。使うべきコマンドは？
A. `git reset --hard <commit>`
B. `git revert <commit>` ← 正解
C. `git checkout <commit>`
D. `git commit --amend`

正答: B
解説: `git revert` は指定コミットの打ち消しコミットを作成し、履歴の整合性を保ちながら変更を元に戻せます。

21) [中級][b]
問題: リモート上の `origin/feature` ブランチをローカルに作りたい。適切なコマンドは？
A. `git checkout feature` 
B. `git fetch origin` → `git checkout -b feature origin/feature` ← 正解
C. `git clone origin/feature`
D. `git pull origin feature`

正答: B
解説: `git fetch` で最新のリモート情報を取得し、その後 `origin/feature` を参照してローカルブランチを作成します。`git checkout origin/feature` をそのまま行うと分離 HEAD になります。

22) [中級][c]
問題: リモートリポジトリに新しいブランチ `topic` を push して、upstream を同時に設定するコマンドは？
A. `git push origin topic` 
B. `git push -u origin topic` ← 正解
C. `git push --set-branch origin topic`
D. `git push origin topic --set-upstream=origin`

正答: B
解説: `-u` または `--set-upstream` で upstream 設定が行われ、以降は `git push`/`git pull` を省略して使えます。

23) [中級][b]
問題: `feature` ブランチに `bugfix` ブランチの1つのコミットだけを反映させたい。最も適切なのは？
A. `git merge bugfix`
B. `git rebase bugfix`
C. `git cherry-pick <commit>` ← 正解
D. `git apply`

正答: C
解説: `git cherry-pick` は特定のコミットを現在の HEAD に適用します。部分的に取り込みたいときに有効です。

24) [中級][d]
問題: どのコマンドを使うと、どのファイルがどのコミットで最後に変更されたかを調べられますか？
A. `git log --name-only`
B. `git blame <file>` ← 正解
C. `git diff --name-only`
D. `git status --porcelain`

正答: B
解説: `git blame` はファイルの各行がどのコミット（及び著者）で最後に変更されたかを示します。`git log -- <file>` でも履歴を追えます。

25) [中級][e]
問題: サブモジュールを追加するときの基本コマンドは？
A. `git submodule add <url> <path>` ← 正解
B. `git add submodule <url>`
C. `git add --submodule <url>`
D. `git clone --submodule <url>`

正答: A
解説: `git submodule add` で指定ディレクトリにサブモジュールを登録します。以降 `git submodule update --init --recursive` を使ってチェックアウトします。

26) [中級][c]
問題: リモートの変更をローカルに取り込みたいが、ローカルの未コミット変更がある。安全に取り込みたいときはどうする？
A. `git pull` をそのまま実行する
B. `git stash` で変更を退避 → `git pull` → `git stash pop` ← 正解
C. `git reset --hard` してから `git pull`
D. `git fetch` のみ実行

正答: B
解説: 作業中の変更を `git stash` で一時保存すれば、安全に `git pull` を行い、その後 `git stash pop` で戻せます。

27) [上級][d]
問題: ある不具合がいつ導入されたかを特定するため、二分探索的にコミットを絞りたい。用いるコマンドは？
A. `git bisect` ← 正解
B. `git blame`
C. `git log --grep="bug"`
D. `git revert`

正答: A
解説: `git bisect` は二分探索で良好/不良のコミットを切り分け、原因のコミットを特定します。自動化スクリプトと組み合わせると便利です。

28) [中級][a]
問題: あるファイルを過去の特定コミットの状態に戻して、その状態を新しいコミットとして残したい。どの操作？
A. `git checkout <commit> -- file.txt` → `git add file.txt` → `git commit -m "restore"` ← 正解
B. `git revert <commit>`
C. `git reset --hard <commit>`
D. `git clone --depth=1`

正答: A
解説: `git checkout <commit> -- file` でファイルだけ過去に戻し、その後コミットして履歴に新しい復元コミットを加えます。

29) [中級][e]
問題: Git フック（例: pre-commit）をプロジェクトに導入することで期待できる効果は？
A. 自動的にリポジトリをバックアップする
B. コミット時に静的解析やフォーマットを強制できる ← 正解
C. リモートへ自動 push する
D. Git のバージョンを管理する

正答: B
解説: pre-commit フックを使うと、コミット前に linters やフォーマッタを実行して品質を担保できます。CI と連携するとより強力です。

30) [上級][d]
問題: 公開済みブランチで `git rebase` を行った結果、他者と履歴が乖離してしまった。協調的に修正する最初の一手は？
A. 強制 push する（`git push -f`）
B. 影響範囲をチームに通知し、マージまたは再調整を行う ← 正解
C. リポジトリを削除して再作成する
D. コミットを revert で全て元に戻す

正答: B
解説: 公開済みの履歴を書き換えると他者の作業に影響するため、まず関係者に通知して対策（force push を使う場合は同意）を取りましょう。

31) [初級][a]
問題: `git log` を1行要約（コミットIDとメッセージ）で表示したい。どのオプションを使いますか？
A. `git log --pretty=oneline` ← 正解
B. `git log --stat`
C. `git log --name-only`
D. `git log --patch`

正答: A
解説: `--pretty=oneline`（または `--oneline`）でコンパクトにコミット履歴を表示できます。

32) [初級][a]
問題: 特定の拡張子（例: .log）を全て git の追跡対象から外したい。最適な手順は？
A. リポジトリを削除して再作成する
B. `.gitignore` に `*.log` を追加してコミットする ← 正解
C. `git exclude '*.log'`
D. `git ignore add '*.log'`

正答: B
解説: `.gitignore` にパターンを追加し、追跡済みファイルが既にある場合は `git rm --cached` でインデックスから削除します。

33) [中級][d]
問題: 間違ってマージしたコミットを取り消して、マージコミットだけを打ち消したい。どのコマンドが便利ですか？
A. `git revert -m 1 <merge-commit>` ← 正解
B. `git reset --hard <parent>`
C. `git checkout -- <files>`
D. `git rebase -i`

正答: A
解説: `git revert -m 1` を使うとマージコミットを打ち消すための逆コミットを作成できます（`-m` はマージの親を指定）。

34) [中級][b]
問題: ある機能ブランチを main にマージする際、競合が出た。競合解決後の一般的な手順は何ですか？
A. `git add` で競合を解決したファイルをステージ → `git commit` → `git push` ← 正解
B. `git reset` を使って最初からやり直す
C. `git revert` を使って対処する
D. `git stash pop` を使う

正答: A
解説: 競合を手動で解決し、解決後に `git add` してコミット。リモートと同期させるため `git push` を行います。

35) [中級][c]
問題: `git fetch` と `git pull` の主な違いは何ですか？
A. `git fetch` はリモートの変更を取得するだけ、`git pull` は取得して自動でマージ/リベースする ← 正解
B. `git fetch` は削除も反映する、`git.pull` はしない
C. `git fetch` はファイルをダウンロードしない
D. 両者は同じ動作

正答: A
解説: `git fetch` はローカルのリモート参照を更新するだけで、実際の作業ブランチを変更しません。`git pull` は `fetch` の後に `merge`（または `rebase`）を実行します。

36) [中級][e]
問題: あなたのローカルリポジトリで `core.autocrlf` を設定するとき、Windows 環境で一般的に推奨される値は？
A. `false`
B. `true` ← 正解（多くのケース）
C. `input`
D. `auto`

正答: B
解説: Windows では `true` に設定するとチェックアウト時に CRLF を、コミット時に LF に変換され、改行差分のノイズを減らせます（プロジェクト方針に依存）。

37) [中級][d]
問題: ファイルの履歴から特定のコミットを取り出して別ブランチに持って行きたい。最も使うコマンドは？
A. `git checkout <commit> -- file` 
B. `git cherry-pick <commit>` ← 正解
C. `git revert <commit>`
D. `git merge <commit>`

正答: B
解説: `cherry-pick` を使えば特定コミットを現在の HEAD に適用できます。ファイル単位の復元は `git checkout` で可能です。

38) [上級][e]
問題: 大規模リポジトリで履歴操作をするとき、`git gc` の効果は何ですか？
A. コミット履歴を消す
B. Git のガーベジコレクションで不要なオブジェクトを圧縮・整理しディスクを節約する ← 正解
C. リモートの不要ブランチを削除する
D. リポジトリを再初期化する

正答: B
解説: `git gc` は内部のオブジェクトを圧縮し、参照切れオブジェクトのクリーンアップを行います。通常は自動で実行されますが手動実行も可能です。

39) [初級][a]
問題: 署名付きコミットを作るにはどのオプションを使いますか？
A. `git commit -S -m "msg"` ← 正解
B. `git commit --sign` 
C. `git commit --gpg` 
D. `git commit -g`

正答: A
解説: `-S` オプションで GPG 署名付きコミットを行えます。署名には事前に GPG キーの設定が必要です。

40) [中級][a]
問題: large binary ファイルを Gitで扱う際に大きなファイルを適切に管理するために推奨される拡張は何ですか？
A. Git LFS（Large File Storage） ← 正解
B. git bigfiles
C. git store
D. git large

正答: A
解説: Git LFS を使うと大きなバイナリは外部ストレージに置き、リポジトリの肥大化を防げます。プロジェクト方針で導入を検討します。

--（ここまでで40問）続きます。

41) [初級][a]
問題: 変更を行ったあと、コミットメッセージに複数行の説明を付けたい。どのコマンドの使い方が正しいですか？
A. `git commit -m "タイトル" -m "詳細説明"` ← 正解
B. `git commit --message "タイトル\n詳細"`
C. `git commit -M "タイトル" "詳細"`
D. `git commit -l "詳細"`

正答: A
解説: `-m` オプションは複数回指定でき、最初がタイトル、次以降が本文として扱われます。エディタが開く場合はそこで詳細を書くこともできます。

42) [初級][a]
問題: 変更の履歴を特定のファイルだけ絞って一覧で確認したい。使うコマンドは？
A. `git log -- <file>` ← 正解
B. `git log -p` 
C. `git show <file>`
D. `git history <file>`

正答: A
解説: `git log -- file` でそのファイルに関するコミット履歴を確認できます。`-p` で差分も確認可能です。

43) [初級][a]
問題: 変更をコミットしたが、まだ push したくない。別の作業を始めるためにそのコミットを一時的に巻き戻しておきたい。適切なコマンドはどれ？
A. `git stash` 
B. `git reset --soft HEAD~1` ← 正解（コミットを取り消してインデックスは残す）
C. `git revert HEAD`
D. `git rebase -i`

正答: B
解説: `reset --soft` は直前のコミットを取り消し、変更はインデックスに残るため、後で再コミットしやすい状態になります。

44) [中級][b]
問題: 2つのブランチ A と B の間で複数のコミットを移動させたい。`rebase` と `merge` の違いで注意すべき点は何ですか？
A. `rebase` は履歴を書き換え直線化する、`merge` はマージコミットを作る ← 正解
B. `merge` は履歴を書き換える、`rebase` はしない
C. どちらも同じ履歴になる
D. `rebase` は remote を自動更新する

正答: A
解説: `rebase` はコミットを新しい基底に移すため履歴が書き換わります。公開履歴に対しては協調が必要です。

45) [中級][b]
問題: `git rebase -i`（インタラクティブリベース）でできることとして適切でないものは？
A. コミットの順序変更
B. コミットの結合（squash）
C. コミットを削除
D. リモートのブランチ名を変更する ← 正解（できない）

正答: D
解説: インタラクティブリベースはローカルのコミット編集に強力で、順序変更や統合、分割などが可能です。リモート名の変更は `git remote rename` などを使います。

46) [中級][c]
問題: `git pull --rebase` を使うメリットは何ですか？
A. ローカルのコミットを一時に削除する
B. 取込時に自分のローカルコミットを最新のリモート先端の上に並び替え、履歴を直線化できる ← 正解
C. リモート履歴を消去する
D. 自動でスタッシュとマージを行う

正答: B
解説: `git pull --rebase` はフェッチ後に自分のコミットをリベースするため、マージコミットを作らずにクリーンな履歴を保てます。

47) [初級][a]
問題: 特定のコミットメッセージを検索したい。どのコマンドが最も直接的に使えますか？
A. `git log --grep="キーワード"` ← 正解
B. `git search "キーワード"`
C. `git find -m "キーワード"`
D. `git show --grep "キーワード"`

正答: A
解説: `--grep` オプションでメッセージのパターン検索ができます。複数オプションと組合わせて便利に使えます。

48) [中級][d]
問題: リポジトリ内で特定の文字列がいつから出現するようになったか調べたい（導入コミットを特定）。どのコマンドが有効ですか？
A. `git grep --line-number <pattern>`
B. `git bisect` と `git grep` を組み合わせる ← 正解
C. `git blame` 単体
D. `git log --since` 

正答: B
解説: 二分探索を行う `git bisect` にテスト（`git grep` で判定）を組み合わせることで導入コミットを素早く特定できます。

49) [中級][e]
問題: プロジェクトの CI で特定のブランチのみにパイプラインを走らせたい。Git 側で直接設定する一般的な方法は？
A. `.gitlab-ci.yml`／`.github/workflows` のブランチ条件を設定する ← 正解
B. `git config ci.branch "main"`
C. `git push --ci-only` 
D. `git branch --ci main`

正答: A
解説: CI の設定ファイル内でトリガーブランチを指定して制御します。Git 自体には CI 実行のトリガー制御はないため、CI サービス側で設定します。

50) [中級][a]
問題: あるファイルの最初のコミット（ファイルが追加された最初のコミット）を調べるコマンドは？
A. `git log --diff-filter=A -- <file>` ← 正解
B. `git log --first -- <file>`
C. `git blame --first <file>`
D. `git show first <file>`

正答: A
解説: `--diff-filter=A` を使うと追加（Added）されたコミットをフィルタできます。最初の1つ目を得ればファイルの追加時コミットがわかります。

51) [初級][a]
問題: コミット時に特定のファイルを除外したい場合に最も手軽な方法は？
A. `.gitignore` に追加してコミットする（ただし既に追跡済みなら `git rm --cached` が必要） ← 正解
B. `git skip file` 
C. `git exclude file` 
D. `git remove file` 

正答: A
解説: `.gitignore` にパターンを追加するのが基本です。既に追跡されているファイルは別途インデックスから外す処理が必要です。

52) [中級][b]
問題: 2人で同じファイルを並行編集して、両方の変更を失わずに統合したい。一般的な流れは？
A. 直接両方上書きして push する
B. `git pull` でリモートの変更を取り込み、コンフリクトを解決 → commit → push ← 正解
C. `git reset --hard` を使う
D. `git revert` を多用する

正答: B
解説: リモートの変更を取り込むとコンフリクトが出る可能性があるため、手動で解決してからコミットし、push します。

53) [初級][a]
問題: コミット時にファイルのタイムスタンプを変更せずに内容だけを変える方法は？
A. `git commit --no-verify`
B. `git commit --date="now"`
C. Git はコミットに日時を付与するため直接は不可（リライトで変更可能） ← 正解
D. `git commit --keep-time`

正答: C
解説: Git はコミットに作成日時を自動付与するため、通常は変更できません。履歴を書き換えることで日時を操作できますが推奨されません。

54) [中級][c]
問題: オリジンの main が更新され、自分の feature ブランチを main の最新に合わせたい時に、`merge` と `rebase` のどちらを使うと履歴がよりシンプルになりますか？
A. merge
B. rebase ← 正解
C. 両者同じ
D. どちらも適さない

正答: B
解説: `rebase` は自分のコミットを main の先端に移すため、履歴が直線的になりシンプルになります。ただし公開履歴の rebase は注意。

55) [中級][e]
問題: リポジトリ内の大きな不要ファイルを履歴ごと完全に削除したい。推奨される安全な手順はどれ？
A. `git filter-repo --invert-paths --paths <file>` ← 正解（推奨）
B. `git rm <file>` → `git commit`
C. `git reset --hard` 
D. `git rm --cached <file>`

正答: A
解説: `git filter-repo` で履歴から除去するのが安全で効率的です。`filter-branch` は時に遅く複雑になるため `filter-repo` が推奨されます。

56) [中級][d]
問題: 複数の古いブランチを一括して削除したい。`git` のどのコマンドが役立つか？
A. `git branch --merged` でマージ済みブランチを確認し `xargs git branch -d` で削除 ← 正解
B. `git prune-branches`
C. `git delete-many`
D. `git branch -D --all`

正答: A
解説: マージ済みブランチを `git branch --merged` で列挙し、それを削除リストに流す方法が一般的です。慎重に確認してから削除します。

57) [初級][a]
問題: `git stash` の一覧を表示するコマンドはどれ？
A. `git stash list` ← 正解
B. `git stash show --all`
C. `git list stash`
D. `git stash --list`

正答: A
解説: `git stash list` はスタッシュ保存されたエントリを一覧表示します。`git stash show` で内容の概要を見られます。

58) [中級][b]
問題: Pull Request（PR）のレビューで修正要求が来たとき、ローカルで修正を行って既存の PR に反映させるための一般的な手順は？
A. 修正 → `git commit` → `git push`（同じブランチに push） ← 正解
B. 修正 → `git push`（任意のブランチ）
C. 修正 → `git branch` を作り push
D. 修正 → `git tag` を作る

正答: A
解説: PR が作成されたブランチに修正をコミットして push すれば PR に自動で反映されます。

59) [上級][d]
問題: 重大なバグがある古いコミットを特定し、そのコミットを修正するパッチを作って当該ブランチの過去に遡って適用したい。どの手法が適切ですか？
A. `git rebase -i` を使って該当コミットを修正（edit）してコミットをやり直す ← 正解
B. `git revert` を使って取り消す
C. `git reset --hard` を使う
D. `git tag` を使う

正答: A
解説: インタラクティブリベースで過去コミットを `edit` し、新しい修正を反映することができます。公開履歴の修正は注意と協調が必要です。

60) [中級][a]
問題: あるコマンドのショートカット `git switch` の使い方で正しいものはどれ？
A. `git switch -c newbranch` で新しいブランチを作って切り替えられる ← 正解
B. `git switch -b newbranch` は存在しない
C. `git switch` は `merge` の alias
D. `git switch` はリモートを更新する

正答: A
解説: `git switch -c` は新しいブランチの作成と切替を同時に行います。`git checkout` の用途を分離するために導入されました。

--（ここまでで60問）続きます。

61) [初級][a]
問題: 直近のコミットだけを取り消して、変更内容はそのまま作業ツリーに残したい。どのコマンドが適当ですか？
A. `git reset --soft HEAD~1` ← 正解
B. `git reset --hard HEAD~1`
C. `git revert HEAD`
D. `git checkout HEAD~1 -- .`

正答: A
解説: `--soft` は HEAD を移動するだけで、変更はステージ状態で残ります。`--hard` は作業ツリーも巻き戻します。

62) [中級][d]
問題: 誤って push したコミットを取り消したいが、履歴の整合性を保ちたい。どうするのが安全ですか？
A. `git revert <commit>` ← 正解（安全な方法）
B. `git reset --hard` と `git push -f`
C. `git delete` コマンドを使う
D. `git rebase --abort`

正答: A
解説: `git revert` は元に戻すための新しいコミットを作るため、公開リポジトリでも安全に使えます。`reset --hard` と強制 push は協調が必要です。

63) [中級][c]
問題: リモートのブランチをローカルに追跡ブランチとして作成する便利なコマンドは？
A. `git checkout -b feature origin/feature` ← 正解
B. `git branch feature origin/feature`
C. `git clone --branch feature`
D. `git pull origin feature`

正答: A
解説: `checkout -b` でリモートブランチを参照して作成すると追跡設定も行いやすいです。`git switch -c` の使い方もあります。

64) [初級][a]
問題: `git tag` による軽量タグと注釈付きタグの違いは何ですか？
A. 注釈付きタグはメッセージや署名を付けられる（`-a`） ← 正解
B. 軽量タグは署名付きのみ
C. 注釈タグは push できない
D. 違いはない

正答: A
解説: 注釈付きタグはメッセージや GPG 署名を付けられ、履歴情報として残ります。軽量タグは単に名前を指すだけです。

65) [中級][e]
問題: Git LFS を使っているリポジトリをクローンしたとき、大きなファイルが正しくチェックアウトされない場合、まず確認すべきことは？
A. Git LFS がインストールされているかを確認する ← 正解
B. .gitignore にファイルが入っていないか
C. リモートが存在するか
D. `git config` をresetする

正答: A
解説: LFS オブジェクトはクライアント側の LFS 実装が必要です。インストールされていないとポインタのみが取得されます。

66) [初級][a]
問題: `git restore` コマンドの用途として正しいものはどれ？
A. ファイルを過去の状態に戻す（作業ツリー/ステージの復元） ← 正解
B. ブランチを削除する
C. コミットメッセージを変更する
D. リモートを追加する

正答: A
解説: `git restore` はファイルの内容を HEAD や特定コミットに戻すためのコマンドで、新しい操作に集中したコマンドです。

67) [初級][b]
問題: あるブランチをベースに別のブランチを作りたい。最も簡単なコマンドは？
A. `git checkout -b newbranch basebranch` ← 正解
B. `git branch newbranch basebranch` は存在しない
C. `git new newbranch basebranch`
D. `git clone basebranch newbranch`

正答: A
解説: `checkout -b` は基点を指定して新しいブランチを作り出すことができます。`git switch -c newbranch basebranch` も同様です。

68) [中級][d]
問題: `git reflog` の主な用途は何ですか？
A. リモートの履歴を確認する
B. ローカルで移動した HEAD の履歴を追跡し、誤った reset などから復元できる ← 正解
C. リポジトリのサイズを確認する
D. ファイルの履歴を表示する

正答: B
解説: reflog はローカルの HEAD やブランチの移動履歴を記録し、失われた参照から復元する際に役立ちます。

69) [初級][a]
問題: `git init` したてのリポジトリに最初のコミットを作る典型的な手順は？
A. `git add .` → `git commit -m "Initial commit"` ← 正解
B. `git commit -m "Initial"` だけ
C. `git push origin main` だけ
D. `.gitignore` を編集するだけ

正答: A
解説: まずファイルをステージしてからコミットを作成するのが基本です。初期状態で README を作成することも多いです。

70) [中級][c]
問題: リモートの特定ブランチをローカルに強制的に上書きしたいとき（注意しながら使う）、どのコマンドを使う？
A. `git push --force origin branch` ← 正解（注意が必要）
B. `git push origin branch --overwrite`
C. `git update origin branch`
D. `git push origin branch --safe`

正答: A
解説: `--force` はリモートの履歴を上書きするため協調が必要。`--force-with-lease` が安全な選択肢です。

71) [中級][d]
問題: `git stash` はスタッシュした内容を消すことなく一覧表示しつつ、最初のエントリを取り出すにはどうする？
A. `git stash list` と `git stash apply`（最初のスタッシュを適用） ← 正解
B. `git stash show`
C. `git stash pop` は一覧を表示する
D. `git stash first` は存在しない

正答: A
解説: `git stash list` で一覧確認し、`git stash apply` で指定のスタッシュを適用（`pop` は適用と同時に削除）。

72) [初級][a]
問題: あるファイルを最後のコミット時点の状態に戻したい（未ステージの変更だけを破棄）。どのコマンドが適切ですか？
A. `git checkout -- file.txt` ← 正解（古い形式）
B. `git restore --staged file.txt`
C. `git reset --hard file.txt`
D. `git delete file.txt`

正答: A
解説: 古い方法では `git checkout -- file` が使われますが、新しい Git では `git restore file` が推奨されています。

73) [中級][b]
問題: 共同で開発しているときに、remote の main に既にマージされた特定のコミットだけを自分のブランチに持ってきたい。どの方法が最も直接的ですか？
A. `git cherry-pick <commit>` ← 正解
B. `git merge <commit>`
C. `git rebase main` だけ
D. `git pull` だけ

正答: A
解説: 特定コミットを選んで取り込むのに cherry-pick が便利です。マージやリベースだと範囲が広くなる可能性があります。

74) [上級][e]
問題: サブモジュールを更新して最新に保つ時の手順として適切なのは？
A. `git submodule update --init --recursive` ← 正解（初期化と更新を行う）
B. `git pull submodule`
C. `git update submodule`
D. `git clone --submodule`（既に存在する場合は使わない）

正答: A
解説: サブモジュールは初期化と更新が必要です。サブモジュール自体の `git pull` を個別に行うこともあります。

75) [中級][d]
問題: 変更を行ったが、一部のファイルだけをコミット対象から外したい（ステージ済みのものを除外）。どのコマンドを使う？
A. `git reset <file>` ← 正解（ステージから外す）
B. `git rm --cached <file>`
C. `git checkout -- <file>`
D. `git restore --staged <file>`

正答: A (または D も近年の推奨)
解説: `git reset <file>` でステージから外し、`git restore --staged` も最近のコマンドとして同等の動作をします。

76) [中級][b]
問題: ある機能を別のブランチに移すため、一連のコミットを1つにまとめたい。推奨される手法は？
A. `git rebase -i` で `squash` を使う ← 正解
B. `git merge --squash` はできない
C. `git reset --hard` を使う
D. `git cherry-pick` を使えば自動的にまとめられる

正答: A
解説: インタラクティブリベースで複数コミットを1つに統合（squash）できます。`merge --squash` も別方法として存在しますがブランチ操作の文脈で注意。

77) [初級][a]
問題: ローカルで設定した Git 設定（ユーザ名やメール）をリポジトリ単位で設定したい場合、どのコマンドを使いますか？
A. `git config user.name "Name"` ← 正解（リポジトリローカル）
B. `git config --global user.name "Name"`（これはグローバル）
C. `git set user name "Name"`
D. `git init user.name "Name"`

正答: A
解説: `git config` でリポジトリ単位の設定を行えます。`--global` を付けると全体設定になります。

78) [中級][c]
問題: リモートに置かれたタグをローカルに取り込みたい。適切なコマンドは？
A. `git fetch --tags` ← 正解
B. `git pull --tags`
C. `git tag --import`
D. `git clone --tags`

正答: A
解説: `git fetch --tags` でリモートのタグを取得できます。`git pull` ではタグが自動的に取れないことがあるため注意。

79) [中級][d]
問題: コミット履歴の特定範囲だけを別のリポジトリに移植（export）したい。適切な方法は？
A. `git format-patch` でパッチを作成し、相手側で `git am` で適用 ← 正解
B. `git clone --subset`
C. `git export --range`
D. `git send-commit`

正答: A
解説: `format-patch` は一連のコミットをパッチファイルに変換し、`git am` で適用できます。履歴移植の場面でよく使われます。

80) [上級][d]
問題: 大量のブランチやタグを整理するため、スクリプトから Git コマンドを呼び出したい。外部コマンド実行時の注意点として適当でないものは？
A. 出力をパースするときは `--porcelain` や `--format` を使う ← 正解（注意点: これは適切な方法）
B. `git` コマンドの実行結果を直接信頼して即座に削除操作を行う（危険）
C. リモート操作の前に常に `fetch` を行う
D. スクリプト実行前に安全のため `dry-run` 相当の確認を行う

正答: B（危険な行為なので避けるべき）
解説: 自動化では安全対策（dry-run, 確認、正確な出力フォーマットの使用）が重要です。`--porcelain` はスクリプト向けの安定した出力を提供します。

--（ここまでで80問）続きます。

81) [初級][a]
問題: コミットを作るときに、すべての変更を自動でステージしてコミットするコマンドは？
A. `git commit -a -m "msg"` ← 正解
B. `git commit --all -m "msg"`
C. `git commit -s -m "msg"`
D. `git commit -m "msg" --stage`

正答: A
解説: `-a` オプションは追跡済ファイルの変更を自動でステージしてコミットします。新規ファイルは別途 `git add` が必要です。

82) [中級][b]
問題: ブランチを切り替えたいが作業ツリーに未コミットの変更があり、衝突を避けたい。どのコマンドを使うと良い？
A. `git stash` → `git switch <branch>` → `git stash pop` ← 正解
B. `git checkout -f <branch>`
C. `git reset --hard` してから切り替える
D. 強制的に `git switch` する

正答: A
解説: 変更を stash に避難させてから切り替え、必要に応じて戻すのが安全です。

83) [初級][a]
問題: リポジトリ内で変更されたファイルの一覧を簡潔に見たいときに使う `porcelain` オプションはどのコマンドと組み合わせますか？
A. `git status --porcelain` ← 正解
B. `git diff --porcelain`
C. `git log --porcelain`
D. `git show --porcelain`

正答: A
解説: `--porcelain` は機械可読な出力を提供し、スクリプトでの処理に向いています。

84) [中級][d]
問題: `git rebase -i` でコミットを `pick` から `squash` に変更した場合の結果として期待されるものは？
A. コミットが分割される
B. 複数のコミットが1つにまとめられる ← 正解
C. コミットが消える
D. ブランチが削除される

正答: B
解説: `squash` はそのコミットを前のコミットに統合し、履歴をまとめます。詳細なメッセージ編集も可能です。

85) [中級][c]
問題: リモートの削除されたブランチをローカルのリストから削除するにはどのコマンドが便利？
A. `git fetch --prune` ← 正解
B. `git fetch --all --clean`
C. `git remote prune origin` は使わない
D. `git gc --prune`

正答: A (または `git remote prune origin` も可)
解説: `--prune` を付けるとリモートで削除されたブランチ参照もローカルから削除します。`remote prune` で個別に実行することも可能です。

86) [初級][a]
問題: コミットメッセージの標準フォーマットで第一行は何を表すのが一般的ですか？
A. 詳細な説明
B. 要約（短い1行タイトル） ← 正解
C. 署名者情報
D. 差分の一覧

正答: B
解説: 1行目は要約、空行を挟んで2行目以降に詳細を書くのが一般的な慣例です。

87) [中級][e]
問題: Git のクレデンシャル管理で安全にトークンを保存する方法として適切なのは？
A. OS のキーリング（credential helper）を使う ← 正解
B. トークンをリポジトリに直接書き込む
C. パスワードを `~/.git-credentials` に平文で保存する
D. 環境変数にトークンを直接書き込む（常用は避ける）

正答: A
解説: OS のセキュアストレージ（Windows Credential Manager, macOS Keychain, Linux の Secret Service）を使うのが安全です。

88) [中級][d]
問題: `git commit --fixup=<commit>` と `git rebase -i --autosquash` を組み合わせる利点は？
A. 修正コミットを自動で対象コミットに統合でき、手作業を減らせる ← 正解
B. コミットを削除してしまう
C. リモートと自動同期する
D. 監査ログを作る

正答: A
解説: `--fixup` で修正用コミットを作り、`--autosquash` でリベース時に自動配置して squash できます。

89) [初級][a]
問題: Git の設定で `alias` を作れば、頻繁に使うコマンドを短縮できます。`git co` を `checkout` のエイリアスにしたいときの設定は？
A. `git config --global alias.co checkout` ← 正解
B. `git alias co checkout`
C. `git set alias.co checkout`
D. `git config alias.co = checkout`

正答: A
解説: `git config --global` で alias を追加すると `git co` のように短縮できます。

90) [中級][b]
問題: リモートの変更をローカルに取り込みたいが、ローカルのコミットを保護しつつ最新のリモートを取り込みたい（マージコミットは気にしない）。どのコマンドが自然か？
A. `git fetch` → `git merge origin/main` ← 正解
B. `git rebase origin/main` だけ
C. `git reset --hard origin/main`
D. `git pull --rebase` だけ

正答: A
解説: `fetch` の後 `merge` するとマージコミットが作られローカルのコミットは保たれます。`pull` はこれを一度に行います。

91) [中級][d]
問題: 誤ってコミットした内容の一部だけを取り消したい場合、どのコマンドが便利ですか？
A. `git restore --staged` と `git restore` を使い分ける ← 正解
B. `git revert` を使う（ただしコミット全体）
C. `git reset --hard` を使う
D. `git rm` だけで戻せる

正答: A
解説: 個々のファイルや行を選んでステージ/アンステージし、必要な部分だけをコミットできます。`git add -p` も有用です。

92) [上級][d]
問題: `git rebase -i` 中にコンフリクトが発生した場合、正しい解決手順は？
A. コンフリクトを解決 → `git add` で修正をステージ → `git rebase --continue` ← 正解
B. `git rebase --abort` する以外に手段はない
C. そのまま `git commit` を実行する
D. `git push` して強制的に解決する

正答: A
解説: リベース中はコンフリクトを直してステージし、`--continue` でプロセスを継続するのが正攻法です。

93) [初級][a]
問題: 「最近のコミット10件を簡潔に一覧で表示する」コマンドとして正しいのは？
A. `git log -10 --oneline` ← 正解
B. `git log -n 10 --detailed`
C. `git tail 10`
D. `git list --last 10`

正答: A
解説: `-n 10` または `-10` と `--oneline` の組み合わせで簡潔に表示できます。

94) [中級][c]
問題: 非常に大きな履歴のリポジトリで、Tracker の速度を向上させるために shallow clone（浅いクローン）を作るコマンドは？
A. `git clone --depth 1 <url>` ← 正解
B. `git clone --shallow <url>`
C. `git clone --lite <url>`
D. `git clone --no-history <url>`

正答: A
解説: `--depth` で指定した深さまでの履歴だけを取得し、クローンの時間やディスクを節約できます。

95) [中級][e]
問題: リポジトリを移行する際に、コミットの作者名を一括で置換したい。どのツールが便利か？
A. `git filter-repo --replace-text` や `git filter-branch --env-filter` を使う ← 正解
B. `git replace-author`
C. `git rename-author`
D. `git rebase --replace-author`

正答: A
解説: `filter-repo` や `filter-branch` の env-filter を用いて歴史中の作者情報を置換できます。`filter-repo` の方が高速で推奨されます。

96) [中級][d]
問題: あるファイルの 3 行目から 10 行目までを過去のバージョンに戻したい。手軽な方法は？
A. `git checkout <commit> -- file` でファイル全体を戻し、差分を抽出して必要な行だけコミットする ← 正解
B. `git revert` を使う
C. `git reset` を行う
D. `git patch --apply` を使う

正答: A
解説: 特定行だけ復元するには、過去のファイルを取得して差分から該当範囲を抽出して適用するのが現実的です。`git add -p` で部分選択できます。

97) [初級][a]
問題: 既に push 済みのタグ `v1.0` を公開リポジトリから削除したい。どのコマンドを使う？
A. `git push origin --delete tag v1.0`（もしくは `git push origin :refs/tags/v1.0`） ← 正解
B. `git tag -d v1.0` のみ
C. `git remove tag v1.0`
D. `git delete tag v1.0`

正答: A
解説: タグはローカルで削除してもリモートに残るため、リモート側の削除コマンドを実行する必要があります。

98) [中級][b]
問題: `git log` の出力結果から特定のファイルに関する変更だけを抽出するには？
A. `git log -- <file>` ← 正解
B. `git log -p <file>`
C. `git show <file>`
D. どれも適さない

正答: A（`-p` を付けると差分も表示できる）
解説: ファイルを指定して履歴を絞れます。`-p` や `--stat` を併用すると更に情報が得られます。

99) [上級][d]
問題: 大人数での開発で `merge` の履歴が煩雑になってきた。今後の運用として履歴を綺麗に保つための方針で適切なのは？
A. リベース戦略（feature ブランチは rebase、main は fast-forward に保つ方針）を採用する ← 正解
B. 強制的に `merge --no-ff` を常に使う
C. コミットを全て `squash` してから push する
D. ブランチ運用をやめる

正答: A
解説: 運用ポリシー（rebase と fast-forward による直線化など）を明確にし、CI と連携してレビュープロセスを整えると履歴を見やすく保てます。

100) [初級][a]
問題: リポジトリの URL を変更したい（リモート origin の URL を新しいものに更新）。どのコマンドを使う？
A. `git remote set-url origin <new_url>` ← 正解
B. `git remote update origin <new_url>`
C. `git config remote.origin.url <new_url>`
D. `git remote change origin <new_url>`

正答: A
解説: `git remote set-url` でリモートの URL を更新できます。`git config` を直接編集しても同様の変更が可能ですが、`set-url` が明確です。

--（ここまでで100問）続きます。

101) [中級][e]
問題: 複数のリモート（例: origin と upstream）を利用する際、`origin` に push しつつ `upstream` から変更を取り込みたい。一般的な手順は？
A. `git fetch upstream` → `git merge upstream/main` → `git push origin` ← 正解
B. `git pull origin upstream`
C. `git fetch origin upstream`
D. `git push upstream origin`

正答: A
解説: `upstream` からフェッチしてマージし、自分のリポジトリ（origin）に push するのが一般的なワークフローです。

102) [初級][a]
問題: `git show` コマンドで何が確認できるか？
A. 指定コミットの差分やメタデータ（コミッター、メッセージ）を確認できる ← 正解
B. リモートの URL を表示する
C. すべてのブランチを表示する
D. コミットを削除する

正答: A
解説: `git show <commit>` でコミット情報や差分を確認できます。オブジェクト指定によりブロブやタグの内容も表示できます。

103) [中級][d]
問題: `git blame` の出力からその行を修正した人とコミットIDを知りたい。出力を簡単に取得するには？
A. `git blame -L <start>,<end> -- <file>` ← 正解（範囲指定）
B. `git blame --author <name>`
C. `git show blame <file>`
D. `git log --blame`

正答: A
解説: `-L` で範囲指定し、関心のある行に限定して詳細を取得できます。

104) [中級][b]
問題: `git merge --no-ff` を使うメリットは何か？
A. マージコミットを作成して、マージの履歴を明確に残せる ← 正解
B. マージを自動でスキップする
C. 常に fast-forward する
D. リモートを自動更新する

正答: A
解説: `--no-ff` は fast-forward できる場合でもマージコミットを作り、機能のまとまりを追跡しやすくします。

105) [中級][e]
問題: 大規模なコミット（例: 500MB）を誤って push してしまった。まず初めに行うべきアクションは？
A. 直ちにリモートの管理者に連絡し、リポジトリのメンテナンス（履歴書き換えなど）について協議する ← 正解
B. 何もせず放置する
C. 強制 push して上書きする
D. `git rm` してコミットする

正答: A
解説: 公開リポジトリに大きな誤りがある場合は早急に関係者と調整し、`filter-repo` 等で履歴をクリーンにする必要があります。

106) [初級][a]
問題: 変更内容を簡易に説明するコミットメッセージの良い書き方として適切なのは？
A. 50文字以内の簡潔なタイトル + 空行 + 詳細（必要に応じて） ← 正解
B. 長い一行のタイトルのみ
C. メッセージを省略する
D. コミットIDだけを書く

正答: A
解説: タイトルは簡潔に、必要なら本文に理由や影響などを記述すると後で読みやすくなります。

107) [中級][d]
問題: `git bisect` を使って問題の導入コミットを特定する際、自動テストがある場合どのように活用できますか？
A. 自動テストスクリプトを `git bisect run <test-script>` で実行し、バイナリ探索を自動化できる ← 正解
B. 手動で `git bisect good`/`bad` を毎回入力するしかない
C. `git bisect` は自動テストをサポートしない
D. `git bisect` は GUI のみ対応

正答: A
解説: `git bisect run` にテストコマンドを渡すと、自動的に二分探索が進み、問題のコミットを特定します。

108) [中級][c]
問題: `git fetch` と `git pull` の安全性の違いとして、どちらが作業ツリーに影響を与えにくいか？
A. `git pull` の方が影響を与えにくい
B. `git fetch` の方が影響を与えにくい ← 正解
C. 両者同じ
D. どちらも作業ツリーに必ず影響を与える

正答: B
解説: `fetch` はローカルのリモート参照を更新するだけで作業ツリーは変更しないため、安全性が高いです。

109) [初級][a]
問題: ファイルの一部だけを区切ってステージしたい。インタラクティブに選択できるコマンドはどれ？
A. `git add -p` ← 正解
B. `git add --interactive` は存在しない
C. `git commit -p`
D. `git diff --select`

正答: A
解説: `git add -p` で変更を hunk ごとに選択してステージできます。使い勝手が良く細かい制御に便利です。

110) [中級][b]
問題: リモートに新しいブランチを push したが、他の人がそのブランチをローカルで追跡したい場合、彼らは何をすればよい？
A. `git fetch` → `git checkout -b branch origin/branch` または `git switch branch` ← 正解
B. `git clone` を再実行する
C. `git pull origin branch` のみで追跡ブランチが作成される
D. `git branch --track` は自動で行われない

正答: A
解説: `fetch` 後にリモートブランチを基点にローカルブランチを作るのが一般的です。`git switch` は便利です。

111) [中級][e]
問題: GitHub のリポジトリで Squash and Merge を使う利点は？
A. 複数コミットを1つにまとめて main に反映し、履歴を簡潔に保てる ← 正解
B. 履歴を完全に消す
C. PR を自動的に破棄する
D. コードの品質を自動で保証する

正答: A
解説: PR のコミットを1つにまとめて main に取り込むオプションで、履歴を読みやすく保てます。ただしコミット粒度はチーム方針次第です。

112) [初級][a]
問題: `git blame` で表示される情報に含まれないものは？
A. 各行の最新のコミットID
B. 行を最後に変更した作者
C. 各コミットの詳細メッセージ（全て） ← 正解（簡潔な情報のみ）
D. ファイルの各行の内容

正答: C
解説: `git blame` は行ごとのコミットIDや著者、日時を示しますが、完全なコミットメッセージ全体を表示するわけではありません。

113) [中級][d]
問題: `git log --graph --oneline --all` の利点は何か？
A. ブランチやマージの履歴を視覚的に把握しやすい ← 正解
B. ファイルの変更行数を表示する
C. リポジトリのサイズを表示する
D. 変更を自動でマージする

正答: A
解説: `--graph` は履歴の分岐・統合を ASCII グラフで表示し、`--oneline` と `--all` で簡潔に全ての参照を表示します。

114) [中級][b]
問題: `git push --set-upstream origin feature` を行うとその後にどのような利点が生じますか？
A. `git push` や `git pull` を引数なしで実行しても feature に対応するようになる ← 正解
B. 自動的に CI が実行される
C. リモートは自動的に削除される
D. ローカルのブランチは削除される

正答: A
解説: upstream を設定すると `git pull`/`git push` のデフォルト対象が設定されるため作業が楽になります。

115) [中級][e]
問題: `pre-commit` フレームワークを使う利点として適切でないものは？
A. コミット前に lint やテストを自動実行して品質を担保できる
B. チーム全員で共通のフック設定を共有しやすくなる
C. コミットのたびに CI を実行する代替として完全に置き換えられる ← 正解（CI の役割を完全に置き換えるわけではない）
D. フックで自動整形を行える

正答: C
解説: pre-commit はローカル品質向上に有用ですが、CI による統合テストや環境差異の検出を完全に代わりにはできません。

116) [中級][d]
問題: 既に push 済みのコミットの作者を訂正する必要がある。協調的に行う手順の第一歩は？
A. チームに通知してから履歴を書き換える（`git filter-repo` など） ← 正解
B. ただちに `git rebase -i` して `git push -f`
C. 何もせず放置
D. `git revert` で元に戻す

正答: A
解説: 公開済み履歴を修正する際は関係者に通知し、必要なら `filter-repo` 等で一括置換して強制 push の運用で対応します。

117) [初級][a]
問題: `git status -s`（短縮表示）は出力の行頭に何を表示しますか？
A. 変更の状態（ステージ/作業ツリー）を2文字で示す（例: ` M` や `A `） ← 正解
B. ファイルサイズ
C. コミットメッセージ
D. ブランチ名

正答: A
解説: `-s` または `--short` は簡潔な変更状態を返すためスクリプトでの処理に便利です。

118) [中級][b]
問題: `git stash` に名前（メッセージ）を付けて複数管理する方法は？
A. `git stash save "message"`（古い形式）または `git stash push -m "message"` ← 正解
B. `git stash push --name message`
C. `git stash add message`
D. `git stash -n message`

正答: A
解説: `push -m` でメッセージ付きでスタッシュでき、一覧で識別しやすくなります。

119) [中級][e]
問題: プロジェクトで `git` を用いた自動コード整形を導入する場合の一般的な戦略は？
A. pre-commit フックでフォーマッタを実行し、CI で整形チェックを行う ← 正解
B. 各開発者に任せるだけにする
C. プッシュ後に整形してコミットを修正する
D. 全自動で整形して push を破棄する

正答: A
解説: ローカルの pre-commit と CI の二段構えで整形を強制し、差分発生を防ぎます。

120) [中級][d]
問題: 特定のコミット範囲を別のリポジトリに適用したいが、コミットIDが衝突する恐れがある。安全な方法は？
A. `git format-patch` でパッチ化し、相手リポジトリで `git am` して適用する（ID 衝突を避けられる） ← 正解
B. 単に `git push` する
C. `git merge` を使う
D. `git replace` を使う

正答: A
解説: パッチとして送ると送信先で新たなコミットが作られ、ID 衝突の心配が少なく移植できます。

--（ここまでで120問）続きます。

121) [初級][a]
問題: リモートの全ブランチを取得してローカルに反映したい。基本的なコマンドは？
A. `git fetch --all` ← 正解
B. `git pull --all`
C. `git clone --all`
D. `git get --all`

正答: A
解説: `git fetch --all` は全リモートの参照を取得します。その後必要なブランチをチェックアウトします。

122) [中級][d]
問題: `git bisect` の操作で `good` と `bad` を繰り返していくとき、最終的に特定されるものは何？
A. バグの原因となったコミット ← 正解
B. バグを修正する方法
C. バグに関係ないファイル
D. 影響のあるブランチ

正答: A
解説: 二分探索で「良い」/「悪い」を判定していくことで原因のコミットを絞り込みます。

123) [中級][c]
問題: `git pull` がマージコミットを作るかリベースを行うかの挙動はどう制御できますか？
A. `git pull --rebase` を使うか `git config pull.rebase true` を設定する ← 正解
B. `git pull --no-merge` を使う
C. `git rebase` は `pull` と無関係
D. `git pull` は常に rebase する

正答: A
解説: `pull.rebase` の設定やオプションで `pull` の挙動を変えられます。

124) [初級][a]
問題: `git show` でファイルの特定コミット時点の内容だけを表示するコマンドはどれ？
A. `git show <commit>:<path>` ← 正解
B. `git show <path>@<commit>`
C. `git show path:commit`
D. `git show --file <commit> <path>`

正答: A
解説: `git show <commit>:<path>` でそのコミット時点のファイル内容を表示できます。

125) [中級][b]
問題: Fork して上流（upstream）を追跡しながら自分の fork（origin）へ反映する一般的なワークフローは？
A. `git remote add upstream <url>` → `git fetch upstream` → `git merge upstream/main` → `git push origin main` ← 正解
B. `git pull upstream origin`
C. `git clone --fork upstream`
D. `git rebase --mirror upstream`

正答: A
解説: upstream を追加して定期的に取り込み、自分の fork に push します。`rebase` を利用する運用もあります。

126) [上級][d]
問題: リポジトリの大きさを削減するため、不要なオブジェクトを完全に消すワークフローで適切なのは？
A. `git filter-repo` で削除対象を指定 → 強制 push を行い、リモートでガーベジコレクションを要求する ← 正解
B. 単純に `git gc` をローカルで実行するだけでリモートも小さくなる
C. リポジトリをzipで圧縮する
D. `git prune` だけで完全に消える

正答: A
解説: 履歴を書き換える必要があるため、関係者と調整して `filter-repo` 等で履歴を改変し、その後強制 push を行います。リモート側でも GC や管理者の操作が必要なことがあります。

127) [中級][e]
問題: GitHub 上の PR をマージする際に「Squash and merge」ではなく「Rebase and merge」を選ぶとどうなるか？
A. PR のコミットをそれぞれ単純に main の先端にリプレイする（コミットはそのまま残る） ← 正解
B. すべてのコミットを1つにまとめる
C. マージコミットを作る
D. PR がクローズされない

正答: A
解説: Rebase and merge は PR の各コミットを main に順に適用し、履歴を維持しつつ直線化されます。

128) [初級][a]
問題: ローカルの設定でエディタを `vim` に設定するにはどのコマンドを使いますか？
A. `git config --global core.editor "vim"` ← 正解
B. `git set editor vim`
C. `git editor set vim`
D. `git config --edit vim`

正答: A
解説: `git config` で `core.editor` を設定するとコミット時に使われるエディタが変わります。

129) [中級][d]
問題: 特定ディレクトリ配下をまるごと削除したいが、過去の履歴にも残したくない。必要な手順は？
A. ファイルを削除後に `git filter-repo --invert-paths --paths <dir>` で履歴から除去 ← 正解
B. `git rm -r <dir>` → `git commit` だけで OK
C. ディレクトリを消して push するだけで履歴も消える
D. `git reset` を行う

正答: A
解説: 履歴から完全に除去するには `filter-repo` などで過去のコミットからも消す必要があります。

130) [中級][b]
問題: `git merge --ff-only` の効果は何ですか？
A. fast-forward が可能な場合のみマージを行い、そうでなければ失敗する ← 正解
B. 強制的にマージを実行する
C. マージコミットを必ず作る
D. リモートを更新する

正答: A
解説: `--ff-only` は履歴を汚さないために fast-forward のみを許可し、不可能な場合は失敗してユーザーに明示します。

131) [中級][e]
問題: リポジトリの一部だけを別リポジトリに分割（subtree split）したい。適切なコマンドは？
A. `git subtree split -P <subdir> -b <new-branch>` ← 正解
B. `git clone --subdir <subdir>`
C. `git split <subdir>`
D. `git export <subdir>`

正答: A
解説: `git subtree split` でサブディレクトリの履歴を単独のブランチとして切り出すことができます。これを新しいリポジトリに push すれば分割可能です。

132) [中級][d]
問題: あるブランチで複数の修正を行ったが、PR を一つのコミットとして送りたい。ステップとして最も適切なのは？
A. `git rebase -i` で `squash` してコミットを一つにまとめる ← 正解
B. `git merge --no-ff` を使う
C. `git commit --amend` を複数回使う
D. `git push` のみでまとめられる

正答: A
解説: インタラクティブリベースでコミットを1つにまとめると、PR の単位を整理できます。

133) [初級][a]
問題: リポジトリのルートに README.md を追加し、それを最初のコミットに含める典型的なコマンドは？
A. `echo "# Project" > README.md` → `git add README.md` → `git commit -m "Add README"` ← 正解
B. `git init` のみ
C. `git add initial README.md` と書くだけでOK
D. `git create README.md`

正答: A
解説: ファイル作成 → ステージ → コミットが基本的な流れです。

134) [中級][c]
問題: `git rm --cached file` を実行したあとに `.gitignore` にそのファイルを追加したい。次に行うべき操作は？
A. `git commit -m "remove from tracking"` ← 正解
B. 何もしなくてよい
C. `git push --delete` を実行する
D. `git add --all` を実行する

正答: A
解説: `--cached` でインデックスから除外したら、その変更をコミットし `.gitignore` を追加して再度コミットします。

135) [上級][d]
問題: 共同開発で誤って強制 push（`--force`）を行って履歴を破壊してしまった。最優先でやるべきことは？
A. 影響範囲を特定し、関係者に通知して作業を一時停止させ、リポジトリの以前の状態を `reflog` で復元するなどの対策を協議する ← 正解
B. 何もせず続行する
C. さらに上書きして修正する
D. 新しいリポジトリを作る

正答: A
解説: 公開履歴の損傷は重大なので速やかにチームに通知し、復元のための手順を協議します。

136) [中級][e]
問題: GitHub Actions で PR のマージ前に lint を自動化したい。どの手順が必要？
A. `.github/workflows/ci.yml` に lint ジョブを定義し、`pull_request` トリガを設定する ← 正解
B. ローカルで `git lint` を呼べば CI は不要
C. `git config` に lint を登録する
D. リモートを手動で監視する

正答: A
解説: CI 設定ファイルで pull_request をトリガにして lint を実行し、問題があればチェックを失敗させると効率的です。

137) [初級][a]
問題: `git diff` で最後にコミットした状態と作業ツリーの差分を確認したい。基本的なコマンドは？
A. `git diff` ← 正解（作業ツリーとインデックスの差）
B. `git diff --staged`
C. `git log -p`
D. `git status`

正答: A
解説: `git diff` は作業ツリーの未ステージ変更を表示します。ステージ済みの差は `--staged` を使います。

138) [中級][b]
問題: あるブランチで作業中、間違ってコミットメッセージに機密情報を含めてしまった。直後にできる最優先の対処は？
A. まず該当情報を各所（リモート/履歴/PR）から確実に削除するためにチームに通知し、必要な履歴書き換えの手順を協議する（`filter-repo` など） ← 正解
B. `git revert` するだけで OK
C. 何もせず放置する
D. `git delete` を使う

正答: A
解説: 機密情報は速やかに除去する必要があり、履歴書き換えや関係者への通知が必要です。

139) [中級][d]
問題: `git reset --soft` と `git reset --mixed`（デフォルト）の違いは何ですか？
A. `--soft` は HEAD を移動するだけでインデックスも作業ツリーもそのまま、`--mixed` はインデックスをリセットするが作業ツリーは残る ← 正解
B. `--soft` は作業ツリーもリセットする
C. `--mixed` は履歴を削除する
D. どちらも同じ

正答: A
解説: `--soft` はコミットだけを戻すのに使い、`--mixed` はステージングを解除するタイプのリセットです。

140) [初級][a]
問題: リモートに push する前に自分のブランチがどのリモートブランチへ対応しているか確認するコマンドは？
A. `git branch -vv` ← 正解
B. `git remote -v`
C. `git status --branch`
D. `git show-branch`

正答: A
解説: `-vv` でローカルブランチの追跡設定（upstream）や遅延/進捗が確認できます。

--（ここまでで140問）続きます。

141) [中級][e]
問題: 他人のブランチをローカルに持ち込み、そこで作業した結果を別の新しい PR として出したい。推奨される手順は？
A. `git fetch origin` → `git checkout -b my-work origin/their-branch` → 修正 → `git push origin my-work` → PR 作成 ← 正解
B. 直接 their-branch で push する
C. `git clone` をし直す
D. `git pull origin their-branch` のみで完了

正答: A
解説: 他人のブランチを基点に新しいブランチを作り、自分の修正を push して PR を作成するのが安全です。

142) [初級][a]
問題: コミットハッシュの短縮版（例: 7文字）で参照する方法の利点は？
A. 可読性が高く、一般的に一意に識別できる ← 正解
B. すべてのコミットで同じになる
C. セキュリティが強くなる
D. リポジトリを圧縮する

正答: A
解説: フルハッシュは長いので短縮して使うのが一般的ですが、リポジトリ内で一意性が保たれない場合は注意が必要です。

143) [中級][d]
問題: `git rev-parse --abbrev-ref HEAD` は何を返しますか？
A. 現在のブランチ名 ← 正解
B. 最新のコミットID
C. リモートの URL
D. Git のバージョン

正答: A
解説: スクリプト内で現在のブランチ名を取得するのに便利なコマンドです。

144) [中級][c]
問題: リモートの変更を強制的にローカルに反映するが、ローカルの未コミット変更は破棄してよい場合、どのコマンドが適切か？
A. `git fetch origin` → `git reset --hard origin/main` ← 正解（注意が必要）
B. `git pull --rebase`
C. `git merge --force`
D. `git fetch --force`

正答: A
解説: `reset --hard` は作業ツリーとインデックスを指定状態に戻すため、未コミット変更は消えます。使用は注意。

145) [初級][a]
問題: Git のコミットオブジェクトはどの情報を含みますか？
A. ツリー（ファイルのスナップショット）、親コミット、メッセージ、メタデータ（作者・日付） ← 正解
B. だけコミットメッセージ
C. だけ差分
D. ただの ID

正答: A
解説: Git のコミットはスナップショット指向で、ツリーとメタ情報を含んでいます。

146) [中級][d]
問題: `git reflog` を使った際に HEAD の以前の状態に戻したい、適切な手順は？
A. `git reflog` で該当のエントリを見つけ、`git reset --hard <sha>` で戻る ← 正解（注意）
B. `git checkout <sha>` のみで戻れる
C. `git revert` を使う
D. `git clone` をやり直す

正答: A
解説: reflog はローカルの参照操作履歴を表示し、そこから復元できます。履歴書き換えのリスクに注意します。

147) [中級][e]
問題: リポジトリのコミットメッセージに JIRA チケット番号などを自動で付与するにはどうするのが良いか？
A. pre-commit (または server-side hook) でメッセージを検査・付与するスクリプトを導入 ← 正解
B. 開発者に手動で入力させるしかない
C. コミット後にまとめて付与する
D. タグを使って管理する

正答: A
解説: フックを使って一貫性を自動化し、PR テンプレートや CI と組合わせると効果的です。

148) [中級][b]
問題: `git log --author="Name"` は何を表示しますか？
A. 指定した著者によるコミット一覧 ← 正解
B. 指定著者のファイル一覧
C. 著者の最新コミットのみ
D. 何も表示しない

正答: A
解説: `--author` で指定したパターンを含むコミットのみ抽出して表示します。

149) [初級][a]
問題: あるブランチを別のリモートへ push するとき、明示的にリモート名とブランチ名を指定するコマンドは？
A. `git push origin feature:feature` または `git push origin feature` ← 正解
B. `git push feature origin`
C. `git push --all feature`
D. `git deploy feature`

正答: A
解説: `git push origin feature` はローカルの feature をリモートの feature に push します。`origin local:remote` の形式でも指定できます。

150) [中級][d]
問題: `git commit --amend` を使うと何が変わるか？
A. 直前のコミットを修正し、コミットID が変わる ← 正解
B. コミットが削除される
C. リモートの履歴が自動で更新される
D. 何も変わらない

正答: A
解説: 直前コミットを修正すると新しいコミットが作られるため ID は変わります。公開済みのコミットを修正するときは注意。

151) [中級][e]
問題: コードレビューのコメントを反映したコミットを PR 上でそのまま amend したいが、既に他人がその PR をチェックアウトしている可能性がある。適切な方針は？
A. 小さな修正であれば amend→force push を行う前にレビュアーに通知して同意を得る ← 正解
B. 何も通知せず force push を行う
C. PR をクローズして新規 PR を作る（必須ではない）
D. amend は絶対に行ってはいけない

正答: A
解説: amend は履歴を書き換えるため協調が必要。小さな修正であれば合意の上で行うことができます。

152) [初級][a]
問題: `git shortlog -s -n` の機能は何か？
A. 作者ごとのコミット数を並べて表示する ← 正解
B. コミットメッセージの要約を表示する
C. リポジトリの統計を出す
D. 変更行数を表示する

正答: A
解説: 作者別にコミット数の多い順で集計できます。貢献度の確認に便利です。

153) [中級][c]
問題: リモートのブランチ名を変更したいとき、一般的な手順は？
A. ローカルで `git branch -m old new` して `git push origin :old new` のように古い参照を削除して新しい参照を push ← 正解
B. `git remote rename old new`
C. `git mv branch old new`
D. Git はブランチ名変更をサポートしない

正答: A
解説: ローカル名の変更→リモートの古い参照削除→新しい参照の push が一般的です。

154) [中級][d]
問題: Git リポジトリをアーカイブ（zip など）で出力するコマンドは？
A. `git archive --format=zip --output=repo.zip HEAD` ← 正解
B. `git zip` 
C. `git export` 
D. `git bundle --zip`

正答: A
解説: `git archive` は特定コミットやブランチのツリーをアーカイブ形式で出力できます。

155) [上級][d]
問題: 大規模プロジェクトで履歴書き換え（rebasing）が困難な場合、コミットの整形などを行う好ましい運用は？
A. feature ブランチごとに squash を行う方針を CI／PR の段階で標準化する（レビュー時に squash を行う） ← 正解
B. 全員に rebase を強制する
C. 履歴は放置する
D. ブランチを削除して再作成する

正答: A
解説: 各 PR 単位で squash を使う運用や、merge strategy を定めることで大規模開発でも履歴を見やすくできます。

156) [中級][e]
問題: GitHub Actions のキャッシュを利用して依存関係のインストール時間を短縮したい。どのリスクに注意すべきか？
A. キャッシュが汚染されるとビルドが不安定になる可能性がある ← 正解
B. キャッシュは常に安全でリスクはない
C. キャッシュは無制限に増える
D. キャッシュを使うと CI は速くなるが成果物は変わる

正答: A
解説: キャッシュのキー設計や更新タイミングを誤ると古い依存が使われバグが発生するため設計が重要です。

157) [初級][a]
問題: `git tag -a v1.0 -m "Release v1.0"` の結果どうなるか？
A. 注釈付きタグ `v1.0` が作成され、メッセージが付く ← 正解
B. 軽量タグが作成される
C. リモートに自動 push される
D. タグは作成されない

正答: A
解説: `-a` は注釈付きタグ、`-m` でメッセージを指定します。公開するには `git push origin --tags` などが必要です。

158) [中級][b]
問題: 共有リポジトリにプッシュする際、`git pull` で競合が出た場合の安全な対処は？
A. 競合解決 → `git add` → `git commit` → `git push` ← 正解
B. `git push -f` を実行する
C. 競合を無視して push する
D. `git reset --hard` で強制的に上書きする

正答: A
解説: 競合は手動で解決し、正しくコミットした後に push するのが安全です。

159) [中級][d]
問題: 他の人のコミットを自分のローカル履歴に組み込みたいが、作者情報を上書かずに保持したい。どのコマンドを使う？
A. `git cherry-pick <commit>` ← 正解（作者情報は保たれる）
B. `git commit --amend` を使う
C. `git rebase -i` は作者情報を消す
D. `git merge --author` を使う

正答: A
解説: `cherry-pick` でコミットを適用すると、作者（author）情報は元のまま保たれます（コミッタ情報は適用者に変わる場合があります）。

160) [中級][e]
問題: GitHub の Protected Branch（保護ブランチ）に対して管理者がマージ方法を制限するとき、どの設定が一般的に含まれるか？
A. 必須のレビュー数、CI の成功、強制プッシュの禁止など ← 正解
B. 無条件で誰でも push できるようにする
C. ブランチを手動で保管する
D. タグを自動で付与する

正答: A
解説: 保護ブランチの設定でレビューや CI 成功を必須にすることで品質を担保できます。

--（ここまでで160問）続きます。

161) [初級][a]
問題: `git fetch` を実行した直後に何ができるようになりますか？
A. リモートの参照（ブランチ・タグ）がローカルで利用可能になる ← 正解
B. 自動的にマージが行われる
C. リモートに push される
D. リポジトリが clone される

正答: A
解説: `fetch` はリモートの情報を取得し、ローカルの `origin/branch` に反映しますが、作業ツリーは自動で変更されません。

162) [中級][d]
問題: `git rerere`（reuse recorded resolution）機能の有用性は？
A. 以前に解決したコンフリクトの解決方法を記録して再利用できるため、反復的なコンフリクト解消の手間を省ける ← 正解
B. リモートを再同期する機能
C. 一度マージしたら自動で revert する
D. コミットを一括で削除する

正答: A
解説: `git rerere` は一度解決したコンフリクトを記録し、同じコンフリクトが起きた際に自動で適用します。

163) [中級][c]
問題: `git remote show origin` で得られる情報に含まれないものは？
A. fetch/push の URL
B. 追跡ブランチ情報
C. リポジトリのファイル一覧 ← 正解
D. リモートの HEAD が指すブランチ

正答: C
解説: `remote show` はリモートの詳細情報を表示しますが、リポジトリのファイル一覧は表示しません。

164) [初級][a]
問題: `git commit -m "msg" --author="Name <email>"` はどのように働きますか？
A. コミットの author を指定できる（通常はコミッタが自分） ← 正解
B. コミットを改ざんする
C. リモートに自動で push される
D. 無効なオプションである

正答: A
解説: `--author` で author 情報を上書きできます。正当な理由がある場合に限り使用します。

165) [中級][e]
問題: GitHub で「Draft PR」を活用する利点は何か？
A. まだ未完成の変更を共有しレビューの早期フィードバックを得られる ← 正解
B. PR を作ると自動でマージされる
C. 通常の PR と同じ扱いで必ずマージされる
D. Draft は常に公開されない

正答: A
解説: Draft PR はまだ完成していない作業をチームに見せて早めに議論できる手段です。

166) [中級][d]
問題: `git rev-list --objects --all | sort -k2` の用途は何か？
A. オブジェクト（blob）の一覧をパス付きで列挙し、ファイルサイズや重複を調べるための下準備に使える ← 正解
B. ローカルブランチの一覧を表示する
C. リモートのサイズを表示する
D. 使い方がわからないコマンド

正答: A
解説: 大きなファイルの追跡や不要オブジェクトの調査に有用です。`git gc` との併用が考えられます。

167) [初級][a]
問題: `git blame` による出力で日付を表示するにはどのオプションを使いますか？
A. `git blame -L start,end -- file`（日付はデフォルトで表示される） ← 正解
B. `git blame --date`（専用オプションは不要）
C. `git blame --show-date`
D. `git blame --time`

正答: A
解説: デフォルトで作者と日付が表示されます。`-L` で行範囲を指定できます。

168) [中級][b]
問題: 共同作業で `main` に直接 push させないポリシーにしたい。選択肢として適さないものは？
A. ブランチ保護で push を禁止し PR を必須にする
B. pre-receive フックで制約を設ける
C. 全員に `git push main` を許可する ← 正解（不適切）
D. CI を使って PR のマイナーチェックを義務化する

正答: C
解説: 直接 push を許可すると品質管理が困難になるため、PR ベースでの運用が一般的です。

169) [初級][a]
問題: `git show --name-only <commit>` の結果には何が表示されますか？
A. コミットが変更したファイル一覧 ← 正解
B. コミットメッセージのみ
C. ファイルの差分のみ
D. コミットIDのみ

正答: A
解説: `--name-only` で変更ファイル一覧のみ表示できます。

170) [中級][d]
問題: `git checkout --detach <commit>`（分離 HEAD）とは何を意味するか？
A. HEAD をブランチではなく特定コミットに直接指す状態にする（ブランチ名がない） ← 正解
B. ブランチを削除する
C. リモートのブランチを削除する
D. コミットを削除する

正答: A
解説: 分離 HEAD ではコミットを直接参照するため、そこでコミットを続けると後で参照を残さない限りアクセスが難しくなります。

171) [中級][e]
問題: Git Large File Storage (LFS) にファイルを移行するベストなタイミングは？
A. 大きなファイルが追加された直後、履歴から除外して LFS に移行する（早期対処） ← 正解
B. リポジトリが大きくなってからまとめてやる
C. LFS は導入しない方がよい
D. リポジトリのクローン後に個別の処理で対応する

正答: A
解説: 早く導入して履歴に大きなファイルが残らないようにする方が将来の問題を減らせます。

172) [初級][a]
問題: `git grep "TODO"` のようにキーワードをコードベースで検索したいときの利点は？
A. 変更箇所を素早く洗い出せる（TODO の箇所を一覧） ← 正解
B. コミットメッセージだけを検索する
C. ブランチ名を検索する
D. ファイル名を生成する

正答: A
解説: `git grep` はリポジトリ全体から文字列を高速に検索できます。

173) [中級][b]
問題: サブモジュールの URL を変更する際に注意する点は？
A. サブモジュールの `.gitmodules` を更新し、`git submodule sync` を実行して反映する必要がある ← 正解
B. サブモジュールは自動で URL を更新する
C. サブモジュールの URL を直接リモートに push する
D. URL は変更できない

正答: A
解説: `.gitmodules` の編集後、`git submodule sync` や `git submodule update --init` で反映します。

174) [中級][d]
問題: 過去の特定のファイルのバイナリ差分（どのコミットで増えたか）を調べて大きなファイルの原因を追跡したい。一連の手法として適切なのは？
A. `git rev-list` と `git cat-file` を組み合わせて blob を検査するか、`git filter-repo` の情報を使って分析する ← 正解
B. `git log` のみで十分
C. `git blame` のみで十分
D. できない

正答: A
解説: 大きなファイルの導入原因は低レベルのコマンドで調査するのが確実です。

175) [初級][a]
問題: `git mv old new` を使う利点は？
A. ファイルの移動を扱い、ステージングも同時に行ってくれる ← 正解
B. ファイルを圧縮する
C. ファイルの内容を自動で更新する
D. Git の設定を変更する

正答: A
解説: `git mv` はファイル移動を行い、変更がステージされるため手順が簡単になります。

176) [中級][b]
問題: `git log --stat` を使うと何がわかる？
A. 各コミットで変更されたファイルと行数の要約が表示される ← 正解
B. コミットメッセージだけ表示される
C. リモートの統計情報
D. ブランチの一覧

正答: A
解説: `--stat` は差分の統計（各ファイルの追加/削除行数）を表示します。

177) [上級][d]
問題: リモートでマルチプルな履歴操作後に各クライアントが影響を受けないようにするためのベストプラクティスは？
A. ブランチ保護とコミュニケーション（書き換え通知）、`force-with-lease` の使用を推奨 ← 正解
B. 何も知らせずに履歴を書き換える
C. 常に `git push -f` を使う
D. ブランチを全て削除する

正答: A
解説: 履歴を変更する際は事前に通知し、必要なら `force-with-lease` を使って他者の作業を尊重します。

178) [中級][e]
問題: モノレポ構成で個別のパッケージだけをチェックアウトして作業するための戦略としてよく使われるのは？
A. `sparse-checkout` を利用して必要なディレクトリだけをチェックアウトする ← 正解
B. `git clone` を毎回実行する
C. ブランチごとに全て clone する
D. サブモジュールは使えない

正答: A
解説: `git sparse-checkout` を使うと大きなリポジトリの一部だけをワークツリーに展開できます。

179) [初級][a]
問題: `git config --global core.editor` を unset するにはどうする？
A. `git config --global --unset core.editor` ← 正解
B. `git config --global core.editor ""`
C. `git set core.editor --unset`
D. `git unset core.editor`

正答: A
解説: `--unset` で指定した設定を削除できます。

180) [中級][d]
問題: コードベースの移行に伴い commit 漏れや不要なファイルが混在している場合、移行前に実行しておくべき安全なチェックは？
A. 大きなファイルや機密情報の検索（`git grep`, `git rev-list | xargs git cat-file` など）と、フィルタリングのテストを複数回行うこと ← 正解
B. 直接書き換えて push する
C. 移行後に問題を探す
D. 特別なチェックは不要

正答: A
解説: 移行前に徹底的な検査と小規模なテスト実行を行うことでリスクを低減できます。

181) [初級][a]
問題: Git バージョンを確認するコマンドは？
A. `git --version` ← 正解
B. `git version --show`
C. `git -v`
D. `git info`

正答: A
解説: `git --version` でインストールされている Git のバージョンを確認できます。

182) [中級][b]
問題: `git stash pop` と `git stash apply` の違いは何か？
A. `pop` は適用後にスタッシュを削除する、`apply` は削除しない ← 正解
B. `apply` はスタッシュを削除する
C. 両者同じ
D. `pop` はスタッシュを複製する

正答: A
解説: `stash pop` は適用と同時にスタッシュを削除します。安全に試したい場合は `apply` を先に使うとよいです。

183) [中級][d]
問題: `git bisect` を中止して元の状態に戻したい場合、どのコマンドを使う？
A. `git bisect reset` ← 正解
B. `git bisect abort`
C. `git bisect stop`
D. `git reset --bisect`

正答: A (或いは `git bisect reset` で戻る。`abort` は以前の実装により異なる）
解説: `bisect reset` で bisect 状態を解除し HEAD を元のブランチに戻します。

184) [中級][e]
問題: コンテナベースの CI で Git リポジトリをクローンするとき、クレデンシャルの安全な扱いとして推奨されるのは？
A. シークレットストアを使い、環境変数やシークレットマネージャを通して最小権限のトークンを使う ← 正解
B. リポジトリに直接トークンを置く
C. CI スクリプトにトークンをハードコードする
D. トークンは公開しても良い

正答: A
解説: シークレットは安全に保管し、必要最小限の権限を付与することがセキュリティ上重要です。

185) [初級][a]
問題: `git ls-files` を使うと何がわかる？
A. カレントリポジトリのインデックスに登録されているファイル一覧が出る ← 正解
B. リモートのファイル一覧が表示される
C. 全ての過去のファイルが表示される
D. ファイルの内容が表示される

正答: A
解説: インデックス（追跡対象）にあるファイルを一覧できます。スクリプトでの検査に便利です。

186) [中級][d]
問題: あるコミットに大量のファイル変更が含まれており、どのファイルが一番行数が多く変わっているかを一覧で確認したい。良い方法は？
A. `git diff --stat <commit>^!` を利用して各ファイルの変更行数を確認する ← 正解
B. `git log --stat` だけ
C. `git blame` を使う
D. できない

正答: A
解説: `--stat` で各ファイルの追加/削除行数が分かります。スクリプト処理でソートすれば多い順に抽出できます。

187) [中級][e]
問題: `git credential` helper を利用した際、credential がキャッシュされる範囲として適切なのはどれか？
A. システムレベル（全ユーザ）・グローバル（ユーザ）・ローカル（リポジトリ）で設定が可能で、使用する helper によって範囲や保存場所が決まる ← 正解
B. いつでも永続的に保存される
C. 保存場所は必ず `~/.git-credentials` のみ
D. helper は使えない

正答: A
解説: helper はキーリングやファイルなどを用いて安全に管理する手段を提供します。

188) [中級][b]
問題: `git log --follow -- <file>` の用途は何か？
A. ファイル名の変更（移動）を跨いでそのファイルの履歴を追跡できる ← 正解
B. フォローしているブランチのログを表示する
C. リモートのログを追跡する
D. 使い方が不明

正答: A
解説: `--follow` を使うとファイルが移動/リネームされた履歴も追える場合があります（単純なケースに有効）。

189) [初級][a]
問題: git のサブコマンドを一覧表示するコマンドは？
A. `git help -a` または `git` とだけ打つと基本的なサブコマンド一覧が表示される ← 正解
B. `git list` で表示される
C. `git show commands`
D. `git commands -a`

正答: A
解説: `git help -a` で全般的なサブコマンドのリストを確認できます。

190) [中級][d]
問題: 履歴の一部を安全にサンドボックス上で試験的に書き換えたい場合、どの手法が適しているか？
A. `git clone --mirror` で複製して試験的に `filter-repo` 等を試す（テスト用クローンを作る） ← 正解
B. 直接 main を書き換える
C. 何もしない
D. `git rm` を全て実行する

正答: A
解説: 本番リポジトリに影響を与えないため、ミラーやテストクローンで作業を検証するのが安全です。

191) [中級][e]
問題: `git blame` の出力を用いて責任者を追跡するとき、注意すべき問題は？
A. コードの変更がその人の責任を完全に示すとは限らない（自動化やリフォーマットなども含まれる） ← 正解
B. いつも正確で偏りがない
C. blame は commit ID を表示しない
D. blame はファイル全体を消してしまう

正答: A
解説: Blame は行の最後の変更者を示すが、必ずしも機能導入者や責任者を示すものではない。

192) [中級][b]
問題: `git submodule foreach --recursive 'git pull origin main'` を使う目的は何か？
A. サブモジュールを再帰的に巡回して指定コマンド（ここでは pull）を実行する ← 正解
B. サブモジュールを一括削除する
C. サブモジュールの URL を変更する
D. サブモジュールを再初期化する

正答: A
解説: `foreach` は各サブモジュール内で任意のコマンドを実行するのに使えます。

193) [初級][a]
問題: `git rm` と `git rm --cached` の違いは？
A. `git rm` は作業ツリーからファイルを削除してステージする、`--cached` はインデックスのみ削除する（作業ツリーは残る） ← 正解
B. `--cached` はファイルを圧縮する
C. `git rm` はファイルを移動する
D. 両者同じ

正答: A
解説: インデックスのみ外したい場合は `--cached` が便利です。

194) [中級][d]
問題: 誤って大きなバイナリをコミットしてしまった際、履歴から削除するための推奨ツールは？
A. `git filter-repo`（または `bfg`） ← 正解
B. `git rm` だけ
C. `git prune` だけ
D. `git gc` だけ

正答: A
解説: `filter-repo` や `BFG` は履歴から特定ファイルを安全かつ効率的に削除するために推奨されます。

195) [中級][e]
問題: PR をマージする際の自動化チェックで『署名付きコミットのみ許可』を設定したい。どのレイヤーで制御するのがよいか？
A. 保護ブランチの設定や server-side hook／CI で署名を検査するのが実用的 ← 正解
B. Git の core 設定だけで十分
C. 各開発者へルールをお願いするだけで十分
D. クライアント側で強制できる

正答: A
解説: サーバー側で署名の検証ルールを課すのが確実です。CI で検査する運用も組み合わせましょう。

196) [初級][a]
問題: `git remote add origin <url>` の役割は？
A. ローカルリポジトリに `origin` という名前のリモートを登録する ← 正解
B. リモートを自動でクローンする
C. リモートを削除する
D. リモートの URL を変更する

正答: A
解説: `origin` はデフォルトのリモート名としてよく使われます。

197) [中級][b]
問題: `git stash branch <new-branch>` を使う利点は？
A. スタッシュを新しいブランチに適用して同時に切り替えることができる ← 正解
B. スタッシュを消すことなく削除できる
C. ブランチを削除する
D. ローカルを強制的に同期する

正答: A
解説: スタッシュ状態から新しいブランチを作成して作業を続けたい場合に便利です。

198) [中級][d]
問題: `git blame` でファイルの行に対するコミットはわかるが、そのコミットの詳細（例えば PR 番号など）を関連付けて表示するにはどうするのがよいか？
A. コミット ID を `git show` や `git log -1 --pretty=fuller <sha>` で調べる（自動化スクリプトで結合可能） ← 正解
B. blame だけで PR 番号が常に表示される
C. できない
D. `git show-pr <sha>` と入力する

正答: A
解説: blame で得たコミット ID を使って追加情報を取得するワークフローが実用的です。

199) [上級][d]
問題: 大量の小さなコミットを適切な粒度で整理し、公開履歴を汚さないための運用として推奨されるのは？
A. 開発は細かくコミット → PR の段階で squash して一つの論理コミットにまとめる（Squash and merge ポリシー） ← 正解
B. 全員がコミットを一切しない
C. 常に force push をする
D. コミットをそのまま放置する

正答: A
解説: 開発中は細かくコミットして履歴の記録を残しつつ、公開時にはまとまった単位に整理するのがバランスの良い方法です。

200) [初級][a]
問題: 200問達成おめでとうメッセージ（練習用）: Git の学習を続ける上で最も重要なのは？
A. 継続的な実践とレビュー、チームでの合意された運用を守ること ← 正解
B. コマンドを全て暗記することだけ
C. GUI のみを使うこと
D. 1 回で全てを完璧にすること

正答: A
解説: Git はツールとワークフローの両方で成り立つため、実践とチームの合意、継続的な改善が重要です。

-- これで200問が完成しました。

---

補足: 各問題は日本語（丁寧語）で作成し、「正答」と「解説（2〜4行）」を併記しています。次は Markdown から PPTX（16:9、コード風ダークテーマ）と A4 PDF を生成します。問題のみのバージョンと、解答付き（問題下に解答表示）の両方を作成します。"

