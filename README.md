# mailto

A simple send mail tool.

## Config

按实际情况编辑`mailto.json`文件：

```json
{
    "host": "smtp地址",
    "port": "端口号",
    "username": "SMTP登录账号",
    "password": "SMTP登录密码",
    "from":"发件人",
    "contentType": "内容类型"
}
```

>注意：`mailto.json`文件名不能修改，且运行时必须与执行文件同目录；`contentType`的格式为`text/plain`、`text/html`等。

配置示例（163免费版企业邮箱）：

```json
{
    "host": "smtp.ym.163.com",
    "port": "25",
    "username": "system@test.com",
    "password": "123456",
    "from":"System <system@test.com>",
    "contentType": "text/plain"
}
```

## Args

> 抄送人参数为可选，多收件人或抄送人通过英文逗号`,`分隔；`build`目录下为编译好的可执行文件，直接使用即可，也可自行编译。

```shell
mailto "邮件标题" "邮件内容" "收件人" ["抄送人"]
```

## Usage

```shell
./mailto Hello 我是内容 test@xxx.com
./mailto Hello 我是内容 "Sam Zhang <test@xxx.com>"
./mailto Hello 我是内容 "Sam Zhang <test@xxx.com>" "Jack Li <test@xxx.com>"
./mailto Hello 我是内容 "test1@xxx.com,test2@xxx.com" "Jack Li <test@xxx.com>"
./mailto Hello 我是内容 "test1@xxx.com,test2@xxx.com" "Jack Li <test3@xxx.com>,Wu Wang <test4@xxx.com>"
./mailto Hello "`cat test.log`" "Sam Zhang <test@xxx.com>" "Jack Li <test@xxx.com>"
```