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

WebUI.openBrowser('')

WebUI.navigateToUrl('https://snatchbot.me/')

WebUI.maximizeWindow()

WebUI.click(findTestObject('Object Repository/Page_SnatchBot Free Chatbot Solutions Intelligent Bots Service and Artificial Intelligence/a_Login'))

WebUI.setText(findTestObject('Object Repository/Page_Log in to your SnatchBot account - SnatchBot/input_Log In_email'), 
    '25@yopmail.com')

WebUI.setEncryptedText(findTestObject('Object Repository/Page_Log in to your SnatchBot account - SnatchBot/input_Email_password'), 
    'B2P/+RdoWWagwfzs/mXRBw==')

WebUI.click(findTestObject('Object Repository/Page_Log in to your SnatchBot account - SnatchBot/button_Sign In'))

WebUI.delay(Delay)

WebUI.click(findTestObject('Object Repository/Page_Dashboard - SnatchBot/a_My Bots'))

WebUI.delay(Delay)

WebUI.click(findTestObject('Page_My Bots - SnatchBot/span_Create Bot'))

WebUI.setText(findTestObject(null), '')

