XPTemplate priority=personal

let s:f = g:XPTfuncs()

XPTinclude
            \ _common/common
XPTinclude
            \ html/html

XPT foreach " {% for item in list %} {% endfor %}
{% for %}
    `cursor^
{% endfor%}
..XPT
