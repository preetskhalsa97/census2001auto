import pdftables_api
c = pdftables_api.Client('80w1fpv0089g')

for i in range(1,2):
	if (i<10):
		string='0'+str(i) 
	else:
		string=str(i)
	c.xlsx('district'+string+'.pdf', 'output'+string+'.xlsx')

  
