package basiconline

class BootStrap {

    def init = { servletContext ->
        new Users(firstName: "Guest", lastName: "User", emailAddress: "-", password: "guest").save()
        new Workflow(title: "Title From Database", directions: "directions from database", solution: "solution from database", number: 42).save()
    }
    def destroy = {
    }
}
