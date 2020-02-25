import 'dart:convert';

import 'package:http/http.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'YOUR-API-KEY-HERE';

class CoinData {

  Future getBitCoinData(String sel)async{
    Response response = await get('https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=AUD,BRL,CAD,CNY,EUR,GBP,HKD,IDR,ILS,INR,JPY,MXN,NOK,NZD,PLN,RON,RUB,SEK,SGD,USD,ZAR&api_key=4aba3595a11799c715a56af222674333af0ab4207a43eaf0bccffb11f66b85f8');
      
      if (response.statusCode == 200) {
         var currencies = jsonDecode(response.body);
        //  print(currencies['USD']);
         return currencies[sel];
      }else{
        throw Exception('Unable to load Price');
      }
    }

  Future getEthCoinData(String sel)async{
    Response response = await get('https://min-api.cryptocompare.com/data/price?fsym=ETH&tsyms=AUD,BRL,CAD,CNY,EUR,GBP,HKD,IDR,ILS,INR,JPY,MXN,NOK,NZD,PLN,RON,RUB,SEK,SGD,USD,ZAR&api_key=4aba3595a11799c715a56af222674333af0ab4207a43eaf0bccffb11f66b85f8');
      if (response.statusCode == 200) {
         var currencies = jsonDecode(response.body);
        //  print(currencies['USD']);
         return currencies[sel];
      }else{
        throw Exception('Unable to load Price');
      }
    }
  Future getLtcCoinData(String sel)async{
    Response response = await get('https://min-api.cryptocompare.com/data/price?fsym=LTC&tsyms=AUD,BRL,CAD,CNY,EUR,GBP,HKD,IDR,ILS,INR,JPY,MXN,NOK,NZD,PLN,RON,RUB,SEK,SGD,USD,ZAR&api_key=4aba3595a11799c715a56af222674333af0ab4207a43eaf0bccffb11f66b85f8');
      if (response.statusCode == 200) {
         var currencies = jsonDecode(response.body);
        //  print(currencies['USD']);
         return currencies[sel];
      }else{
        throw Exception('Unable to load Price');
      }
    }
}

