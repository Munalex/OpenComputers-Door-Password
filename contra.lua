local component = require("component") -- include the redstone API
local sides = require("sides") -- Include the sides of the redstone API

intentos = 3 -- Attempts

function main()
    os.execute("cls") -- clear the screen
    print("Crash_Manucoot Password System")
    print("Enter the Password Now!\n")
    print(intentos .. "Attempt(s)" .. "left:\n")
    contra = io.read() -- Read the keyboard  
    if contra == "password" then -- change the string inside the quotes to change the password
        print("Password Correct!")
        component.redstone.setOutput(sides.east,15) -- Send a redstone pulse to the rigth 
        os.sleep(3)
        component.redstone.setOutput(sides.east,0) -- Send a negative redstone pulse to the rigth 
        intentos = 3
        return main() -- restart the program to the begin
    else
        intentos = intentos -1
        if intentos == 0 then
            os.execute("cls")
            for i=1,100 do
                print("HAHAHAHAHAHAHAAHAHAHAHAHAHAHAAHAHAHAHAHAHAHAHA")
            end
            component.redstone.setOutput(sides.north,15) -- Send a negative redstone pulse to the back
            os.sleep(2)
            component.redstone.setOutput(sides.north,0)  -- Send a redstone pulse to the back
            intentos = 3
            return main()
        else
            os.execute("cls")
            return main()
            
        end
        
    end
    
end

main()