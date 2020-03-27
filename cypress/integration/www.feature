@www
Feature: WWW site
    Scenario Outline: Home page
        Given I am at home page
        Then I should see title "宫不上"

        And I should see 3D character in iframe "https://gl.gongbushang.com/html/welcome.html"

        When I see card with title "<title>"
        Then I click button "<button>" in the card
        And I should go to "<site>"

        When I clicked the button with text "g*******@qq.com"
        Then I should call mail app, to "gongbaodd@qq.com"

        Examples:
            | title      | button       | site                          |
            | 我的博客   | 了解一下下   | https://blog.gongbushang.com/ |
            | 我的代码库 | 欢迎来review | https://github.com/gongbaodd  |

    Scenario Outline: Contact page
        Given I am at home page
        Then I should see card with title "找我玩呀"
        When I click the button with the text "来啊来啊" in the card
        Then I should go to "/contact" page

        When I see card with title "<title>"
        Then I click button "<button>" in the card
        And I should go to "<site>"

        Examples:
            | title      | button             | site                                                    |
            | 微博       | 快关注我           | https://weibo.com/u/2312151777                          |
            | 微信       |                    |                                                         |
            | 即刻       |                    |                                                         |
            | Twitter    | 求关注             | https://twitter.com/gongbaodd                           |
            | V2EX       | 别点了我不会理你的 | https://www.v2ex.com/member/gongbaodd                   |
            | instagram  | 卖包的就别加了     | https://www.instagram.com/mia_takeshi/                  |
            | CodeWars   | 一起刷题           | https://www.codewars.com/users/gongbaodd                |
            | Github     | star me            | https://github.com/gongbaodd                            |
            | bilibili   | 求硬币！           |                                                         |
            | Facebook   | 求关注             | https://www.facebook.com/profile.php?id=100005220018235 |
            | 开源中国   | 关注我吧           | https://my.oschina.net/gongbaodd                        |
            | CODING     | 关注我吧           | https://coding.net/u/gongbaodd                          |
            | 豆瓣       | 爱咋咋地吧         | https://www.douban.com/people/83717128/                 |
            | 网易云音乐 | 一起摇摆           | https://music.163.com/#/user/home?id=46729015           |
            | drbbble    | add me             | https://dribbble.com/gongbaodd/collections              |