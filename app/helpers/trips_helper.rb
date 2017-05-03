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
cellSAP.change_contents(trip.user.sap)

#name
cellName = worksheet.sheet_data[0][7]
cellName.change_contents(trip.user.name)

#email
cellEmail = worksheet.sheet_data[1][7]
cellEmail.change_contents(trip.user.email)

#dept
cellDept = worksheet.sheet_data[2][7]
cellDept.change_contents(trip.dept)

#dept
cellDept = worksheet.sheet_data[2][7]
cellDept.change_contents(trip.dept)
#######################################################################################
#trips



#######################################################################################
#Contact Person
cellCP = worksheet.sheet_data[2][4]
cellCP.change_contents(trip.contact)
#Purpose
cellPurpose = worksheet.sheet_data[4][1]
cellPurpose.change_contents(trip.place)
#Number
cellPurpose = worksheet.sheet_data[0][11]
cellPurpose.change_contents(trip.tripno)
#Start Date
cellSD = worksheet.sheet_data[4][8]
cellSD.change_contents(trip.begindate)
#Start Time
cellST = worksheet.sheet_data[4][7]
cellST.change_contents(trip.begintime)
#End Date
cellED = worksheet.sheet_data[5][8]
cellED.change_contents(trip.enddate)
#End Time
cellET = worksheet.sheet_data[5][7]
cellET.change_contents(trip.endtime)
#Accompaning person
cellAP = worksheet.sheet_data[5][9]
cellAP.change_contents(trip.accomp)
#Exchange rate
cellEX = worksheet.sheet_data[41][12]
cellEX.change_contents('1.0')
#Comments
cellCom = worksheet.sheet_data[41][1]
cellCom.change_contents(trip.purpose)
#######################################################################################
#other_expenses
#######################################################################################
#Day
c=5
@trip.transactions.order(:date).each do |transaction|
	cellDay = worksheet.sheet_data[7][c]
	tempdate=worksheet.sheet_data[7][c].value	
	if (tempdate.nil?)
		cellDay = worksheet.sheet_data[7][c]
		cellDay.change_contents(transaction.date)
		tempdate=worksheet.sheet_data[7][c].value
			if (transaction.dest=="Breakfast")
				cellAmnt = worksheet.sheet_data[9][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Lunch")
				cellAmnt = worksheet.sheet_data[10][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Dinner")
				cellAmnt = worksheet.sheet_data[11][c]
				cellAmnt.change_contents(transaction.amount)		
			elsif (transaction.dest=="Lodging")
				cellAmnt = worksheet.sheet_data[13][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Meal tips")
				cellAmnt = worksheet.sheet_data[15][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Taxi")
				cellAmnt = worksheet.sheet_data[16][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Parking toll")
				cellAmnt = worksheet.sheet_data[17][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Gasoline")
				cellAmnt = worksheet.sheet_data[18][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Business Calls")
				cellAmnt = worksheet.sheet_data[19][c]
				cellAmnt.change_contents(transaction.amount)	
			end	
	else

		cellcheck = worksheet.sheet_data[9][12]
		cellDay.change_contents(transaction.date)
		check=worksheet.sheet_data[9][12].value
		if (tempdate==check)
			if (transaction.dest=="Breakfast")
				cellAmnt = worksheet.sheet_data[9][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Lunch")
				cellAmnt = worksheet.sheet_data[10][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Dinner")
				cellAmnt = worksheet.sheet_data[11][c]
				cellAmnt.change_contents(transaction.amount)		
			elsif (transaction.dest=="Lodging")
				cellAmnt = worksheet.sheet_data[13][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Meal tips")
				cellAmnt = worksheet.sheet_data[15][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Taxi")
				cellAmnt = worksheet.sheet_data[16][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Parking toll")
				cellAmnt = worksheet.sheet_data[17][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Gasoline")
				cellAmnt = worksheet.sheet_data[18][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Business Calls")
				cellAmnt = worksheet.sheet_data[19][c]
				cellAmnt.change_contents(transaction.amount)	
			end	
			next
		else
			
			if (transaction.dest=="Breakfast")
				cellAmnt = worksheet.sheet_data[9][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Lunch")
				cellAmnt = worksheet.sheet_data[10][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Dinner")
				cellAmnt = worksheet.sheet_data[11][c]
				cellAmnt.change_contents(transaction.amount)		
			elsif (transaction.dest=="Lodging")
				cellAmnt = worksheet.sheet_data[13][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Meal tips")
				cellAmnt = worksheet.sheet_data[15][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Taxi")
				cellAmnt = worksheet.sheet_data[16][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Parking toll")
				cellAmnt = worksheet.sheet_data[17][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Gasoline")
				cellAmnt = worksheet.sheet_data[18][c]
				cellAmnt.change_contents(transaction.amount)
			elsif (transaction.dest=="Business Calls")
				cellAmnt = worksheet.sheet_data[19][c]
				cellAmnt.change_contents(transaction.amount)	
			end	
		end

		c=c+1

	end	
end

#total 
for r in 9..19
total=0
for c in 5..11
	if(worksheet.sheet_data[r][c].value!=nil)
		total=total+worksheet.sheet_data[r][c].value
	end
end
	celltotal = worksheet.sheet_data[r][12]
	celltotal.change_contents(total)
end
total =0
for r in 9..13
	if(worksheet.sheet_data[r][12].value!=nil)
		total=total+worksheet.sheet_data[r][12].value
	end
end
	celltotal = worksheet.sheet_data[14][12]
	celltotal.change_contents(total)
total =0
for r in 15..19
	if(worksheet.sheet_data[r][12].value!=nil)
		total=total+worksheet.sheet_data[r][12].value
	end
end
	celltotal = worksheet.sheet_data[20][12]
	celltotal.change_contents(total)
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
for c in 9..12
	total =0
for r in 23..30
	if(worksheet.sheet_data[r][c].value!=nil)
		total=total+worksheet.sheet_data[r][c].value
	end
end
	celltotal = worksheet.sheet_data[32][c]
	celltotal.change_contents(total)
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
celloetotal.change_contents(@trip.registration_fees.sum(:'amount'))
total =0
for r in 35..18
	if(worksheet.sheet_data[r][4].value!=nil)
		total=total+worksheet.sheet_data[r][4].value
	end
end
	celltotal = worksheet.sheet_data[39][4]
	celltotal.change_contents(total)


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
celloetotal.change_contents(@trip.other_expenses.sum(:'amount'))



workbook.write("Excel/trip_#{@trip.user.id}_#{@trip.id}.xlsx")


end
end
