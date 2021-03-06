<master src="../master">
<property name="title">dotLRN Roles, Sections, and Permissions</property>

<h2>dotLRN Permission API</h2>
by <a href=mailto:ben@openforce.net>Ben Adida</a>.
<hr><P>

The dotLRN access control mechanism will rely on OpenACS's permissions
system, but will be completely layered. This means the underlying
permission scheme can change.

<p>

<h3>Relational Segments & Context IDs</h3>

In order to make things much cleaner with respect to permissions, we
use relational segments and context IDs. The goal of relational
segments will be to determine groups of users to whom permissions
are granted. The goal of context IDs will be to create a hierarchy of
objects so that as new components are added to subcommunities,
permissions are naturally extended in appropriate ways.

<p>

For this to work, the actual privileges used throughout dotLRN and all
of its modules must be <b>consistent</b>. Since permissions follow an
inheritance path, we must make sure everything bootstraps off the
basic read, write, create, delete, admin privileges.

<p>

To better explain the situation, we want the following to happen:
<ul>
<li> Hal is a member of "Intro to Computer Science Spring 2002" group, with relationship
type <tt>dotlrn_instructor_rel</tt> to that group.
<li> An FAQ about the Computer Science Program is created for "Intro
to Computer Science Spring 2002", with <tt>context_id</tt> pointing to
the course.
<li> A relational segment "Intro to CS Spring 2002 Instructors" is
created on the "Intro to CS Spring 2002" group and
<tt>dotlrn_instructor_rel</tt> relationship type.
<li> The privilege <tt>faq_admin</tt> exists, inheriting from
the core OpenACS <tt>admin</tt> privilege.
<li> A permission is granted: "Intro to CS Spring 2002 Instructors"
are given the <tt>admin</tt> privilege on the course "Intro to
CS Spring 2002".
<li> <b>Thus</b>, automatically, Hal has the right to admin the FAQ,
because the admin privilege translates to the faq_admin privilege by
inheritance, Hal is part of the relational segment in question, and
the FAQ in question has a context_id pointing to the course. It's BEAUTIFUL!
</ul>

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
