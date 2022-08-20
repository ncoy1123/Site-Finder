import requests

letter = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
extention = [".com",".net",".org"]

error=0
for x in range(0,3):
 for z in range(4,26):
  for y in range(0,26):
   for i in range(0,26):
  
    domain='http://www.'
    domain += letter[z]
    domain += letter[y]
    domain += letter[i]
    domain += extention[x]
    try:
     response = requests.get(domain, timeout=3)
    
    except requests.ReadTimeout as a:
     print(domain, "Timed out")
     error=1
     
    except requests.TooManyRedirects as a:
     print(domain, "Too Many Redirects")
     error=1
  
    except requests.ConnectionError as e:
      error=1
    
    if error == 0:
     if response.status_code < 400:
      print(domain)
    
    error=0
    domain = ''
