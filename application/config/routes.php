<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'Home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['admin'] 						= 'admin/Home';
$route['admin/users'] 					= 'admin/Users';
$route['admin/users/(:num)'] 			= 'admin/Users/view/$1';
$route['admin/logout'] 					= 'admin/Users/logout';


$route['trang-chu'] 				= 'Home';
$route['dang-ky-vay'] 				= 'Loan_register';
$route['dang-ky-vay/register'] 		= 'Loan_register/register';
$route['dang-ky-vay/success'] 		= 'Loan_register/success';

$route['tim-kiem?(:any)'] 			= 'Search';

$route['lien-he'] 					= 'Contact';
$route['lien-he/submit_contact'] 	= 'Contact/submit_contact';

$route['tin-tuc/(:any).html'] 		= 'Post/detail/$1';
$route['tin-tuc/(:any)'] 			= 'Post/blog/$1';
$route['tin-tuc/(:any)/(:num)'] 	= 'Post/blog/$1';

