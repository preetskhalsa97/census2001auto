import pdftables_api
c = pdftables_api.Client('eqnu7qshno1h')

for i in range(3,38):
	if (i<10):
		string='0'+str(i) 
	else:
		string=str(i)
	c.xlsx('district'+string+'.pdf', 'output'+string+'.xlsx')

  
