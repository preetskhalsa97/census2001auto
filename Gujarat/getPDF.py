import urllib 

def downloadPDF(state_code):

	#getting the string fpr state code
	if (state_code<10):
		string_state='0'+str(state_code)
	else:
		string_state=str(state_code)

	i=1

	while True:
		#getting the string for district code 
		if (i<10):
			string_district='0'+str(i)
		else:
			string_district=str(i)

		try:
			urllib.urlretrieve ("http://censusindia.gov.in/Dist_File/datasheet-"+string_state+string_district+".pdf","district"+string_district+".pdf")
		except:
			break
		i=i+1

#Gujarat
code=24
downloadPDF(code)






