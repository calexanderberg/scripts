import csv
import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait 
from selenium.webdriver.support import expected_conditions as EC

driver = webdriver.Firefox()

print('Bot: process started')

csv_file = 'nasdaq_screener.csv'
cookie = False
failedStocks = ""

with open(csv_file, 'r') as csvfile:
  stocks = csv.reader(csvfile)
  for stock in stocks:

    stock = str(stock).replace('[\'', '').replace('\']', '')

    print('________________________')
    print("Stock:", stock)
    try:
      driver.get("http://www.nasdaq.com/symbol/" + stock + "/historical")

      if cookie == False:
        print('attempting to accept cookies')
        # fixing cookies:
        wait = WebDriverWait(driver, 30)
        wait.until(EC.element_to_be_clickable((By.CSS_SELECTOR,"#onetrust-accept-btn-handler"))).click()
        cookie = True

      print('attempting download')
      time.sleep(2)
      try:
        timeFrame = driver.find_elements(By.CLASS_NAME ,'table-tabs__tab')
        download_link= driver.find_element(By.CLASS_NAME, 'historical-download')
        timeFrame[5].click()
        print('clicked max')
        time.sleep(1)
        download_link.click()
        print('clicked on link')
        time.sleep(3)
      except:
        print('Wasn\'t able to download stock:', stock)
        failedStocks += " ,", stocks
        continue
    except:
      print("Error at driver.get(\"http://www.nasdaq.com/symbol/" + stock + "/historical\")")
      continue
print("Stock history downloaded, the ones that failed is shown below:")
print(failedStocks)
print("\nGoodbye")
driver.quit()