 -----Get second highest employee salary details starts -------------

 select top 1 * from Emaployee where salary < (select max(salary) from Employee)

 -----Get second highest employee salary details ends -------------
