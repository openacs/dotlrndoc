<%= [dotlrn_header "dotLRN Home - OpenForce"] %>

<div class="indent">

    <h2>Installing dotLRN</h2>

    <p class="indent">part of <a href="../">dotLRN</a>

	<p class="heading">Contents

    <ul>
        <li>Read the dotLRN FAQ
        <li>Install OpenACS v4.5 from CVS (not beta1!)
        <li>Get dotLRN from CVS
        <li>Install dotLRN on your system
        <li>Explore dotLRN
    </ul>


	<p class="heading">Read the <a href="dotlrn-faq.adp">dotLRN FAQ</a>
    <p class="indent">
        
        Especially important is the <a
        href="dotlrn-faq.adp#development">State of dotLRN
        Development</a> section.


	<p class="heading">Install OpenACS v4.5 from CVS (not beta1!)

    <p class="note">
       If you have a working OpenACS v4.5 installation from CVS,
        skip to the next section.
    </p>

    <p class="indent">
        If you don't have a working copy of OpenACS v4.5 (from current
        CVS), follow the extensive installation <a
        href="http://openacs.org/doc/openacs-4">documenation</a>. At the <a
        href="http://openacs.org/doc/openacs-4/openacs.html">point</a>
        where the OpenACS installation instructions tell you to
        &quot;download OpenACS&quot;, <a
        href="http://openacs.org/new-file-storage/download/cvs.html?version_id=140">
        get a current CVS checkout of OpenACS v4.5</a> from the CVS
        server. Alternatively, it may be possible to use a <a
        href="http://openacs.org/sdm/nightly-tarballs.tcl?package_id=9">nighly
        tarball of OpenACS v4.5</a> and avoid dealing with CVS, but we
        don't test this method and the warnings on the page apply.

    <p class="note">
        dotLRN dosen't use all of the modules in the OpenACS cvs
        tree. If you are installing for dotLRN only, you can save lots
        of time during the installation by checking out <b>only</b>
        the following modules: <tt>acs-core acs-datetime acs-events
        acs-interface acs-reference calendar faq file-storage
        general-comments news ref-timezones simple-survey spam</tt> If
        you already have a CVS checkout or the nightly tarball, remove
        the packages not in the above list.
    </p>

    <p class="note">
        Another installation timesaver is to cut down the huge
        files in <tt>/packages/ref-timezones/sql/common/</tt> to a few lines. 
        This is fine for testing.
    </p>
    

	<p class="heading">Get dotLRN from CVS

    <p class="indent">
       Getting dotLRN from CVS is just like getting OpenACS from CVS
       with a different CVSROOT. 
    </p>

    <p class="indent">
       In your <tt>/packages</tt> directory issue the following commands:
       
       <pre class="code">
       cvs -d :pserver:anonymous@dotlrn.openforce.net:/dotlrn-cvsroot login

       (hit return for prompted for password)

       cvs -z3 -d :pserver:anonymous@dotlrn.openforce.net:/dotlrn-cvsroot co dotlrn-core
       </pre>

   </p>
  

  <p class="heading">Install dotLRN on your system
  <p class="indent">

     Go the the &quot;ACS Package Manager&quot; (APM) on your system at
     <tt>http://yourserver/acs-admin/apm</tt> and hit the
     &quot;Install packages&quot; link. After the installer loads, you
     will see a list of the dotlrn packages you just got from
     CVS. Install them, return to the main APM page, and <b>restart
     your server</b>. After a few moments, refresh the main APM, and
     you should see <tt>dotlrn</tt>, <tt>new-portal</tt>, etc. in the
     list. 

  <p class="indent">
  
     Go to the &quot;Site Map&quot; on your system at
     <tt>http://yourserver/admin/site-map</tt>. Click the &quot;new
     sub folder&quot; link to the right of the &quot;Main Site&quot;
     link at the top of the table. Enter <tt>dotlrn</tt> in the textbox, 
     and hit the button. 
     
  <p class="indent">
     
     There will be a new entry in the URL column for
     &quot;dotlrn&quot; with &quot;(none)&quot; in the application
     column, to the right of this, click the &quot;New
     Application&quot; link.  Enter <tt>dotlrn</tt> into the textbox
     and select &quot;dotLRN&quot; from the drop-down list and hit the
     button.
     
  <p class="indent">

     There will now be &quot;dotlrn&quot; in the application column
     to the right of the &quot;dotlrn/&quot; URL. 
  
  <p class="indent">
  
     <b>You must now restart your server</b> 

  <p class="indent">

     After the server restarts, refresh the &quot;Site Map&quot;. You
     will see a &quot;(+)&quot; to the left of the dotlrn/ URL and a new
     URL: &quot;portal/&quot; with application &quot;new-portal&quot;. 

  <p class="note">
     Aren't seeing &quot;portal&quot;? Did you restart your server?
  </p>

  <p class="heading">Explore dotLRN

  <p class="indent">
      Go to dotLRN Administration at
      <tt>http://yourserver/dotlrn/admin</tt>.  Make some dotLRN
      users, terms, departments, classes. 

  <p class="indent">
      Here are some suggestions for things to check out in dotlrn:

  <p class="indent">
  
      Goto /dotlrn your "workspace". Click the "Control Panel" link at
      the top and try the "Customize this portal" link there.  Goto
      the admin pages for a class or community and try the "Manage
      Membership" link. Create a new sugroup for a class or community. 
      Edit or create new "Custom Portlets". 
      
  <p class="indent">
     Enjoy!

</div>

<%= [dotlrn_footer] %>
