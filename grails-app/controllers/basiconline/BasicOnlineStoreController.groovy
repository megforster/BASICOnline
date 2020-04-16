package basiconline

class BasicOnlineStoreController {

    //Every controller should have an index action even if it is blank
    def index() {

    }

    //Renders the store's landing page
    def renderFinalView(){
        render(view: "storeLandingPage")
    }

    //Renders women's swimwear page
    def womensSwimWear() {
        render(view:"WomensSwimWear")
    }

    //Renders kid's jeans page
    def kidsJeans() {
        render(view:"KidsJeans")
    }

    def kidsJeansOne(){
        render(view:"KidsJeans1")
    }

    def kidsJeansTwo(){
        render(view:"KidsJeans2")
    }

    def kidsJeansThree(){
        render(view:"KidsJeans3")
    }

    def kidsSwimWear(){
        render(view:"KidsSwimWear")
    }

    def kidsSwimOne(){
        render(view:"KidsSwim1")
    }

    def kidsSwimTwo(){
        render(view:"KidsSwim2")
    }

    def kidsSwimThree(){
        render(view:"KidsSwim3")
    }

    //Renders bath page
    def bath(){
        render(view: "Bath")
    }

    //Renders a bath accessory set product page
    def bathAccessorySet(){
        render(view: "BathAccessorySet")
    }

    //Renders bedding page
    def bedding(){
        render(view: "Bedding")
    }

    //Renders decour page
    def decor(){
        render(view: "Decor")
    }

    def decor1(){
        render(view:"Decor1")
    }

    def decor2(){
        render(view:"Decor2")

    }

    def decor3(){
        render(view:"Decor3")
    }

    //Renders graphic tee item product page
    def graphicTeeOne(){
        render(view: "GraphicTee1")
    }

    //Renders graphic tee item product page
    def graphicTeeTwo(){
        render(view: "GraphicTee2")
    }

    //Renders graphic tee item product page
    def graphicTeeThree(){
        render(view: "GraphicTee3")
    }

    //Renders kid's coats page
    def kidsCoats(){
        render(view: "KidsCoats")
    }

    def kidsCoatsOne(){
        render(view: "KidsCoatsOne")
    }

    def kidsCoatsTwo(){
        render(view: "KidsCoatsTwo")
    }

    //Renders kid's dresses page
    def kidsDresses(){
        render(view: "KidsDresses")
    }

    def kidsDressOne(){
        render(view: "KidsDressOne")
    }

    def kidsDressTwo(){
        render(view: "KidsDressTwo")
    }

    def kidsDressThree(){
        render(view: "KidsDressThree")
    }

    //Renders kid's graphic tees page
    def kidsGraphicTees(){
        render(view: "KidsGraphicTees")
    }

    //Renders kid's shoes page
    def kidsShoes(){
        render(view: "KidsShoes")
    }

    //Renders kids shoes product page
    def kidsSneaker(){
        render(view: "KidsSneaker")
    }

    def kidsShoesTwo(){
        render(view:"KidsShoesTwo")
    }

    def kidsShoesThree(){
        render(view:"KidsShoesThree")
    }

    //Renders kid's tops page
    def kidsTops(){
        render(view: "KidsTops")
    }

    def kidsTopsOne(){
        render(view: "KidsTops1")
    }

    def kidsTopsTwo(){
        render(view: "KidsTops2")
    }

    def kidsTopsThree(){
        render(view: "KidsTops3")
    }

    //Renders men's active wear page
    def mensActiveWear(){
        render(view: "MensActiveWear")
    }

    //Render men's bottoms page
    def mensBottoms(){
        render(view: "MensBottoms")
    }

    def mensBottomsOne(){
        render(view:"MensPants1")
    }

    def mensBottomsTwo(){
        render(view:"MensPants2")
    }

    def mensBottomsThree(){
        render(view:"MensPants3")
    }

    //Renders men's coats page
    def mensCoats(){
        render(view: "MensCoats")
    }

    //Renders men's read coat product page
    def mensRedCoat(){
        render(view: "MensRedCoat")
    }

    //Renders men's shoes page
    def mensShoes(){
        render(view: "MensShoes")
    }

    def mensShoesOne(){
        render(view:"MensShoes1")
    }

    def mensShoesTwo(){
        render(view:"MensShoes2")
    }

    //Render men's tops page
    def mensTops(){
        render(view: "MensTops")
    }

    def mensTopsOne(){
        render(view:"MensTops1")
    }

    def mensTopsTwo(){
        render(view:"MensTops2")
    }

    def mensTopsThree(){
        render(view:"MensTops3")
    }

    def mensSwimWear(){
        render(view:"MensSwimWear")
    }

    def mensSwimOne(){
        render(view:"MensSwim1")
    }

    def mensSwimTwo(){
        render(view:"MensSwim2")
    }

    def mensSwimThree(){
        render(view:"MensSwim3")
    }

    def mensShorts(){
        render(view:"MensShorts")
    }

    //Renders shopping cart page
    def shoppingCart(){
        render(view: "ShoppingCart")
    }

    //Renders sports bra product page
    def sportsBraOne(){
        render(view: "SportsBra1")
    }

    //Renders sports bra product page
    def sportsBraTwo(){
        render(view: "SportsBra2")
    }

    //Renders sports bra product page
    def sportsBraThree(){
        render(view: "SportsBra3")
    }

    //Renders women's active wear page
    def womensActiveWear(){
        render(view: "WomensActiveWear")
    }

    //Renders women's bottoms page
    def womensBottoms(){
        render(view: "WomensBottoms")
    }

    //Render women's coats page
    def womensCoats(){
        render(view: "WomensCoats")
    }

    //Renders women's leggings product page
    def womensLeggings(){
        render(view: "WomensLeggings")
    }

    def womensCoatOne(){
        render(view:"WomensCoatOne")
    }

    def womensCoatTwo(){
        render(view:"WomensCoatTwo")
    }

    def womensCoatThree(){
        render(view:"WomensCoatThree")
    }

    def womensSwimOne(){
        render(view:"WomensSwim1")
    }

    def womensSwimTwo(){
        render(view:"WomensSwim2")
    }

    def womensTopOne(){
        render(view:"WomensTop1")
    }

    def womensTopTwo(){
        render(view:"WomensTop2")
    }

    def womensTopThree(){
        render(view:"WomensTop3")
    }

    def womensDressPants(){
        render(view:"WomensDressPants")
    }

    //Renders women's  shoes page
    def womensShoes(){
        render(view: "WomensShoes")
    }

    //Renders women's tops page
    def womensTops(){
        render(view: "WomensTops")
    }

    //Renders header navigation menu
    def header(){
        render(view: "everypage")
    }

    def beddingSet(){
        render(view:"BeddingSet")
    }

}