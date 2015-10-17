u = User.new(
    :name => "D. Brian Porter",
    :email => "porter4487@gmail.com",
    :password => "port75904",
    :role => ["Admin"].sample
)
u.save
