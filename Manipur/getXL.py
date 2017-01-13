import pdftables_api
c = pdftables_api.Client('rm20ic2hu1j1')

for i in range(1,10):
	if (i<10):
		string='0'+str(i) 
	else:
		string=str(i)
	c.xlsx('district'+string+'.pdf', 'output'+string+'.xlsx')

  
