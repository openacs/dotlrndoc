<%= [dotlrn_header "dotLRN Documentation: Sloan BBoard"] %>
<h2>Sloan BBoard</h2>
part of <a href=./>dotLRN Documentation</a>
<hr><p>

The SloanSpace BBoard system is specific and is thus a fork of the
main bboard package. Eventually, this bboard package may be rolled
back into OpenACS.

<h3>Major Features</h3>
<ul>
<li> Multiple types of bboard - q&a, threaded
<li> User Preferences for displaying - threaded summary, or threaded
complete
<li> Real Scoping - bad scoping going on!
<li> Messages marked as new since last visit
<li> for certain bboards, track messages that are new on an individual basis.
</ul>

<h3>Implementation Details</h3>

Bboard forums will have an additional field: <tt>forum_type</tt>

<p>

Bboard forums will have an additional field:
<tt>track_new_postings_p</tt> which we will keep to false as often as
possible! This will also require adding a mapping table
<tt>bboard_message_user_map</tt> also known as <tt>bboard_mum</tt>.

<p>

For user preferences, we really need a user preferences package.

<p>

<%= [dotlrn_footer] %>
