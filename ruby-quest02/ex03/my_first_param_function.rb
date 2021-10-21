def detionation_in(seconds_left)
    puts("detonation in... #{seconds_left} secondes.")
end

timer = 10
while (timer > 0)
    detionation_in(timer)
    timer -= 1
end