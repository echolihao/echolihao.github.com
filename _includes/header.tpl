<header>
	<h1>{% if page.title %}<a href="/" class="minor">No Name</a> / {{ page.title }}{% else %}No Name{% endif %}</h1>
	{% if page.title == null %}<p class="additional">这个家伙很懒，名字都没想好</p>{% endif %}
</header>
