﻿#language: ru

@tree

Функционал: Заказ покупателя

Как менеджер по продажам я хочу
зафиксировать заказанный товар
чтобы проанализировать разницу между тем что было заказано и фактически отгружено   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий:  _0901 подготовительный сценарий (заказ покупателя)
	Когда экспорт основных данных

Сценарий: _0902 автозаполнение соглашения в шапке документа
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я перехожу к строке:
		| 'Код' |
		| '12'  |
	И в таблице "List" я выбираю текущую строку
	Тогда элемент формы с именем "Agreement" стал равен 'Розничный клиент 1'
			
Сценарий: _0903 блокировка поля контрагент в шапке документа
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И Проверяю шаги на Исключение:
			|'И в поле с именем "LegalName" я ввожу текст "Розничный клиент 1"'|
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я перехожу к строке:
		| 'Код' |
		| '12'  |
	И в таблице "List" я выбираю текущую строку
	И в поле с именем "LegalName" я ввожу текст "Розничный клиент 1"
	И я нажимаю кнопку очистить у поля с именем "Partner"
	И Проверяю шаги на Исключение:
			|'И в поле с именем "LegalName" я ввожу текст "Розничный клиент 1"'|


Сценарий: _0904 заполнение соглашения в шапке документа
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	И в таблице "List" я перехожу к строке:
		| 'Код' |
		| '2'   |
	И в таблице "List" я выбираю текущую строку
	И я нажимаю кнопку выбора у поля с именем "Agreement"
	И в таблице "List" я перехожу к строке:
		| 'Код' |
		| '3'   |
	И в таблице "List" я выбираю текущую строку
	Тогда элемент формы с именем "Agreement" стал равен 'Индивидуальное соглашение 2 (расчет по соглашениям)'	