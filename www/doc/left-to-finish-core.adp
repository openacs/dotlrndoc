<%= [dotlrn_header "dotLRN Documentation: Left to Finish Core"] %>
<h2>dotLRN: Left to Finish Core</h2>
part of <a href=./>dotLRN Documentation</a>
<hr>
<p>
<font size=-2>Last update: $Date$</font>
<p>

Here's what we need to do to finish core:

<h3>Portal</h3>
<ul>
<li> Implement portlet locking capability.
<li> Implement cloning stuff.
<li> <strike>Clean up UI on configuration page (change backlink)</strike>
<li> add roles and permissions (admin create|delete)(from dotlrn_community API)<li> code review (Wednesday, 11/21, 2pm).
<strike>
<li> change theme data model to map to pages.
<li> Refactor some functionality as part of base portal package.
<li> add acs-service-contract support.
<li> update all portlets for datasource.new, user_editable_p, shadeable_p, hideable_p, sc, new procs
<li> Adjust buttons on portlets as a function of capabilities
<li> Remove render-element.tcl ::get_pretty_name other render cleanup
</strike>

</ul>

<h3>dotLRN Core</h3>
<ul>
<li> Review exactly what the roles are
<li> Write up permissions procs!
<li> <strike>Move administration to community-specific pages! Duh!</strike>
<li> Allow for addition of users who haven't registered yet? Check that.
<li> Automatically redirect single-community guests to the right location.
<li> <strike>Fix registration/deregistration bugs!</strike>
<li> Get clubs working
<li> <strike>!! Figure out Relational Segments !!</strike>
</ul>

<h3>Operations</h3>
<ul>
<li> prepare staging server:
<ul>
<li> <strike>AOLserver 3.3ad13</strike>
<li> <strike>Oracle 8.1.7</strike>
<li> <strike>drivers</strike>
<li> 
</ul>
<li> review existing SloanSpace site
</ul>

<p>

<h3>calendar</h3>
<ul>
<li> make group calendar work!
<li> each user has *ONE* personal calendar, and has access to each community calendar.
<li> calendar works as multi-package view in portlet.
</ul>

<b>how this works</b>

<ul>
<li> part of this involves figuring out multiple values for single parameters (instance_id in particular).
<li>every user has only ONE personal calendar
<li>every community has only ONE community calendar
<li>when a user views a community-specific page, he/she only sees that community's event.
<li>on personal calendar, they see everything
</ul>

<h3>bboard</h3>
<ul>
<li> test a bit more
<li> improve the portlet and make it NOT dependent on dotLRN
<li> allow parameter editing for displaying certain information in portlet
</ul>

<h3>File Storage</h3>
<ul>
<li> Clean up UI big time
<li> Clean up portlet to display the right stuff
<li> Make sure permissions are inherited correctly from parent folder and such
<li> Make sure permissions are correct on public folder.
</ul>

<h3>FAQ</h3>
<ul>
<li> Clean up portlet UI (display list of FAQs)
</ul>

<h3>News</h3>
<ul>
<li> make news multi-instance capable.
</ul>

<%= [dotlrn_footer] %>
