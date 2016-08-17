<?php return array (
  'components' => 
  array (
    'db' => 
    array (
      'class' => 'yii\\db\\Connection',
      'dsn' => 'mysql:host=localhost;dbname=portalweb_1',
      'username' => 'root',
      'password' => 'admin',
      'charset' => 'utf8',
    ),
    'user' => 
    array (
    ),
    'mailer' => 
    array (
      'transport' => 
      array (
      ),
      'useFileTransport' => true,
      'view' => 
      array (
        'theme' => 
        array (
          'name' => 'HumHub',
          'basePath' => 'C:/xampp/htdocs/portalweb/themes\\HumHub',
          'publishResources' => false,
        ),
      ),
    ),
    'cache' => 
    array (
      'class' => 'yii\\caching\\FileCache',
      'keyPrefix' => 'humhub',
    ),
    'view' => 
    array (
      'theme' => 
      array (
        'name' => 'HumHub',
        'basePath' => 'C:/xampp/htdocs/portalweb/themes\\HumHub',
        'publishResources' => false,
      ),
    ),
    'formatter' => 
    array (
      'defaultTimeZone' => 'Europe/Berlin',
    ),
    'formatterApp' => 
    array (
      'defaultTimeZone' => 'Europe/Berlin',
      'timeZone' => 'Europe/Berlin',
    ),
  ),
  'params' => 
  array (
    'installer' => 
    array (
      'db' => 
      array (
        'installer_hostname' => 'localhost',
        'installer_database' => 'portalweb_1',
      ),
    ),
    'config_created_at' => 1471413500,
    'databaseInstalled' => true,
    'installed' => true,
  ),
  'name' => 'portalweb',
  'language' => 'es',
  'timeZone' => 'Europe/Berlin',
); ?>