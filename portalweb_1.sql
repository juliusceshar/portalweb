-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2016 a las 09:59:21
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portalweb_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `module` varchar(100) DEFAULT '',
  `object_model` varchar(100) DEFAULT '',
  `object_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `activity`
--

INSERT INTO `activity` (`id`, `class`, `module`, `object_model`, `object_id`) VALUES
(1, 'humhub\\modules\\space\\activities\\Created', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(2, 'humhub\\modules\\content\\activities\\ContentCreated', 'content', 'humhub\\modules\\post\\models\\Post', 1),
(3, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(4, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(5, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(6, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(7, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1),
(8, 'humhub\\modules\\space\\activities\\MemberAdded', 'space', 'humhub\\modules\\space\\models\\Space', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `message` text,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `guid` varchar(45) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `sticked` tinyint(4) DEFAULT NULL,
  `archived` tinytext,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `content`
--

INSERT INTO `content` (`id`, `guid`, `object_model`, `object_id`, `visibility`, `sticked`, `archived`, `created_at`, `created_by`, `updated_at`, `updated_by`, `contentcontainer_id`) VALUES
(1, 'f0ce93b7-2d5e-41ee-9048-147f97bef9f1', 'humhub\\modules\\activity\\models\\Activity', 1, 1, 0, '0', '2016-08-17 00:16:26', 1, '2016-08-17 00:16:26', 1, 2),
(2, '2c0598ce-aebf-458e-b25b-dbe0f3fb7334', 'humhub\\modules\\post\\models\\Post', 1, 1, 0, '0', '2016-08-17 00:16:26', 1, '2016-08-17 00:16:26', 1, 2),
(3, 'e90f3275-c181-42c9-9da3-e4fc6bc5d2ec', 'humhub\\modules\\activity\\models\\Activity', 2, 1, 0, '0', '2016-08-17 00:16:26', 1, '2016-08-17 00:16:26', 1, 2),
(4, 'c3d15ce4-c16e-42fc-8454-b418c3b252e8', 'humhub\\modules\\activity\\models\\Activity', 3, 0, 0, '0', '2016-08-17 01:07:49', 2, '2016-08-17 01:07:49', 1, 2),
(5, 'f4f391ca-ffbf-4d7b-9721-3ec27b7ceb71', 'humhub\\modules\\activity\\models\\Activity', 4, 0, 0, '0', '2016-08-17 02:29:56', 3, '2016-08-17 02:29:56', 1, 2),
(6, 'eb9937f1-ce3f-4f20-a9a6-03928f0cc77a', 'humhub\\modules\\activity\\models\\Activity', 5, 0, 0, '0', '2016-08-17 02:32:39', 4, '2016-08-17 02:32:39', NULL, 2),
(7, '24f17a70-9dbf-487a-8ce4-752f1297c3c1', 'humhub\\modules\\activity\\models\\Activity', 6, 0, 0, '0', '2016-08-17 03:08:31', 5, '2016-08-17 03:08:31', NULL, 2),
(8, '552bbc17-3fbb-4627-a99d-8883e09d71a2', 'humhub\\modules\\activity\\models\\Activity', 7, 0, 0, '0', '2016-08-17 03:52:10', 6, '2016-08-17 03:52:10', NULL, 2),
(9, 'f421b24f-16d9-4e28-963a-885597806c67', 'humhub\\modules\\activity\\models\\Activity', 8, 0, 0, '0', '2016-08-17 03:52:44', 7, '2016-08-17 03:52:44', NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contentcontainer`
--

CREATE TABLE `contentcontainer` (
  `id` int(11) NOT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `pk` int(11) DEFAULT NULL,
  `owner_user_id` int(11) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contentcontainer`
--

INSERT INTO `contentcontainer` (`id`, `guid`, `class`, `pk`, `owner_user_id`, `wall_id`) VALUES
(1, 'e445536f-f62b-45f7-8dd2-0c1f4cddc745', 'humhub\\modules\\user\\models\\User', 1, 1, 1),
(2, '8acd82e6-f687-46aa-a9bd-ae0006f5e47a', 'humhub\\modules\\space\\models\\Space', 1, 1, 2),
(3, '68273021-ab01-4389-8c01-fa605f7f845f', 'humhub\\modules\\user\\models\\User', 2, 2, 3),
(4, '6b08b5a4-4793-4a21-af77-f91a02937464', 'humhub\\modules\\user\\models\\User', 3, 3, 4),
(5, 'bed1aec2-e06a-43df-aa24-4e6ef2d3c830', 'humhub\\modules\\user\\models\\User', 4, 4, 5),
(6, 'dc230e05-6f91-4e4e-ad1c-c3fc440f7f0b', 'humhub\\modules\\user\\models\\User', 5, 5, 6),
(7, '4d5e40b8-1ce5-4b9f-bbd4-29c039b9cde2', 'humhub\\modules\\user\\models\\User', 6, 6, 7),
(8, '30077df6-f9b0-41d3-b62f-ebabc4a2a44c', 'humhub\\modules\\user\\models\\User', 7, 7, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contentcontainer_permission`
--

CREATE TABLE `contentcontainer_permission` (
  `permission_id` varchar(150) NOT NULL,
  `contentcontainer_id` int(11) NOT NULL,
  `group_id` varchar(50) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contentcontainer_setting`
--

CREATE TABLE `contentcontainer_setting` (
  `id` int(11) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `contentcontainer_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contentcontainer_setting`
--

INSERT INTO `contentcontainer_setting` (`id`, `module_id`, `contentcontainer_id`, `name`, `value`) VALUES
(1, 'tour', 1, 'welcome', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `guid` varchar(45) DEFAULT NULL,
  `object_model` varchar(100) DEFAULT '',
  `object_id` varchar(100) DEFAULT '',
  `file_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mime_type` varchar(150) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `space_id` int(10) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `is_admin_group` tinyint(1) NOT NULL DEFAULT '0',
  `show_at_registration` tinyint(1) NOT NULL DEFAULT '1',
  `show_at_directory` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `group`
--

INSERT INTO `group` (`id`, `space_id`, `name`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_dn`, `is_admin_group`, `show_at_registration`, `show_at_directory`) VALUES
(1, NULL, 'Administrator', 'Administrator Group', '2016-08-17 00:14:16', NULL, NULL, NULL, NULL, 1, 0, 0),
(2, NULL, 'test', 'test', NULL, NULL, NULL, NULL, NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_permission`
--

CREATE TABLE `group_permission` (
  `permission_id` varchar(150) NOT NULL,
  `group_id` int(11) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_user`
--

CREATE TABLE `group_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `is_group_manager` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `group_user`
--

INSERT INTO `group_user` (`id`, `user_id`, `group_id`, `is_group_manager`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 1, 0, '2016-08-17 00:16:24', NULL, '2016-08-17 00:16:24', NULL),
(2, 2, 2, 0, '2016-08-17 01:07:50', 1, '2016-08-17 01:07:50', 1),
(3, 3, 2, 0, '2016-08-17 02:27:10', NULL, '2016-08-17 02:27:10', NULL),
(4, 4, 2, 0, '2016-08-17 02:32:40', NULL, '2016-08-17 02:32:40', NULL),
(5, 5, 2, 0, '2016-08-17 03:08:32', NULL, '2016-08-17 03:08:32', NULL),
(6, 6, 2, 0, '2016-08-17 03:52:11', NULL, '2016-08-17 03:52:11', NULL),
(7, 7, 2, 0, '2016-08-17 03:52:45', NULL, '2016-08-17 03:52:45', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `like`
--

CREATE TABLE `like` (
  `id` int(11) NOT NULL,
  `target_user_id` int(11) DEFAULT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_time` double DEFAULT NULL,
  `prefix` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(1, 1, 'yii\\base\\ErrorException:1', 1471407311.3287, '[::1][-][-]', 'exception ''yii\\base\\ErrorException'' with message ''Maximum execution time of 30 seconds exceeded'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\db\\Command.php:845\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(2, 4, 'application', 1471407281.0211, '[::1][-][-]', '$_GET = [\n    ''r'' => ''installer/config/index''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=installer%2Fsetup%2Fdatabase''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; PHPSESSID=d33boblumju8t5i0p7ipct3tg5; _identity=de1ff6d4391bd72331e90e8abbfab47e1330e0864ff130b21c2b4999938c0eb5a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%223dba7dd7-5e25-4447-8943-2774b5d65e7b%22%2C2592000%5D%22%3B%7D; _csrf=6e24cd54e8923da0715d7fd039b2738fbc6b1c33c5ae5b542232d164e89284fea%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22wJYSlqLqI2C0LIh0eHZJXXYtiTQCXW49%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''54432''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=installer%2Fconfig%2Findex''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=installer%2Fconfig%2Findex''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471407281.016\n    ''REQUEST_TIME'' => 1471407281\n]'),
(3, 1, 'yii\\web\\HttpException:403', 1471407885.2789, '[::1][-][jrjfkm37jkilklhmrf2qav19t3]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(4, 4, 'application', 1471407885.1173, '[::1][-][jrjfkm37jkilklhmrf2qav19t3]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''LUs0dWViNngdDQUPVg1dD0QidRYkFkUoXAxjGClTRyphclMDDxsGKw==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile%2Fedit-field''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=bdb6008783adb42d72de21a52498831819a5a9251e0ba1be648d9d96e1b2cc87a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22lnT5VVHtlsBhB3sxFffvgDM9w7pxAdKj%22%3B%7D; PHPSESSID=jrjfkm37jkilklhmrf2qav19t3; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''55754''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471407885.105\n    ''REQUEST_TIME'' => 1471407885\n]'),
(5, 1, 'yii\\web\\HttpException:403', 1471407905.2112, '[::1][-][jrjfkm37jkilklhmrf2qav19t3]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(6, 4, 'application', 1471407905.1145, '[::1][-][jrjfkm37jkilklhmrf2qav19t3]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''LUs0dWViNngdDQUPVg1dD0QidRYkFkUoXAxjGClTRyphclMDDxsGKw==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile%2Fedit-field''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=bdb6008783adb42d72de21a52498831819a5a9251e0ba1be648d9d96e1b2cc87a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22lnT5VVHtlsBhB3sxFffvgDM9w7pxAdKj%22%3B%7D; PHPSESSID=jrjfkm37jkilklhmrf2qav19t3; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''55762''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471407905.105\n    ''REQUEST_TIME'' => 1471407905\n]'),
(7, 1, 'yii\\web\\HttpException:403', 1471407925.2733, '[::1][-][jrjfkm37jkilklhmrf2qav19t3]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(8, 4, 'application', 1471407925.1722, '[::1][-][jrjfkm37jkilklhmrf2qav19t3]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''LUs0dWViNngdDQUPVg1dD0QidRYkFkUoXAxjGClTRyphclMDDxsGKw==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile%2Fedit-field''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=bdb6008783adb42d72de21a52498831819a5a9251e0ba1be648d9d96e1b2cc87a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22lnT5VVHtlsBhB3sxFffvgDM9w7pxAdKj%22%3B%7D; PHPSESSID=jrjfkm37jkilklhmrf2qav19t3; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''55765''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471407925.164\n    ''REQUEST_TIME'' => 1471407925\n]'),
(9, 1, 'yii\\web\\HttpException:403', 1471407945.2871, '[::1][-][jrjfkm37jkilklhmrf2qav19t3]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(10, 4, 'application', 1471407945.1732, '[::1][-][jrjfkm37jkilklhmrf2qav19t3]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''LUs0dWViNngdDQUPVg1dD0QidRYkFkUoXAxjGClTRyphclMDDxsGKw==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile%2Fedit-field''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=bdb6008783adb42d72de21a52498831819a5a9251e0ba1be648d9d96e1b2cc87a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22lnT5VVHtlsBhB3sxFffvgDM9w7pxAdKj%22%3B%7D; PHPSESSID=jrjfkm37jkilklhmrf2qav19t3; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''55770''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471407945.164\n    ''REQUEST_TIME'' => 1471407945\n]'),
(11, 1, 'yii\\web\\HttpException:403', 1471407965.2397, '[::1][-][jrjfkm37jkilklhmrf2qav19t3]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(12, 4, 'application', 1471407965.1218, '[::1][-][jrjfkm37jkilklhmrf2qav19t3]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''LUs0dWViNngdDQUPVg1dD0QidRYkFkUoXAxjGClTRyphclMDDxsGKw==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile%2Fedit-field''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=bdb6008783adb42d72de21a52498831819a5a9251e0ba1be648d9d96e1b2cc87a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22lnT5VVHtlsBhB3sxFffvgDM9w7pxAdKj%22%3B%7D; PHPSESSID=jrjfkm37jkilklhmrf2qav19t3; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''55774''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471407965.111\n    ''REQUEST_TIME'' => 1471407965\n]'),
(13, 1, 'yii\\web\\HttpException:403', 1471409446.3204, '[::1][-][66d3sd5immngvcdf20qqtihm00]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(14, 4, 'application', 1471409446.1726, '[::1][-][66d3sd5immngvcdf20qqtihm00]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''QjZrN0d5dHEWDhoAEjdNNxJ/LnUsDyQnKXEdQjQWJBUPUj5RPShCSQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser%2Fadd''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=5d14aa295244fb989264f258bee6e2302472bf724f313ca59970408e98c6ce90a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22nHOfsqWiobTVyo8DJGyrUx-7Tkm3_0NB%22%3B%7D; PHPSESSID=66d3sd5immngvcdf20qqtihm00; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''56252''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471409446.166\n    ''REQUEST_TIME'' => 1471409446\n]'),
(15, 1, 'yii\\web\\HttpException:403', 1471409466.26, '[::1][-][66d3sd5immngvcdf20qqtihm00]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(16, 4, 'application', 1471409466.171, '[::1][-][66d3sd5immngvcdf20qqtihm00]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''QjZrN0d5dHEWDhoAEjdNNxJ/LnUsDyQnKXEdQjQWJBUPUj5RPShCSQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser%2Fadd''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=5d14aa295244fb989264f258bee6e2302472bf724f313ca59970408e98c6ce90a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22nHOfsqWiobTVyo8DJGyrUx-7Tkm3_0NB%22%3B%7D; PHPSESSID=66d3sd5immngvcdf20qqtihm00; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''56265''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471409466.166\n    ''REQUEST_TIME'' => 1471409466\n]'),
(17, 1, 'yii\\web\\HttpException:403', 1471409486.268, '[::1][-][66d3sd5immngvcdf20qqtihm00]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(18, 4, 'application', 1471409486.1846, '[::1][-][66d3sd5immngvcdf20qqtihm00]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''QjZrN0d5dHEWDhoAEjdNNxJ/LnUsDyQnKXEdQjQWJBUPUj5RPShCSQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser%2Fadd''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=5d14aa295244fb989264f258bee6e2302472bf724f313ca59970408e98c6ce90a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22nHOfsqWiobTVyo8DJGyrUx-7Tkm3_0NB%22%3B%7D; PHPSESSID=66d3sd5immngvcdf20qqtihm00; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''56269''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471409486.176\n    ''REQUEST_TIME'' => 1471409486\n]'),
(19, 1, 'yii\\web\\HttpException:403', 1471409506.252, '[::1][-][66d3sd5immngvcdf20qqtihm00]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(20, 4, 'application', 1471409506.169, '[::1][-][66d3sd5immngvcdf20qqtihm00]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''QjZrN0d5dHEWDhoAEjdNNxJ/LnUsDyQnKXEdQjQWJBUPUj5RPShCSQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser%2Fadd''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=5d14aa295244fb989264f258bee6e2302472bf724f313ca59970408e98c6ce90a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22nHOfsqWiobTVyo8DJGyrUx-7Tkm3_0NB%22%3B%7D; PHPSESSID=66d3sd5immngvcdf20qqtihm00; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''56272''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471409506.165\n    ''REQUEST_TIME'' => 1471409506\n]'),
(21, 1, 'yii\\web\\HttpException:403', 1471409526.257, '[::1][-][66d3sd5immngvcdf20qqtihm00]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(22, 4, 'application', 1471409526.1707, '[::1][-][66d3sd5immngvcdf20qqtihm00]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''QjZrN0d5dHEWDhoAEjdNNxJ/LnUsDyQnKXEdQjQWJBUPUj5RPShCSQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser%2Fadd''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=5d14aa295244fb989264f258bee6e2302472bf724f313ca59970408e98c6ce90a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22nHOfsqWiobTVyo8DJGyrUx-7Tkm3_0NB%22%3B%7D; PHPSESSID=66d3sd5immngvcdf20qqtihm00; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''56277''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471409526.165\n    ''REQUEST_TIME'' => 1471409526\n]'),
(23, 1, 'Swift_TransportException', 1471413129.6084, '[::1][1][ipa71poep3s0efuj2ebt4aopr3]', 'exception ''Swift_TransportException'' with message ''Expected response code 250 but got code "530", with message "530 5.7.0 Must issue a STARTTLS command first. x205sm14699920ywx.4 - gsmtp\r\n"'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php:383\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(281): Swift_Transport_AbstractSmtpTransport->_assertResponseCode(''530 5.7.0 Must ...'', Array)\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(270): Swift_Transport_AbstractSmtpTransport->executeCommand(''MAIL FROM:<soci...'', Array, Array)\n#2 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(349): Swift_Transport_EsmtpTransport->executeCommand(''MAIL FROM:<soci...'', Array)\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(416): Swift_Transport_EsmtpTransport->_doMailFromCommand(''social@example....'')\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(444): Swift_Transport_AbstractSmtpTransport->_doMailTransaction(Object(Swift_Message), ''social@example....'', Array, Array)\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(176): Swift_Transport_AbstractSmtpTransport->_sendTo(Object(Swift_Message), ''social@example....'', Array, Array)\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(85): Swift_Transport_AbstractSmtpTransport->send(Object(Swift_Message), Array)\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2-swiftmailer\\Mailer.php(146): Swift_Mailer->send(Object(Swift_Message))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\mail\\BaseMailer.php(260): yii\\swiftmailer\\Mailer->sendMessage(Object(yii\\swiftmailer\\Message))\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\mail\\BaseMessage.php(48): yii\\mail\\BaseMailer->send(Object(yii\\swiftmailer\\Message))\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\user\\models\\Invite.php(170): yii\\mail\\BaseMessage->send()\n#11 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\user\\controllers\\InviteController.php(72): humhub\\modules\\user\\models\\Invite->sendInviteMail()\n#12 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\user\\controllers\\InviteController.php(51): humhub\\modules\\user\\controllers\\InviteController->createInvite(''juliusceshar@gm...'')\n#13 [internal function]: humhub\\modules\\user\\controllers\\InviteController->actionIndex()\n#14 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#15 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#16 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction('''', Array)\n#17 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/invite'', Array)\n#18 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#19 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#20 {main}'),
(24, 4, 'application', 1471413128.3657, '[::1][1][ipa71poep3s0efuj2ebt4aopr3]', '$_GET = [\n    ''r'' => ''user/invite''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''CONTENT_LENGTH'' => ''110''\n    ''HTTP_ACCEPT'' => ''*/*''\n    ''HTTP_ORIGIN'' => ''http://localhost''\n    ''HTTP_X_CSRF_TOKEN'' => ''dlAxMDVCWFUzGXdneHIPIEQIc31yMm4wGg9FB20OIR0BO2dUZhEBBQ==''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''CONTENT_TYPE'' => ''application/x-www-form-urlencoded; charset=UTF-8''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; PHPSESSID=ipa71poep3s0efuj2ebt4aopr3; _csrf=da8a8137e04a80d8958142b3d21705ebcb40351e0f1205c136cd9a031bc5dc37a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22EIFWM0Wu2XBMGp6el_t7XLyHwkVdSSYP%22%3B%7D; _identity=6940a7afe0bd9d373531e4830fcb21833983f81667c6a460239574d40111136ba%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22e445536f-f62b-45f7-8dd2-0c1f4cddc745%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''58941''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''POST''\n    ''QUERY_STRING'' => ''r=user%2Finvite''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=user%2Finvite''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471413128.36\n    ''REQUEST_TIME'' => 1471413128\n]'),
(25, 1, 'yii\\web\\HttpException:401', 1471413530.1108, '[::1][-][11un5kg9lq8i8l0da7sgf13lr7]', 'exception ''yii\\web\\HttpException'' with message ''¡Necesitas iniciar sesión para ver este perfil de usuario!'' in C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\user\\behaviors\\ProfileController.php:72\nStack trace:\n#0 [internal function]: humhub\\modules\\user\\behaviors\\ProfileController->checkAccess()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(282): call_user_func_array(Array, Array)\n#2 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php(137): yii\\base\\Component->__call(''checkAccess'', Array)\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php(137): humhub\\modules\\user\\controllers\\ProfileController->checkAccess()\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php(97): humhub\\modules\\content\\components\\ContentContainerController->checkContainerAccess()\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Object.php(107): humhub\\modules\\content\\components\\ContentContainerController->init()\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(84): yii\\base\\Object->__construct(Array)\n#7 [internal function]: yii\\base\\Controller->__construct(''profile'', Object(humhub\\modules\\user\\Module), Array)\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(373): ReflectionClass->newInstanceArgs(Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(154): yii\\di\\Container->build(''humhub\\\\modules\\\\...'', Array, Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\BaseYii.php(340): yii\\di\\Container->get(''humhub\\\\modules\\\\...'', Array)\n#11 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(567): yii\\BaseYii::createObject(''humhub\\\\modules\\\\...'', Array)\n#12 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(520): yii\\base\\Module->createControllerByID(''profile'')\n#13 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(512): yii\\base\\Module->createController(''profile'')\n#14 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(448): yii\\base\\Module->createController(''user/profile'')\n#15 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/profile'', Array)\n#16 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#17 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#18 {main}'),
(26, 4, 'application', 1471413529.9607, '[::1][-][11un5kg9lq8i8l0da7sgf13lr7]', '$_GET = [\n    ''r'' => ''user/profile''\n    ''uguid'' => ''68273021-ab01-4389-8c01-fa605f7f845f''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=directory%2Fdirectory%2Fmembers''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; pm_user-statistics-panel=expanded; _csrf=83bbcbf3a7bb27a4f3e46465cf92ad154109ba02ade2ca5e07c4355cb58bfc9ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22iaAmiYoPfZ1qXxww1IJ0m126OjWrIzOS%22%3B%7D; PHPSESSID=11un5kg9lq8i8l0da7sgf13lr7''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59075''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=user%2Fprofile&uguid=68273021-ab01-4389-8c01-fa605f7f845f''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=user%2Fprofile&uguid=68273021-ab01-4389-8c01-fa605f7f845f''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471413529.943\n    ''REQUEST_TIME'' => 1471413529\n]'),
(27, 1, 'yii\\web\\HttpException:401', 1471413530.3474, '[::1][-][11un5kg9lq8i8l0da7sgf13lr7]', 'exception ''yii\\web\\HttpException'' with message ''¡Necesitas iniciar sesión para ver este perfil de usuario!'' in C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\user\\behaviors\\ProfileController.php:72\nStack trace:\n#0 [internal function]: humhub\\modules\\user\\behaviors\\ProfileController->checkAccess()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(282): call_user_func_array(Array, Array)\n#2 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php(137): yii\\base\\Component->__call(''checkAccess'', Array)\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php(137): humhub\\modules\\user\\controllers\\ProfileController->checkAccess()\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php(97): humhub\\modules\\content\\components\\ContentContainerController->checkContainerAccess()\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Object.php(107): humhub\\modules\\content\\components\\ContentContainerController->init()\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(84): yii\\base\\Object->__construct(Array)\n#7 [internal function]: yii\\base\\Controller->__construct(''profile'', Object(humhub\\modules\\user\\Module), Array)\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(373): ReflectionClass->newInstanceArgs(Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(154): yii\\di\\Container->build(''humhub\\\\modules\\\\...'', Array, Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\BaseYii.php(340): yii\\di\\Container->get(''humhub\\\\modules\\\\...'', Array)\n#11 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(567): yii\\BaseYii::createObject(''humhub\\\\modules\\\\...'', Array)\n#12 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(520): yii\\base\\Module->createControllerByID(''profile'')\n#13 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(512): yii\\base\\Module->createController(''profile'')\n#14 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(448): yii\\base\\Module->createController(''user/profile'')\n#15 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/profile'', Array)\n#16 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#17 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#18 {main}'),
(28, 4, 'application', 1471413530.2352, '[::1][-][11un5kg9lq8i8l0da7sgf13lr7]', '$_GET = [\n    ''r'' => ''user/profile''\n    ''uguid'' => ''68273021-ab01-4389-8c01-fa605f7f845f''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=directory%2Fdirectory%2Fmembers''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; pm_user-statistics-panel=expanded; _csrf=83bbcbf3a7bb27a4f3e46465cf92ad154109ba02ade2ca5e07c4355cb58bfc9ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22iaAmiYoPfZ1qXxww1IJ0m126OjWrIzOS%22%3B%7D; PHPSESSID=11un5kg9lq8i8l0da7sgf13lr7''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59077''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=user%2Fprofile&uguid=68273021-ab01-4389-8c01-fa605f7f845f''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=user%2Fprofile&uguid=68273021-ab01-4389-8c01-fa605f7f845f''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471413530.229\n    ''REQUEST_TIME'' => 1471413530\n]');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(29, 1, 'yii\\web\\HttpException:401', 1471413554.1046, '[::1][-][11un5kg9lq8i8l0da7sgf13lr7]', 'exception ''yii\\web\\HttpException'' with message ''¡Necesitas iniciar sesión para ver este perfil de usuario!'' in C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\user\\behaviors\\ProfileController.php:72\nStack trace:\n#0 [internal function]: humhub\\modules\\user\\behaviors\\ProfileController->checkAccess()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(282): call_user_func_array(Array, Array)\n#2 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php(137): yii\\base\\Component->__call(''checkAccess'', Array)\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php(137): humhub\\modules\\user\\controllers\\ProfileController->checkAccess()\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\content\\components\\ContentContainerController.php(97): humhub\\modules\\content\\components\\ContentContainerController->checkContainerAccess()\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Object.php(107): humhub\\modules\\content\\components\\ContentContainerController->init()\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(84): yii\\base\\Object->__construct(Array)\n#7 [internal function]: yii\\base\\Controller->__construct(''profile'', Object(humhub\\modules\\user\\Module), Array)\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(373): ReflectionClass->newInstanceArgs(Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\di\\Container.php(154): yii\\di\\Container->build(''humhub\\\\modules\\\\...'', Array, Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\BaseYii.php(340): yii\\di\\Container->get(''humhub\\\\modules\\\\...'', Array)\n#11 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(567): yii\\BaseYii::createObject(''humhub\\\\modules\\\\...'', Array)\n#12 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(520): yii\\base\\Module->createControllerByID(''profile'')\n#13 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(512): yii\\base\\Module->createController(''profile'')\n#14 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(448): yii\\base\\Module->createController(''user/profile'')\n#15 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/profile'', Array)\n#16 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#17 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#18 {main}'),
(30, 4, 'application', 1471413554.0121, '[::1][-][11un5kg9lq8i8l0da7sgf13lr7]', '$_GET = [\n    ''r'' => ''user/profile''\n    ''uguid'' => ''e445536f-f62b-45f7-8dd2-0c1f4cddc745''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=directory%2Fdirectory%2Fmembers''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; pm_user-statistics-panel=expanded; _csrf=83bbcbf3a7bb27a4f3e46465cf92ad154109ba02ade2ca5e07c4355cb58bfc9ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22iaAmiYoPfZ1qXxww1IJ0m126OjWrIzOS%22%3B%7D; PHPSESSID=11un5kg9lq8i8l0da7sgf13lr7''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59087''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=user%2Fprofile&uguid=e445536f-f62b-45f7-8dd2-0c1f4cddc745''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=user%2Fprofile&uguid=e445536f-f62b-45f7-8dd2-0c1f4cddc745''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471413554.004\n    ''REQUEST_TIME'' => 1471413554\n]'),
(31, 1, 'yii\\web\\HttpException:403', 1471414965.3271, '[::1][-][s3o1lp1b30kiqufc90q5pb5t11]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(32, 4, 'application', 1471414965.1715, '[::1][-][s3o1lp1b30kiqufc90q5pb5t11]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=s3o1lp1b30kiqufc90q5pb5t11; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59396''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471414965.165\n    ''REQUEST_TIME'' => 1471414965\n]'),
(33, 1, 'yii\\web\\HttpException:403', 1471414985.29, '[::1][-][s3o1lp1b30kiqufc90q5pb5t11]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(34, 4, 'application', 1471414985.1725, '[::1][-][s3o1lp1b30kiqufc90q5pb5t11]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=s3o1lp1b30kiqufc90q5pb5t11; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59418''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471414985.166\n    ''REQUEST_TIME'' => 1471414985\n]'),
(35, 1, 'yii\\web\\HttpException:403', 1471415005.2908, '[::1][-][s3o1lp1b30kiqufc90q5pb5t11]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(36, 4, 'application', 1471415005.1724, '[::1][-][s3o1lp1b30kiqufc90q5pb5t11]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=s3o1lp1b30kiqufc90q5pb5t11; _identity=434251207dbc87b009b23ee143030d7646e1afb516d6b9a0244d0f6273d19c76a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B1%2C%22b30c1540-467d-4711-8d0b-956529a162f8%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59422''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415005.166\n    ''REQUEST_TIME'' => 1471415005\n]'),
(37, 1, 'yii\\web\\HttpException:403', 1471415025.3047, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(38, 4, 'application', 1471415025.1725, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59434''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415025.166\n    ''REQUEST_TIME'' => 1471415025\n]'),
(39, 1, 'yii\\web\\HttpException:403', 1471415045.3048, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(40, 4, 'application', 1471415045.1727, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59438''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415045.167\n    ''REQUEST_TIME'' => 1471415045\n]'),
(41, 1, 'yii\\web\\HttpException:403', 1471415065.2976, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(42, 4, 'application', 1471415065.1738, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59440''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415065.167\n    ''REQUEST_TIME'' => 1471415065\n]'),
(43, 1, 'yii\\web\\HttpException:403', 1471415085.2959, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(44, 4, 'application', 1471415085.174, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59442''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415085.168\n    ''REQUEST_TIME'' => 1471415085\n]'),
(45, 1, 'yii\\web\\HttpException:403', 1471415105.3207, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(46, 4, 'application', 1471415105.1751, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59448''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415105.168\n    ''REQUEST_TIME'' => 1471415105\n]'),
(47, 1, 'yii\\web\\HttpException:403', 1471415125.316, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(48, 4, 'application', 1471415125.1795, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59450''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415125.172\n    ''REQUEST_TIME'' => 1471415125\n]'),
(49, 1, 'yii\\web\\HttpException:403', 1471415145.2856, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(50, 4, 'application', 1471415145.1743, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59454''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415145.167\n    ''REQUEST_TIME'' => 1471415145\n]'),
(51, 1, 'yii\\web\\HttpException:403', 1471415165.2707, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(52, 4, 'application', 1471415165.1713, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59458''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415165.167\n    ''REQUEST_TIME'' => 1471415165\n]'),
(53, 1, 'yii\\web\\HttpException:403', 1471415185.2785, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(54, 4, 'application', 1471415185.1728, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59460''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415185.169\n    ''REQUEST_TIME'' => 1471415185\n]'),
(55, 1, 'yii\\web\\HttpException:403', 1471415205.3075, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(56, 4, 'application', 1471415205.1782, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59469''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415205.169\n    ''REQUEST_TIME'' => 1471415205\n]'),
(57, 1, 'yii\\web\\HttpException:403', 1471415225.192, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(58, 4, 'application', 1471415225.0895, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59483''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415225.085\n    ''REQUEST_TIME'' => 1471415225\n]');
INSERT INTO `log` (`id`, `level`, `category`, `log_time`, `prefix`, `message`) VALUES
(59, 1, 'yii\\web\\HttpException:403', 1471415245.173, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(60, 4, 'application', 1471415245.0881, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59499''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415245.082\n    ''REQUEST_TIME'' => 1471415245\n]'),
(61, 1, 'yii\\web\\HttpException:403', 1471415265.1775, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', 'exception ''yii\\web\\ForbiddenHttpException'' with message ''Login Requerido'' in C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\User.php:435\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\behaviors\\AccessControl.php(75): yii\\web\\User->loginRequired()\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\ActionFilter.php(73): humhub\\components\\behaviors\\AccessControl->beforeAction(Object(yii\\base\\InlineAction))\n#2 [internal function]: yii\\base\\ActionFilter->beforeFilter(Object(yii\\base\\ActionEvent))\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Component.php(541): call_user_func(Array, Object(yii\\base\\ActionEvent))\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(269): yii\\base\\Component->trigger(''beforeAction'', Object(yii\\base\\ActionEvent))\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Controller.php(108): yii\\base\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\components\\Controller.php(68): yii\\web\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#7 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\components\\Controller->beforeAction(Object(yii\\base\\InlineAction))\n#8 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''get-update-json'', Array)\n#9 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''notification/li...'', Array)\n#10 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#11 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#12 {main}'),
(62, 4, 'application', 1471415265.0879, '[::1][-][e9gqqp5qjsmujk7adold0lqvu1]', '$_GET = [\n    ''r'' => ''notification/list/get-update-json''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_ACCEPT'' => ''application/json, text/javascript, */*; q=0.01''\n    ''HTTP_X_CSRF_TOKEN'' => ''MWRaY19oWmV0LRw0ElgNEAM8GC4YGGwAXTsuVAckIy1GDwwHDDsDNQ==''\n    ''HTTP_X_REQUESTED_WITH'' => ''XMLHttpRequest''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php?r=admin%2Fuser-profile''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=452f0f8fe6203cce44d56f816a6ebd3ad6b339e68f29e7194e66780cd979f1a4a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22BR39K_8t6eZY5h0lnqf3mJz1gl2xAqR1%22%3B%7D; PHPSESSID=e9gqqp5qjsmujk7adold0lqvu1''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''59505''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=notification%2Flist%2Fget-update-json''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=notification%2Flist%2Fget-update-json''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471415265.082\n    ''REQUEST_TIME'' => 1471415265\n]'),
(63, 1, 'yii\\web\\HttpException:401', 1471417969.8613, '[::1][5][gub4s80dt3l3h9fqh1qcd7aj14]', 'exception ''yii\\web\\HttpException'' with message ''Your are already logged in! - Logout first!'' in C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\user\\controllers\\RegistrationController.php:45\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\modules\\user\\controllers\\RegistrationController->beforeAction(Object(yii\\base\\InlineAction))\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''registration1'', Array)\n#2 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/registrati...'', Array)\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#4 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#5 {main}'),
(64, 4, 'application', 1471417969.7516, '[::1][5][gub4s80dt3l3h9fqh1qcd7aj14]', '$_GET = [\n    ''r'' => ''user/registration/registration1''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; pm_user-statistics-panel=expanded; pm_spaces-statistics-panel=expanded; pm_getting-started-panel=expanded; _csrf=83bbcbf3a7bb27a4f3e46465cf92ad154109ba02ade2ca5e07c4355cb58bfc9ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22iaAmiYoPfZ1qXxww1IJ0m126OjWrIzOS%22%3B%7D; language=bc9cdfef269185ac1227de2026559ac7ebdcf2f62d54136ecf0f38f5ca783691a%3A2%3A%7Bi%3A0%3Bs%3A8%3A%22language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D; PHPSESSID=gub4s80dt3l3h9fqh1qcd7aj14; _identity=e10970cb33fca6b6305d4981bc5692cc336859cb085778a47c2270c453d02b73a%3A2%3A%7Bi%3A0%3Bs%3A9%3A%22_identity%22%3Bi%3A1%3Bs%3A50%3A%22%5B5%2C%22dc230e05-6f91-4e4e-ad1c-c3fc440f7f0b%22%2C2592000%5D%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''60277''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=user%2Fregistration%2Fregistration1''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=user%2Fregistration%2Fregistration1''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471417969.732\n    ''REQUEST_TIME'' => 1471417969\n]'),
(65, 1, 'yii\\base\\ErrorException:4', 1471418718.4304, '[::1][-][d2jqo41r67cp5c69ofhhud6t04]', 'exception ''yii\\base\\ErrorException'' with message ''syntax error, unexpected ''->'' (T_OBJECT_OPERATOR)'' in C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\user\\models\\forms\\Registration.php:103\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleFatalError()\n#1 {main}'),
(66, 4, 'application', 1471418718.2598, '[::1][-][d2jqo41r67cp5c69ofhhud6t04]', '$_GET = [\n    ''r'' => ''user/registration/registration1''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; pm_user-statistics-panel=expanded; pm_spaces-statistics-panel=expanded; pm_getting-started-panel=expanded; _csrf=83bbcbf3a7bb27a4f3e46465cf92ad154109ba02ade2ca5e07c4355cb58bfc9ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22iaAmiYoPfZ1qXxww1IJ0m126OjWrIzOS%22%3B%7D; PHPSESSID=d2jqo41r67cp5c69ofhhud6t04; language=bc9cdfef269185ac1227de2026559ac7ebdcf2f62d54136ecf0f38f5ca783691a%3A2%3A%7Bi%3A0%3Bs%3A8%3A%22language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''60436''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=user%2Fregistration%2Fregistration1''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=user%2Fregistration%2Fregistration1''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471418718.25\n    ''REQUEST_TIME'' => 1471418718\n]'),
(67, 1, 'yii\\base\\ErrorException:8', 1471418919.3954, '[::1][-][d2jqo41r67cp5c69ofhhud6t04]', 'exception ''yii\\base\\ErrorException'' with message ''Undefined variable: typeForm'' in C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\user\\controllers\\RegistrationController.php:98\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\user\\controllers\\RegistrationController.php(98): yii\\base\\ErrorHandler->handleError(8, ''Undefined varia...'', ''C:\\\\xampp\\\\htdocs...'', 98, Array)\n#1 [internal function]: humhub\\modules\\user\\controllers\\RegistrationController->actionRegistration1()\n#2 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(55): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(154): yii\\base\\InlineAction->runWithParams(Array)\n#4 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''registration1'', Array)\n#5 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/registrati...'', Array)\n#6 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#7 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#8 {main}'),
(68, 4, 'application', 1471418919.2986, '[::1][-][d2jqo41r67cp5c69ofhhud6t04]', '$_GET = [\n    ''r'' => ''user/registration/registration1''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_CACHE_CONTROL'' => ''max-age=0''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; pm_user-statistics-panel=expanded; pm_spaces-statistics-panel=expanded; pm_getting-started-panel=expanded; _csrf=83bbcbf3a7bb27a4f3e46465cf92ad154109ba02ade2ca5e07c4355cb58bfc9ca%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22iaAmiYoPfZ1qXxww1IJ0m126OjWrIzOS%22%3B%7D; PHPSESSID=d2jqo41r67cp5c69ofhhud6t04; language=bc9cdfef269185ac1227de2026559ac7ebdcf2f62d54136ecf0f38f5ca783691a%3A2%3A%7Bi%3A0%3Bs%3A8%3A%22language%22%3Bi%3A1%3Bs%3A2%3A%22es%22%3B%7D''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''60469''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=user%2Fregistration%2Fregistration1''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=user%2Fregistration%2Fregistration1''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471418919.282\n    ''REQUEST_TIME'' => 1471418919\n]'),
(69, 1, 'yii\\web\\HttpException:401', 1471420337.3376, '[::1][6][mp76vkh59tp00u5p1tck67omm0]', 'exception ''yii\\web\\HttpException'' with message ''Your are already logged in! - Logout first!'' in C:\\xampp\\htdocs\\portalweb\\protected\\humhub\\modules\\user\\controllers\\RegistrationController.php:45\nStack trace:\n#0 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Controller.php(152): humhub\\modules\\user\\controllers\\RegistrationController->beforeAction(Object(yii\\base\\InlineAction))\n#1 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Module.php(454): yii\\base\\Controller->runAction(''registration1'', Array)\n#2 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\web\\Application.php(87): yii\\base\\Module->runAction(''user/registrati...'', Array)\n#3 C:\\xampp\\htdocs\\portalweb\\protected\\vendor\\yiisoft\\yii2\\base\\Application.php(375): yii\\web\\Application->handleRequest(Object(humhub\\components\\Request))\n#4 C:\\xampp\\htdocs\\portalweb\\index.php(25): yii\\base\\Application->run()\n#5 {main}'),
(70, 4, 'application', 1471420337.2374, '[::1][6][mp76vkh59tp00u5p1tck67omm0]', '$_GET = [\n    ''r'' => ''user/registration/registration1''\n]\n\n$_SERVER = [\n    ''MIBDIRS'' => ''C:/xampp/php/extras/mibs''\n    ''MYSQL_HOME'' => ''\\\\xampp\\\\mysql\\\\bin''\n    ''OPENSSL_CONF'' => ''C:/xampp/apache/bin/openssl.cnf''\n    ''PHP_PEAR_SYSCONF_DIR'' => ''\\\\xampp\\\\php''\n    ''PHPRC'' => ''\\\\xampp\\\\php''\n    ''TMP'' => ''\\\\xampp\\\\tmp''\n    ''HTTP_HOST'' => ''localhost''\n    ''HTTP_CONNECTION'' => ''keep-alive''\n    ''HTTP_UPGRADE_INSECURE_REQUESTS'' => ''1''\n    ''HTTP_USER_AGENT'' => ''Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36''\n    ''HTTP_ACCEPT'' => ''text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8''\n    ''HTTP_REFERER'' => ''http://localhost/portalweb/index.php''\n    ''HTTP_ACCEPT_ENCODING'' => ''gzip, deflate, sdch''\n    ''HTTP_ACCEPT_LANGUAGE'' => ''es-ES,es;q=0.8''\n    ''HTTP_COOKIE'' => ''pm_user-tags-panel=expanded; pm_user-spaces-panel=expanded; pm_getting-started-panel=expanded; pm_new-people-panel=expanded; pm_new-spaces-panel=expanded; _csrf=f3c6311b93d5e0bdf76e1568c08e25c5f13df78287cebac197de98325f565883a%3A2%3A%7Bi%3A0%3Bs%3A5%3A%22_csrf%22%3Bi%3A1%3Bs%3A32%3A%22TJLFtiojTeGt_dF4VGvQowgT_1pmvtbi%22%3B%7D; PHPSESSID=mp76vkh59tp00u5p1tck67omm0''\n    ''PATH'' => ''C:\\\\Windows\\\\system32;C:\\\\Windows;C:\\\\Windows\\\\System32\\\\Wbem;C:\\\\Windows\\\\System32\\\\WindowsPowerShell\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x86;C:\\\\Program Files (x86)\\\\Intel\\\\OpenCL SDK\\\\2.0\\\\bin\\\\x64;C:\\\\xampp\\\\htdocs\\\\yii-1.1.14\\\\framework;C:\\\\xampp\\\\php;~\\\\.composer\\\\vendor\\\\bin\\\\;C:\\\\Program Files (x86)\\\\Microsoft ASP.NET\\\\ASP.NET Web Pages\\\\v1.0\\\\;C:\\\\Program Files (x86)\\\\Windows Kits\\\\8.0\\\\Windows Performance Toolkit\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Java\\\\jdk1.7.0_15\\\\bin;C:\\\\Program Files\\\\Microsoft\\\\Web Platform Installer\\\\;C:\\\\Program Files (x86)\\\\Git\\\\cmd;C:\\\\ProgramData\\\\ComposerSetup\\\\bin;C:\\\\Program Files\\\\nodejs\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\Client SDK\\\\ODBC\\\\110\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\Tools\\\\Binn\\\\ManagementStudio\\\\;C:\\\\Program Files (x86)\\\\Microsoft SQL Server\\\\120\\\\DTS\\\\Binn\\\\;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Roaming\\\\npm;C:\\\\Users\\\\JulyosCesar\\\\AppData\\\\Local\\\\.meteor\\\\''\n    ''SystemRoot'' => ''C:\\\\Windows''\n    ''COMSPEC'' => ''C:\\\\Windows\\\\system32\\\\cmd.exe''\n    ''PATHEXT'' => ''.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC''\n    ''WINDIR'' => ''C:\\\\Windows''\n    ''SERVER_SIGNATURE'' => ''<address>Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23 Server at localhost Port 80</address>\n''\n    ''SERVER_SOFTWARE'' => ''Apache/2.4.17 (Win32) OpenSSL/1.0.2d PHP/5.6.23''\n    ''SERVER_NAME'' => ''localhost''\n    ''SERVER_ADDR'' => ''::1''\n    ''SERVER_PORT'' => ''80''\n    ''REMOTE_ADDR'' => ''::1''\n    ''DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''REQUEST_SCHEME'' => ''http''\n    ''CONTEXT_PREFIX'' => ''''\n    ''CONTEXT_DOCUMENT_ROOT'' => ''C:/xampp/htdocs''\n    ''SERVER_ADMIN'' => ''postmaster@localhost''\n    ''SCRIPT_FILENAME'' => ''C:/xampp/htdocs/portalweb/index.php''\n    ''REMOTE_PORT'' => ''60739''\n    ''GATEWAY_INTERFACE'' => ''CGI/1.1''\n    ''SERVER_PROTOCOL'' => ''HTTP/1.1''\n    ''REQUEST_METHOD'' => ''GET''\n    ''QUERY_STRING'' => ''r=user%2Fregistration%2Fregistration1''\n    ''REQUEST_URI'' => ''/portalweb/index.php?r=user%2Fregistration%2Fregistration1''\n    ''SCRIPT_NAME'' => ''/portalweb/index.php''\n    ''PHP_SELF'' => ''/portalweb/index.php''\n    ''REQUEST_TIME_FLOAT'' => 1471420337.232\n    ''REQUEST_TIME'' => 1471420337\n]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1471407103),
('m131023_164513_initial', 1471407111),
('m131023_165411_initial', 1471407113),
('m131023_165625_initial', 1471407114),
('m131023_165755_initial', 1471407116),
('m131023_165835_initial', 1471407116),
('m131023_170033_initial', 1471407117),
('m131023_170135_initial', 1471407117),
('m131023_170159_initial', 1471407118),
('m131023_170253_initial', 1471407118),
('m131023_170339_initial', 1471407119),
('m131203_110444_oembed', 1471407119),
('m131213_165552_user_optimize', 1471407124),
('m140226_111945_ldap', 1471407126),
('m140303_125031_password', 1471407129),
('m140304_142711_memberautoadd', 1471407131),
('m140321_000917_content', 1471407134),
('m140324_170617_membership', 1471407134),
('m140507_150421_create_settings_table', 1471407136),
('m140507_171527_create_settings_table', 1471407137),
('m140512_141414_i18n_profilefields', 1471407141),
('m140513_180317_createlogging', 1471407142),
('m140701_000611_profile_genderfield', 1471407142),
('m140701_074404_protect_default_profilefields', 1471407143),
('m140702_143912_notify_notification_unify', 1471407143),
('m140703_104527_profile_birthdayfield', 1471407143),
('m140704_080659_installationid', 1471407143),
('m140705_065525_emailing_settings', 1471407147),
('m140706_135210_lastlogin', 1471407149),
('m140829_122906_delete', 1471407152),
('m140830_145504_following', 1471407155),
('m140901_080147_indizies', 1471407155),
('m140901_080432_indices', 1471407156),
('m140901_112246_addState', 1471407160),
('m140901_153403_addState', 1471407164),
('m140901_170329_group_create_space', 1471407166),
('m140902_091234_session_key_length', 1471407168),
('m140907_140822_zip_field_to_text', 1471407168),
('m140930_205511_fix_default', 1471407171),
('m140930_205859_fix_default', 1471407172),
('m140930_210142_fix_default', 1471407174),
('m140930_210635_fix_default', 1471407177),
('m140930_212528_fix_default', 1471407179),
('m141015_173305_follow_notifications', 1471407180),
('m141019_093319_mentioning', 1471407182),
('m141020_162639_fix_default', 1471407185),
('m141020_193920_rm_alsocreated', 1471407185),
('m141020_193931_rm_alsoliked', 1471407186),
('m141021_162639_oembed_setting', 1471407186),
('m141022_094635_addDefaults', 1471407186),
('m141106_185632_log_init', 1471407187),
('m150204_103433_html5_notified', 1471407188),
('m150210_190006_user_invite_lang', 1471407189),
('m150302_114347_add_visibility', 1471407192),
('m150322_194403_remove_type_field', 1471407193),
('m150322_195619_allowedExt2Text', 1471407193),
('m150429_223856_optimize', 1471407195),
('m150510_102900_update', 1471407195),
('m150629_220311_change', 1471407196),
('m150703_012735_typelength', 1471407198),
('m150703_024635_activityTypes', 1471407198),
('m150703_033650_namespace', 1471407198),
('m150703_130157_migrate', 1471407198),
('m150704_005338_namespace', 1471407198),
('m150704_005418_namespace', 1471407198),
('m150704_005434_namespace', 1471407198),
('m150704_005452_namespace', 1471407198),
('m150704_005504_namespace', 1471407199),
('m150713_054441_timezone', 1471407200),
('m150714_093525_activity', 1471407203),
('m150714_100355_cleanup', 1471407210),
('m150831_061628_notifications', 1471407210),
('m150910_223305_fix_user_follow', 1471407210),
('m150924_133344_update_notification_fix', 1471407210),
('m150924_154635_user_invite_add_first_lastname', 1471407212),
('m150927_190830_create_contentcontainer', 1471407218),
('m150928_103711_permissions', 1471407221),
('m150928_134934_groups', 1471407225),
('m150928_140718_setColorVariables', 1471407226),
('m151010_124437_group_permissions', 1471407229),
('m151010_175000_default_visibility', 1471407229),
('m151013_223814_include_dashboard', 1471407230),
('m151022_131128_module_fix', 1471407230),
('m151106_090948_addColor', 1471407231),
('m151223_171310_fix_notifications', 1471407231),
('m151226_164234_authclient', 1471407233),
('m160125_053702_stored_filename', 1471407233),
('m160216_160119_initial', 1471407237),
('m160217_161220_addCanLeaveFlag', 1471407240),
('m160220_013525_contentcontainer_id', 1471407250),
('m160221_222312_public_permission_change', 1471407250),
('m160225_180229_remove_website', 1471407251),
('m160227_073020_birthday_date', 1471407251),
('m160229_162959_multiusergroups', 1471407258),
('m160309_141222_longerUserName', 1471407260),
('m160408_100725_rename_groupadmin_to_manager', 1471407260),
('m160501_220850_activity_pk_int', 1471407262),
('m160507_202611_settings', 1471407267),
('m160508_005740_settings_cleanup', 1471407275),
('m160509_214811_spaceurl', 1471407277),
('m160517_132535_group', 1471407279),
('m160523_105732_profile_searchable', 1471407280),
('m160714_142827_remove_space_id', 1471407280);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `module_enabled`
--

CREATE TABLE `module_enabled` (
  `module_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `source_class` varchar(100) DEFAULT NULL,
  `source_pk` int(11) DEFAULT NULL,
  `space_id` int(11) DEFAULT NULL,
  `emailed` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `desktop_notified` tinyint(1) DEFAULT '0',
  `originator_user_id` int(11) DEFAULT NULL,
  `module` varchar(100) DEFAULT '',
  `group_key` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `message_2trash` text,
  `message` text,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `message_2trash`, `message`, `url`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, NULL, 'Yay! I''ve just installed HumHub ;Cool;', NULL, '2016-08-17 00:16:26', 1, '2016-08-17 00:16:26', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `birthday_hide_year` int(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `about` text,
  `phone_private` varchar(255) DEFAULT NULL,
  `phone_work` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `im_skype` varchar(255) DEFAULT NULL,
  `im_msn` varchar(255) DEFAULT NULL,
  `im_xmpp` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_facebook` varchar(255) DEFAULT NULL,
  `url_linkedin` varchar(255) DEFAULT NULL,
  `url_xing` varchar(255) DEFAULT NULL,
  `url_youtube` varchar(255) DEFAULT NULL,
  `url_vimeo` varchar(255) DEFAULT NULL,
  `url_flickr` varchar(255) DEFAULT NULL,
  `url_myspace` varchar(255) DEFAULT NULL,
  `url_googleplus` varchar(255) DEFAULT NULL,
  `url_twitter` varchar(255) DEFAULT NULL,
  `ce_nombre_especializado` varchar(255) DEFAULT NULL,
  `ce_descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profile`
--

INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `title`, `gender`, `street`, `zip`, `city`, `country`, `state`, `birthday_hide_year`, `birthday`, `about`, `phone_private`, `phone_work`, `mobile`, `fax`, `im_skype`, `im_msn`, `im_xmpp`, `url`, `url_facebook`, `url_linkedin`, `url_xing`, `url_youtube`, `url_vimeo`, `url_flickr`, `url_myspace`, `url_googleplus`, `url_twitter`, `ce_nombre_especializado`, `ce_descripcion`) VALUES
(1, 'admin', 'admin', 'System Administration', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'test2', 'test2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test2', 'test2'),
(4, 'test3', 'test3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test3', 'test3'),
(5, NULL, NULL, NULL, NULL, 'centro', NULL, 'centro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '454545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'centro', 'centro'),
(6, NULL, NULL, NULL, NULL, 'centro2', NULL, 'centro2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'centro2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'centro2', 'centro2'),
(7, 'tutor1', 'tutor1', NULL, NULL, 'tutor1', NULL, 'tutor1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tutor1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profile_field`
--

CREATE TABLE `profile_field` (
  `id` int(11) NOT NULL,
  `profile_field_category_id` int(11) NOT NULL,
  `module_id` varchar(255) DEFAULT NULL,
  `field_type_class` varchar(255) NOT NULL,
  `field_type_config` text,
  `internal_name` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `sort_order` int(11) NOT NULL DEFAULT '100',
  `required` tinyint(4) DEFAULT NULL,
  `show_at_registration` tinyint(4) DEFAULT NULL,
  `editable` tinyint(4) NOT NULL DEFAULT '1',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_attribute` varchar(255) DEFAULT NULL,
  `translation_category` varchar(255) DEFAULT NULL,
  `is_system` int(1) DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profile_field`
--

INSERT INTO `profile_field` (`id`, `profile_field_category_id`, `module_id`, `field_type_class`, `field_type_config`, `internal_name`, `title`, `description`, `sort_order`, `required`, `show_at_registration`, `editable`, `visible`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_attribute`, `translation_category`, `is_system`, `searchable`) VALUES
(1, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":"","maxLength":"20","validator":"","default":"","regexp":"","regexpErrorMessage":"","fieldTypes":[]}', 'firstname', 'First name', '', 100, 0, 1, 1, 1, NULL, NULL, NULL, NULL, 'givenName', 'UserModule.models_Profile', 1, 1),
(2, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":"","maxLength":"30","validator":"","default":"","regexp":"","regexpErrorMessage":"","fieldTypes":[]}', 'lastname', 'Last name', '', 200, 0, 1, 1, 1, NULL, NULL, NULL, NULL, 'sn', 'UserModule.models_Profile', 1, 1),
(3, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":50,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'title', 'Title', NULL, 300, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'title', NULL, 1, 1),
(4, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Select', '{"options":"male=>Male\\nfemale=>Female\\ncustom=>Custom","fieldTypes":[]}', 'gender', 'Gender', NULL, 300, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(5, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":"","maxLength":"150","validator":"","default":"","regexp":"","regexpErrorMessage":"","fieldTypes":[]}', 'street', 'Street', '', 400, 0, 1, 1, 1, NULL, NULL, NULL, NULL, '', 'UserModule.models_Profile', 1, 1),
(6, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":10,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'zip', 'Zip', NULL, 500, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(7, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":"","maxLength":"100","validator":"","default":"","regexp":"","regexpErrorMessage":"","fieldTypes":[]}', 'city', 'City', '', 600, 0, 1, 1, 1, NULL, NULL, NULL, NULL, '', 'UserModule.models_Profile', 1, 1),
(8, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\CountrySelect', '{"options":null,"fieldTypes":[]}', 'country', 'Country', NULL, 700, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(9, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'state', 'State', NULL, 800, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(10, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Birthday', '{"defaultHideAge":false,"fieldTypes":[]}', 'birthday', 'Birthday', NULL, 900, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(11, 1, NULL, 'humhub\\modules\\user\\models\\fieldtype\\TextArea', '{"fieldTypes":[]}', 'about', 'About', NULL, 900, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(12, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'phone_private', 'Phone Private', NULL, 100, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(13, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'phone_work', 'Phone Work', NULL, 200, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(14, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":"","maxLength":"100","validator":"","default":"","regexp":"","regexpErrorMessage":"","fieldTypes":[]}', 'mobile', 'Mobile', '', 300, 0, 1, 1, 1, NULL, NULL, NULL, NULL, '', 'UserModule.models_Profile', 1, 1),
(15, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'fax', 'Fax', NULL, 400, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(16, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'im_skype', 'Skype Nickname', NULL, 500, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(17, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":100,"validator":null,"default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'im_msn', 'MSN', NULL, 600, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(18, 2, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"email","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'im_xmpp', 'XMPP Jabber Address', NULL, 800, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(19, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url', 'Url', NULL, 100, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(20, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_facebook', 'Facebook URL', NULL, 200, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(21, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_linkedin', 'LinkedIn URL', NULL, 300, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(22, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_xing', 'Xing URL', NULL, 400, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(23, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_youtube', 'Youtube URL', NULL, 500, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(24, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_vimeo', 'Vimeo URL', NULL, 600, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(25, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_flickr', 'Flickr URL', NULL, 700, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(26, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_myspace', 'MySpace URL', NULL, 800, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(27, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":null,"maxLength":255,"validator":"url","default":null,"regexp":null,"regexpErrorMessage":null,"fieldTypes":[]}', 'url_googleplus', 'Google+ URL', NULL, 900, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(28, 3, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', NULL, 'url_twitter', 'Twitter URL', NULL, 1000, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(29, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\Text', '{"minLength":"","maxLength":"50","validator":"","default":"","regexp":"","regexpErrorMessage":"","fieldTypes":[]}', 'ce_nombre_especializado', 'Nombre Centro Especializado', 'Nombre Centro Especializado', 100, 0, 1, 1, 1, NULL, NULL, NULL, NULL, '', 'UserModule.models_Profile', NULL, 1),
(30, 4, NULL, 'humhub\\modules\\user\\models\\fieldtype\\TextArea', '{"fieldTypes":[]}', 'ce_descripcion', 'Descripcion del Centro Especilizado', 'Descripcion del Centro Especilizado', 200, 0, 1, 1, 1, NULL, NULL, NULL, NULL, '', 'UserModule.models_Profile', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profile_field_category`
--

CREATE TABLE `profile_field_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '100',
  `module_id` int(11) DEFAULT NULL,
  `visibility` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `translation_category` varchar(255) DEFAULT NULL,
  `is_system` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profile_field_category`
--

INSERT INTO `profile_field_category` (`id`, `title`, `description`, `sort_order`, `module_id`, `visibility`, `created_at`, `created_by`, `updated_at`, `updated_by`, `translation_category`, `is_system`) VALUES
(1, 'General', '', 100, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Communication', '', 200, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(3, 'Social bookmarks', '', 300, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'Centro-Especializado', 'Centro-Especializado', 400, NULL, 1, NULL, NULL, NULL, NULL, 'UserModule.models_ProfileFieldCategory', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text,
  `module_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `setting`
--

INSERT INTO `setting` (`id`, `name`, `value`, `module_id`) VALUES
(1, 'oembedProviders', '{"vimeo.com":"http:\\/\\/vimeo.com\\/api\\/oembed.json?scheme=https&url=%url%&format=json&maxwidth=450","youtube.com":"http:\\/\\/www.youtube.com\\/oembed?scheme=https&url=%url%&format=json&maxwidth=450","youtu.be":"http:\\/\\/www.youtube.com\\/oembed?scheme=https&url=%url%&format=json&maxwidth=450","soundcloud.com":"https:\\/\\/soundcloud.com\\/oembed?url=%url%&format=json&maxwidth=450","slideshare.net":"https:\\/\\/www.slideshare.net\\/api\\/oembed\\/2?url=%url%&format=json&maxwidth=450"}', 'base'),
(2, 'defaultVisibility', '1', 'space'),
(3, 'defaultJoinPolicy', '1', 'space'),
(4, 'colorDefault', '#ededed', 'base'),
(5, 'colorPrimary', '#708fa0', 'base'),
(6, 'colorInfo', '#6fdbe8', 'base'),
(7, 'colorSuccess', '#97d271', 'base'),
(8, 'colorWarning', '#fdd198', 'base'),
(9, 'colorDanger', '#ff8989', 'base'),
(10, 'name', 'portalweb', 'base'),
(11, 'baseUrl', 'http://localhost/portalweb', 'base'),
(12, 'paginationSize', '10', 'base'),
(13, 'displayNameFormat', '{profile.firstname} {profile.lastname}', 'base'),
(14, 'auth.ldap.refreshUsers', '1', 'user'),
(15, 'auth.needApproval', '0', 'user'),
(16, 'auth.anonymousRegistration', '1', 'user'),
(17, 'auth.internalUsersCanInvite', '1', 'user'),
(18, 'mailer.transportType', 'file', 'base'),
(19, 'mailer.systemEmailAddress', 'social@example.com', 'base'),
(20, 'mailer.systemEmailName', 'portalweb', 'base'),
(21, 'receive_email_activities', '1', 'activity'),
(22, 'receive_email_notifications', '2', 'notification'),
(23, 'maxFileSize', '5242880', 'file'),
(24, 'maxPreviewImageWidth', '200', 'file'),
(25, 'maxPreviewImageHeight', '200', 'file'),
(26, 'hideImageFileInfo', '0', 'file'),
(27, 'cache.class', 'yii\\caching\\FileCache', 'base'),
(28, 'cache.expireTime', '3600', 'base'),
(29, 'installationId', '7d089ebd058aafc287c3133bd7f8aa67', 'admin'),
(30, 'theme', 'HumHub', 'base'),
(31, 'spaceOrder', '0', 'space'),
(32, 'enable', '1', 'tour'),
(33, 'defaultLanguage', 'es', 'base'),
(34, 'enable_html5_desktop_notifications', '0', 'notification'),
(35, 'useCase', 'community', 'base'),
(36, 'auth.allowGuestAccess', '1', 'user'),
(37, 'enable', '1', 'friendship'),
(38, 'sampleData', '0', 'installer'),
(39, 'secret', '40876177-7854-4f36-bbe7-d36cd6ecd2a6', 'base'),
(40, 'timeZone', 'Europe/Berlin', 'base'),
(41, 'mailer.hostname', 'smtp.gmail.com', 'base'),
(42, 'mailer.username', 'juliusceshar@gmail.com', 'base'),
(43, 'mailer.password', 'avectra!google!@#security', 'base'),
(44, 'mailer.port', '25', 'base'),
(45, 'mailer.encryption', '', 'base'),
(46, 'mailer.allowSelfSignedCerts', '0', 'base'),
(47, 'auth.defaultUserGroup', '', 'user'),
(48, 'auth.defaultUserIdleTimeoutSec', '', 'user'),
(49, 'auth.defaultUserProfileVisibility', '1', 'user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `space`
--

CREATE TABLE `space` (
  `id` int(11) NOT NULL,
  `guid` varchar(45) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `description` text,
  `join_policy` tinyint(4) DEFAULT NULL,
  `visibility` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `tags` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `auto_add_new_members` int(4) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL,
  `default_content_visibility` tinyint(1) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `members_can_leave` int(11) DEFAULT '1',
  `url` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `space`
--

INSERT INTO `space` (`id`, `guid`, `wall_id`, `name`, `description`, `join_policy`, `visibility`, `status`, `tags`, `created_at`, `created_by`, `updated_at`, `updated_by`, `ldap_dn`, `auto_add_new_members`, `contentcontainer_id`, `default_content_visibility`, `color`, `members_can_leave`, `url`) VALUES
(1, '8acd82e6-f687-46aa-a9bd-ae0006f5e47a', 2, 'Welcome Space', 'Your first sample space to discover the platform.', 2, 2, 1, NULL, '2016-08-17 00:16:25', 1, '2016-08-17 00:16:25', 1, NULL, 1, 2, NULL, '#6fdbe8', 1, 'welcome-space');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `space_membership`
--

CREATE TABLE `space_membership` (
  `space_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `originator_user_id` varchar(45) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `request_message` text,
  `last_visit` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT 'member',
  `show_at_dashboard` tinyint(1) DEFAULT '1',
  `can_cancel_membership` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `space_membership`
--

INSERT INTO `space_membership` (`space_id`, `user_id`, `originator_user_id`, `status`, `request_message`, `last_visit`, `created_at`, `created_by`, `updated_at`, `updated_by`, `group_id`, `show_at_dashboard`, `can_cancel_membership`) VALUES
(1, 1, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 1, 1),
(1, 2, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 3, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 4, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 5, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 6, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1),
(1, 7, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, 'member', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `space_module`
--

CREATE TABLE `space_module` (
  `id` int(11) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `space_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `url_oembed`
--

CREATE TABLE `url_oembed` (
  `url` varchar(255) NOT NULL,
  `preview` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `guid` varchar(45) DEFAULT NULL,
  `wall_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `auth_mode` varchar(10) NOT NULL,
  `tags` text,
  `language` varchar(5) DEFAULT NULL,
  `last_activity_email` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `visibility` int(1) DEFAULT '1',
  `time_zone` varchar(100) DEFAULT NULL,
  `contentcontainer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `guid`, `wall_id`, `status`, `username`, `email`, `auth_mode`, `tags`, `language`, `last_activity_email`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_login`, `visibility`, `time_zone`, `contentcontainer_id`) VALUES
(1, 'e445536f-f62b-45f7-8dd2-0c1f4cddc745', 1, 1, 'admin', 'admin@gmail.com', 'local', 'Administration, Support, HumHub', '', '2016-08-17 00:16:23', '2016-08-17 00:16:23', NULL, '2016-08-17 00:23:23', 1, '2016-08-17 03:00:22', 1, 'Europe/Berlin', 1),
(2, '68273021-ab01-4389-8c01-fa605f7f845f', 3, 1, 'test', 'test@gmail.com', 'local', NULL, 'es', '2016-08-17 01:07:48', '2016-08-17 01:07:48', 1, '2016-08-17 01:07:48', 1, NULL, 1, 'Europe/Berlin', 3),
(3, '6b08b5a4-4793-4a21-af77-f91a02937464', 4, 2, 'test2', NULL, 'local', NULL, 'es', '2016-08-17 02:27:09', '2016-08-17 02:27:09', NULL, '2016-08-17 02:27:09', NULL, NULL, 1, 'Europe/Berlin', 4),
(4, 'bed1aec2-e06a-43df-aa24-4e6ef2d3c830', 5, 1, 'test3', NULL, 'local', NULL, 'es', '2016-08-17 02:32:38', '2016-08-17 02:32:38', NULL, '2016-08-17 02:32:38', NULL, '2016-08-17 02:32:57', 1, 'Europe/Berlin', 5),
(5, 'dc230e05-6f91-4e4e-ad1c-c3fc440f7f0b', 6, 1, 'centro', NULL, 'local', NULL, 'es', '2016-08-17 03:08:30', '2016-08-17 03:08:30', NULL, '2016-08-17 03:08:30', NULL, '2016-08-17 03:08:50', 1, 'Europe/Berlin', 6),
(6, '4d5e40b8-1ce5-4b9f-bbd4-29c039b9cde2', 7, 1, 'centro2', NULL, 'local', NULL, 'es', '2016-08-17 03:52:09', '2016-08-17 03:52:09', NULL, '2016-08-17 03:52:09', NULL, NULL, 1, 'Europe/Berlin', 7),
(7, '30077df6-f9b0-41d3-b62f-ebabc4a2a44c', 8, 1, 'tutor1', NULL, 'local', NULL, 'es', '2016-08-17 03:52:44', '2016-08-17 03:52:44', NULL, '2016-08-17 03:52:44', NULL, NULL, 1, 'Europe/Berlin', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_auth`
--

CREATE TABLE `user_auth` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_follow`
--

CREATE TABLE `user_follow` (
  `id` int(11) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `send_notifications` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_follow`
--

INSERT INTO `user_follow` (`id`, `object_model`, `object_id`, `user_id`, `send_notifications`) VALUES
(1, 'humhub\\modules\\post\\models\\Post', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_friendship`
--

CREATE TABLE `user_friendship` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_http_session`
--

CREATE TABLE `user_http_session` (
  `id` char(255) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_http_session`
--

INSERT INTO `user_http_session` (`id`, `expire`, `user_id`, `data`) VALUES
('4f2cll6sgr154up4qn423245t7', 1471410866, 1, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a313b63757272656e7441757468436c69656e7449647c733a353a226c6f63616c223b),
('d2jqo41r67cp5c69ofhhud6t04', 1471421247, NULL, 0x5f5f666c6173687c613a303a7b7d),
('ipa71poep3s0efuj2ebt4aopr3', 1471416385, 1, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a313b63757272656e7441757468436c69656e7449647c733a353a226c6f63616c223b),
('s3o1lp1b30kiqufc90q5pb5t11', 1471416445, NULL, 0x5f5f666c6173687c613a303a7b7d),
('taogpkvrtcg22at8tq6upjsn13', 1471419391, NULL, 0x5f5f666c6173687c613a303a7b7d),
('vo4vqvkri27j9qcvu98qdomjq4', 1471422187, 7, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a373b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_invite`
--

CREATE TABLE `user_invite` (
  `id` int(11) NOT NULL,
  `user_originator_id` int(11) DEFAULT NULL,
  `space_invite_id` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `source` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_invite`
--

INSERT INTO `user_invite` (`id`, `user_originator_id`, `space_invite_id`, `email`, `source`, `token`, `created_at`, `created_by`, `updated_at`, `updated_by`, `language`, `firstname`, `lastname`) VALUES
(1, NULL, NULL, 'juliusceshar@gmail.com', 'self', 'qpfUVbxAG8GJ', NULL, NULL, NULL, NULL, 'es', NULL, NULL),
(2, NULL, NULL, 'test2@gmail.com', 'self', 'PkNm03vG8iDV', NULL, NULL, NULL, NULL, 'es', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_mentioning`
--

CREATE TABLE `user_mentioning` (
  `id` int(11) NOT NULL,
  `object_model` varchar(100) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_module`
--

CREATE TABLE `user_module` (
  `id` int(11) NOT NULL,
  `module_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_password`
--

CREATE TABLE `user_password` (
  `id` int(11) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `algorithm` varchar(20) DEFAULT NULL,
  `password` text,
  `salt` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_password`
--

INSERT INTO `user_password` (`id`, `user_id`, `algorithm`, `password`, `salt`, `created_at`) VALUES
(1, 1, 'sha512whirlpool', '9f25bb26827d93772236a3fc89cf4113ccc8865520436a59257e78a292cc3ebeb7bded39526f996b248039b0deaff0c47aaaac8496f2cf4c86d8b1454e949693', '5fee75f4-5c2a-4270-9cb0-919bed2257e7', '2016-08-17 00:16:24'),
(2, 2, 'sha512whirlpool', '6f992d75a7d5aba514d88e3e16f2beff3ef15bbdb8148b35b9abc2064e9eb69e2c591865f52aded70be695bc3ed822c24b2d5efb9b99a5422f55545106a31cef', '32838621-3a02-4e55-a78b-b2dcb615551f', '2016-08-17 01:07:50'),
(3, 3, 'sha512whirlpool', 'bba147ed412903db7f098d0352cc9e2a7a12e3be9ddf90234ab1be62a84922a5b3c1e263af13d7b1ef256fcccbb88d1e4d860e10968a673cebe0590edcfe2412', 'e641eb04-50f5-41ce-bd2a-dc5c7f2bb1aa', '2016-08-17 02:27:10'),
(4, 4, 'sha512whirlpool', '53511162177fe22c2d6e16bd13bcc76cfbd28b8b94ba7a0b5d02a95af84e1a80ad2200bcf717c1bd91ddbc24513abfe28fc569139da267dcdfb3354bd3259bc6', '2ba6c999-61ad-4bea-af3c-9a1b34f8d944', '2016-08-17 02:32:40'),
(5, 5, 'sha512whirlpool', '97ebeb51103dcd2e553a424e086429eaa06d06975c521706545b56a1c454c7a770128d5512b33ece552dbc2cb8f43273ce45e8a64e26e9dba33d6444007fdd9d', 'b2b26551-531c-4f2d-8cdc-7b5dd99655d2', '2016-08-17 03:08:32'),
(6, 6, 'sha512whirlpool', '297adb0de2fafb4ba51fdeee3b3a3ff937495815ee8058745b898371b893895d6439c51bf69e84d7b0ed04480a376025ba42ca09a6c25869788a6383e3ad999f', '0ea323db-2c9c-4b38-ae99-f9d5d5b9e08f', '2016-08-17 03:52:11'),
(7, 7, 'sha512whirlpool', 'df6fe927493fc2fff523e62e7fe9dcadea8ce1a2bf776d1a0b6453024d2b139b12c6dec1c218f4d03e0aa55c2af5667513d5d4ae9c6dff5b4acfb6f8fb86bdaa', '71656929-e4d8-4318-b735-27d9026b67db', '2016-08-17 03:52:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wall`
--

CREATE TABLE `wall` (
  `id` int(11) NOT NULL,
  `object_model` varchar(50) NOT NULL,
  `object_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wall`
--

INSERT INTO `wall` (`id`, `object_model`, `object_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'humhub\\modules\\user\\models\\User', 1, NULL, NULL, NULL, NULL),
(2, 'humhub\\modules\\space\\models\\Space', 1, NULL, NULL, NULL, NULL),
(3, 'humhub\\modules\\user\\models\\User', 2, NULL, NULL, NULL, NULL),
(4, 'humhub\\modules\\user\\models\\User', 3, NULL, NULL, NULL, NULL),
(5, 'humhub\\modules\\user\\models\\User', 4, NULL, NULL, NULL, NULL),
(6, 'humhub\\modules\\user\\models\\User', 5, NULL, NULL, NULL, NULL),
(7, 'humhub\\modules\\user\\models\\User', 6, NULL, NULL, NULL, NULL),
(8, 'humhub\\modules\\user\\models\\User', 7, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wall_entry`
--

CREATE TABLE `wall_entry` (
  `id` int(11) NOT NULL,
  `wall_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wall_entry`
--

INSERT INTO `wall_entry` (`id`, `wall_id`, `content_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 2, 1, '2016-08-17 00:16:26', 1, '2016-08-17 00:16:26', 1),
(2, 2, 3, '2016-08-17 00:16:26', 1, '2016-08-17 00:16:26', 1),
(3, 2, 2, '2016-08-17 00:16:26', 1, '2016-08-17 00:16:26', 1),
(4, 2, 4, '2016-08-17 01:07:49', 1, '2016-08-17 01:07:49', 1),
(5, 2, 5, '2016-08-17 02:29:56', 1, '2016-08-17 02:29:56', 1),
(6, 2, 6, '2016-08-17 02:32:39', NULL, '2016-08-17 02:32:39', NULL),
(7, 2, 7, '2016-08-17 03:08:31', NULL, '2016-08-17 03:08:31', NULL),
(8, 2, 8, '2016-08-17 03:52:10', NULL, '2016-08-17 03:52:10', NULL),
(9, 2, 9, '2016-08-17 03:52:44', NULL, '2016-08-17 03:52:44', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_object_model` (`object_model`,`object_id`),
  ADD UNIQUE KEY `index_guid` (`guid`),
  ADD KEY `fk-contentcontainer` (`contentcontainer_id`),
  ADD KEY `fk-create-user` (`created_by`),
  ADD KEY `fk-update-user` (`updated_by`);

--
-- Indices de la tabla `contentcontainer`
--
ALTER TABLE `contentcontainer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_target` (`class`,`pk`),
  ADD UNIQUE KEY `unique_guid` (`guid`);

--
-- Indices de la tabla `contentcontainer_permission`
--
ALTER TABLE `contentcontainer_permission`
  ADD PRIMARY KEY (`permission_id`,`group_id`,`module_id`,`contentcontainer_id`);

--
-- Indices de la tabla `contentcontainer_setting`
--
ALTER TABLE `contentcontainer_setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings-unique` (`module_id`,`contentcontainer_id`,`name`),
  ADD KEY `fk-contentcontainerx` (`contentcontainer_id`);

--
-- Indices de la tabla `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_object` (`object_model`,`object_id`);

--
-- Indices de la tabla `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `group_permission`
--
ALTER TABLE `group_permission`
  ADD PRIMARY KEY (`permission_id`,`group_id`,`module_id`);

--
-- Indices de la tabla `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx-group_user` (`user_id`,`group_id`),
  ADD KEY `fk-group-group` (`group_id`);

--
-- Indices de la tabla `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_object` (`object_model`,`object_id`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_log_level` (`level`),
  ADD KEY `idx_log_category` (`category`);

--
-- Indices de la tabla `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `module_enabled`
--
ALTER TABLE `module_enabled`
  ADD PRIMARY KEY (`module_id`);

--
-- Indices de la tabla `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_id` (`user_id`),
  ADD KEY `index_seen` (`seen`),
  ADD KEY `index_desktop_notified` (`desktop_notified`),
  ADD KEY `index_desktop_emailed` (`emailed`),
  ADD KEY `index_groupuser` (`user_id`,`class`,`group_key`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `profile_field`
--
ALTER TABLE `profile_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_profile_field_category` (`profile_field_category_id`);

--
-- Indices de la tabla `profile_field_category`
--
ALTER TABLE `profile_field_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unique-setting` (`name`,`module_id`);

--
-- Indices de la tabla `space`
--
ALTER TABLE `space`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url-unique` (`url`);

--
-- Indices de la tabla `space_membership`
--
ALTER TABLE `space_membership`
  ADD PRIMARY KEY (`space_id`,`user_id`),
  ADD KEY `index_status` (`status`);

--
-- Indices de la tabla `space_module`
--
ALTER TABLE `space_module`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `url_oembed`
--
ALTER TABLE `url_oembed`
  ADD PRIMARY KEY (`url`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_username` (`username`),
  ADD UNIQUE KEY `unique_guid` (`guid`),
  ADD UNIQUE KEY `unique_wall_id` (`wall_id`);

--
-- Indices de la tabla `user_auth`
--
ALTER TABLE `user_auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indices de la tabla `user_follow`
--
ALTER TABLE `user_follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user` (`user_id`),
  ADD KEY `index_object` (`object_model`,`object_id`);

--
-- Indices de la tabla `user_friendship`
--
ALTER TABLE `user_friendship`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx-friends` (`user_id`,`friend_user_id`),
  ADD KEY `fk-friend` (`friend_user_id`);

--
-- Indices de la tabla `user_http_session`
--
ALTER TABLE `user_http_session`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_invite`
--
ALTER TABLE `user_invite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_token` (`token`);

--
-- Indices de la tabla `user_mentioning`
--
ALTER TABLE `user_mentioning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_user` (`user_id`),
  ADD KEY `i_object` (`object_model`,`object_id`);

--
-- Indices de la tabla `user_module`
--
ALTER TABLE `user_module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_user_module` (`user_id`,`module_id`);

--
-- Indices de la tabla `user_password`
--
ALTER TABLE `user_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indices de la tabla `wall`
--
ALTER TABLE `wall`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wall_entry`
--
ALTER TABLE `wall_entry`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `contentcontainer`
--
ALTER TABLE `contentcontainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `contentcontainer_setting`
--
ALTER TABLE `contentcontainer_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `group_user`
--
ALTER TABLE `group_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `like`
--
ALTER TABLE `like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT de la tabla `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `profile_field`
--
ALTER TABLE `profile_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `profile_field_category`
--
ALTER TABLE `profile_field_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT de la tabla `space`
--
ALTER TABLE `space`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `space_module`
--
ALTER TABLE `space_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `user_auth`
--
ALTER TABLE `user_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user_follow`
--
ALTER TABLE `user_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `user_friendship`
--
ALTER TABLE `user_friendship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user_invite`
--
ALTER TABLE `user_invite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `user_mentioning`
--
ALTER TABLE `user_mentioning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user_module`
--
ALTER TABLE `user_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user_password`
--
ALTER TABLE `user_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `wall`
--
ALTER TABLE `wall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `wall_entry`
--
ALTER TABLE `wall_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk-contentcontainer` FOREIGN KEY (`contentcontainer_id`) REFERENCES `contentcontainer` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk-create-user` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk-update-user` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `contentcontainer_setting`
--
ALTER TABLE `contentcontainer_setting`
  ADD CONSTRAINT `fk-contentcontainerx` FOREIGN KEY (`contentcontainer_id`) REFERENCES `contentcontainer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `group_user`
--
ALTER TABLE `group_user`
  ADD CONSTRAINT `fk-group-group` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-user-group` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_auth`
--
ALTER TABLE `user_auth`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_friendship`
--
ALTER TABLE `user_friendship`
  ADD CONSTRAINT `fk-friend` FOREIGN KEY (`friend_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
