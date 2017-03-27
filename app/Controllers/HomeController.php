<?php 

namespace App\Controllers;

use  Slim\Views\Twig as View;
/**
* 
*/
class HomeCrontroller extends Controller
{	
	// protected $view;

	// public function __construct(View $view){

	// 	$this->view = $view;

	// }
	public function index($request,$response)
	{
		// var_dump($request->getParam('name'));
		//return $this->view->render($response,'home.twig');
		// $user=$this->db->table('users')->find(1);
		// var_dump($user->email);
		// $user = User::where('email','luchoguti9@gamil.com')->first();
		// var_dump($user->email);

		// User::create([
		// 	'name'=> 'yoana Cotamo torres',
		// 	'email'=> 'ycotamo@gmail.com',
		// 	'password'=> '11233',
		// ]);

		return $this->view->render($response,'home.twig');

	}
}

?>