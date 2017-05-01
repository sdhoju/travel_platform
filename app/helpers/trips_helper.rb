module TripsHelper
def rubyxl(trip)
	@trip =trip
Rails.root.join "app", "assets", "Form.xlsx"
workbook = RubyXL::Parser.parse("Form.xlsx")

workbooknew =workbook 
worksheet = workbooknew[0]
#######################################################################################
#employees
#######################################################################################
#SAPid
cellSAP = worksheet.sheet_data[2][11]
cellSAP.change_contents('1056')

#name
cellName = worksheet.sheet_data[0][7]
cellName.change_contents(trip.place)

#email
cellEmail = worksheet.sheet_data[1][7]
cellEmail.change_contents(trip.purpose)

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

#Transportation
i=23
j=4
@trip.transportations.each do |transportation|
	cellAmnt9 = worksheet.sheet_data[i][j]
	cellAmnt9.change_contents(transportation.from)
	j=j+2
	cellAmnt9 = worksheet.sheet_data[i][j]
	cellAmnt9.change_contents(transportation.to)
	j=j+2
	cellAmnt9 = worksheet.sheet_data[i][j]
	cellAmnt9.change_contents(transportation.mileage)
	j=j+1
	cellAmnt9 = worksheet.sheet_data[i][j]
	cellAmnt9.change_contents(transportation.amount)
	j=j+1
	cellAmnt9 = worksheet.sheet_data[i][j]
	cellAmnt9.change_contents(transportation.airfare)
	j=j+1
	cellAmnt9 = worksheet.sheet_data[i][j]
	cellAmnt9.change_contents(transportation.rental_car)
	j=j+1
	cellAmnt9 = worksheet.sheet_data[i][j]
	cellAmnt9.change_contents(transportation.bus_train)



	j=4
	i=i+1
end

#Registration fee
@trip.registration_fees.each do |rf|
	if(rf.name=="Conference Fee")
		celloeday = worksheet.sheet_data[35][4]
		celloeday.change_contents(rf.amount)
	elsif (rf.name=="Banquet Fee")
		celloeday = worksheet.sheet_data[36][4]
		celloeday.change_contents(rf.amount)
	elsif (rf.name=="Dues")
		celloeday = worksheet.sheet_data[37][4]
		celloeday.change_contents(rf.amount)	
	end
end	
celloetotal = worksheet.sheet_data[39][4]
celloetotal.change_contents(RegistrationFee.sum(:'amount'))

#other Expenses
i=35
j=9
@trip.other_expenses.each do |oe|
	celloeday = worksheet.sheet_data[i][j]
	celloeday.change_contents(oe.day)
	j=j+1
	celloedesc = worksheet.sheet_data[i][j]
	celloedesc.change_contents(oe.description)
	j=j+2
	celloeamt = worksheet.sheet_data[i][j]
	celloeamt.change_contents(oe.amount)
	i=i+1
end	
celloetotal = worksheet.sheet_data[39][12]
celloetotal.change_contents(OtherExpense.sum(:'amount'))

workbook.write("Excel/trip_#{@trip.id}.xlsx")


end
end
