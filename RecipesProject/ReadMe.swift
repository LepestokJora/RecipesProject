//
//  ReadMe.swift
//  RecipesProject
//
//  Created by Lepestok Jora on 29.11.2022.
//

/*
 Общая концепция:
 
 1. 1. Первая вьюшка - авторизация (просто какой-нибудь логин и 1234 пароль)
 
 2. Следующая вьюшка где тэйблвью с рецептами например.

 Снизу у нас тачбар (если я правильно это называю) где две вкладки - рецепты и профиль

 3. В профиле информация о юзернейем, рандомный телефон и почта к примеру.

 4. В рецептах тейблвью с рецептами (название и картинка, типо «борщ» и картинка борща справа), кликаем по рецепту и видим страницу с полным рецептом.
 
 
 
 Детальное ТЗ
 
1.  Создать навигейшин контроллер
2.  Создаем к нему таб бар
3.  Создаем + 3 экрана  один для  авторизации  второй для детальной информации рецепта, третий для списка создателей
 
￼

4. С Сториборда тянем аутлеты (лучики) в файл LoginViewController
5. А именное тянем к полям логин и к полю пароль
6. Затем экшены для алертов при неправильном вводе пароля
7. создаем переход на 2 контроллер называем его ….
8. Создаем файл для экрана с тэйблвью наполняем его из массива рецептов( фото, название рецепта,)
9. Делаем переход на файл с описанием рецепта в каторый передаем выбранный рецепт
10.  Выбранный рецепт показываем детально (фото, описание, название)
11. По кнопке назад возвращаемся
12. Вторая кнопка таб бара относится с экрану списка авторов
13. Список авторов можно заполнить в стореборде вертикальный стек вью (либо через код)

 
 */
