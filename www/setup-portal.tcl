
# Create the portal
set portal_package_id [apm_package_id_from_key new-portal]
set news_package_id [apm_package_id_from_key news]
set faq_package_id [apm_package_id_from_key faq]

db_transaction {
    set portal_id [portal::create -name "dotLRN Doc" -context_id $portal_package_id [ad_conn user_id]]
    
    news_portlet::add_self_to_page -portal_id $portal_id -package_id $news_package_id -param_action overwrite
    
    faq_portlet::add_self_to_page -portal_id $portal_id -package_id $faq_package_id -param_action overwrite

    set content_id [static_portal_content::new -package_id [ad_conn package_id] -content "foo" -pretty_name "dotLRN Documentation"]

    static_portal_content::add_to_portal -portal_id $portal_id -package_id [ad_conn package_id] -content_id $content_id
}

doc_body_append "done!"
