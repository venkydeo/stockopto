from operator import itemgetter
print"To Enter the values first enter product name then the brand name and then the demand"
choice=input("Enter 1 to insert")
a = []
while(choice==1):
	if choice==1:
		li = []
		li.append(raw_input())
		li.append(raw_input())
		li.append(int(raw_input()))
		a.append(li)
	else:
   		print"No further input"
	print"To Enter the values first enter product name then the brand name and then the demand"
	choice=input("Enter 1 to insert")
b=sorted(a,key=itemgetter(2))
c=b[:5]
print c
