package basiconline

class AccountController {

    def index() { } //default action that comes with every controller
    def logIn(){ //does not have logic, but is used to get to the logIn view

    }

    def newUser(){ //does not have logic, but is used to get to the newUser view

    }

    //Logic that handles associating the user with an existing account
    def submit(){
        def email = params.emailAddress //sets a variable named email to have a value passed to it associated with the key emailAddress
        def passwrd = params.password //sets a variable named passwrd to have a value passed to it associated with the key password
        def usr = Users.findByEmailAddressAndPassword(email, passwrd) //uses a dynamic finder to search the database for an instance with the specified variables
        if(usr!=null){
            render("Welcome Back $usr.firstName") //renders text on screen and accesses the usr instance's firstName variable
        }else{
            render("You either entered an incorrect email or password, or you do not have an account yet!!") //prints text to the screen
        }
    }

    //Logic that handles creating a new account and saving it in the directory
    def create(){
        def email = params.emailAddress //sets a variable named email to have a value passed to it associated with the key emailAddress
        if(Users.findByEmailAddress(email)!=null){ //uses a dynamic finder to search the database for an instance with the specified variables
            render(view:"alreadyExists")
        }else{
            def user = new Users(params) //create an instance in the database and populates it with passed parameters
            user.save() //saves the instance created
            render(view:"newUserLogIn") //renders text ons screen
        }
    }

    //Lists out all users in the database
    def list(){
        def list = Users.list() //creates a variable set to every instance in the Users database
        [userList:list] //list out every instance
    }

    def guestView(){ //does not have logic, but is used to get to the guestView view

    }

    //Logic handles logging a user in as a guest using a default guest account auto-populated into the database
    def guestUsr(){
        def usr = Users.findByEmailAddressAndPassword("-", "guest") //uses a dynamic finder to search the database for an instance with the specified variables
        render("Welcome $usr.firstName") //renders text on screen and accesses the usr instance's firstName variable
    }

}
