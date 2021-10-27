# ie-2021-workshop

Материалы для мастер-класса Дмитрия Овчаренко на INFOSTART EVENT 2021 Moscow Premiere

> ВНИМАНИЕ! Для полноценного участия в мастер-классе необходима подготовка! Прочитайте внимательно **всю** информацию на этой странице!

Участники мастер-класса могут присоединиться к специальному чату в TG по [ссылке](https://t.me/joinchat/uAfMQUnZHxNjZDIy).

## Подготовка

Клонируйте этот репозиторий в каталог, путь к которому не содержит пробелов.

Перечисленное ПО необходимо установить заранее и убедиться в его работоспособности, чтобы на мастер-классе максимум времени уделить разработке и не тратить время на подготовку окружения.

### Установка OneScript.Web

- скачать сборку `oscript.web-*-x64.zip` по [ссылке](https://github.com/EvilBeaver/OneScript.Web/releases/v0.9.0).

> ВНИМАНИЕ! Скачать нужно именно `oscript.web-*-x64.zip`, а **НЕ** исходный код!

- распаковать архив поближе к корню диска, например в `C:\oscript.web-0.9.0`. В распакованном архиве вы должны найти файл `OneScript.WebHost.exe`

### Платформа 1С:Предприятие

Рекомендуется использовать самую актуальную на текущий момент версию платформы 1С:Предприятие, главное, чтобы она была выше 8.3.17 включительно.

> ВНИМАНИЕ! Вам потребуется клиентская лицензия. Если ее нет, можно использовать учебную версию 1С:Предприятие.

### ПО для разработки веб-сервиса

В ОС Windows 10 все необходимое можно установить автоматически с помощью [chocolatey (choco)](https://chocolatey.org/install), скрипт для автоматической установки лежит тут `./install-script.bat` находится в корне репозитория. Его надо запускать с правами Администратора.

Пользователи Linux знают, что делать 😎.

Также можно установить все вручную по списку:

| Название ПО | Ссылки | Примечание |
|---|---|---|
| .NET Framework (Mono в случае linux) | [ссылка](https://dotnet.microsoft.com/download/dotnet-framework) | Обязательно |
| Visual Studio Code | [ссылка](https://code.visualstudio.com/download) | Обязательно |
| git | [ссылка](https://git-scm.com/download/win) | Обязательно |
| OneScript | [ссылка](https://oscript.io/downloads) | Обязательно |
| Postman Desktop | [ссылка](https://www.postman.com/downloads) | Обязательно |
| Docker Desktop for Windows | [ссылка](https://hub.docker.com/editions/community/docker-ce-desktop-windows) |   |
| Wireshark | [ссылка](https://www.wireshark.org/download.html) |   |

### Дополнительные шаги

- открыть VSCode и установить расширения:
  - `1c-syntax.language-1c-bsl`
  - `evilbeaver.oscript-debug`
- с помощью командной строки установить библиотеки для OneScript:
  - `opm install opm`
  - `opm install 1commands json 1connector 1testrunner 1bdd`
- с помощью командной строки скачать docker-образы:
  - `docker pull evilbeaver/oscript-web:0.9.0`
  - `docker pull evilbeaver/onescript:1.6.0`
- зарегистрировать учетную запись в Postman и войти в приложение под этой учетной записью

## Важная информация

- Если вы не работали с каким-то из перечисленных инструментов, необходимо заранее ознакомиться с ними хотя бы на базовом уровне.
- Вы можете установить только обязательное ПО. С ним вы пройдете мастер-класс и получите готовое приложение, но не сможете самостоятельно повторить некоторые шаги.
- Начальный проект находится в `./web-service`