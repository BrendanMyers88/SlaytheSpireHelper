
<cardTable>
    <div>
        <h1>Relic Search</h1>
        <div class="inputBox">
        <input ref="searchFilter" placeholder="Search Relics..." onkeyup="{doFilter}">
        </div>

        <table>
            <thead>
                <tr>
                    <th class="cssTier">Overall (0-10)</th>
                    <th class="cssTier">Regular Tier (0-5)</th>
                    <th class="cssTier">Potential Tier (0-5)</th>
                    <th class="cssName">Name</th>
                    <th class="cssPicture">Picture</th>
                    <th class="cssRarity">Rarity</th>
                    <th class="cssDescription">Description</th>
                </tr>
            </thead>
            <tbody>
                <tr id="cardInd" each={ filteredCardList }>
                    <td class="cssTierRegPot">{ TierRegPot }</td>
                    <td class="cssTierReg">{ TierReg }</td>
                    <td class="cssTierPot">{ TierPot }</td>
                    <td class="cssName">{ Name }</td>
                    <td class="cssPicture"><img width="40" height="40" src="{ Picture }"</td>
                    <td class="cssRarity">{ Rarity }</td>
                    <td class="cssDescription">{ Description }</td>

                </tr>

            </tbody>
        </table>
    </div>

    <script>


        var my_cardlist = [
            {
                "Description": "Sometimes enemies just don't attack on turn 1.",
                "Name": "Anchor",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/c/c0/Anchor.png?version=d1daf12b91673a0e18ee43a250190b35",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Better if you have more powers to set up early.",
                "Name": "Ancient Tea Set",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/5/5e/TeaSet.png?version=19888c45b583e90f3c606afb63e47623",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "There are some good attacks: Predator, Dash, Flying Knee, Dagger Throw, Neutralize, etc",
                "Name": "Art of War",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/f/fd/ArtOfWar.png?version=e7d4e4e0b6041e42d3d53689db6d106d",
                "Rarity": "Common",
                "TierPot": "4",
                "TierReg": "1",
                "TierRegPot": "5"
            },
            {
                "Description": "A psuedo-remove for your Strikes/Defends (always Strike first). Better than one would imagine.",
                "Name": "Astrolabe",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/8/83/Astrolabe.png?version=f1bd3eff0b278a153388bc095e00605a",
                "Rarity": "Boss",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "Early damaging attacks. Better in Act 1 and Act 2.",
                "Name": "Bag of Marbles",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/b/be/Marbles.png/40px-Marbles.png?version=9d88e0bdb395e61f01d644e27359f4ca",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Gambling Chip. Helps draw and setup powers early.",
                "Name": "Bag of Preparation",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/c/c6/BagOfPreparation.png?version=c36ab4ec2badbc99095e9fb69a8f7673",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Powers, The Courier (purchased Powers are always replaced by Powers), Mummified Hand. Can heal 10 or more hp per combat",
                "Name": "Bird-Faced Urn",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/9/9c/AncientUrn.png?version=2ea5983a41d90217ec68bb6b2d355a4d",
                "Rarity": "Rare",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "Usually good on Act 1, where it probably gives you extra 5 relics if you hunt elites. Bad if you avoid elites, obviously.",
                "Name": "Black Star",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/5/56/Blackstar.png?version=7383765e1d474e2c89e02200ef095694",
                "Rarity": "Boss",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "Having some passive heal could potentially save you an upgrade, instead of needing to rest.",
                "Name": "Blood Vial",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/4/4e/BloodVial.png/40px-BloodVial.png?version=09cf21df7c6d2be083f4904c2645a91a",
                "Rarity": "Common",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "",
                "Name": "Bloody Idol (Bloody Chalice)",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/4/40/BloodyChalice.png/40px-BloodyChalice.png?version=1b12ca6c35010bd440be83b594193b23",
                "Rarity": "Event",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Du-Vu Doll + curses.",
                "Name": "Blue Candle",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/1/1b/BlueCandle.png?version=6d42f1895312cf90088985dcfe80d764",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "1",
                "TierRegPot": "4"
            },
            {
                "Description": "Mind Blast, Glass Knife, Die Die Die, Neutralize, Sucker Punch, Dash",
                "Name": "Bottled Flame",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/f/f1/BottledFlame.png/40px-BottledFlame.png?version=1ce7b71cade01cbfbdd90b5669cc6798",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Apotheosis, Tactician, Acrobatics, Terror, Burst",
                "Name": "Bottled Lightning",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/a/a9/BottledLightning.png/40px-BottledLightning.png?version=0f545b149b5311ea8ba83ca5aad0f1a9",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Footwork, Well-Laid Plans, Tools of the Trade, Noxious Fumes",
                "Name": "Bottled Tornado",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/a/ac/BottledTornado.png/40px-BottledTornado.png?version=9f9334733c4990952d7573ed92eb0734",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Better in Act 1 and Act 2. Can cause you damage against the explodey droids in Act 3.",
                "Name": "Bronze Scales",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/3/3e/BronzeScales.png?version=31a82afd235ef6fcd6e500e051193254",
                "Rarity": "Common",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Footwork, Kunai with synergy, Blur (acts as +15 block), Energy gain + card draw + Deflect, Escape Plan",
                "Name": "Calipers",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/e/ed/Calipers.png?version=85f7c62d25e393a5e625ad17d203ec78",
                "Rarity": "Rare",
                "TierPot": "5",
                "TierReg": "2",
                "TierRegPot": "7"
            },
            {
                "Description": "Fine if you have Omamori to block 2 curses. Good if you have Du-Vu Doll (esp with Blue Candle) and are using the Strength.",
                "Name": "Calling Bell",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/6/6e/Bell.png/40px-Bell.png?version=88f2fa138ad7409284b8f506c1d740e4",
                "Rarity": "Boss",
                "TierPot": "4",
                "TierReg": "2",
                "TierRegPot": "6"
            },
            {
                "Description": "5 potions means a good chance for a Dex potion or two.",
                "Name": "Cauldron",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/3/37/Cauldron.png/40px-Cauldron.png?version=0633adf1dd3691c1ec926d67b1097211",
                "Rarity": "Shop",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Helps you setup powers early in boss fights.",
                "Name": "Centennial Puzzle",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/0/0f/CentennialPuzzle.png?version=faf583205a0ba1d4cb107937081da382",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Good on Act 1. Excellent on Act 2. Just don't open chests if you don't want the Curses. Relic rewards from elites don't come in chests.",
                "Name": "Cursed Key",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/e/e0/CursedKey.png?version=19aa056865722216e4af9ec8e9a4d020",
                "Rarity": "Boss",
                "TierPot": "4",
                "TierReg": "4",
                "TierRegPot": "8"
            },
            {
                "Description": "Du Vu Doll, Blue Candle.",
                "Name": "Darkstone Periapt",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/c/ca/Darkstone.png/40px-Darkstone.png?version=ef273436c9e97e6cd08f2c28c4b1f2ac",
                "Rarity": "Uncommon",
                "TierPot": "2",
                "TierReg": "1",
                "TierRegPot": "3"
            },
            {
                "Description": "Blade Dance, Infinite Blades. The effect isn't always positive, since it bloats your deck with unupgraded, random cards. But the extra options will reliably find a win condition if you don't have one already.",
                "Name": "Dead Branch",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/d/db/DeadBranch.png/40px-DeadBranch.png?version=ac893c1a1823811a3382778c896910ea",
                "Rarity": "Rare",
                "TierPot": "4",
                "TierReg": "2",
                "TierRegPot": "6"
            },
            {
                "Description": "Regal Pillow. You are usually not resting.",
                "Name": "Dream Catcher",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/d/d3/DreamCatcher.png?version=fa9676d6f83ff3506da29ad9b33b87e2",
                "Rarity": "Common",
                "TierPot": "1",
                "TierReg": "1",
                "TierRegPot": "2"
            },
            {
                "Description": "Curses, Blue Candle, Cloak And Dagger, Blade Dance, Burst, Infinite Blades, Endless Agony, Finisher, Fletchettes.",
                "Name": "Du-Vu Doll",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/f/fa/DuvuDoll.png?version=9c1a2faac805f67887538f945a354a5e",
                "Rarity": "Rare",
                "TierPot": "4",
                "TierReg": "1",
                "TierRegPot": "5"
            },
            {
                "Description": "Great on Act 2. Questionable on Act 1. If you have Outmaneuver/Tactician/Runic Dodecahedron, 4th energy isn't so important.",
                "Name": "Ectoplasm",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/3/36/Ectoplasm.png?version=f1abe1c8b2daf3c2994c68d3ec1a8fe4",
                "Rarity": "Boss",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "",
                "Name": "Enchiridion",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/8/8e/Enchiridion.png?version=90a6fb6110117e9fe53ff6893a96aff7",
                "Rarity": "Event",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Heal 8/10 per campfire. It's ok, but bad for a boss relic.",
                "Name": "Eternal Feather",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/f/f4/EternalFeather.png/40px-EternalFeather.png?version=ea3be5521c2a99a9176ec972e9ca8ccb",
                "Rarity": "Boss",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Helps you appreciate the value of smithing at campfires",
                "Name": "Frozen Egg",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/d/dc/FrozenEgg.png?version=54a92180c001bce5c96f15bf55b73f52",
                "Rarity": "Common",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Can be very strong. Allows you to plan 3-4 turns in the future, and decide how much to draw each turn in order to have the right cards in the right turn (eg. how much should you draw this turn in order to get your attacks in the Nemesis' vulnerable turn). You must know enemy patterns.",
                "Name": "Frozen Eye",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/9/97/FrozenEye.png?version=adf33c10fdc42baf6221358fbdd2631e",
                "Rarity": "Rare",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Powers (helps early setup of powers). Endless Agony. Ninja Scroll. Discards the cards, so it works with Tactician/Reflex",
                "Name": "Gambling Chip",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/9/93/GamblingChip.png/40px-GamblingChip.png?version=d4aee0adf59c10e39f78fa676c0cabff",
                "Rarity": "Rare",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "Nice, but only one of the final bosses(Time Eater) inflicts Weak and it's a Weak 1.",
                "Name": "Ginger",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/8/85/Ginger.png?version=0bc734829459b9b86932164a680ce076",
                "Rarity": "Rare",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Cloak And Dagger, Blade Dance, Burst, Infinite Blades, Endless Agony, Finisher, Fletchettes.",
                "Name": "Girya (Kettlebell)",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/8/84/Kettlebell.png/40px-Kettlebell.png?version=afc8af0d766bf589e21848b2860e5ff2",
                "Rarity": "Rare",
                "TierPot": "4",
                "TierReg": "2",
                "TierRegPot": "6"
            },
            {
                "Description": "",
                "Name": "Golden Idol",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/7/7a/GoldenIdolRelic.png/40px-GoldenIdolRelic.png?version=7f3f040a693f74afc0ddbf33ecaa1f38",
                "Rarity": "Event",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Powerful effect, but doesn't help versus final boss. Awakened One is easy, and by the time you kill Donu you should be fine.",
                "Name": "Gremlin Horn",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/0/06/GremlinHorn.png?version=7f7b4879757874144af754efa360e3ef",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Optimize this by ending this count at 2 every fight, delaying the fight if necessary.",
                "Name": "Happy Flower",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/8/81/Sunflower.png?version=15abb109478aaaaa10f90a100ced7288",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Energy relics, Outmaneuver, Tactician, Concentrate, Sundial, Skewer + Phantasmal Killer, Malaise, Flying Knee, Deflect. Card draw(after you have the energy), Transmutation. Don't play unnecessary energy.",
                "Name": "Ice Cream",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/1/14/IceCream.png?version=d4d280c5bd1a8410541557bd5306c5f9",
                "Rarity": "Rare",
                "TierPot": "5",
                "TierReg": "4",
                "TierRegPot": "9"
            },
            {
                "Description": "Not bad if you get it early and have lots of ? on your paths",
                "Name": "Juzu Bracelet",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/2/23/JuzuBracelet.png/40px-JuzuBracelet.png?version=d9b7ceeba6a5ae7aa6766d2aa4ccfaac",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Cloak And Dagger, Blade Dance, Burst, Infinite Blades, Ninja Scroll, Storm of Steel",
                "Name": "Kunai",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/d/d7/Kunai.png/40px-Kunai.png?version=0838170d8456b78f9b2721dfef960731",
                "Rarity": "Uncommon",
                "TierPot": "5",
                "TierReg": "3",
                "TierRegPot": "8"
            },
            {
                "Description": "Better if you have more powers to set up early.",
                "Name": "Lantern",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/f/f5/Lantern.png?version=2bd3a48cde6e75d22472be6ab7adc7ed",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Fine if you're nearly dead.",
                "Name": "Lee's Waffle",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/a/a5/Waffle.png?version=ca0eb5485683276a0a7ea90afbfe2d47",
                "Rarity": "Shop",
                "TierPot": "3",
                "TierReg": "1",
                "TierRegPot": "4"
            },
            {
                "Description": "Draw, energy gain",
                "Name": "Letter Opener",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/e/e5/LetterOpener.png/40px-LetterOpener.png?version=52b31444cbfe6d9b9202d20312f6c6e4",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Not terrible, but it's not energy.",
                "Name": "Lizard Tail",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/a/ae/LizardTail.png/40px-LizardTail.png?version=4447c5c8522a31029d5a7a219160a5fe",
                "Rarity": "Boss",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Max hp helps the Silent less than the Ironclad, imo.",
                "Name": "Mango",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/3/38/Mango.png?version=9b25df54b1d9de40a9e15733d19e64e9",
                "Rarity": "Rare",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Hopefully you get it before the end of the game.",
                "Name": "Matryoshka",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/7/7a/Matryoshka.png/40px-Matryoshka.png?version=21e975435cc8aec2b86601bcdbfa2c00",
                "Rarity": "Uncommon",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "12 hp heal is pretty good! Can save you a rest stop or two.",
                "Name": "Meat on the Bone",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/5/58/Meat.png?version=10616b76d0969ab3555bf7b11b33da30",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Helps a bit against Burn. Doesn't help against any boss, unless you count removing Daze for Masterful Stab/Unceasing Top as helping.",
                "Name": "Medical Kit",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/f/f2/MedicalKit.png?version=be2d73ddce8efffc1e708be4d6872857",
                "Rarity": "Shop",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "",
                "Name": "Membership Card",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/3/3d/MembershipCard.png/40px-MembershipCard.png?version=f7194d7259cb49057adf1dee4ed9c0a0",
                "Rarity": "Shop",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "3 damage. Meh.",
                "Name": "Mercury Hourglass",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/1/11/Hourglass.png?version=de76714af3273002108bfaad27c3c90e",
                "Rarity": "Uncommon",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Helps you appreciate the value of Smithing at campfires.",
                "Name": "Molten Egg",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/6/6c/StoneEgg.png/40px-StoneEgg.png?version=d3da21ea94cf4ed95c73ece43e463c36",
                "Rarity": "Common",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Bird-Faced Urn, The Courier(purchased Powers are always replaced by Powers), Powers, card draw",
                "Name": "Mummified Hand",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/4/4d/MummifiedHand.png?version=58b3564f847954290f159f27d850d439",
                "Rarity": "Uncommon",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "",
                "Name": "Mushroom",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/8/8c/Mushroom.png?version=bb29daa532047fa553dd03fbeed56afb",
                "Rarity": "Event",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Predator (especially, since it draws you into more synergy cards), Dash, Choke, Riddle With Holes.",
                "Name": "Necronomicon",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/7/78/Necronomicon.png/40px-Necronomicon.png?version=ae720d2965a461e3995a1c054a6e02c0",
                "Rarity": "Event",
                "TierPot": "5",
                "TierReg": "3",
                "TierRegPot": "8"
            },
            {
                "Description": "Treat the default option as skip. Only add cards if it's really good for the fight.",
                "Name": "Nilry's Codex",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/7/7c/Codex.png?version=a91640c8798795c24ef976d78fbbb770",
                "Rarity": "Event",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Kunai, Shuriken, Accuracy, Gambling Chip. Anti-synergy if it causes you to exceed your starting hand limit, so be careful on picking this up.",
                "Name": "Ninja Scroll",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/8/81/NinjaScroll.png/40px-NinjaScroll.png?version=876bda907347b0aa9eb56258d457b5cf",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "",
                "Name": "Nloth's Gift",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/5/53/NlothsGift.png/40px-NlothsGift.png?version=2b17f509fec487faf6d9c3fdecf6da1a",
                "Rarity": "Event",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Helps you appreciate the value of Footwork.",
                "Name": "Oddly Smooth Stone",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/4/43/SmoothStone.png?version=cd62acff8995023d8e3eb9f9bc3d6c28",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Good amount of money, can buy a good relic.",
                "Name": "Old Coin",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/3/38/OldCoin.png?version=b83401522ad4d541e13c7c8d80184a0c",
                "Rarity": "Rare",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "Calling Bell. Good if you get it early and it blocks all 3 curses in exchange for benefits at events.",
                "Name": "Omamori",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/1/1a/Omamori.png/40px-Omamori.png?version=6ad1490de6f9d98c85d80b4c4d87b2c8",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "1",
                "TierRegPot": "4"
            },
            {
                "Description": "11 Block with Thread and Needle and nothing else. Better in Act 1 and Act 2",
                "Name": "Orichalcum",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/8/80/Orichalcum.png?version=dffdbf077b518e8d1cce818b97ed09ef",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Cloak And Dagger, Blade Dance, Burst, Infinite Blades, Ninja Scroll",
                "Name": "Ornamental Fan",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/5/52/OrnamentalFan.png?version=199bf07da7c51f0740b462b85f931381",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "1",
                "TierRegPot": "4"
            },
            {
                "Description": "Look through all 5 sets before picking anything. Be sure to skip bad sets.",
                "Name": "Orrery",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/7/75/Orrery.png?version=5a09b7e55add61375eede83da4d18d9e",
                "Rarity": "Boss",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Good on Act 1 if you still have at least 8 Strikes/Defends.",
                "Name": "Pandora's Box",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/8/8d/PandorasBox.png/40px-PandorasBox.png?version=826b351f61881ed0fbd5dc89e62ef78c",
                "Rarity": "Boss",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "Potentially saves you a few Rests, letting you do other Campfire actions",
                "Name": "Pantograph",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/8/82/Pantograph.png?version=42413d43ad279b8680d00f72f57298cb",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Neutralize, Sucker Punch, Leg Sweep, Malaise",
                "Name": "Paper Crane",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/c/c0/PaperCrane.png/40px-PaperCrane.png?version=8375dfdbe710b96b62f711cdaef69707",
                "Rarity": "Uncommon",
                "TierPot": "5",
                "TierReg": "3",
                "TierRegPot": "8"
            },
            {
                "Description": "Good if you get it early and have enough Campfires after upgrading key cards.",
                "Name": "Peace Pipe",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/2/26/PeacePipe.png/40px-PeacePipe.png?version=ef76451d7e98f4e73a8701245e2f4713",
                "Rarity": "Rare",
                "TierPot": "4",
                "TierReg": "2",
                "TierRegPot": "6"
            },
            {
                "Description": "Max hp helps the Silent less than the Ironclad, imo, and +10 isn't much",
                "Name": "Pear",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/b/b0/Pear.png?version=1c4c138380018c07662e64efe12d814a",
                "Rarity": "Uncommon",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Skewer, Fletchettes, Predator, Glass Knife, Phantasmal Killer(quadruple damage). Optimize this by trying to end closer to 9 every combat.",
                "Name": "Pen Nib",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/7/70/PenNib.png/40px-PenNib.png?version=767280f48a08506d653b92ec7f949cad",
                "Rarity": "Common",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "Great. But Triple Slavers and Book of Stabbing become much more dangerous if you get this on Act 1. RNG Byrds and Plant also become dangerous.",
                "Name": "Philosopher's Stone",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/c/ca/PhilosopherStone.png/40px-PhilosopherStone.png?version=4b2c9b0989dc166eee9eae66415691be",
                "Rarity": "Boss",
                "TierPot": "4",
                "TierReg": "4",
                "TierRegPot": "8"
            },
            {
                "Description": "",
                "Name": "Prayer Wheel",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/1/1f/PrayerWheel.png?version=5cb779792a48dff9261f11f0d5f356eb",
                "Rarity": "Common",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "A bit better than Orrery.",
                "Name": "Question Card",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/6/6e/QuestionCard.png?version=f01fe6a4bf44197fa6ce68e150aaf820",
                "Rarity": "Boss",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "The first turn is the most dangerous usually, so this is good. Also good for stripping one debuff resist off Donu & Deca.",
                "Name": "Red Mask",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/a/a4/RedMask.png?version=09b6e0aa2a25c9f1452a83090e73960c",
                "Rarity": "Event",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Especially helps you heal more before Act 3 final boss.",
                "Name": "Regal Pillow",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/3/36/Pillow.png/40px-Pillow.png?version=3dfa5439bc1d0fffeda8b0668eacd494",
                "Rarity": "Common",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Gambling Chip. Helps draw and setup powers early.",
                "Name": "Ring of the Snake",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/e/e7/SnakeRing.png?version=8c8e7bf0448dea4b8da5b9d3362f2394",
                "Rarity": "Starter",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Excellent if you can keep up the max hp.",
                "Name": "Runic Dodecahedron",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/3/33/Dodecahedron.png/40px-Dodecahedron.png?version=f21c18f631c3a4d6c50c0aa9767f79cc",
                "Rarity": "Uncommon",
                "TierPot": "4",
                "TierReg": "2",
                "TierRegPot": "6"
            },
            {
                "Description": "Excellent. But you need to know enemy patterns well.",
                "Name": "Runic Dome",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/6/6d/RunicDome.png/40px-RunicDome.png?version=f6ba8e4077f66ea2f35fb21dc8a9ab9f",
                "Rarity": "Boss",
                "TierPot": "4",
                "TierReg": "4",
                "TierRegPot": "8"
            },
            {
                "Description": "Bad usually, since Silent has access to Well-Laid Plans (which is just better). Not being able to naturally discard curses/burns/wounds is terrible. Instant lose with Snecko Eye(shoutout to NL)",
                "Name": "Runic Pyramid",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/8/8e/RunicPyramid.png?version=f8e3c773c56b7cd28e518c97a398fd1a",
                "Rarity": "Boss",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Good if you get it early and have enough Campfires after upgrading key cards.",
                "Name": "Shovel",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/7/77/Shovel.png/40px-Shovel.png?version=fcb669bfeb2981df1fe671717ea5715b",
                "Rarity": "Rare",
                "TierPot": "4",
                "TierReg": "2",
                "TierRegPot": "6"
            },
            {
                "Description": "Cloak And Dagger, Blade Dance, Burst, Infinite Blades, Ninja Scroll, Storm of Steel. Strength is worse than Dexterity, but it can be a win condition",
                "Name": "Shuriken",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/a/ac/Shuriken.png?version=1287c86f79ff87ddf2039d3bd3e2eaa3",
                "Rarity": "Uncommon",
                "TierPot": "4",
                "TierReg": "2",
                "TierRegPot": "6"
            },
            {
                "Description": "Max hp usually isn't even valuable anyway.",
                "Name": "Singing Bowl",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/e/eb/SingingBowl.png/40px-SingingBowl.png?version=2ab4905b75b32e51ae91ac05d439c378",
                "Rarity": "Common",
                "TierPot": "2",
                "TierReg": "1",
                "TierRegPot": "3"
            },
            {
                "Description": "Better if you get it early and see more shops. If you see only 2 shops after this, it probably saves you < $150.",
                "Name": "Smiling Mask",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/0/04/MerchantMask.png?version=092927771285514b4ab5f60dd634ca32",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Bullet Time. Good if you don't have anti-synergies. Anti-synergy with Deflect, Slice, 0 cost cards, energy gain cards. ",
                "Name": "Snecko Eye",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/5/5e/SneckoEye.png?version=e93c3e4c543c5afa70805e2bc1aab21c",
                "Rarity": "Boss",
                "TierPot": "5",
                "TierReg": "2",
                "TierRegPot": "7"
            },
            {
                "Description": "Excellent with Envenom (Envenom is usually not good enough without this). Noxious Fumes going from 3 to 4 is great.",
                "Name": "Snecko Skull",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/d/d7/SnakeSkull.png?version=d63a4adea6200e3fd97a819abad44c3f",
                "Rarity": "Common",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "Great, but it means you will have no Dex potions (which are usually game-winning) for the final boss.",
                "Name": "Sozu",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/5/53/Sozu.png?version=6c6a3aed29279ee986f60699dd249314",
                "Rarity": "Boss",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "",
                "Name": "Spirit Poop",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/7/74/SpiritPoop.png?version=0bb154e7c49db2cf223a0f43b736007b",
                "Rarity": "Event",
                "TierPot": "1",
                "TierReg": "1",
                "TierRegPot": "2"
            },
            {
                "Description": "Adrenaline, J.A.X., Bandage Up, Master of Strategy, Alchemize, Malaise, Thinking Ahead. Anti-synergy with Terror.",
                "Name": "Strange Spoon",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/0/09/BigSpoon.png/40px-BigSpoon.png?version=eb4ca5fef5900927d01840e70455c223",
                "Rarity": "Shop",
                "TierPot": "4",
                "TierReg": "2",
                "TierRegPot": "6"
            },
            {
                "Description": "Max hp helps the Silent less than the Ironclad, imo, and +7 is nothing.",
                "Name": "Strawberry",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/6/6d/Strawberry.png?version=ba951150338aedb48408f9954d8cf2c9",
                "Rarity": "Common",
                "TierPot": "1",
                "TierReg": "1",
                "TierRegPot": "2"
            },
            {
                "Description": "Small deck, Calculated Gamble, Acrobatics, Prepared, Card draw, Energy gain, Ice Cream. Optimize this by ending the fight at 2 counters.",
                "Name": "Sundial",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/1/15/Sundial.png?version=85d9b57e718b2710593b6fa2a6df1be7",
                "Rarity": "Rare",
                "TierPot": "4",
                "TierReg": "2",
                "TierRegPot": "6"
            },
            {
                "Description": "Mummified Hand/Bird Faced Urn (purchased Powers are always replaced by Powers)",
                "Name": "The Courier",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/e/e5/Courier.png/40px-Courier.png?version=231dbfa7698e1a99408b01f5edb6e024",
                "Rarity": "Uncommon",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "The first enemy is the hardest to take down, and this doesn't help you with that. Also, doesn't help against the final bosses.",
                "Name": "The Specimen",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/2/23/Specimen.png/40px-Specimen.png?version=2db4ef47b0e943ee971cab592c8265eb",
                "Rarity": "Boss",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Orichalcum. Usually better than a free Metallicize+.",
                "Name": "Thread and Needle",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/2/2f/ThreadAndNeedle.png?version=1b4733915534daca039893220638ccfc",
                "Rarity": "Rare",
                "TierPot": "4",
                "TierReg": "4",
                "TierRegPot": "8"
            },
            {
                "Description": "Gambling Chip, Calculated Gamble, Prepared, Tools of the Trade.",
                "Name": "Tingsha",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/7/78/Tingsha.png/40px-Tingsha.png?version=3f0800c3f2f198cde44886598b7c5780",
                "Rarity": "Rare",
                "TierPot": "4",
                "TierReg": "2",
                "TierRegPot": "6"
            },
            {
                "Description": "If you get it early and hit 10 question marks with it, you're expected to get +1 relic!",
                "Name": "Tiny Chest",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/6/6b/TinyChest.png?version=20550964adc9cc47a5bcd0358558e3cc",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "",
                "Name": "Tiny House",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/5/53/TinyHouse.png?version=6544a9f02fce0804d3dd6faa20dd7069",
                "Rarity": "Boss",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Most unupgraded neutrals are mediocre.",
                "Name": "Toolbox",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/4/46/Toolbox.png/40px-Toolbox.png?version=be0897e81d5f54d19f075ee8c98c4f27",
                "Rarity": "Uncommon",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Paper Krane, Weak infliction. Can save a lot of damage, but doesn't help much if you're not usually taking damage.",
                "Name": "Torii",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/2/23/Torii.png/40px-Torii.png?version=24d46a681e57be228eaf3f75d15fdab7",
                "Rarity": "Rare",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Gambling Chip, Calculated Gamble, Prepared, Tools of the Trade.",
                "Name": "Tough Bandages",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/f/f7/ToughBandages.png?version=cfd7eac672ce58b5c6ce61b10a8a2928",
                "Rarity": "Uncommon",
                "TierPot": "4",
                "TierReg": "3",
                "TierRegPot": "7"
            },
            {
                "Description": "Helps you appreciate the value of smithing at campfires",
                "Name": "Toxic Egg",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/3/38/ToxicEgg.png/40px-ToxicEgg.png?version=3cb941c5424db64ffeb018046dd0b5d0",
                "Rarity": "Common",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "",
                "Name": "Toy Ornithopter",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/e/e4/Ornithopter.png?version=66f5dc001eb9997a1ee510f1dca861af",
                "Rarity": "Shop",
                "TierPot": "2",
                "TierReg": "2",
                "TierRegPot": "4"
            },
            {
                "Description": "Too fragile to be a reliable plan. Foiled by curses, statuses, Tactician/Reflex. The dream is this https://i.redd.it/hnrexvzs2sa01.png ",
                "Name": "Unceasing Top",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/8/87/Top.png/40px-Top.png?version=87649a6fd4078652d15f500280ca2887",
                "Rarity": "Rare",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Shiv build, Fletchettes, Endless Agony.",
                "Name": "Vajra",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/d/dc/Vajra.png?version=81d58eca6d81f265f50f931d04f9c4fd",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "Bad if you like to play with energy gain and draw like me. I really don't like this for Silent (but it's excellent for Ironclad).",
                "Name": "Velvet Choker",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/4/4b/RedChoker.png?version=fea460d400d54ed9828ee1d4b084e30c",
                "Rarity": "Boss",
                "TierPot": "4",
                "TierReg": "2",
                "TierRegPot": "6"
            },
            {
                "Description": "Upgrading Defend is still fine.",
                "Name": "War Paint",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/0/07/WarPaint.png/40px-WarPaint.png?version=168e94d52b50f280f3deaf24712df12e",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "3",
                "TierRegPot": "6"
            },
            {
                "Description": "Strike+ is not terrible at least, and it could upgrade other stuff.",
                "Name": "Whetstone",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/9/9f/Whetstone.png/40px-Whetstone.png?version=448ac90a37fb540aae1bcc4334862e0e",
                "Rarity": "Common",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            },
            {
                "Description": "More potions means more chance to get Dex potions. But the standard potion chance is already not bad, so the marginal gain here isn't great.",
                "Name": "White Beast Statue",
                "Picture": "https://d1u5p3l4wpay3k.cloudfront.net/slaythespire_gamepedia_en/thumb/4/42/WhiteBeast.png/40px-WhiteBeast.png?version=bbbf2fd02fbed7258c5b09cf35a69095",
                "Rarity": "Boss",
                "TierPot": "3",
                "TierReg": "2",
                "TierRegPot": "5"
            }
        ]



        var self = this
        self.cardList = my_cardlist

        self.filteredCardList = []
        console.log(self.cardList)

        self.doFilter = function() {
            self.filteredCardList = []
            var filter = self.refs.searchFilter.value
            if (filter == '') {
                return
            }
            self.cardList.forEach(function (card){
                if (card.Name.toLowerCase().indexOf(filter.toLowerCase()) > -1) {
                    self.filteredCardList.push(card)
                }
            })
            self.update()
        }

    </script>
</cardTable>
