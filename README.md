# Homework № 21
Выполненное домашнее задание в рамках прохождения курса по iOS-разработке от MobDev Factory. Целью данного задания была отработка навыков работы с многопоточностью, а именно с GCD. Результат - простое приложение, которое по нажатию на кнопку "Get Password" генерирует рандомный пароль. При тапе на кнопку "Hack Password" приложение начинает подбирать пароль. Подбор пароля проиходит не на главном потоке, а переведен на другом, при этом взаимодействие с интерфейсом не заблокировано. Процесс подбора пароля отображен в интерфейсе, а именно в UILabel находящемся выше UITextField.

# Примеры 

<img src="https://github.com/HughDancy/Homework21/blob/master/Homework21/Assets.xcassets/Screens/Simulator%20Screenshot%20-%20iPhone%2015%20Pro%20-%202024-09-04%20at%2013.01.57.png" width="380">  <img src="https://github.com/HughDancy/Homework21/blob/master/Homework21/Assets.xcassets/Screens/Simulator%20Screenshot%20-%20iPhone%2015%20Pro%20-%202024-09-04%20at%2013.02.02.png" width="380">
