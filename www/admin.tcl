
set package_id [ad_conn package_id] 

db_multirow content_portals select_content_portals {
    select content_id, pretty_name
    from static_portal_content
    where package_id= :package_id
}

set portal_id [dotlrndoc::get_portal_id]
ad_return_template
