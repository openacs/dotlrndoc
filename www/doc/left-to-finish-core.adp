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
<li> Adjust buttons on portlets as a function of capabilities
<li> Implement portlet locking capability.
<li> Implement cloning stuff.
<li> Refactor some functionality as part of base portal package.
<li> Clean up UI on configuration page (change backlink)
<li> add acs-service-contract support.
<li> change theme data model to map to pages.
<li> add roles and permissions (admin create|delete)
     (from dotlrn_community API).
<li> Remove render-element.tcl ::get_pretty_name other render cleanup
<li> Params issues
<li> code review (Monday, 11/19, 10am-12pm).
</ul>

<h3>dotLRN Core</h3>
<ul>
<li> Review exactly what the roles are
<li> Write up permissions procs!
<li> Move administration to community-specific pages! Duh!
<li> Allow for addition of users who haven't registered yet? Check that.
<li> Automatically redirect single-community guests to the right location.
<li> Fix registration/deregistration bugs!
<li> Get clubs working
<li> !! Figure out Relational Segments !!
</ul>

<h3>calendar</h3>
<ul>
<li> make group calendar work!
<li> each user has *ONE* personal calendar, and has access to each community calendar.
<li> calendar works as multi-package view in portlet.
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
<li> Clean up portlet UI (display list of FAQs)1
</ul>

<h3>News</h3>
<ul>
<li> make news multi-instance capable.
</ul>

<%= [dotlrn_footer] %>
