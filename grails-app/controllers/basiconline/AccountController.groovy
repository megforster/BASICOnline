package basiconline

class AccountController {

    def index() { } //default action that comes with every controller
    def logIn(){ //does not have logic, but is used to get to the logIn view

    }

    def newUser(){ //does not have logic, but is used to get to the newUser view

    }

    def submit(){
        def email = params.emailAddress //sets a variable named email to have a value passed to it associated with the key emailAddress
        def passwrd = params.password //sets a variable named passwrd to have a value passed to it associated with the key password
        def usr = Users.findByEmailAddressAndPassword(email, passwrd) //uses a dynamic finder to search the database for an instance with the specified variables
        if(usr!=null){
            render("Welcome Back $usr.firstName") //access a variable value associated with the specified instance
        }else{
            render("You either entered an incorrect email or password, or you do not have an account yet!!") //prints text to the screen
        }
    }

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
    def list(){
        def list = Users.list() //creates a variable set to every instance in the Users database
        [userList:list] //list out every instance
    }

    def goToLandingPage(){
        render(view: "/landingPage/index") //renders the specified view
    }

}
