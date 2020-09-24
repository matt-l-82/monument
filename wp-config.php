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
define('DB_NAME', 'monument4_adrian');

/** MySQL database username */
define('DB_USER', 'monument4_adrian');

/** MySQL database password */
define('DB_PASSWORD', 'monument4_adrian');

/** MySQL hostname */
define('DB_HOST', '10.169.0.149');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         '?xz18Q>C/0v 2](|3*5P]vHdF[[(N0:||yp,HiYVMs-qwelY613;l&z?.FHk[lH ');
define('SECURE_AUTH_KEY',  'frAnNr>+^|]1WmzBrAxyP,hZ?i J-;+~FI]-_}0lqcQ? fZ7u|+e^L1RYD_Fhp-/');
define('LOGGED_IN_KEY',    '=~o{!a|WBWff~y,?|v`lgOu(F)-5YlkYqBU4GQr&|:5U+7cLsd]Cox{k Ugy5V7a');
define('NONCE_KEY',        '):KU9jgV[(oP:/x51g+UvR+OV@kI7=f)*F?%v^!t+K6@@?s]ot)_j2%g$`RRF0wW');
define('AUTH_SALT',        'KpnvkHv+$Ght1JI-xSW=[7JX|(BsM^M9>yLj|^6RJ3j</|&6Z-@r$7@3-BDW4d%G');
define('SECURE_AUTH_SALT', '#DYWw%] l}S5&9<#B-x)YT-_GCJb9x5$ qAMvv|Z54*twq#/6ZZ5V^Bw<Opm=_Ru');
define('LOGGED_IN_SALT',   'p4|)f8u0SIZlJw|lJ&8+/own.64o-fY3,|A*(aii,HgSNH-vOq+}$|K!TM-z}^+d');
define('NONCE_SALT',       '8G8k|d<Z5E-fqSjv|^nUpJcsv?QMfZx8U/Q}98e.85Mfv,At7f}+Pch^qGuuz+@E');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'mhdb_';

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
define( 'WP_CACHE', false );

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
