<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- meta -->
    <meta charset="utf-8"/>
    <!-- style -->
    <link rel="stylesheet" href="//static2.cnodejs.org/public/stylesheets/index.min.23a5b1ca.min.css" media="all"/>
    <!-- scripts -->
    <script src="//static2.cnodejs.org/public/index.min.f7c13f64.min.js"></script>
    <title>${u.userName}的个人资料</title>
</head>
<body>
<!-- navbar -->
<#include "../navbar.ftl">
<div id='main'>
    <div id='sidebar'>
        <div class='panel'>
            <div class='header'>
                <span class='col_fade'>个人信息</span>
            </div>
            <div class='inner'>
                <div class='user_card'>
                    <div>
                        <a class='user_avatar' href="/">
                            <img src="/img/avatar.gif" title="username"/>
                        </a>
                        <span class='user_name'><a class='dark' href="/">${u.userName}</a></span>
                        <div class='board clearfix'>
                            <div class='floor'>
                                <span class='big'>积分: ${u.source} </span>
                            </div>
                        </div>
                        <div class="space clearfix"></div>
                        <span class="signature">
                            “
                                ${u.note}
                            ”
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id='content'>
        <div class='panel'>
            <div class='header'>
                <ul class='breadcrumb'>
                    <li><a href='/'>主页</a><span class='divider'>/</span></li>
                    <li class='active'>${u.userName} 收藏的话题</li>
                </ul>
            </div>
            <div class='inner no-padding'>
                <div id="topic_list">
                    <#list topics as t>
                        <div class='cell'>
                            <a class="user_avatar pull-left" href="/user/${t.userName}">
                                <img src="/img/avatar.gif"
                                     title="${t.userName}"
                                />
                            </a>
                            <span class="reply_count pull-left">
                            <span class="count_of_replies" title="回复数">
                              ${t.replyCount}
                            </span>
                            <span class="count_seperator">/</span>
                            <span class="count_of_visits" title='点击数'>
                              ${t.viewCount}
                            </span>
                          </span>
                            <a class='last_time pull-right' href="/topic/detail/${t.id}">
                                <img class="user_small_avatar"
                                     src="/img/avatar.gif">
                                <span class="last_active_time">${t.formattedTime(t.createdTime)}</span>
                            </a>
                            <div class="topic_title_wrapper">
                                <a class='topic_title' href='/topic/detail/${t.id}'
                                   title='${t.title}'>
                                    ${t.title}
                                </a>
                            </div>
                        </div>
                    </#list>


                </div>
            </div>
        </div>
    </div>

</div>
<#include "../footer.ftl">
</body>
</html>
