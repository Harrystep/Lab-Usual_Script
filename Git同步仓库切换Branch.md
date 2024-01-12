**第一步**：确定本地分支，使用 `git branch` 命令来查看您的本地分支。

**第二步**：同步远程分支，运行 `git fetch origin` 和 `git branch -a`，这样即可查看所有分支。

**第三步**：切换到指定分支，使用 `git checkout -b main origin/main`。

**第四步**：切换成功后再次推送，运行 `git push -u origin main`。

**第五步**：检查提交记录，确保至少有个提交记录，使用 `git commit -m "Your commit message"`。
