<%= [dotlrn_header "dotLRN Architecture"] %>
<h2>dotLRN Architecture</h2>
by <a href=mailto:ben@openforce.net>Ben Adida</a> and <a href=arjun@openforce.net>Arjun Sanyal</a>, part of <a href=./>dotLRN Documentation</a>.
<hr><p>


dotLRN is built on OpenACS 4.x, a modular architecture for
community-oriented web applications. dotLRN is also
<strong>modular</strong> in that new course management functionality
can be added as desired. Since dotLRN modules must function within the
dotLRN architecture, dotLRN modularity must be built on top of OpenACS
modularity.

<p>

The dotLRN architecture attempts to define a framework within which
learning communities develop. A learning community may take many
different forms, but remains the crux of the architecture.


<h2>Learning Community</h2>

A <strong>Learning Community</strong> is architected as a series of
OpenACS components, with a heavy use of the <strong>subsite</strong>
concept. One community is represented by:

<ul>
<li> <strong>a group</strong>: this will serve to define membership
and roles within the learning community. These groups are not
necessarily all in the same group type (well, they are all ROOTED in
the same group type, <tt>dotlrn_community</tt>).
<li> <strong>a site node</strong>: this will serve to define a
consistent URL for the learning community, and to segment away each
communities from one another. An example is <tt>/dotlrn/alumni-1998</tt>.
<li> <strong>an instance of the dotLRN Community Manager
package</strong>: this will serve to display community-specific data
in a way that is clearly segmented away from the other learning
communities using the <i>acs-subsite</i> constructs.
</ul>

<h2>Class Instances & Clubs</h2>

There are two different types of learning communities in the basic
dotLRN release: <strong>class instances</strong> and
<strong>communities (clubs)</strong>. Both have the same functional
capabilities but have different attributes and roles for their
respective members.

<h3>Class Instances</h3>
Class Instances are related to a particular class, and must specify:
<ul>
<li> Year (e.g. 2002)
<li> Term (e.g. Spring)
<li> Section (e.g. Section B)
<li> Start Date
<li> End Date
</ul>

The fist three parameters may be stored as separate items, all in one,
or combined in some way. The current architectural direction is to
separate Year and to group Term and Section, but this may change. In
terms of the global architecture, this isn't very important.

<p>

Since all class instances have a common basic set of parameters, the
class instance groups should all be a single core group type, called
<b><tt>dotlrn_class</tt></b>. The <tt>dotlrn_class</tt> group type defines the
attributes above (year, term, section). <tt>dotlrn_class</tt> is a
group type that subtypes <tt>dotlrn_community</tt>.

<p>

In addition, in order to group class instances by the class they refer
to, the <tt>dotlrn_class</tt> group type is subtyped into further group
types, where one class is itself a group type. For example,
<tt>6.001</tt> is a group type, whose parent group type is
<tt>dotlrn_class</tt>. Then, <tt>6.001</tt> is the group type that all
instances of 6.001 belong to. <tt>6.001 - Spring 2002, Section B</tt>
is a group of group type <tt>6.001</tt>. This architecture allows for:

<ul>
<li> class-specific attributes in addition to the generic set,
<li> relating different class instances to a single class,
<li> reusing existing OpenACS 4 concepts of group memberships and permissions.
</ul>

<h3>Communities (Clubs)</h3>

Clubs are fairly generic Learning Communities, with no specific
attributes. Clubs are timeless, in that they don't start and end on
certain dates. Membership lists evolve, but the clubs remain unique,
without instances.

<p>

Thus, unlike class instances, the group type structure for clubs can
be much simplified. A root group type, called <tt>dotlrn_club</tt> can
encompass all club groups without any additional level of group typing.


<h2>dotLRN Packages</h2>

Learning communities have various packages of functionality. These
packages are much like existing OpenACS 4 packages, but with added
specifications, special callback interfaces, and predictable APIs that
not every OpenACS 4 package will have.

<p>

Thus, a <strong>dotLRN Package</strong> is composed of <b>three</b> OpenACS 4
packages:

<ul>
<li> an OpenACS 4 raw functionality package whose
dependencies are completely independent of the core dotLRN
application (e.g. bboard).
<li> an OpenACS 4 portlet, using the New Portal Architecture (NPA), whose
role is to summarize the information in one portlet
(e.g. bboard-portlet). This is dependent on the NPA, but not on dotLRN.
<li> an OpenACS 4 package (e.g. bboard-dotlrn), dependent on the core dotLRN
application, whose role is to wrap the raw OpenACS 4
functionality in the required dotLRN APIs.
</ul>

<p>

The relationship between the NPA and the portlet package are defined
using <b>ACS Service Contract</b>. This is described in greater detail
in The Portal Interface (futher down).

<p>

The relationship between dotLRN and the specific dotLRN-dependent
packages (dotlrn-bboard, dotlrn-faq, etc...) is also defined using
<b>ACS Service Contract</b>. ACS Service Contract defines a standard
provider/consumer interface with special contract APIs. The dotLRN
system defines the <b>dotLRN Applet Contract</b>, which includes the
following operations:
<ul>
<li> <b>GetPrettyName</b>: Obtain a pretty, presentable name for the
applet in question.
<li> <b>AddCommunity</b>: Add the applet to a
new community. This will most probably entail creating a new package for
this functionality, mounted below the community's main mount point. It
will also involve setting up applet-specific data structures (e.g. a
new forum inside bboard).
<li> <b>RemoveCommunity</b>: Remove the applet from the
community. This will entail cleaning up any applet-specific data
structures, removing the mount point and package instance.
<li> <b>AddUser</b>: add a user to the community, and perform any
applet-specific related actions. For applets that are represented via
a portlet (which is often, but not always, the case), this will add
the right portlet to the user's portal page for that community. It
will also add the generic portlet to the user's main, cross-community
workspace.
</ul>

<p>

The specifics of creating a dotLRN package are described in the <a
href=writing-a-dotlrn-package.adp>dotLRN Package Creation Guide</a>.

<h2>The Portal Interface</h2>

dotLRN will present most of its interface in portal form. Each dotLRN
package will present its information inside a <i>portlet</i> within
the appropriate portal page.

<p>

The current Portals package is inappropriate for this effort, given
that there is no clean API for creating portal pages, setting up
portal pages configuration, and rendering portal pages
programmatically. Instead, dotLRN will need a much more programmatic
portal mechanism.

<h3>A Portal Page</h3>

The <strong>New Portals Architecture (NPA)</strong> will feature the
ability to programmatically create and edit single <strong>Portal
Pages</strong>. A single Portal Page will be defined by:
<ul>
<li> a layout type (3-columns, 2-columns, etc..)
<li> a set of portlets and their individual configuration information
<li> a set of permissions for viewing the portal page
</ul>

<p>

The dotLRN application will then create, configure, and associate
individual portal pages with specific users' sections of the
site. This will allow portal functionality to exist within the dotLRN
application without handing over all control to the portals package.

<h3>Portlets</h3>

The NPA will require portlet packages much like the old portals
package. Each portlet package is responsible for:
<ul>
<li> rendering itself within a portal page
<li> providing a set of editable parameters
<li> linking to all appropriate features in the underlying OpenACS
package
</ul>

<h2>The Per-User Interface</h2>

Each user will have a single NPA interface which groups information
from all dotLRN classes in one page. Given the subsited architecture
of each class, the per-user interface must be subsite aware, and must
be able to query information across subsites.

<p>

The per-user interface will use slightly different portlets than the
community-specific ones, given that those portlets will require
scanning information across package instances. There is some thought
that this may be "not so kosher." As long as the cross-package
information is kept to a minimum, though, it should be just
fine. We'll make sure to keep associating packages with the
communities they belong to.
<p>

<%= [dotlrn_footer] %>
