package basiconline

class BootStrap {

    def init = { servletContext ->
        new Users(firstName: "Guest", lastName: "User", emailAddress: "-", password: "guest").save()
        new Workflow(title: "Finding A Product!", directions:"Navigate to the page that contains a red mens jacket", solution:"Select 'Mens' from the navigation bar, then select 'Outerwear'", number: 1, correct:"Okay").save()
        new Workflow(title: "Let's Get Shopping!", directions: "Add any item to the cart", solution: "There are a number of solutions. One would be to click 'Womens' then 'Active Wear'. On the page that loads click any of the images and then the orange 'Add to cart' button.", number:2, correct:"Okay").save()
        new Workflow(title: "Cleaning Up The Cart!", directions: "Navigate to the shopping cart and delete any items in the cart", solution:"Click the shopping cart icon to navigate to the shopping cart page. Once there, click the red 'Remove' button next to each item in the cart to remove it", number:3, correct:"okay").save()
        new Workflow(title: "I'll Take One Please!", directions:"Change the quantity of the product in your cart to one.", solution: "Navigate to the shopping cart, then find the quantity input box (it currently reads three). Click its up down to decrease the quantity to 1", number: 4, correct: "okay").save()
    }
    def destroy = {
    }
}
