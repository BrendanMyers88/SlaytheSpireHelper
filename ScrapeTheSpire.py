from bs4 import BeautifulSoup
import requests
import csv

source = requests.get('http://slay-the-spire.wikia.com/wiki/Silent_cards').text

soup = BeautifulSoup(source, 'html5lib')

csv_file = open('SilentCards.csv', 'w')

csv_writer = csv.writer(csv_file)
csv_writer.writerow(['Card Name', 'Card Picture', 'Card Rarity', 'Card Type', 'Card Energy Cost', 'Card Description'])
# for cards in soup.find_all('tr'):
x = 1
# try:
for card in soup.html.find_all('tr'):
    # TD 1: cardName
    cardName = soup.select('tr td:nth-of-type(' + str(x) + ') a')[0].text.strip()
    # cardName = cardName[0].text
    x += 1

    # TD 2: cardPicture
    pictureElement = soup.select('tr td:nth-of-type(' + str(x) + ') a img')
    cardPicture = pictureElement[0].get_attribute_list('src')[0]
    if cardPicture.startswith('data:image'):
        cardPicture = pictureElement[0].get_attribute_list('data-src')[0]
    x += 1

    # TD 3: cardRarity
    cardRarity = soup.select('tr td:nth-of-type(' + str(x) + ')')
    cardRarity = cardRarity[0].string.strip()
    x += 1

    # TD 4: cardType
    cardType = soup.select('tr td:nth-of-type(' + str(x) + ') a')
    cardType = cardType[0].string
    x += 1


    # TD 5: cardEnergy
    cardEnergy = soup.select('tr td:nth-of-type(' + str(x) + ')')
    cardEnergy = cardEnergy[0].string.strip()
    x += 1


    # TD 6: cardDescription
    cardDescription = soup.select('tr td:nth-of-type(' + str(x) + ')')
    cardDescription = cardDescription[0].text.strip()
    x += 1

    csv_writer.writerow([cardName, cardPicture, cardRarity, cardType, cardEnergy, cardDescription])
