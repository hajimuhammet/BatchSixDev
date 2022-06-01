CryptoInfo.cryptoMap.put('BTC', 350003421345.55);
CryptoInfo.cryptoMap.put('ETH', 2500.35);

string returnPrice1=CryptoInfo.showPrice('BTC');
//string returnPriceToFormat1=returnPrice1.format();
system.debug(CryptoInfo.errorMsg+' $'+returnPrice1);

string returnPrice2=CryptoInfo.showPrice('ETH');
//string returnPriceToFormat2=returnPrice2.format();
system.debug(CryptoInfo.errorMsg+' $'+returnPrice2);

string returnPrice3=CryptoInfo.showPrice('ETC');
//string returnPriceToFormat3=returnPrice3.format();
system.debug(CryptoInfo.errorMsg+' $'+returnPrice3);
CryptoInfo.errorMsg='';

string returnPrice4=CryptoInfo.showPrice('ETH');
//string returnPriceToFormat2=returnPrice2.format();
system.debug(CryptoInfo.errorMsg+' $'+returnPrice4);

