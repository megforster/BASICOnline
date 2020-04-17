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

    //Renders a kid's jean product page
    def kidsJeansOne(){
        render(view:"KidsJeans1")
    }

    //Renders a kid's jean product page
    def kidsJeansTwo(){
        render(view:"KidsJeans2")
    }

    //Renders a kid's jean product page
    def kidsJeansThree(){
        render(view:"KidsJeans3")
    }

    //Renders kid's swimwear page
    def kidsSwimWear(){
        render(view:"KidsSwimWear")
    }

    //Renders a kid's swimwear product page
    def kidsSwimOne(){
        render(view:"KidsSwim1")
    }

    //Renders a kid's swimwear product page
    def kidsSwimTwo(){
        render(view:"KidsSwim2")
    }

    //Renders a kid's swimwear product page
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

    //Renders decor page
    def decor(){
        render(view: "Decor")
    }

    //Renders a decor product page
    def decor1(){
        render(view:"Decor1")
    }

    //Renders a decor product page
    def decor2(){
        render(view:"Decor2")

    }

    //Renders a decor product page
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

    //Renders a kid's coat product page
    def kidsCoatsOne(){
        render(view: "KidsCoatsOne")
    }

    //Renders a kid's coat prodcut
    def kidsCoatsTwo(){
        render(view: "KidsCoatsTwo")
    }

    //Renders kid's dresses page
    def kidsDresses(){
        render(view: "KidsDresses")
    }

    //Renders kid's dress product page
    def kidsDressOne(){
        render(view: "KidsDressOne")
    }

    //Renders kid's dress product page
    def kidsDressTwo(){
        render(view: "KidsDressTwo")
    }

    //Renders kid's dress product page
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

    //Renders a kids shoe product page
    def kidsShoesTwo(){
        render(view:"KidsShoesTwo")
    }

    //Renders a kids shoe product page
    def kidsShoesThree(){
        render(view:"KidsShoesThree")
    }

    //Renders kid's tops page
    def kidsTops(){
        render(view: "KidsTops")
    }

    //Redners a kid's top product page
    def kidsTopsOne(){
        render(view: "KidsTops1")
    }

    //Renders a kid's top product page
    def kidsTopsTwo(){
        render(view: "KidsTops2")
    }

    //Renders a kid's top product page
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

    //Renders a men's bottom product page
    def mensBottomsOne(){
        render(view:"MensPants1")
    }

    //Renders a men's bottom product page
    def mensBottomsTwo(){
        render(view:"MensPants2")
    }

    //Renders kid's dress product page
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

    //Renders a men's shoe product page
    def mensShoesOne(){
        render(view:"MensShoes1")
    }

    //Renders a men's shoe product page
    def mensShoesTwo(){
        render(view:"MensShoes2")
    }

    //Render men's tops page
    def mensTops(){
        render(view: "MensTops")
    }

    //Renders a men's top product page
    def mensTopsOne(){
        render(view:"MensTops1")
    }

    //Renders a men's top product page
    def mensTopsTwo(){
        render(view:"MensTops2")
    }

    //Renders a men's top product page
    def mensTopsThree(){
        render(view:"MensTops3")
    }

    //Renders men's swimwear page
    def mensSwimWear(){
        render(view:"MensSwimWear")
    }

    //Renders men's swimwear product page
    def mensSwimOne(){
        render(view:"MensSwim1")
    }

    //Renders a men's swimwear product page
    def mensSwimTwo(){
        render(view:"MensSwim2")
    }

    //Renders a men's swimwear product page
    def mensSwimThree(){
        render(view:"MensSwim3")
    }

    //Renders a men's shorts product page
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

    //Renders a women's coat product page
    def womensCoatOne(){
        render(view:"WomensCoatOne")
    }

    //Renders a women's coat product page
    def womensCoatTwo(){
        render(view:"WomensCoatTwo")
    }

    //Renders a women's coat product page
    def womensCoatThree(){
        render(view:"WomensCoatThree")
    }

    //Renders a women's swimwear product page
    def womensSwimOne(){
        render(view:"WomensSwim1")
    }

    //Renders a women's swimwear product page
    def womensSwimTwo(){
        render(view:"WomensSwim2")
    }

    //Renders a women's top product page
    def womensTopOne(){
        render(view:"WomensTop1")
    }

    //Renders a women's top product page
    def womensTopTwo(){
        render(view:"WomensTop2")
    }

    //Renders a women's top product page
    def womensTopThree(){
        render(view:"WomensTop3")
    }

    //Renders a women's dress pants product page
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

    //Renders a bedding set product page
    def beddingSet(){
        render(view:"BeddingSet")
    }

}