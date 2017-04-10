print"To Enter the values first enter product name then the brand name and then the demand"
choice=input("Enter 1 to insert")
a = []
if choice==1:
	li = []
	li.append(raw_input())
	li.append(raw_input())
	li.append(int(raw_input()))
	a.append(li)
else:
	print"No further input"
