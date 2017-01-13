import pdftables_api
c = pdftables_api.Client('b3x231rvl665')

for i in range(21,71):
	if (i<10):
		string='0'+str(i) 
	else:
		string=str(i)
	c.xlsx('district'+string+'.pdf', 'output'+string+'.xlsx')

  
