<%= [dotlrn_header "Installing dotLRN - OpenForce"] %>

<div class="indent">

    <h2>Installing dotLRN</h2>

    <p class="indent">part of <a href="../">dotLRN</a></p>

    <p class="indent"><small>Last updated: $Date$</small>

    <p class="heading">Contents</p>

    <ul>
        <li>Read the dotLRN FAQ
        <li>Get and Install OpenACS from development CVS
        <li>Get dotLRN from CVS
        <li>Install dotLRN on your system
        <li>Explore dotLRN
        <li>Reinstalling dotLRN
    </ul>


    <p class="heading">Read the <a href="dotlrn-faq.adp">dotLRN FAQ</a></p>

    <p class="indent">

        Especially important is the <a
        href="dotlrn-faq.adp#development">State of dotLRN
        Development</a> section.

    </p>

    <p class="heading">Get and Install OpenACS from development CVS</p>

    <p class="note">

       If you have a working OpenACS installation from the latest
       development CVS, skip to the next section.

    </p>

    <p class="indent">
       
       If you are installing OpenACS, follow the extensive
       installation <a
       href="http://openacs.org/doc/openacs-4">documenation</a>.
       <strong>Stop</strong> at the <a
       href="http://openacs.org/doc/openacs-4/openacs.html">point</a>
       where the OpenACS installation instructions tell you to
       &quot;download OpenACS&quot;. Don't use the &quot;Quick
       Downloads&quot;! Continue on with this document.

    <p class="indent">
      If you have an account on openacs.org, do this:
      
      <pre>      
      (set the CVS_RSH variable in your shell envrioment to &quot;ssh&quot;)
      cvs -z3 -d youraccount@openacs.org:/cvsroot checkout acs-core
      (enter your openacs.org password)
      </pre>

    <p class="indent">
      If you have an don't have an account on openacs.org, do this:

      <pre>      
      cvs -d :pserver:anonymous@openacs.org:/cvsroot login
      (just hit return for the password)
      cvs -z3 -d :pserver:anonymous@openacs.org:/cvsroot checkout acs-core
      </pre>

    <p class="indent">

      dotLRN requires some more modules that are not in
      <tt>acs-core</tt>, but not all of the packages in the OpenACS
      source tree. Next are the commands to get these modules.

    <p class="indent">
      <tt>cd</tt> to the newly created <tt>/openacs-4/packages</tt>
      directory before the next step.

    <p class="indent">

      If you have an account on openacs.org, do this:
      
      <pre>      
      cvs -z3 -d youraccount@openacs.org:/cvsroot checkout acs-datetime \ 
      acs-events acs-interface calendar faq file-storage \
      general-comments news ref-timezones simple-survey spam 
      (enter your openacs.org password)
      </pre>

    <p class="indent">
      If you have an don't have an account on openacs.org, do this:

      <pre>      
      cvs -z3 -d :pserver:anonymous@openacs.org:/cvsroot checkout acs-datetime \
      acs-events acs-interface calendar faq file-storage \
      general-comments news ref-timezones simple-survey spam
      </pre>

    <p class="note">
      Installation timesavers: If you have a full checkout of the
      OpenACS tree, or are trying a nightly tarball, remove all the
      modules not in <tt>acs-core</tt> or in the above
      <tt>checkout</tt> commands. Also, cut down the
      <strong>huge</strong> (10MB!)  files in
      <tt>/packages/ref-timezones/sql/common/</tt> to a line or two.

    <p class="indent">
      You will now have an <tt>/openacs-4</tt> directory with all of OpenACS
      required by dotLRN. 

    <p class="heading">Get dotLRN from CVS</p>

    <p class="indent">
       Getting dotLRN from CVS is just like getting OpenACS from CVS
       with a different CVSROOT.

    <p class="indent">

      Change to your <tt>/openacs-4/packages</tt> directory issue the
      following commands:
       
      <pre>
      cvs -d :pserver:anonymous@dotlrn.openforce.net:/dotlrn-cvsroot login
      (hit return for prompted for password)
      cvs -z3 -d :pserver:anonymous@dotlrn.openforce.net:/dotlrn-cvsroot co dotlrn-core       
      </pre>

    <p class="indent">
      This will fetch the following packages to your
      <tt>/openacs-4/packages</tt> directory:

      <pre>
      dotlrn
      dotlrn-syllabus
      dotlrn-research
      new-portal
      profile-provider
      sloan-bboard
      user-profile
      bboard-portlet
      dotlrn-bboard
      calendar-portlet
      dotlrn-calendar
      dotlrn-portlet
      dotlrn-dotlrn
      faq-portlet
      dotlrn-faq
      fs-portlet
      dotlrn-fs
      news-portlet
      dotlrn-news
      static-portlet
      dotlrn-static
      survey-portlet
      dotlrn-survey
      </pre>

    <p class="indent">
      Next, copy the <tt>/openacs-4</tt> directory to where ever you
      prefer your webserver root to be, traditionally
      <tt>/web</tt>. Now you can continue with the OACS <a
      href="http://openacs.org/doc/openacs-4/openacs.html">installation
      document</a> at the third bullet point. Continue with the
      standard OACS installation process until your reach the
      &quot;Congratulations!&quot; front page, then return here.

  <p class="heading">Install dotLRN on your system</>
  <p class="indent">

     Go the the &quot;ACS Package Manager&quot; (APM) on your system
     at <tt>http://yourserver/acs-admin/apm</tt> and hit the
     &quot;Install packages&quot; link. After the installer loads, you
     will see a list of the dotlrn packages you just got from
     CVS. Install them, return to the main APM page, and <b>restart
     your server</b>. 
  </p>

  <p class="indent">
  
     Go to the &quot;Site Map&quot; on your system at
     <tt>http://yourserver/admin/site-map</tt>. Click the &quot;new
     sub folder&quot; link to the right of the &quot;Main Site&quot;
     link at the top of the table. Enter <tt>dotlrn</tt> in the
     textbox, and hit the button.
  
  </p>     

  <p class="indent">
     
     There will be a new entry in the URL column for
     &quot;dotlrn&quot; with &quot;(none)&quot; in the application
     column, to the right of this, click the &quot;New
     Application&quot; link.  Enter <tt>dotlrn</tt> into the textbox
     and select &quot;dotLRN&quot; from the drop-down list and hit the
     button.
  
  </p>   
  
  <p class="indent">

     There will now be &quot;dotlrn&quot; in the application column to
     the right of the &quot;dotlrn/&quot; URL.
  
  </p>
  
  <p class="indent">
  
     <b>You must now restart your server, wait, and reload the
     &quot;Site Map&quot; page in your browser</b> After the server
     restarts, refresh the &quot;Site Map&quot;. You will see a
     &quot;(+)&quot; to the left of the dotlrn/ URL and a new URL:
     &quot;portal/&quot; with application &quot;new-portal&quot;.

  </p>

  <p class="note">

     Aren't seeing the &quot(+)&quot; beside <tt>dotlrn/</tt>?
     Something went wrong. Did you restart your server? Restart again
     while doing a <tt>tail -f</tt> of the error log. <tt>Unique constraint
     violations</tt> while creating certain site-nodes are a known issue,
     but any other errors should be reported to us.

  </p>

  <!-- TODO: Add note about developer-support here -->

  <p class="indent">

     One last step: Then set the &quot;DefaultMaster&quot; parameter
     of the Root (&quot;Main site&quot;) from
     <tt>/www/default-master</tt> to
     <tt>/packages/dotlrn/www/dotlrn-default-master</tt>

  </p>

  <!-- TODO: re-vamp this section -->

  <p class="heading">Explore dotLRN</p>

  <p class="indent">

      Go to dotLRN Administration at
      <tt>http://yourserver/dotlrn/admin</tt>.  Make some dotLRN
      users, terms, departments, classes. 
  
  </p>

  <p class="indent">

      Here are some suggestions for things to check out in dotlrn:

  </p>

  <p class="indent">
  
      Goto /dotlrn your "workspace". Click the "Control Panel" link at
      the top and try the "Customize this portal" link there.  Goto
      the admin pages for a class or community and try the "Manage
      Membership" link. Create a new sugroup for a class or community. 
      Edit or create new "Custom Portlets". 

  </p>

      
  <p class="indent">

     Enjoy!

  </p>


  <p class="heading">Reinstalling dotLRN</p>

  <p class="indent">
     
     Sometimes you have to dump your DB. Here's the dotLRN reinstall
     process.

     <ol>
       <li>Stop <tt>aolserver</tt> and any open <tt>sqlplus</tt>
       sessions <li>Create a drop/create user script. Lars has a swift
       <a href="http://pinds.com/acs-tips/oracle-statements">tool</a>
       to help you create one.  <li>In a shell, type:
         <pre class="code">
           % sqlplus internal < my-drop-create-script.sql
         </pre>
        
          Verify that your database user was droped and created
          successfully.  If you get an error saying: <tt>Cannot drop a
          user that is currently connected</tt>, close all open
          <tt>sqlplus</tt> sessions and repeat the command above.
       <li>Now would be a good time to <tt>cvs update</tt> OpenACS and dotLRN
       <li>Re-start <tt>aolserver</tt>, wait 20 seconds or so, and
           do the standard OpenACS installation.
       <li>Go to the <strong>Install dotLRN on your system</strong>
           section of this document and continue from there.

</div>

<%= [dotlrn_footer] %>
