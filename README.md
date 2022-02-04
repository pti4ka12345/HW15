Сейчас в БД только одна таблица, которая содержит данные одного из американских приютов для животных. В ней содержится информация о питомцах и событиях с ними связанных: кого отдали новым хозяевам, кто потерялся и так далее. 

`'age_upon_outcome'` — возраст животного на момент прибытия в приют.

`'animal_id'` — идентификатор животного.

`'animal_type'` — тип животного. 

`'name'` — кличка. 

`'breed'` — порода.

`'color1', 'color2'` — цвет или сочетание цветов. 

`'date_of_birth'` — дата рождения. 

`'outcome_subtype'` — программа, в которой участвует животное. (В Америке есть разные варианты программ для бездомных животных. Например, про SCRP из нашей таблицы можно прочесть [здесь](https://www.maddiesfund.org/austin-animal-services-stray-cat-return-program.htm).)

`'outcome_type'` — что сейчас с животным. 

`'outcome_month'` — месяц прибытия. 

`'outcome_year'` — год прибытия.

**Шаг 0**

Создайте проект в PyCharm, поместите в ту же папку файл с базой данных. 

База данных находится здесь: [https://github.com/skypro-008/lesson15/blob/main/animal.db](https://github.com/skypro-008/lesson15/blob/main/animal.db).

**Шаг 1**

Импортируйте модуль `sqlite3` для работы с БД. 

Создайте подключение к БД с помощью метода `sqlite3.connect`.

**Шаг 2**

В блокноте или любой программе спроектируйте новую, приведенную к нормальной форме базу данных. 

**Шаг 3**

Напишите SQL-запрос для ее создания.

**Шаг 4**

Создайте все нужные таблицы и перенесите в них данные.

**Шаг 5**

Создайте приложение на Flask, которое по запросу `/<itemid>`, например `/2` или `/4`, возвращало бы информацию об одном объекте (формат данных и названия ключей выберите самостоятельно).

**Шаг 6**

Создайте репозиторий и запушьте в него проект. 

Не забудьте про `readme.md` и .`gitignore`.

Если вы использовали SQL для создания и изменения таблиц — приложите его!

**Шаг 7**

Вложите репозиторий на проверку.