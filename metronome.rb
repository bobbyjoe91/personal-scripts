print "Insert tempo: "
tempo = gets.chomp.to_f # bpm
print "Insert time signature: "
time_sign = gets.chomp.to_i # 2,3,4,5,6,7 and so on

counter = 0
loop do
    counter += 1
    if counter == time_sign+1
        counter = 1
    end
    print "\a",counter,"\r" # look for another way to beep
    sleep(60/tempo) # interval between beat in sec
end


