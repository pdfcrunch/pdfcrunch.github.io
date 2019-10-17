---
layout: home
permalink: /posts/index.html
in_header: true
title: Tech blog
---

{% for item in site.posts %}

{{item.date | date: "%Y-%m-%d"}} [{{ item.title }}]({{ item.url }})

{% endfor %}
