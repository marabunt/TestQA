﻿#language: ru

@tree
@Отчеты

Функционал: Тестирование отчетов

Как Тестировщик я хочу
Протестировать отчеты
чтобы Проверить что у пользователя не возникнет проблем

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0701 Подготовительный
	Когда Экспорт основных данных
	Когда Загрузка документа Поступление товаров и услуг
	И я выполняю код встроенного языка на сервере
		|'Documents.PurchaseInvoice.FindByNumber(1001).GetObject().Write(DocumentWriteMode.Posting);'|
		|'Documents.PurchaseInvoice.FindByNumber(1002).GetObject().Write(DocumentWriteMode.Posting);'|

Сценарий: _0702 Проверка отчета "Информация по товарам"
	И В командном интерфейсе я выбираю 'Отчеты' 'D0010 Информация по товарам'
	И я нажимаю на кнопку с именем 'FormGenerate'
	Дано Табличный документ "Result" равен макету "ИнформацияПоТоварам" по шаблону
	И в табличном документе "Result" ячейка с адресом "R8C3" равна "78788989*" по шаблону
	И я закрываю все окна клиентского приложения
			
Сценарий: _0703 Проверка отчета "Закупки"		
	И В командном интерфейсе я выбираю 'Отчеты' 'D1001 Закупки'
	И я нажимаю на кнопку с именем 'FormGenerate'
	И я жду когда в табличном документе "Result" заполнится ячейка "R13C4" в течение 30 секунд
	Дано Табличный документ "Result" равен макету "Закупки1" по шаблону		
	

