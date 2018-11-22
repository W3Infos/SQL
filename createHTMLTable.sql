----creating 3 columns header in table starts here------
select 
  (select 'Licensed' as th for xml path(''), type),
  (select 'Licensed Web Portal Application(s)'   as th for xml path(''), type),
  (select 'Additional Licenses'  as th for xml path(''), type)
union all 

select 
(select  'checkbox' as 'td' for xml path(''), type),
  (select p.name     as 'td' for xml path(''), type),
  (select ''          as 'td' for xml path(''), type)
 from testtable p 

 for xml path('tr')

 ----creating 3 columns header in table ends here------
