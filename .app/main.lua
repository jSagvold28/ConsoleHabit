local habits = {}

local function addHabit()

    io.write("Habit Name: ")

    local habitName = io.read()

    io.write("Goal of days practiced: ")

    local goal = io.read()

    habits[habitName] = { progress = 0, goal = goal }
    print("Habit was added successfully!")
    print("Make sure to log it each day!")
    
end

local function viewHabits()

    print("Active Habits: ")

    for habitName, habit in pairs(habits) do 
        print(habitName .. "-".. habit.progress .. "/" .. habit.goal)
    end
end

local function markCompleted()

    io.write("Habit Name: ")

    local habitName = io.read()

    if habits[habitName] then
        habits[habitName].progress = habits[habitName].progress + 1

        print("Habit was completed!")
    end
end

local function createHabitFile()


    local date = os.date("%Y_%m_%d_%H_%M")

    local file = io.open(date .. "_" .. habitName .. "_" .. goal .. ".txt", "w")
    
    file:write("File made")
    file:close()

    print("File created successfully")
end

local function clearConsole()
    os.execute("clear")
    os.execute("cls")
    io.write("\27[2J")
end

while true do

    print("")
    print("Commands: ")
    print(" ")
    
    print("add habit")
    print("create file")
    print("active habits")
    print("mark completed")
    print("clear - clear the current line")
    print(" ")


    io.write("Choosen command: ")

    local choice = io.read()

    if choice == "add habit" then
        addHabit()

    elseif choice == "create file" then
        createHabitFile()

    elseif choice == "active habits" then
        viewHabits()

    elseif choice == "mark completed" then
        markCompleted()

    elseif choice == "clear" then
        clearConsole()

    end
end
