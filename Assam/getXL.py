import pdftables_api
c = pdftables_api.Client('ee04p8w4fl2o')

for i in range(1,24):
	if (i<10):
		string='0'+str(i) 
	else:
		string=str(i)
	c.xlsx('district'+string+'.pdf', 'output'+string+'.xlsx')

  
