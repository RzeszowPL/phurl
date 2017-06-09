# Phurl - Url Shortener
## Instalation
Import **phurl.sql** to MySQL database and edit **config.php**.
```php
define('DB_HOSTNAME', 'mysql.your_server.domain'); // Your MySQL server
define('DB_USERNAME', 'db_user'); // Your MySQL database username
define('DB_PASSWORD', 'db_pass'); // Your MySQL database password
define('DB_NAME', 'db_name'); // Your MySQL database name
define('DB_VERSION', '4');
define('DB_PREFIX', 'phurl_');
define('SITE_URL', 'http://your.domain'); // Your Domain with patch to Phurl ("http://your.domain" or "http://your.domain/patch/to/Phurl") - NO slash at the beginning!
define('SITE_URL_ONLY', 'your.domain'); // Your Domain with patch to Phurl ("your.domain" or "your.domain/patch/to/Phurl") - NO slash at the beginning!
define('SITE_TITLE', 'Phurl');
define('ADMIN_USERNAME', 'admin'); // Admin username
define('ADMIN_PASSWORD', 'admin'); // Admin password
define('URL_PROTOCOLS', 'http|https|ftp|ftps|mailto|news|mms|rtmp|rtmpt|e2dk');
define('PHURL_VERSION', '2.4.2');
define('PHURL_NUMERICVERSION', '242');
error_reporting(E_ALL);
$_ERROR = array();
```
## API
```
http://your.domain/patch/to/Phurl/api.php?url=google.com&alias=google
```
### ?url=
**URL is mandatory!**
```
http://your.domain/patch/to/Phurl/api.php?url=google.com
```
Output:
```
{
	"url": {
		"created": "2010-01-01 01:01:01",
		"LongURL": {
			"url": "http://google.com",
			"characters": 17
		},
		"ShortURL": {
			"id": 1,
			"characters": 37,
			"url": "http://your.domain/patch/to/Phurl/XXX",
			"code": {
				"code": "XXX",
				"normal": "your.domain/patch/to/Phurl/XXX",
				"https": "https://your.domain/patch/to/Phurl/XXX",
				"http": "http://your.domain/patch/to/Phurl/XXX"
			},
			"alias": {
				"alias": "XXX",
				"normal": "your.domain/patch/to/Phurl/XXX",
				"https": "https://your.domain/patch/to/Phurl/XXX",
				"http": "http://your.domain/patch/to/Phurl/XXX"
			}
		}
	}
}
```
Where ***XXX*** is: 3 characters (0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ).
### ?alias=
**URL is mandatory!**
```
http://your.domain/patch/to/Phurl/api.php?url=google.com&alias=google
```
Output:
```
{
	"url": {
		"created": "2010-01-01 01:01:01",
		"LongURL": {
			"url": "http://google.com",
			"characters": 17
		},
		"ShortURL": {
			"id": 1,
			"characters": 37,
			"url": "http://your.domain/patch/to/Phurl/XXX",
			"code": {
				"code": "XXX",
				"normal": "your.domain/patch/to/Phurl/XXX",
				"https": "https://your.domain/patch/to/Phurl/XXX",
				"http": "http://your.domain/patch/to/Phurl/XXX"
			},
			"alias": {
				"alias": "google",
				"normal": "your.domain/patch/to/Phurl/google",
				"https": "https://your.domain/patch/to/Phurl/google",
				"http": "http://your.domain/patch/to/Phurl/google"
			}
		}
	}
}
```
Where ***XXX*** is: 3 characters (0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ) and ***google*** is custom alias.