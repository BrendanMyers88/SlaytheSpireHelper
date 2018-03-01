from bs4 import BeautifulSoup
import requests
import csv

source = requests.get('http://slay-the-spire.wikia.com/wiki/Ironclad_cards').text

soup = BeautifulSoup(source, 'html5lib')

csv_file = open('SpireHelper.csv', 'w')

csv_writer = csv.writer(csv_file)
csv_writer.writerow(['Card Name', 'Card Picture', 'Card Rarity', 'Card Type', 'Card Energy Cost', 'Card Description'])
# for cards in soup.find_all('tr'):
x = 1
try:
    for card in soup.html.find_all('tr'):
        # TD 1: cardName
        cardName = soup.select('tr td:nth-of-type(' + str(x) + ') a')
        cardName = cardName[0].text
        x += 1

        # TD 2: cardPicture
        cardPicture = soup.select('tr td:nth-of-type(' + str(x) + ') a')
        cardPicture = cardPicture[0].get('src')
        x += 1

        # TD 3: cardRarity
        cardRarity = soup.select('tr td:nth-of-type(' + str(x) + ')')
        cardRarity = cardRarity[0].string
        x += 1

        # TD 4: cardType
        cardType = soup.select('tr td:nth-of-type(' + str(x) + ')')
        cardType = cardType[0].string
        x += 1


        # TD 5: cardEnergy
        cardEnergy = soup.select('tr td:nth-of-type(' + str(x) + ')')
        cardEnergy = cardEnergy[0].string
        x += 1


        # TD 6: cardDescription
        cardDescription = soup.select('tr td:nth-of-type(' + str(x) + ')')
        cardDescription = cardDescription[0].text
        x += 1

        csv_writer.writerow([cardName, cardPicture, cardRarity, cardType, cardEnergy, cardDescription])

except Exception as e:
    print('No more cards')

# for card in soup.html.find_all('tr'):
#     # TD 1: cardName
#     cardName = soup.select('tr td:nth-of-type(' + str(x) + ') a')
#     print(cardName[0].contents)
#     x += 1
#
#     # TD 2: cardPicture
#     cardPicture = soup.select('tr td:nth-of-type(' + str(x) + ') a')
#     print(cardPicture[0].contents)
#     x += 1
#
#     # TD 3: cardRarity
#     cardRarity = soup.select('tr td:nth-of-type(3) a')
#     print(cardRarity)
#     x += 1
#
#     # TD 4: cardType
#     cardType = soup.select('tr td:nth-of-type(' + str(x) + ') a')
#     print(cardType[0].contents)
#     x += 1
#
#     # TD 5: cardEnergy
#     cardEnergy = soup.select('tr td:nth-of-type(' + str(x) + ') a')
#     print(cardEnergy[0].contents)
#     x += 1
#
#     # TD 6: cardDescription
#     cardDescription = soup.select('tr td:nth-of-type(' + str(x) + ') a')
#     print(cardDescription[0].contents)
#     x += 1

# for card in cardName:

# for card in cardName:
