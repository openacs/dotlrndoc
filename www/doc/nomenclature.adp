<%= [dotlrn_header "dotLRN Nomenclature"] %>
<h2>dotLRN Nomenclature</h2>
by <a href=mailto:ben@openforce.net>Ben Adida</a>, part of <a href=./>dotLRN Documentation</a>.
<hr><P>

dotLRN is a <strong>Course Management System</strong> which means it
helps manage courses, but does not perform the actual instruction of
the courses. This document defines the <strong>nomenclature</strong>
in the dotLRN project, because the components of a Course
Management System are named very differently by various teaching
institutions. In particular, since dotLRN is being developed for MIT
Sloan, an attempt is made to cleanly work within existing MIT
terminology while being generic enough to use by all.

<p>

<h2>Class</h2>

A <strong>class</strong> is a topic being offered by the
institution. An example is "Introduction to Micro-Economics". Some
institutions use the term "course", but this conflicts with MIT's
reference to entire departments (Course 15). A class is thus a single
topic that spans across years and does not specify a single offering
of that topic.

<h2>Class Instance</h2>

A <strong>class instance</strong> is a particular offering of a
class. An example is "Introduction to Micro-Economics - Spring 2002,
Section A". A class instance thus has a very well-defined student
list, professor, and TAs. It has specific material relevant to that
offering of the class, a schedule, news events, etc...

<h2>Student</h2>

A student is an individual who is registered for a particular class
instance.


<h2>Instructor</h2>

An instructor is one who teaches a particular class instance. An
instructor could be a professor in title or not. The term instructor
allows the system to be more flexible to different teaching
environments.

<h2>TA</h2>

A TA (Teaching Assistant) is one who assists the instructor in the
teaching of the class instance.

<h2>Administrator</h2>

An administrator is one who assist in managing issues surrounding a
class instance, but doesn't play a role in the teaching process.

<h2></h2>

<%= [dotlrn_footer] %>
