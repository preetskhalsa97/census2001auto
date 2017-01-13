import pdftables_api
c = pdftables_api.Client('ywjdw1ch1az9')

for i in range(22,26):
	if (i<10):
		string='0'+str(i) 
	else:
		string=str(i)
	c.xlsx('district'+string+'.pdf', 'output'+string+'.xlsx')

  
