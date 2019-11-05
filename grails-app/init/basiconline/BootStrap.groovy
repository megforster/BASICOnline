package basiconline

class BootStrap {

    def init = { servletContext ->
        new Users(firstName: "Guest", lastName: "User", emailAddress: "-", password: "guest").save()
    }
    def destroy = {
    }
}
