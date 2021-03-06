<?php
// header
	$lang['installer'] = 'Установка';
	$lang['Welcome'] = 'Начало';
	$lang['Install'] = 'Установка';
	$lang['Upgrade'] = 'Обновление';
	$lang['Troubleshooter'] = 'Проблемы';
	$lang['Step'] = 'Шаг';
	$lang['Readme'] = 'Readme';
	$lang['Admin'] = 'Админ';
	$lang['Home'] = 'Главная';
	$lang['Install_instruct'] = 'Вы можете обновить существующий сайт с помощью раздела "Обновить".';
	$lang['Upgrade_instruct'] = 'Обновление внесет изменения в вашу базу данных MySQL. Не забудьте сделать резервную копию до обновления.';
	$lang['Troubleshooter_instruct'] = 'Средство устранения неполадок обнаруживает ошибки, такие как разрешения для общей папки';

// intro / step 1
	$lang['WelcomeToInstaller'] = '<h2>Добро пожаловать в Установщик Pligg!</h2>';
	$lang['Introduction'] = 'Введение';
	$lang['WelcomeToThe'] = '<p>Добро пожаловать в <a href="http://www.pligg.com" target="_blank">Систему управления содержанием Pligg</a>. Перед установкой Pligg пожадуйста убедитесь, что вы устанавливаете последнюю версию Pligg, посетив официальную <a href="http://www.pligg.com/download.php" target="_blank">страницу для скачивания Pligg</a>.';
	$lang['Bugs'] = 'При посещении Pligg.com, пожалуйста, ознакомьтесь с документацией, представленной сообществом Pligg. Мы также рекомендуем Вам зарегистрироваться на <a href="http://forums.pligg.com/" target="_blank">форуме Pligg  </ A>, где вы найдете свободные модули, шаблоны и другие возможности, что бы расширить свой веб-сайт. Если вы обнаружите какие-либо ошибки или опечатки в Pligg, вы можете<a href="http://forums.pligg.com/projects/pligg-cms/index.html" target="_blank"> сообщить о них </ A> с помощью сообщения в разделе об ошибке, чтобы мы смогли исправить ее в следующей версии';
	$lang['Installation'] = 'Установка';
	$lang['OnceFamiliar'] = '<p>Если вы в первый раз устанавливаете Pligg, пожалуйста внимательно следуйте приведенным ниже инструкциям. Если вы хотите <a href="./upgrade.php">обновить свой сайт</a> с предыдущей версии, пожалуйста запустите обновление, нажав на вкладку "Обновление", которая расположена выше. Предупреждение: при запуске процесса установки с уже существующей базой данных Pligg, все статьи и настройки могут быть потеряны. Если вы по прежнему хотите выполнить установку, пожалуйста следуйте инструкциям описанным ниже.</p><br />
	<ol>
		<li>Переименовать settings.php.default на settings.php</li>
		<li>Переименовать /languages/lang_english.conf.default на lang_english.conf</li>
		<li>Переименовать /languages/lang_russian.conf.default на lang_russian.conf</li>
		<li>Переименовать /libs/dbconnect.php.default на dbconnect.php</li>
		<li>Переименовать /logs.default каталога /logs</li>
		<li>Установите права 777 на следующие папки, если появляются ошибки, установите права 777.</li>
		<ol>
			<li>/admin/backup/</li>
			<li>/avatars/groups_uploaded/</li>
			<li>/avatars/user_uploaded/</li>
			<li>/cache/</li>
			<li>/languages/ (на все файлы, содержащиеся в этой папке должны быть установлены права 777)</li>
		</ol>
		<li>Установите права 666 на следующие файлы </li>
		<ol>
			<li>/libs/dbconnect.php</li>
			<li>settings.php</li>
		</ol>
	</ol>
	Теперь мимо трудная часть! Переходите к следующему шагу для установки Pligg на вашу базу данных MySQL.</p>';

// step 2
	$lang['EnterMySQL'] = '<strong>Введите настройки базы данных MySQL:</strong>';
	$lang['DatabaseName'] = 'Имя базы данных';
	$lang['DatabaseUsername'] = 'Имя пользователя базы данных';
	$lang['DatabasePassword'] = 'Пароль';
	$lang['DatabaseServer'] = 'Сервер базы данных';
	$lang['TablePrefix'] = 'Префикс таблиц';
	$lang['PrefixExample'] = '(например: префикс "pligg_" ведет к изменению имени таблицы "users" на "pligg_users")';
	$lang['CheckSettings'] = 'Проверка установок';
	$lang['Errors'] = 'Устраните причины ошибок, установка прервана!';	
	$lang['LangNotFound'] = 'не был найден. Пожалуйста, удалите. Расширение по умолчанию из всех языковых файлов и повторите попытку.';

// step 3
	$lang['ConnectionEstab'] = '<p>Установлено соединение с базой данных...</p>';
	$lang['FoundDb'] = '<p>Найдена база данных...</p>';
	$lang['dbconnect'] = '<p>\'/libs/dbconnect.php\' успешно обновлен.</p>';
	$lang['NoErrors'] = '<p>Ошибок нет, переходите к следующему шагу...</p>';
	$lang['Next'] = 'Далее';
	$lang['GoBack'] = 'Назад';
	$lang['Error2-1'] = '<p>Невозможно перезаписать файл \'libs/dbconnect.php\'.</p>';
	$lang['Error2-2'] = '<p>Невозможно открыть \'/libs/dbconnect.php\' для записи.</p>';
	$lang['Error2-3'] = '<p>Подключение к серверу БД успешно, но имя БД неверное.</p>';
	$lang['Error2-4'] = '<p>Невозможно подключиться к <b>серверу БД</b> с помощью введенной информации.</p>';

// step 4
	$lang['CreatingTables'] = '<p><strong>Создание таблиц базы данных...</strong></p>';
	$lang['TablesGood'] = '<p><strong>Таблицы успешно созданы!</strong></p><hr />';
	$lang['Error3-1'] = '<p>Возникла проблема создания таблиц.</p>';
	$lang['Error3-2'] = '<p>Невозможно подключиться к базе данных.</p>';
	$lang['EnterAdmin'] = '<p><strong>Введите данные учетной записи администратора:</strong><br />Эта информация потребуется для того, чтобы войти и настроить ваш сайт.</p>';
	$lang['AdminLogin'] = 'Имя администратора';
	$lang['AdminPassword'] = 'Пароль администратора';
	$lang['ConfirmPassword'] = 'Повторите пароль';
	$lang['AdminEmail'] = 'E-mail администратора';
	$lang['SiteTitleLabel'] = 'название сайта';
	$lang['CreateAdmin'] = 'Создать учетную запись администратора';

// Step 5
	$lang['Error5-1'] = 'Заполните все поля для учетной записи администратора.';
	$lang['Error5-2'] = 'Пароли не совпадают.';
	$lang['AddingAdmin'] = 'Создание аккаунта администратора...';
	$lang['InstallSuccess'] = '<a href="../">Ваш Pligg сайт</a> установлен успешно!';
	$lang['InstallSuccessMessage'] = 'Поздравляем, вы создали сайт Pligg CMS! В то время как ваш сайт является полностью функциональным на данный момент, вы хотите, чтобы сделать небольшую очистку, следуя инструкциям ниже, чтобы обеспечить безопасность сайта.';
	$lang['WhatToDo'] = 'Что делать дальше:';
	$lang['WhatToDoList'] = '		<li><p>Установите права 644 на файл "/libs/dbconnect.php", в дальнейшем вы не должны изменять этот файл.</p></li>
		<li><p><strong>УДАЛИТЕ</strong> папку "/install" с вашего сервера, если вы успешно установили Pligg.</p></li>
		<li><p>Войдите в <a href="../admin/admin_index.php"> панель администратора </a>, используя информацию о пользователе, введенную в предыдущем шаге. В панели администратора вы сможете ознакомится  с дополнительной информацией о том, как использовать Pligg.</p></li>
		<li><p><a href="../admin/admin_config.php">Настройте ваш сайт</a> с помощью панели администратора.</p></li>
		<li><p>Посетите <a href="http://forums.pligg.com/">форум Pligg</a> ,если у вас есть какие-либо вопросы, или вы просто хотите сообщить нам о вашем новом сайте.</p></li>';

// Upgrade
	$lang['UpgradeHome'] = '<p>Нажав на кнопку ниже, Pligg будет обновить базу данных до последней версии. Это также добавит новые фразы, добавляя последних дополнений к нижней части языковой файл. Вам все равно придется, чтобы загрузить новые файлы и вручную обновить шаблоны, чтобы быть полностью совместим с последней версией.</p><p>Мы рекомендуем сделать резервную копию вашего сайта и базы данных на локальном компьютере, прежде чем приступить, потому что процесс обновления будут внесены необратимые изменения в базу данных MySQL.</p>';
	$lang['UpgradeAreYouSure'] = 'Вы уверены в том, что хотите обновить вашу базу данных? Это повлечет необратимые изменения в вашей базе данных';
	$lang['UpgradeYes'] = 'Да';
	$lang['UpgradeLanguage'] = 'Ваш языковой файл успешно обновлен. В настоящее время онн включает самый последний перевод.';
	$lang['UpgradingTables'] = '<h2>Обновление таблиц...</h2>';
	$lang['LanguageUpdate'] = '<strong>Обновление языкового файла...</strong>';
	$lang['IfNoError'] = 'Если не отображено никаких ошибок, обновление закончено!';
	$lang['PleaseFix'] = 'Устраните перечисленные ошибки, обновление прервано!';

// Errors
	$lang['NotFound'] = 'не найден!';
	$lang['CacheNotFound'] = 'не найден! Создайте папку /cache в вашей корневой папке.';
	$lang['DbconnectNotFound'] = 'не найден! Попробуйте переимновать файл dbconnect.php.default в dbconnect.php';
	$lang['SettingsNotFound'] = 'не найден! Попробуйте переимновать файл settings.php.default в settings.php';
	$lang['ZeroBytes'] = '0 байт.';
	$lang['NotEditable'] = 'защищен от записи. Пожалуйста установите права 777';
	
?>