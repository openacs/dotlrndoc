
proc dotlrn_header {title} {
    return "<HEAD><TITLE>$title</TITLE>
<link REL=StyleSheet HREF=/style.css TYPE=text/css MEDIA=screen>
</HEAD>
<BODY bgcolor=white marginheight=30 marginwidth=30>"
}

proc dotlrn_footer {} {
    return "<p>
<hr>
<address>dotlrn@openforce.net</address>
</BODY>"
}
