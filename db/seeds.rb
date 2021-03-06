c1 = Customer.create(first_name: "Johnny", last_name: "flow")
c2 = Customer.create(first_name: "Raj", last_name: "Jamnis")
c3 = Customer.create(first_name: "Andrew", last_name: "Chung")
c4 = Customer.create(first_name: "Mike", last_name: "Smith")
c1.charges << Charge.new(created: 1389618241, paid:true, amount:4900, currency: "USD", refunded:false)
c1.charges << Charge.new(created: 1399618241, paid:true, amount:34232, currency: "USD", refunded:false)
c1.charges << Charge.new(created: 1409618241, paid:true, amount:33, currency: "USD", refunded:false)
c1.charges << Charge.new(created: 1419618241, paid:true, amount:23422, currency: "USD", refunded:false)
c1.charges << Charge.new(created: 1299618241, paid:true, amount:4233, currency: "USD", refunded:false)
c2.charges << Charge.new(created: 1330618241, paid:true, amount:48, currency: "USD", refunded:false)
c2.charges << Charge.new(created: 1385518241, paid:true, amount:5676, currency: "USD", refunded:false)
c2.charges << Charge.new(created: 1389999241, paid:true, amount:100, currency: "USD", refunded:false)
c3.charges << Charge.new(created: 1332618241, paid:true, amount:44323, currency: "USD", refunded:false)
c4.charges << Charge.new(created: 1383242341, paid:true, amount:59, currency: "USD", refunded:false)
#failed charges
c3.charges << Charge.new(created: 1389638241, paid:true, amount:654, currency: "USD", refunded:true)
c3.charges << Charge.new(created: 1389628241, paid:true, amount:432, currency: "USD", refunded:true)
c3.charges << Charge.new(created: 1389628241, paid:true, amount:5253, currency: "USD", refunded:true)
c4.charges << Charge.new(created: 1389638241, paid:true, amount:3, currency: "USD", refunded:true)
c4.charges << Charge.new(created: 1389558241, paid:true, amount:4256, currency: "USD", refunded:true)

#disputed charges
c1.charges << Charge.new(created: 1389248241, paid:false, amount:24289, currency: "USD", refunded:false)
c1.charges << Charge.new(created: 1343248241, paid:false, amount:757, currency: "USD", refunded:false)
c1.charges << Charge.new(created: 1389342441, paid:false, amount:44, currency: "USD", refunded:false)
c2.charges << Charge.new(created: 1334218241, paid:false, amount:999, currency: "USD", refunded:false)
c2.charges << Charge.new(created: 1333618241, paid:false, amount:2342, currency: "USD", refunded:false)
