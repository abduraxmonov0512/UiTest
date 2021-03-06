package pages.EShop;

import PPInfo.AdInfo;
import com.codeborne.selenide.Condition;
import com.codeborne.selenide.Selenide;
import com.codeborne.selenide.SelenideElement;
import org.openqa.selenium.By;
import pages.Base;

import java.util.Arrays;
import java.util.List;

import static com.codeborne.selenide.Selenide.*;

public class EShopContractPage extends Base {
    private SelenideElement btnChat = $(".page-contract__chat-btn");
    private SelenideElement contractStatus = $(".row", 0);
    private SelenideElement nameProduct = $(".row", 3);
    private SelenideElement brand = $(".row", 4);
    private SelenideElement manufacture = $(".row", 5);
    private SelenideElement countryOrigin = $(".row", 6);
    private SelenideElement characters = $(".row", 10);
    private SelenideElement license = $(".row", 11);
    private SelenideElement count = $(".row", 12);
    private SelenideElement deliverTime = $(".row", 9);
    private SelenideElement price = $(".row", 14);
    private SelenideElement btnExecutionContract = $("[href=\"/workspace/contract/917.1.1/execution\"]");
    private SelenideElement btnMoneyTransfer = $(By.xpath("//button[text()='Денежные средства перечислены']"));
    private SelenideElement btnRepeatContract = $(By.xpath("//button[text()='Сбрасывать финальные состояния']"));

    private SelenideElement btnSubscribeContract = $(By.xpath("//button[@class=\"ui-btn ui-btn-primary\"]"));
    private SelenideElement btnCancelContract = $(".ui-btn-danger");

    private List<SelenideElement> list;

    public EShopContractPage() {
        list = Arrays.asList(btnChat, contractStatus, nameProduct, brand, manufacture, countryOrigin,
                characters, license, count, deliverTime, price);
    }

    public void eShopContractPageIsDisplayed() {
        allElementsAreVisibleWithHeader(list);
    }

    public void checkContractData() {
        nameProduct.find(By.className("col-sm-5")).shouldHave(Condition.text(AdInfo.nameProduct));
        brand.find(By.className("col-sm-5")).shouldHave(Condition.text(AdInfo.brand));
        manufacture.find(By.className("col-sm-5")).shouldHave(Condition.text(AdInfo.manufacturer));
        countryOrigin.find(By.className("col-sm-5")).shouldHave(Condition.text(AdInfo.countryOrigin));
        characters.find(By.className("col-sm-5")).shouldHave(Condition.text(AdInfo.description));
        license.find(By.className("col-sm-5")).shouldHave(Condition.text(AdInfo.license));
        count.find(By.className("col-sm-5")).shouldHave(Condition.text(AdInfo.requestCount));
        deliverTime.find(By.className("col-sm-5")).shouldHave(Condition.text(AdInfo.deliveryTime));
//        price.find(By.className("col-sm-5")).shouldHave(Condition.text(AdInfo.price));
    }

    public void clickButtonSubscribe() {
       // click(btnSubscribeContract);
        Selenide.executeJavaScript("arguments[0].click();", btnSubscribeContract);
        $(".iac-dialog_modal_box-content").shouldBe(Condition.visible);
        click($(By.xpath("//div[@class='iac-dialog-footer']//button[@class=\"ui-btn ui-btn-primary\"]")));
        ignoreEImzo();
    }

    public void clickButtonCancelContract(){
      //  click(btnCancelContract);
        Selenide.executeJavaScript("arguments[0].click();", btnCancelContract);
        $(By.tagName("textarea")).sendKeys("Причина эти ***** автотесты");
        click($(By.xpath("//button[text()='Отказаться от подписания']")));
    }

    public void contractStatusIs(String status) {
        contractStatus.waitUntil(Condition.visible, 5000);
        contractStatus.find(By.tagName("span")).waitUntil((Condition.text(status)), 5000);
        //contractStatus.shouldHave(Condition.text(status));
    }

    public void clickBtnExecutionContract() {
        //click($(By.xpath("//a[text()='Исполнение договорных обязательств']")));
        Selenide.executeJavaScript("arguments[0].click();", $(By.xpath("//a[text()='Исполнение договорных обязательств']")));
    }

    public void clickButtonMoneyTransfer() {
        //click(btnMoneyTransfer);
        Selenide.executeJavaScript("arguments[0].click();", btnMoneyTransfer);
        click($(By.xpath("//div[@class=\"iac-dialog_modal_box-content\"]//button[@class=\"ui-btn ui-btn-primary\"]")));
    }

    public void clickButtonRepeatContract() {
        btnRepeatContract.waitUntil(Condition.visible, 4000);
        btnRepeatContract.scrollTo();
       // click(btnRepeatContract);
        Selenide.executeJavaScript("arguments[0].click();", btnRepeatContract);
        AdInfo.countResets++;
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
