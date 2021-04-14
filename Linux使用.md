## git
```
//第一次使用前
git config --global user.name "your name"        //设置用户名，注意git config命令的--global参数，用了这个参数，表示你这台机器上所有的Git仓库都会使用这个配置，当然也可以对某个仓库指定不同的用户名和Email地址。
git config --global user.email "your email"        //设置电子邮箱
git config user.name                                           //查看用户名
git config user.email                                           //查看电子邮箱
git config --list                                                    //查看所有用户信息
git status              //查看状态，工作区相对于版本库是否有修改
git diff                //查看不同之处在哪
git add filename        //把指定文件添加到版本库中的暂存区
git commit -m "备注"    //把暂存区的修改提交到最终的本地仓库中
git checkout -- filename     //会把工作区的相应文件恢复到你最近提交的一个版本，即丢弃了工作区最新的更改，适用于还未提交的情况。
git reset HEAD filename     //丢弃了相应文件的最新提交（add），不改变工作区和库区，只改变了暂存区。
git reset --hard HEAD^      //版本回退，工作区和库区都进行相应的回退。
rm filename                        //删除工作区的相应文件
git rm filename                   //删除库区的相应文件，注意删除之后应该进行commit
$ ssh-keygen -t rsa -C " youremail@example.com "                //如果没有SSH，则使用这条命令创建SSH
git remote remove origin      //与远端解除绑定
git remote add origin  git@github.com :dragonFly12345/ubuntuGitTest.git                         //绑定git@开头的地址
git push origin master
//注意第一次推送的时候可以加上 -u 参数
git push -u origin master
//Git不但会把本地的master分支内容推送的远程新的master分支，还会把本地的master分支和远程的master分支关联起来，在以后的推送或者拉取时就可以简化命令
git clone  git@github.com :dragonFly12345/helloGithub.git            //在一个本地仓库中使用，把远程的程序拷贝到本地
```
