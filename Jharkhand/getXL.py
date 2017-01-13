import pdftables_api
c = pdftables_api.Client('ctslevg3totv')

for i in range(1,19):
	if (i<10):
		string='0'+str(i) 
	else:
		string=str(i)
	c.xlsx('district'+string+'.pdf', 'output'+string+'.xlsx')

  
