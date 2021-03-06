﻿Процедура ДобавитьЗапись(Согласование,Отказ) Экспорт
	Если Отказ Тогда
		Возврат;
	Конецесли;
	ОбъектБД = Согласование.ОбъектБД;
	ПредметСогласования = Согласование.ПредметСогласования;
	Период = Согласование.Дата;
	
	НаборЗаписей = РегистрыСведений.бпсБизнесПроцессыСогласования.СоздатьНаборЗаписей();
	НаборЗаписей.Отбор.ПредметСогласования.Установить(ПредметСогласования);
	НаборЗаписей.Отбор.ОбъектБД.Установить(ОбъектБД);
	НаборЗаписей.Отбор.Период.Установить(Период);
	
	Запись = НаборЗаписей.Добавить();
	Запись.Период = Период;
	Запись.ПредметСогласования = ПредметСогласования;
	Запись.ОбъектБД = ОбъектБД;
	Запись.Согласование = Согласование;
	
	НаборЗаписей.Записать();
КонецПроцедуры //ДобавитьЗапись(Согласование)