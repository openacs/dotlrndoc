<%= [dotlrn_header "dotLRN Documentation: Detailed ToDo"] %>
<h2>dotLRN Detailed Todo</h2>
part of <a href=./>dotLRN Documentation</a>
<hr><p>

This document details the precise steps in moving forward with dotLRN development.

<p>

<h3>Portals Enhancements</h3>
<ul>
<li> Make all explicitly-sourced Tcl scripts into procs. Fix templates.
<li> fix the path to template finding for each portal element (no symlink!)
<li> fix the parameter setting (specifically in bboard)
<li> user-editable placement of portlets. Allow any portal page to jump into "editing" of the portal page (if the user has permission to do so).
<li> remove all user_id information from a portal page. We want to regulate access using the permissions module, and there is no need to map to a user inside the portals package.
<li> add permissions checking to each portal page displaying.
	
<p>
</p>

<li> allow layout to be changed by user
<li> add the ability to have a model layout that can be copied. For example, a class admin will set up a portal the way it's supposed to look when someone signs into the class. This layout will be copied for a user. But then the user can change the portal.
<li> However, some portal elements will be "unremovable", mandatory in some sense. The way this works is that each portal element in the "model" layout will carry permission models that will be copied over when a new portal page is created based on the model. Thus permissions must exist on a per-portal element level. Maybe for displaying, and at least for adding / removing.
<li> This means that we need to rethink how data sources are made available to a portal. Maybe via permissioning. How does a user get to add a data-source to a portal or not?<p>
<b>What Ben means</b>: we have data sources in the overall system, say bboard, faq, and fs. However, to page #123, only bboard and faq are *available* as potential data sources. The dotlrn-bboard package will first make the bboard datasource AVAILABLE to the page in question, and then will actually add it. Thus, when removed, the datasource remains available to be re-added.
<p>
<b>More on removing portal elements</b>: anyone with page-level permissions (which permission exactly is yet to be determined) can add available data sources to the given page. Each portal element that is added by the user will automatically gain the permission to be removed. However, some portal elements added programmatically might not be removable by the viewing user.
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
	<li> access to portal pages and admin of portal pages
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

<h3>Surveys</h3>

<%= [dotlrn_footer] %>
