<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', '2k17_wp_examen');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'YD <X.}uMt&,l,<oV<e}+wBqKDg|5/SBll`v>mBS;B=Qj,Pps^+{[FzdQ#Z,-6XL');
define('SECURE_AUTH_KEY',  'OU-*3&9lJxo:6U|1ZC`rYC5P8sro:TEJ+5AdsGHB%UmfH|:u7nNr2&~&,;zoIE7^');
define('LOGGED_IN_KEY',    'MJl[U>M`>R$Su~i~:%dt01irpr<ufgG;.|Wn@igEe t^F62ryJ6h@ OQ}0$p1yt.');
define('NONCE_KEY',        '])AL&ZQ8a[O^+S)gc9cDy]JIPn$2 >03RHxh*,>%NqaP88Q_&(>^F:/S%z}4Z]%%');
define('AUTH_SALT',        '(5[hVfWsnE^5U3Z|DW=&U3$s:H4ryGK~!IZ1T]D*%fp!3i(0XA;H:d{{1a:G{=5`');
define('SECURE_AUTH_SALT', 'T4mv>]`b]<C/nCp{fKdzt;z#C%Wi5&k4(+Z>#$<Y/Yp,=WAuu<PvD%]U_#^T/$1=');
define('LOGGED_IN_SALT',   '9Ij{~zG/e(]3A0QcLhB=npvie@.BK$Dn1-$0FpwV+?QO{I>#Er.[k*x9)`>$U7KN');
define('NONCE_SALT',       'ZfSH~8G%y EE0yWoIl-D)E#_%hE+WMn{vu [sqX4mo:Y185X:klf}VKgMWgINK9G');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_2k17_wp_examen';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
