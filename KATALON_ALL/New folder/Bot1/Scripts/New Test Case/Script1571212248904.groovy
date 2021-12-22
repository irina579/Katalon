import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import com.kms.katalon.core.checkpoint.Checkpoint as Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling as FailureHandling
import com.kms.katalon.core.testcase.TestCase as TestCase
import com.kms.katalon.core.testdata.TestData as TestData
import com.kms.katalon.core.testobject.TestObject as TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import internal.GlobalVariable as GlobalVariable
import org.openqa.selenium.Keys as Keys

WebUI.openBrowser('')

WebUI.navigateToUrl('https://snatchbot.me/')

WebUI.click(findTestObject('Page_SnatchBot Free Chatbot Solutions Intelligent Bots Service and Artificial Intelligence/a_Login'))

WebUI.setText(findTestObject('Page_Log in to your SnatchBot account - SnatchBot/input_Log In_email'), '25@yopmail.com')

WebUI.click(findTestObject('Object Repository/Page_Log in to your SnatchBot account - SnatchBot/div_Password'))

WebUI.setEncryptedText(findTestObject('Page_Log in to your SnatchBot account - SnatchBot/input_Email_password'), 'B2P/+RdoWWagwfzs/mXRBw==')

WebUI.click(findTestObject('Page_Log in to your SnatchBot account - SnatchBot/button_Sign In'))

WebUI.click(findTestObject('Object Repository/Page_Dashboard - SnatchBot/label_My Bots'))

WebUI.click(findTestObject('Object Repository/Page_My Bots - SnatchBot/span_Create Bot'))

WebUI.setText(findTestObject('Page_My Bots - SnatchBot/Bot_Name'), 'test')

WebUI.setText(findTestObject('Page_My Bots - SnatchBot/Bot_Description'), 'test_description')

WebUI.click(findTestObject('Object Repository/Page_My Bots - SnatchBot/span_Upload'))

WebUI.click(findTestObject('Object Repository/Page_My Bots - SnatchBot/span_Create'))

WebUI.click(findTestObject('Object Repository/Page_Build - SnatchBot/span_OK'))

WebUI.closeBrowser()

