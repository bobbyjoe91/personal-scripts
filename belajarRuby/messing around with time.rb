require 'date'
def jam()
	puts "Waktu menunjukan pukul: "
	while true
		sleep 0.1
		print "#{Time.now.strftime('%H:%M:%S')}\r"
		#'\r' is carriage return (just Google it)
	end
end

jam()


