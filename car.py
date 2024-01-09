#Car app
#Enter car code
#enter quantity
import os
import platform
from tkinter import Menu
from traceback import print_tb
import mysql.connector

mydb = mysql.connector.connect(user='root', password='',
                              host='127.0.0.1',
                              database='car_data')
mycursor=mydb.cursor()
def carsView():
    print("Select the search criteria : ")
    print("1. Car Code")
    print("2. Car Name")
    print("3. All")
    ch=int(input("Enter the choice : "))
    if ch==1:
        s=int(input("Enter  Car Code : "))
        rl=(s,)
        sql="select * from cars where car_code=%s"
        mycursor.execute(sql,rl)
        res=mycursor.fetchall()
        for x in res:
            print(x)

    elif ch==2:
        s=input("Enter Car Name : ")
        rl=(s,)
        sql="select * from cars where car_name=%s"
        mycursor.execute(sql,rl)
        res=mycursor.fetchall()
        for x in res:
            print(x)
            
    elif ch==3:
        sql="select * from cars"
        mycursor.execute(sql)
        res=mycursor.fetchall()
        print("The car details are as follows : ")
        print("*******************************************************************************************")
        print("(cars ID, cars Category, Car Name, Car Description,Car Price,Car Code, Year of manufactor )")
        print("*******************************************************************************************")
        for x in res:
            print(x)
            print("**********************************************************************************")


def carPurchase():
    print("Please enter the details to purchase cars product :")
    sql="select * from cars"
    mycursor.execute(sql)
    res=mycursor.fetchall()
    print("The cars Stock details are as follows : ")
    print("*******************************************************************************************")
    print("(cars ID, cars Category, Car Name, Car Description,Car Price,Car Code, Year of manufactor )")
    print("***************************************************************************************")
    for x in res:
        print(x)
        print("**********************************************************************************")
        cost=0.0
        LI=dict()
        ch='y'
        
    while(ch!='n'):
        c1=input("Enter the car code to be purchased : ")
        r1=(c1,)
        sql="Select car_price from cars where car_code=%s"
        mycursor.execute(sql,r1)
        res=mycursor.fetchall()
        tsum=0
        for x in res:
            cost=float(x[0])
            print("Car Cost")
            print("***********")
            print ("Rs: ",cost)
            print("***********")
            q1=int(input("Enter the car quantity: "))
            cc=q1*cost
            print(cc)
            tsum=tsum+cc
            ch=input("Want to purchase more items:y/n")
            if ch == "no":
                Menu()

        print("Total cost of item purchased is Rs.",tsum)
        print("Do you want Loan for this car ?")
        loan=input("choose: y/n")
        if loan=="y":
            loanamt=int(input("Enter loam amount"))
            if loanamt>tsum/2:
                print("Only half of car price loan is approval")
            else:
                ltotal=tsum - loanamt
                print("Congrats Loan approved")
                print("Total Cost to pay Now :",ltotal)
        else:
            MenuSet()

def MenuSet(): 
    print("Welcome to Digital Car Showroom")
    print("Enter 1 : To View Complete cars Stock")
    print("Enter 2 : To Purchase any car ")
    try:
       userInput = int(input("Please Select An Above Option: ")) 
    except ValueError:
        exit("\nError! That's Not A Number") 
    else:
        print("\n") 
    if(userInput == 1):
        carsView()
    elif (userInput==2):
        carPurchase()
    else:
        print("Enter correct choice. . . ")
MenuSet()
def runAgain():
    runAgn = input("\nwant To Run Again y/n: ")
    while(runAgn.lower() == 'y'):
        if(platform.system() == "Windows"):
            print(os.system('cls'))
        else:
            print(os.system('clear'))
MenuSet()
runAgn = input("\nwant To Run Again Y/n: ")
print("Thank You")
runAgain()