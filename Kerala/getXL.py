import pdftables_api
c = pdftables_api.Client('bfgu7mbg51q8')

for i in range(1,15):
	if (i<10):
		string='0'+str(i) 
	else:
		string=str(i)
	c.xlsx('district'+string+'.pdf', 'output'+string+'.xlsx')

  
