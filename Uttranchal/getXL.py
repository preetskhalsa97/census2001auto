import pdftables_api
c = pdftables_api.Client('ql1270gff7op')

for i in range(1,14):
	if (i<10):
		string='0'+str(i) 
	else:
		string=str(i)
	c.xlsx('district'+string+'.pdf', 'output'+string+'.xlsx')

  
