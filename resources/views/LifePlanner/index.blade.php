<html>
    <head>
        <title> Antipolo - Life Planner </title>
        
        <link href="/css/style.css" rel="stylesheet">
    </head>

    <body>
        <header class="intro">
        <div class="introduction">
            <h1>LIFE PLANNER</h1>
            <h3>Get Organized!</h3>
        </div>

        <div class="storage">
            <h2>To-Do-List</h2>
            <form action="addTask.php" method="POST">
            <input type="text" class="addTodo" name="addTodo" placeholder="Add your Tasks" />
            <button class="todobutton" name="taskBtn">
                <img src="add btn.png" />
            </button>
            </form>
        </div>

        <div class="container">
            <h2>Goals and Plans</h2>
            <form action="addTask.php" method="POST">
            <input type="text" name="addGoalsPlans" class="addGoalsPlans" placeholder="Add your Goals and Plans" />
            <button class="goalsPlansButton" name="goalsBtn">
                <img src="add btn.png" />
            </button>
            </form>
        </div>

        <div class="holder">
            <h2>Appointments</h2>
            <form action="addTask.php" method="POST">
            <input type="text" name="addAppointments" class="addAppointments" placeholder="Add your Appointments" />
            <button class="appointmentsButton" name="appointmentsBtn">
                <img src="add btn.png" />
            </button>
            </form>
        </div>

        <div class="repo">
            <h2>Errands</h2>
            <form action="addTask.php" method="POST">
            <input type="text" name="addErrands" class="addErrands" placeholder="Add your Errands" />
            <button class="errandsButton" name="errandsBtn">
                <img src="add btn.png" />
            </button>
            </form>
        </div>
        
        </header>
    </body>
</html>