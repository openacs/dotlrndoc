<%= [dotlrn_header "dotLRN Roles, Sections, and Permissions"] %>
<h2>dotLRN Permission API</h2>
by <a href=mailto:ben@openforce.net>Ben Adida</a>.
<hr><P>

The dotLRN access control mechanism will rely on OpenACS's permissions
system, but will be completely layered. This means the underlying
permission scheme can change.

<p>

<h3>General Roles API</h3>

These are fairly straight-forward:
<ul>
<li> <tt>dotlrn::user_add user_id</tt>
<li> <tt>dotlrn::user_remove user_id</tt>
<p>
<li> <tt>dotlrn::guest_add community_id user_id</tt>
<li> <tt>dotlrn::guest_remove community_id user_id</tt>
</ul>

<h3>Access Control API</h3>

<ul>
<li> <tt>dotlrn::user_can_browse_p ?user_id?</tt>
<li> <tt>dotlrn::require_user_browse ?user_id?</tt>
<p>
<li> <tt>dotlrn::user_can_read_sensitive_data ?user_id?</tt>
<li> <tt>dotlrn::require_user_read_sensitive_data ?user_id?</tt>
<p>
<li> <tt>dotlrn::user_can_read_community_type_p community_type ?user_id?</tt>
<li> <tt>dotlrn::require_user_read_community_type community_type
?user_id?</tt>
<p>
<li> <tt>dotlrn::user_can_read_community_p community_id ?user_id?</tt>
<li> <tt>dotlrn::require_user_read_community community_id
?user_id?</tt>
<p>
<li> <tt>dotlrn::user_community_member_p community_id ?user_id?</tt>
<li> <tt>dotlrn::require_user_community_member community_id
?user_id?</tt>
<p>
<li> <tt>dotlrn::user_can_admin_community_p community_id
?user_id?</tt>
<li> <tt>dotlrn::require_user_admin_community community_id ?user_id?</tt>

</ul>

<%= [dotlrn_footer] %>
