NFTFactory задеплоен на TRON, и вроде бы даже передает аргументы в constructor() TRC721, но в последнем успешном примере address creator оказался не тот который я передавал через createTRC721(address newOwner). Надо будет отследить по транзакциям когда в TRC721 установился не тот адрес.
А так в целом, контракт деплоит контракты)
NFTFactory на TRONE - https://shasta.tronscan.org/#/contract/TJcXcYqM3LSKmHoArxhES47zcnxm9YVKLY/code
TRC721 - https://shasta.tronscan.org/#/contract/TLWAndZVvmVioEY3cnuRRqh4SeAJoztLmJ/code
