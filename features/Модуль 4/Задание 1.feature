#language: ru

@tree

Функционал: Документ Заказ покупателя

Как менеджер я хочу
оформлять документы "Заказ"
чтобы вести учет заказанных товаров и услуг

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: Проверка заполнения реквизитов шапки документа
	Подготовка данных
		// Справочник.Agreements
		И я проверяю или создаю для справочника "Agreements" объекты с обмен данными загрузка истина:
			| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Number' | 'Date'               | 'PartnerSegment' | 'Partner'                                                          | 'Company' | 'PriceType'                                                          | 'ItemSegment' | 'StartUsing'         | 'EndOfUse'           | 'ManagerSegment' | 'PriceIncludeTax' | 'DaysBeforeDelivery' | 'Store'                                                          | 'Type'                         | 'LegalName' | 'CurrencyMovementType'                                                                            | 'ApArPostingDetail'                   | 'StandardAgreement' | 'Kind'                        | 'UseCreditLimit' | 'CreditLimitAmount' | 'PaymentTerm' | 'Description_en'     | 'Description_hash' | 'Description_ru' | 'Description_tr' |
			| 'e1cib/data/Catalog.Agreements?ref=b76cbacb2511e57d11ebeab0dfce224a' | 'False'        | 9      | ''       | '01.01.0001 0:00:00' | ''               | 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | ''        | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | ''            | '01.01.0001 0:00:00' | '01.01.0001 0:00:00' | ''               | 'False'           |                      | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'Enum.AgreementTypes.Customer' | ''          | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByAgreements' | ''                  | 'Enum.AgreementKinds.Regular' | 'False'          |                     | ''            | 'Розничный клиент 1' | ''                 | ''               | ''               |
		// Справочник.Companies
		И я проверяю или создаю для справочника "Companies" объекты с обмен данными загрузка истина:
			| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Country'                                                           | 'MainCompany' | 'Partner' | 'Type'                          | 'OurCompany' | 'Description_en'         | 'Description_hash' | 'Description_ru' | 'Description_tr' |
			| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'False'        | 1      | 'e1cib/data/Catalog.Countries?ref=b762b13668d0905011eb7663e35d7963' | ''            | ''        | 'Enum.CompanyLegalType.Company' | 'True'       | 'Собственная компания 1' | ''                 | ''               | ''               |
		И я перезаполняю для объекта табличную часть "Currencies":
			| 'Ref'                                                               | 'MovementType'                                                                                    |
			| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' |
			| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |
			| 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' |
		// Справочник.Countries
		И я проверяю или создаю для справочника "Countries" объекты с обмен данными загрузка истина:
			| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Currency'                                                           | 'LocalizationCode' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
			| 'e1cib/data/Catalog.Countries?ref=b762b13668d0905011eb7663e35d7963' | 'False'        | 1      | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | ''                 | 'Страна 1'       | ''                 | ''               | ''               |
		// Справочник.Currencies
		И я проверяю или создаю для справочника "Currencies" объекты с обмен данными загрузка истина:
			| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Symbol' | 'NumericCode' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
			| 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 'False'        | 'USD'  | '$'      | '840'         | 'Доллар'         | ''                 | ''               | ''               |
			| 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795f' | 'False'        | 'EUR'  | '€'      | '978'         | 'Евро'           | ''                 | ''               | ''               |
		// Справочник.Partners
		И я проверяю или создаю для справочника "Partners" объекты с обмен данными загрузка истина:
			| 'Ref'                                                              | 'DeletionMark' | 'Parent' | 'Code' | 'Customer' | 'Vendor' | 'Employee' | 'Opponent' | 'ManagerSegment' | 'Description_en'     | 'Description_hash' | 'Description_ru' | 'Description_tr' |
			| 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | 'False'        | ''       | 12     | 'True'     | 'False'  | 'False'    | 'False'    | ''               | 'Розничный клиент 1' | ''                 | ''               | ''               |
		// Справочник.PriceTypes
		И я проверяю или создаю для справочника "PriceTypes" объекты с обмен данными загрузка истина:
			| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Currency'                                                           | 'ExternalDataProc' | 'ExternalDataProcSettings'              | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' |
			| 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 'False'        | 2      | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | ''                 | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'Опт'            | ''                 | ''               | ''               |
		// Справочник.Stores
		И я проверяю или создаю для справочника "Stores" объекты с обмен данными загрузка истина:
			| 'Ref'                                                            | 'DeletionMark' | 'Code' | 'UseGoodsReceipt' | 'UseShipmentConfirmation' | 'Transit' | 'NegativeStockControl' | 'Description_en'                | 'Description_hash' | 'Description_ru' | 'Description_tr' |
			| 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 'False'        | 1      | 'True'            | 'True'                    | 'False'   | 'True'                 | 'Склад 1 (с контролем остатка)' | ''                 | ''               | ''               |
		// Справочник.RetailCustomers
		И я проверяю или создаю для справочника "RetailCustomers" объекты с обмен данными загрузка истина:
			| 'Ref'                                                                     | 'DeletionMark' | 'Code'       | 'Description'        | 'Name'             | 'Surname' | 'UsePartnerTransactions' | 'Partner'                                                          | 'LegalName'                                                         | 'Agreement'                                                          | 'UsePartnerInfo' |
			| 'e1cib/data/Catalog.RetailCustomers?ref=b762b13668d0905011eb766bf96b2774' | 'False'        | '5878979896' | 'Розничный клиент 1' | 'Розничный клиент' | '1'       | 'False'                  | 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | 'e1cib/data/Catalog.Companies?ref=b76cbacb2511e57d11ebeab0dfce2249' | 'e1cib/data/Catalog.Agreements?ref=b76cbacb2511e57d11ebeab0dfce224a' | 'False'          |
		// Справочник.Companies
		И я проверяю или создаю для справочника "Companies" объекты с обмен данными загрузка истина:
			| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'Country' | 'MainCompany' | 'Partner'                                                          | 'Type'                             | 'OurCompany' | 'Description_en'     | 'Description_hash' | 'Description_ru' | 'Description_tr' |
			| 'e1cib/data/Catalog.Companies?ref=b76cbacb2511e57d11ebeab0dfce2249' | 'False'        | 10     | ''        | ''            | 'e1cib/data/Catalog.Partners?ref=b76cbacb2511e57d11ebeab0dfce2248' | 'Enum.CompanyLegalType.Individual' | 'False'      | 'Розничный клиент 1' | ''                 | ''               | ''               |
		// Справочник.ObjectStatuses
		И я проверяю или создаю для справочника "ObjectStatuses" объекты с обмен данными загрузка истина:
			| 'Ref'                                                                    | 'DeletionMark' | 'Parent'                                                            | 'IsFolder' | 'Code' | 'SetByDefault' | 'Posting' | 'Description_en'                          | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'UniqueID'                          |
			| 'e1cib/data/Catalog.ObjectStatuses?ref=b762b13668d0905011eb766bf96b2788' | 'False'        | 'e1cib/data/Catalog.ObjectStatuses?refName=SalesOrder'              | 'False'    | 11     | 'False'        | 'False'   | 'На согласовании'                         | ''                 | ''               | ''               | '_e96c5a6be90a46b499efaef7c6f44ae9' |
			| 'e1cib/data/Catalog.ObjectStatuses?ref=b762b13668d0905011eb766bf96b2789' | 'False'        | 'e1cib/data/Catalog.ObjectStatuses?refName=SalesOrder'              | 'False'    | 12     | 'True'         | 'True'    | 'Согласовано'                             | ''                 | ''               | ''               | '_e0cb85b20091495d9bde24e1a4d1e2cb' |
	Подготовка теста
		И Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
		Тогда открылось окно 'Заказы покупателей'
		И я нажимаю на кнопку с именем 'FormCreate'
		Тогда открылось окно "Заказ покупателя (создание)*"
	Блокировка контрагента
		Если элемент формы с именем "LegalName" присутствует на форме Тогда
			Тогда элемент формы с именем "LegalName" не доступен
	Заполнение партнера и соглашения
		Если элемент формы с именем "Company" присутствует на форме Тогда
			И я нажимаю кнопку выбора у поля с именем "Company"
			Тогда открылось окно 'Организации'
			И в таблице "List" я перехожу к строке:
				| 'Код' | 'Наименование'           |
				| '1'   | 'Собственная компания 1' |
			И в таблице "List" я выбираю текущую строку
			Тогда открылось окно 'Заказ покупателя (создание) *'
			И я перехожу к следующему реквизиту
		Если элемент формы с именем "Partner" присутствует на форме Тогда
			И я нажимаю кнопку выбора у поля с именем "Partner"
			Тогда открылось окно 'Партнеры'
			И в таблице "List" я перехожу к строке:
				| 'Код' | 'Наименование'       |
				| '12'  | 'Розничный клиент 1' |
			И в таблице "List" я выбираю текущую строку
			Тогда открылось окно 'Заказ покупателя (создание) *'
			И я перехожу к следующему реквизиту
		И я нажимаю на кнопку с именем 'FormWrite'
		Тогда элемент формы с именем "LegalName" стал равен 'Розничный клиент 1'
		Тогда элемент формы с именем "Partner" стал равен 'Розничный клиент 1'
		Тогда элемент формы с именем "Agreement" стал равен 'Розничный клиент 1'
	Завершение
		И я закрываю все окна клиентского приложения
	