from bs4 import BeautifulSoup
import requests
import csv

source = requests.get('https://slaythespire.gamepedia.com/Relics').text

soup = BeautifulSoup(source, 'html5lib')

csv_file = open('RelicPictures.csv', 'w')
#
csv_writer = csv.writer(csv_file)
csv_writer.writerow(['Card Picture'])
# for cards in soup.find_all('tr'):
# x = 1
# try:
for card in soup.html.find_all('img'):
    cardPicture = card.get_attribute_list('src')
    # TD 1: cardName
    # cardName = soup.select('tr td:nth-of-type(' + str(x) + ') a')[0].text.strip()
    # # cardName = cardName[0].text
    # x += 1

    # TD 2: cardPicture
# pictureElement = soup.findAll('tr td div a img')
# cardPicture = pictureElement[0].get_attribute_list('src')[0]


        # if cardPicture.startswith('data:image'):
        #     cardPicture = pictureElement[0].get_attribute_list('data-src')[0]
    # x += 1

    # # TD 3: cardRarity
    # cardRarity = soup.select('tr td:nth-of-type(' + str(x) + ')')
    # cardRarity = cardRarity[0].string.strip()
    # x += 1
    #
    # # TD 4: cardType
    # cardType = soup.select('tr td:nth-of-type(' + str(x) + ') a')
    # cardType = cardType[0].string
    # x += 1
    #
    #
    # # TD 5: cardEnergy
    # cardEnergy = soup.select('tr td:nth-of-type(' + str(x) + ')')
    # cardEnergy = cardEnergy[0].string.strip()
    # x += 1
    #
    #
    # # TD 6: cardDescription
    # cardDescription = soup.select('tr td:nth-of-type(' + str(x) + ')')
    # cardDescription = cardDescription[0].text.strip()
    # x += 1

    csv_writer.writerow([cardPicture])
