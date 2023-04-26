﻿#language: ru

@tree

Функционал: Документ Заказ

Как менеджер я хочу
оформлять документы "Заказ"
чтобы вести учет заказанных товаров и услуг

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	
Сценарий: Расчет суммы по количеству и цене
	И Я открываю навигационную ссылку "e1cib/list/Документ.Заказ"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" поле с именем 'ТоварыСумма' имеет значение '2,00'
	И элемент формы с именем 'ТоварыИтогСумма' стал равен '2'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '2,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" поле с именем 'ТоварыСумма' имеет значение '10,00'
	И элемент формы с именем 'ТоварыИтогСумма' стал равен '12'
	И я закрываю все окна клиентского приложения

Сценарий: Заполнение количества у услуги
	И Я открываю навигационную ссылку "e1cib/list/Документ.Заказ"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
	Когда открылось окно 'Заказ (создание)'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю по строке 'Доставка'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1'
	И я закрываю все окна клиентского приложения

		
	

