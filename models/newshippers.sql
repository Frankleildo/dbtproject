select 
sh.company_name
,se.shipper_email from 
{{source('sources','shippers')}} as sh
left join {{ref('shippers_email_new')}} as se on (sh.shipper_id = se.shipper_id)

