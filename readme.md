git_dev_tools
========================

hooksとか、開発に便利そうなツール集（になるかもしれない）

## git_bare.sh
（使用例）  
`git_bare.sh git@github.com:user/repo.git ~/bare/repo.git ~/work/repo`

**GITリポジトリ**から**ベアリポジトリ**をつくり、その**ベアリポジトリ**を追従する**ノンベアリポジトリ**を作ります。  
また、**ベアリポジトリ**に**push**すると、**ノンベアリポジトリ**にその変更が反映される**post-receiveフック**(*bare-hook/post-receive*)を仕込みます。
