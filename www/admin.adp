
<master src="./master">
<property name="title">Admin</property>

<h3>Static Portlets</h3>
<ul>
<multiple name="content_portals">
<li> <a href="static/element?portal_id=@portal_id@&referer=../admin&content_id=@content_portals.content_id@">admin "@content_portals.pretty_name@"</a>
</multiple>
<p>
<li> <a href="static/element-new?portal_id=@portal_id@&referer=../admin&package_id=@package_id@">new static</a>
</ul>

<h3>Other</h3>
<ul>
<li> Manage the <a href="/portal/admin/portal-config?portal_id=@portal_id@&referer=/dotlrn/admin">portal</a>
<li> Manage <a href="/news/admin">news</a>
<li> Manage <a href="/faq/admin">FAQs</a>
</ul>