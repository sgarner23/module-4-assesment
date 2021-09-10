log_file = open("um-server-01.txt") #opens the .txt file so it can comb through it and saving it into a variable called log_file


def sales_reports(log_file): #delcaring a function called sales_report and requiring a parameter.  

    for line in log_file: #looping through each line in the .txt file 
        line = line.rstrip() #removing all the whitespace from the line
        day = line[0:3] #finding the day Tuesday. Looking at the first word in the line that is 3 characters long then slicing before the third position 
        if day == "Mon": #looking for if the day is Tuesday and if it is then.... (switched to Mon for part 2)
            print(line) #printing out all deliveries from Tuesday based on the logic above 


sales_reports(log_file) #calling the function and passing in our log_file variable which pulles from the um-server-01.text file. 

#extra credit:

def large_deliveries(log_file):
    for line in log_file:
        line = line.rstrip()
        melon = int(line[16:18])
        if melon > 10:
            print(line)

large_deliveries(log_file)
