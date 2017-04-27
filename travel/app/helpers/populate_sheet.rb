require 'rubyXL'
workbook = RubyXL::Parser.parse("../../Form.xlsx")
worksheet = workbook[0]
#######################################################################################
#employees
#######################################################################################
#SAPid
cellSAP = worksheet.sheet_data[2][11]
cellSAP.change_contents('1056')

#name
cellName = worksheet.sheet_data[0][7]
cellName.change_contents('Nikita Drozdovskii')

#email
cellEmail = worksheet.sheet_data[1][7]
cellEmail.change_contents('nadrozdo@go.olemiss.edu')

#dept
cellDept = worksheet.sheet_data[2][7]
cellDept.change_contents('Computer Science')

#dept
cellDept = worksheet.sheet_data[2][7]
cellDept.change_contents('Computer Science')
#######################################################################################
#trips
#######################################################################################
#Contact Person
cellCP = worksheet.sheet_data[2][4]
cellCP.change_contents('Sameer Dhoju')
#Purpose
cellPurpose = worksheet.sheet_data[4][1]
cellPurpose.change_contents('Fun')
#Number
cellPurpose = worksheet.sheet_data[0][11]
cellPurpose.change_contents('12345')
#Start Date
cellSD = worksheet.sheet_data[4][8]
cellSD.change_contents('04.12.2017')
#Start Time
cellST = worksheet.sheet_data[4][7]
cellST.change_contents('1:00')
#End Date
cellED = worksheet.sheet_data[5][8]
cellED.change_contents('04.13.2017')
#End Time
cellET = worksheet.sheet_data[5][7]
cellET.change_contents('12:00')
#Accompaning person
cellAP = worksheet.sheet_data[5][9]
cellAP.change_contents('Blake,Brick,Robert')
#Exchange rate
cellEX = worksheet.sheet_data[41][12]
cellEX.change_contents('1.0')
#Comments
cellCom = worksheet.sheet_data[41][1]
cellCom.change_contents('That was a great trip!!!')
#######################################################################################
#other_expenses
#######################################################################################
#Day
cellDay = worksheet.sheet_data[7][5]
cellDay.change_contents('04.12.2017')
#Amount Breakfast
cellAmnt = worksheet.sheet_data[9][5]
cellAmnt.change_contents('8.79')
#Amount Lunch
cellAmnt2 = worksheet.sheet_data[10][5]
cellAmnt2.change_contents('4.31')
#Amount Dinner
cellAmnt3 = worksheet.sheet_data[11][5]
cellAmnt3.change_contents('15.64')
#Amount Lodging
cellAmnt4 = worksheet.sheet_data[13][5]
cellAmnt4.change_contents('77.26')
#Amount Tips
cellAmnt5 = worksheet.sheet_data[15][5]
cellAmnt5.change_contents('25.68')
#Amount Taxi
cellAmnt6 = worksheet.sheet_data[16][5]
cellAmnt6.change_contents('50.35')
#Amount Parking,Tolls
cellAmnt7 = worksheet.sheet_data[17][5]
cellAmnt7.change_contents('12.64')
#Amount Gasoline
cellAmnt8 = worksheet.sheet_data[18][5]
cellAmnt8.change_contents('43.24')
#Amount Calls
cellAmnt9 = worksheet.sheet_data[19][5]
cellAmnt9.change_contents('12.69')



workbook.write("../../Form.xlsx")