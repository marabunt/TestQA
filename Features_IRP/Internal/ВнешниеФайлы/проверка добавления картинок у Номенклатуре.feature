﻿#language: ru

@tree

Функционал: проверка добавления картинок в справочник Номенклатура

Как Менеджер я хочу
добавить картинки к номенклатуре
чтобы можно было посмотреть как выглядит товар

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0601 подготовительный (добавление картинок)
	Когда экспорт основных данных
	Когда экспорт настроек картинок
	И я закрываю TestClient "Этот клиент"
	И Я устанавливаю в данную базу расширение из файла "$КаталогПроекта$\Additional\IRP_TestExtension.cfe"
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
Сценарий: _0602 проверка добавления картинки
	Дано Я открываю навигационную ссылку "e1cib/data/Catalog.Items?ref=b762b13668d0905011eb76684b9f687d"
	И я выбираю файл "$КаталогПроекта$\Files\itempicture1.png"
	

