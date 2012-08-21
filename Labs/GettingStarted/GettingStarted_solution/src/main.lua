local sched = require 'sched'

local function main ()
	print('Helloworld!')
	os.exit()
end

sched.run(main)
sched.loop()
