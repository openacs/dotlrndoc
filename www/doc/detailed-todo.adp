<%= [dotlrn_header "dotLRN Documentation: Detailed ToDo"] %>
<h2>dotLRN Detailed Todo</h2>
part of <a href=./>dotLRN Documentation</a>
<hr><p>

This document details the precise steps in moving forward with dotLRN development.

<p>
<small>Last update: $Id$</small>
<p>

<h3>Things to Do</h3>
<b>Arjun</b>:

<P>
Now:
<ul>
<strike>
<li> impliment dotlrn-news and news-portlet
<li> impliment theme change in portal::config
<li> add buttons to "red box" theme
<li> impliment "unshade" icons in both themes
</strike>
</ul>

Later:
<ul>
<li> add optional theme_id args to portal::render
<li> edit calendar_portlet::show for different views - ugly!
<li> acs-service-contract
<li> impliment dotlrn-survey and survey-portlet
<li> overview of file-storage - think about UI improvements
</ul>

<p>

<b>Ben</b>:
<ul>
<li> data model for dotLRN workspace
<li> updates to applet interface as a result
<li> managing classes, profs, etc...
</ul>

<p>

<b>both</b>:
<ul>
<li> cloning discussion
<li> workspace discussion
</ul>

<h3>Portals Enhancements - Urgent</h3>
<ul>

<strike><li> user-editable placement of portlets. Allow any portal
page to jump into "editing" of the portal page (if the user has
permission to do so).</strike>

<P>Works! In BETA Oct. 24

<strike><li> remove all user_id information from a portal page. We want to
regulate access using the permissions module, and there is no need to
map to a user inside the portals package.  

<li> add permissions checking to each portal page displaying.</strike>
	
<P><a href=permission-portals.adp>Perms scheme complete</a> 

<P> Done except for parts that depend on "cloning", "locks", etc. One portal proc (create) uses user_id. In ALPHA Oct. 24

</ul>

<h3>Portals Enhancements - Less Urgent</h3>
<ul>

<li> layout change - AKS: thinging about interaction with below
<li> "cloning" - add the ability to have a model layout that can be copied. For example, a class admin will set up a portal the way it's supposed to look when someone signs into the class. This layout will be copied for a user. But then the user can change the portal.

<li> "locks" - However, some portal elements will be "unremovable", mandatory in some sense. The way this works is that each portal element in the "model" layout will carry permission models that will be copied over when a new portal page is created based on the model. Thus permissions must exist on a per-portal element level. Maybe for displaying, and at least for adding / removing.


<li> "available PEs" - This means that we need to rethink how data sources are made available to a portal. Maybe via permissioning. How does a user get to add a data-source to a portal or not?<p>
<b>What Ben means</b>: we have data sources in the overall system, say bboard, faq, and fs. However, to page #123, only bboard and faq are *available* as potential data sources. The dotlrn-bboard package will first make the bboard datasource AVAILABLE to the page in question, and then will actually add it. Thus, when removed, the datasource remains available to be re-added.
<p>
<b>More on removing portal elements</b>: anyone with page-level permissions (which permission exactly is yet to be determined) can add available data sources to the given page. Each portal element that is added by the user will automatically gain the permission to be removed. However, some portal elements added programmatically might not be removable by the viewing user.

<P>AKS: Adding portlet to already registered users issue.

</ul>

<h3>dotLRN Course Administration</h3>

<ul>
<li> Ability to add profs, tas, students, and admin roles to a particular class.
<li> Set a community to be active or not. Change the data model to make this work.
<li> 
</ul>

<h3>dotLRN Permissioning</h3>
<ul>
<li> Define all permissions and how they are used in dotLRN.
	<ul>
	<li> <strike>access to portal pages and admin of portal pages</strike>
	<li> add/remove on portal elements
	<li> possibly access on portal elements
	<li> read/write/admin on community types (site-wide, and admins for a usual class)
	<li> read/write/admin on communities (profs/tas/admins)
	<li> carry the permissions down to the specific packages within each community (inherit)
	</ul>
<li> abstract out permissions as much as possible within the API.
<li> set up explicit non-permissioned APIs when absolutely necessary (but avoid it as much as possible).
</ul>



<h3>Calendar</h3>

<h3>File Storage</h3>

<h3>Old Items</h3>

<ul>
<strike><li> Make all explicitly-sourced Tcl scripts into procs. Fix
templates.</strike>

<P>Two tcl scripts are explicitly sourced:
<tt>www/render-element.tcl</tt> and <tt>www/place-element.tcl</tt>
which is the configuration analogue of the former. Users of the portal
package have <b>no knowledge</b> of these scripts, they only use the
Tcl API. I've looked at this, and I don't see how it can be changed at
the moment because of the way the templating system works. I'm moving
on.

<strike><li> fix the path to template finding for each portal element (no symlink!)</strike>

<strike><li> fix the parameter setting (specifically in bboard)</strike>

<P>Fixed in all portlets.

<strike><li> "available" portlets: data-model, Tcl API, and web pages</strike>
<strike><li> implement shade, remove, edit, link from title</strike>

</ul>



<%= [dotlrn_footer] %>
