## 如何通过git将本地仓库上传到远程仓库如github

---------------------------------------------

- 1.在本地仓库初始化git仓库：`git init`，随后在.git文件夹下config文件添加`[user]name=pcgu, email=3108838574@qq.com`

- 2.接下来，将项目文件添加到仓库中。如果你想添加所有文件，可以使用：`git add` .//git add 文件名（仅添加部分文件）

- 3.提交更改，将文件添加到暂存区后，需要进行提交：`git commit -m "首次提交"`

- 4.在GitHub网站上创建一个新的仓库。创建仓库后，GitHub会提供一系列命令来连接或创建远程仓库。

- 5.连接本地仓库与GitHub的远程仓库：`git remote add origin https://github.com/你的用户名/仓库名称.git`

- 6.最后将本地仓库推送到github上：`git push -u origin master`
