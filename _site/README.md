## General Thoughtscape

This page is an attempt at reconnecting with a more Show Your Working Out approach to internet citizenry.

As with most of its predecessors it will likely stagnate almost immediately

### Posts

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>


