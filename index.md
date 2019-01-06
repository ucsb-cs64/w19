---
title: CS64, Winter 2019, zmatni
---

# {{site.course}}, {{site.quarter}}


<h2>Course Information</h2>
<ul>
{% for item in site.info %}
<li><a href="{{item.url | relative_url}}"  data-ajax="false">{{item.title }}</a></li>
{% endfor %}
</ul>


<h2 id="lecture_notes">Lecture Notes and Slides:</h2>
{% include lecnot_table.html %}


<h2 id="labs">Labs:</h2>
<p>NOTE: All labs must be submitted using turnin, unless specified otherwise.</p>
{% include lab_table.html %}


