﻿#Область ПрограммныйИнтерфейс

// Конвертирует коллекцию значений в строку
&НаКлиенте
Функция ЗаписатьОбъектJSON(ДанныеJSON) Экспорт
	#Если НЕ ВебКлиент Тогда

	ЗаписьJSON = Новый ЗаписьJSON;
	ЗаписьJSON.УстановитьСтроку();
	ЗаписатьJSON(ЗаписьJSON, ДанныеJSON);
	Возврат ЗаписьJSON.Закрыть();
	
	#КонецЕсли
КонецФункции

// Читает коллекцию значений из строки
&НаКлиенте
Функция ПрочитатьОбъектJSON(ДанныеJSON, ПрочитатьВСоответствие = Ложь) Экспорт
	#Если НЕ ВебКлиент Тогда

	ЧтениеJSON = New ЧтениеJSON;
	ЧтениеJSON.УстановитьСтроку(ДанныеJSON);
	Значение = ПрочитатьJSON(ЧтениеJSON, ПрочитатьВСоответствие);
	ЧтениеJSON.Закрыть();
	Возврат Значение;
	
	#КонецЕсли
КонецФункции
#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти
