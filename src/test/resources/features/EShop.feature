# language: ru
@new
Функционал: создания объвления, пуюликация, запрос цены и создания догорова

  Предыстория: Авторизация
    Дано главная страница отоброжена
    Когда нажать на кнопку Войти
    Тогда модалка для авторизации отоброжено
    Когда вводится логин как "Jahongir026567+1@gmail.com" и пароль как "Jahongir1."
    И нажать на кнопку войти
    Тогда личный кабинеть отоброжена


  Сценарий: Проверка личного кабинета продовца ЭМ
    Когда нажать на раздель ЭМ
    И нажать на под раздель Мои объявления
    Тогда страница Мои объявления отображено
    Когда нажать под раздель Запросы
    Тогда страница Запросы отоброжена
    Тогда нажать на выйти

  Сценарий: Проверка создания объявления в ЭМ
    Когда нажать на раздель ЭМ
    И нажать на под раздель Мои объявления
    Тогда страница Мои объявления отображено
    Когда нажать на кнопку Создать объявления
    Тогда модалка для создания объявления отоброжена
    Когда назначается категоря как "Бумага"
    И назначается продукт как "Бумага"
  #  И назначается Шаблон как "Объявление 3016-31.12.2020"
    И нажать кнопку Отправить
    Тогда страница создания объявления отоброжено
    Также ввод Марка как "Цистерна"
    И ввод Производитель как "Цистерна УЗ"
    И ввод Страна производства как "УЗБЕКИСТАН"
    И ввод Срок годности год "2021" месяц "Декабрь" день "30"
    И ввод Гарантии "20" единиц измерения как "Год"
    И ввод Год производства как "2020"
    И ввод Описание как "это описание написано с автотеста"
    И назначить лицензию как "Да"
    И ввод срок доставки как "20" единиц измерения как "День"
    И ввод Цена как "200000"
    И ввод Количество на складе как "20"
    И ввод Минимальное количество как "1"
    И ввод Максимальное количество как "20"
    И назначит Единица измерения как "шт."
    Также загрузит фото для объявления
    Когда нажать на кнопку Отправить на модерацию
    Тогда проверить ид объявления правильно
    И статус объявлении равно на "На модерации"
    Тогда нажать на выйти

  Сценарий: Модерация объявления
   # Когда переход на модератор
    Когда  нажать на выйти
    Тогда  главная страница отоброжена
    Когда нажать на кнопку Войти
    Тогда модалка для авторизации отоброжено
    Когда вводится логин как "inurilloev313@gmail.com" и пароль как "Izzat123."
    И нажать на кнопку войти
    И перейти в страницу модерация
    И опубликовать объявления
    Тогда нажать на выйти

  Сценарий: Проверка объявления на публикацию
    Когда  нажать на выйти
    Тогда  главная страница отоброжена
    Когда нажать на таб ЭМ в главной странице
    И нажать на копку Перейти в список объявлений
    Тогда публичная страница ЭМ отоброжено
    Когда нажать объявления по ID
    Тогда проверить объявления на правильность


  Сценарий: Эл.маг в ЛК Заказчика
    Когда  нажать на выйти
    Тогда  главная страница отоброжена
    Когда нажать на кнопку Войти
    Тогда модалка для авторизации отоброжено
    Когда вводится логин как "azimovqobil72+1@gmail.com" и пароль как "Qa13081995@"
    И нажать на кнопку войти
    Когда нажать на раздель ЭМ
    Когда нажать под раздель Запросы
    Тогда страница Запросы отоброжена
    Тогда  нажать на выйти

  @test15
  Сценарий: Запрос цены Заказчиком
    Когда  нажать на выйти
    Тогда  главная страница отоброжена
    Когда нажать на кнопку Войти
    Тогда модалка для авторизации отоброжено
    Когда вводится логин как "azimovqobil72+1@gmail.com" и пароль как "Qa13081995@"
    И нажать на кнопку войти
    Когда нажать на лого компании
    Когда нажать на таб ЭМ в главной странице
    И нажать на копку Перейти в список объявлений
    Тогда публичная страница ЭМ отоброжено
    Когда нажать объявления по ID
    И нажать на кнопку Запросить цену
    Тогда появится модалка для запроса цены
    И указать количество закупаемого товара как "1"
    Когда нажать на кнопку отправить на модалке
    Тогда статус объявлении равно на "ОТКРЫТ"
    Когда перейти в личный кабинет
    И нажать на раздель Организация
    И нажать на под раздель Клиринг
    Тогда страница Клиринг отображается
#    И в биллинге сумма заблокирована задатка по электронному магазину "6 000.00" комиссионного сбора по электронному магазину "300.00"
    И "Блокировка задатка по электронному магазину" Кредит на "6 000.00"
    И "Блокировка комиссионного сбора по электронному магазину" Кредит на "300.00"
    Когда нажать на раздель ЭМ
    Когда нажать под раздель Запросы
    Тогда страница Запросы отоброжена
    Тогда проверить существование запроса
    Тогда  нажать на выйти

  Сценарий: Предложения цены поставщиком
    Когда нажать на раздель ЭМ
    Когда нажать под раздель Запросы
    Тогда страница Запросы отоброжена
    Когда открыт запрос созданный запрос
    И нажать на кнопку Предложить цену
    Тогда появится модалка для предложения цены
    Когда предлагаем цену "150000"
    Когда перейти в личный кабинет
    И нажать на раздель Организация
    И нажать на под раздель Клиринг
    Тогда страница Клиринг отображается
#    И в биллинге сумма заблокирована задатка по электронному магазину "54 500.00" комиссионного сбора по электронному магазину "225.00"
    И "Блокировка задатка по электронному магазину" Кредит на "54 500.00"
    И "Блокировка комиссионного сбора по электронному магазину" Кредит на "225.00"
    Тогда нажать на выйти

  Сценарий: Создания договора
    Когда  нажать на выйти
    Тогда  главная страница отоброжена
    Когда нажать на кнопку Войти
    Тогда модалка для авторизации отоброжено
    Когда вводится логин как "azimovqobil72+1@gmail.com" и пароль как "Qa13081995@"
    И нажать на кнопку войти
    Когда нажать на раздель ЭМ
    Когда нажать под раздель Запросы
    Тогда страница Запросы отоброжена
    Когда открыт запрос созданный запрос
    И нажать кнопку закрыт процедуру
    Когда нажать под раздель Запросы
    Тогда  проверить что Договор создан
    Когда нажать на договор
    И страница Договора ЭМ отоброжено
    Тогда проверит что все данные договора правильны
    Когда перейти в личный кабинет
    И нажать на раздель Организация
    И нажать на под раздель Клиринг
    Тогда страница Клиринг отображается
#    И в биллинге сумма заблокирована задатка по электронному магазину "4 500.00" комиссионного сбора по электронному магазину "225.00"
    И "Блокировка задатка по электронному магазину" Кредит на "4 500.00"
    И "Блокировка комиссионного сбора по электронному магазину" Кредит на "225.00"
    И "Разблокировка задатка по электронному магазину" Дебит  на сумму "6 000.00"
    И "Разблокировка комиссионного сбора по электронному магазину" Дебит  на сумму "300.00"
    Тогда  нажать на выйти

  Сценарий: Проверка блокировки суммы у поставщика
    Когда перейти в личный кабинет
    И нажать на раздель Организация
    И нажать на под раздель Клиринг
    Тогда страница Клиринг отображается
#    И в биллинге сумма заблокирована задатка по электронному магазину "54 500.00" комиссионного сбора по электронному магазину "225.00"
    И "Блокировка задатка по электронному магазину" Кредит на "54 500.00"
    И "Блокировка комиссионного сбора по электронному магазину" Кредит на "225.00"
    Тогда  нажать на выйти

  @test
  Сценарий: Подписания договора победительям
    Когда нажать на раздель ЭМ
    Когда нажать под раздель Запросы
    Тогда страница Запросы отоброжена
    Когда нажать на договор
    И страница Договора ЭМ отоброжено
    Тогда статус Договора "Ожидает подписания победителем"
    Когда подписать договор
    Тогда статус Договора "Ожидает подписания заказчиком"
    Когда перейти в личный кабинет
    И нажать на раздель Организация
    И нажать на под раздель Клиринг
    Тогда страница Клиринг отображается
#    И в биллинге сумма заблокирована задатка по электронному магазину "54 500.00" комиссионного сбора по электронному магазину "225.00"
    Тогда  нажать на выйти

  Сценарий: Подписания договора заказчиком
    Когда  нажать на выйти
    Тогда  главная страница отоброжена
    Когда нажать на кнопку Войти
    Тогда модалка для авторизации отоброжено
    Когда вводится логин как "azimovqobil72+1@gmail.com" и пароль как "Qa13081995@"
    И нажать на кнопку войти
    Когда нажать на раздель ЭМ
    Когда нажать под раздель Запросы
    Тогда страница Запросы отоброжена
    Когда нажать на договор
    И страница Договора ЭМ отоброжено
    Тогда статус Договора "Ожидает подписания заказчиком"
    Когда подписать договор
    Когда нажать на Денежные средста перечислены
    Тогда статус Договора "Договор на исполнении"
    Когда перейти в личный кабинет
    И нажать на раздель Организация
    И нажать на под раздель Клиринг
    Тогда страница Клиринг отображается
#    И в биллинге сумма заблокирована задатка по электронному магазину "150 000.00" комиссионного сбора по электронному магазину "225.00"
    И "Комиссионный сбор по электронному магазину" Кредит на "225.00"
    И "Блокировка 100% стоимости по договору" Кредит на "145 500.00"
    Тогда  нажать на выйти

  Сценарий: Исполнения договора как поставщик
    Когда нажать на раздель ЭМ
    Когда нажать под раздель Запросы
    Тогда страница Запросы отоброжена
    Когда нажать на договор
    И страница Договора ЭМ отоброжено
    Когда нажать на таб Исполнение договорных обязательств в договоре
    И нажать подписать на исполнение
    Тогда появляется ошибка с текстом "Некоторые поля содержат ошибки"
    Когда выбрать основание как "Исполнение"
    И нажать подписать на исполнение
    Когда перейти в личный кабинет
    И нажать на раздель Организация
    И нажать на под раздель Клиринг
    Тогда страница Клиринг отображается
#    И в биллинге сумма заблокирована задатка по электронному магазину "54 500.00" комиссионного сбора по электронному магазину "225.00"
    Тогда  нажать на выйти

  Сценарий: Исполнения договора как заказчик
    Когда  нажать на выйти
    Тогда  главная страница отоброжена
    Когда нажать на кнопку Войти
    Тогда модалка для авторизации отоброжено
    Когда вводится логин как "azimovqobil72+1@gmail.com" и пароль как "Qa13081995@"
    И нажать на кнопку войти
    Когда нажать на раздель ЭМ
    Когда нажать под раздель Запросы
    Тогда страница Запросы отоброжена
    Когда нажать на договор
    И страница Договора ЭМ отоброжено
    Когда нажать на таб Исполнение договорных обязательств в договоре
    И нажать подписать на исполнение
    Когда перейти в личный кабинет
    И нажать на раздель Организация
    И нажать на под раздель Клиринг
    Тогда страница Клиринг отображается
#    И в биллинге сумма заблокирована задатка по электронному магазину "150 000.00" комиссионного сбора по электронному магазину "4 500.00"
#    И в биллинге сумма заблокирована задатка по электронному магазину "150 000.00" комиссионного сбора по электронному магазину "4 500.00"
    И "Разблокировка 100% стоимости по договору" Дебит  на сумму "145 500.00"
    И "Оплата 100% стоимости по договору" Кредит на "150 000.00"
    И "Разблокировка задатка по электронному магазину" Дебит  на сумму "4 500.00"
    Тогда  нажать на выйти


