<?php 

session_start();

require '/../../vendor/autoload.php';


$app = new \Slim\App([
	'settings' => [
		'displayErrorDetails' => true,
		'db' =>[
			'driver' => 'mysql',
			'host' => 'localhost',
			'database' => 'db_api_slim_project',
			'username' => 'root',
			'password' => '',
			'charset' => 'utf8',
			'collation' => 'utf8_unicode_ci',
			'prefix' => ''
		],
		'determineRouteBeforeAppMiddleware' => true,
	    'addContentLengthHeader' => false,
	]
]);

$container = $app->getContainer();

$capsule = new \Illuminate\Database\Capsule\Manager;
$capsule->addConnection($container['settings']['db']);
$capsule->setAsGlobal();
$capsule->bootEloquent();

$container['db'] = function($container) use ($capsule){

	return $capsule;

};

$container['view'] = function($container){

	$view = new \Slim\Views\Twig(__DIR__.'/../resources/views',['cache'=> false]);

	$view->addExtension(new \Slim\Views\TwigExtension(

			$container->router,
			$container->request->getUri()

		));

	return $view;
};

$container['HomeCrontroller'] =  function($container){

	return new \App\Controllers\HomeCrontroller($container);

};

$container['AuthCrontroller'] =  function($container){

	return new \App\Controllers\Auth\AuthCrontroller($container);

};

$container['validator'] = function($container){

	return new \App\Validation\Validator;

};

$app->add(new \App\Middleware\ValidationErrorMiddleware($container));

$app->add(new \App\Middleware\OldInputMiddleware($container));


require '/../routers/productos.php';


?>