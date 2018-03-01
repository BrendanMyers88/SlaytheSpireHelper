
<cardTable>
    <div>
        <h1>Ironclad Cards</h1>
        <div class="inputBox">
        <input ref="searchFilter" placeholder="Search Cards..." onkeyup="{doFilter}">
        </div>

        <table>
            <thead>
                <tr>
                    <th class="cssTier">Tier</th>
                    <th class="cssName">Name</th>
                    <th class="cssPicture">Picture</th>
                    <th class="cssRarity">Rarity</th>
                    <th class="cssType">Type</th>
                    <th class="cssEnergy">Energy Cost</th>
                    <th class="cssDescription">Description</th>
                </tr>
            </thead>
            <tbody>
                <tr id="cardInd" each={ filteredCardList }>
                    <td class="cssTier">{ tier }</td>
                    <td class="cssName">{ name }</td>
                    <td class="cssPicture"><img src="{picture}"</td>
                    <td class="cssRarity">{ rarity }</td>
                    <td class="cssType">{ type }</td>
                    <td class="cssEnergy">{ energy }</td>
                    <td class="cssDescription">{ description }</td>
                </tr>

            </tbody>
        </table>
    </div>

    <script>

        var self = this
        self.cardList = []
        self.filteredCardList = []
        self.cardList.push({tier: 'S', name: 'Bash', picture: document.getElementsByClassName("cssPicture").src = "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f2/R-bash.png/revision/latest?cb=20171229053856", rarity: 'Basic', type: 'Attack', energy: '2', description: 'Deal 8(10) damage. Apply Vulnerable for 2(3) turns.' })
        self.cardList.push({name: 'Memes'})
        self.cardList.push({name: 'Satan'})
        self.cardList.push({name: 'Boobs'})
        console.log(self.cardList)

        self.doFilter = function() {
            self.filteredCardList = []
            var filter = self.refs.searchFilter.value
            self.cardList.forEach(function (card){
                if (card.name.toLowerCase().indexOf(filter.toLowerCase()) > -1) {
                    self.filteredCardList.push(card)
                }

            })
        self.update()
        }

    </script>
</cardTable>
