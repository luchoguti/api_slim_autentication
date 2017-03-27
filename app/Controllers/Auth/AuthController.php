<?php 

namespace App\Controllers\Auth;

use App\Models\User;
use App\Controllers\Controller;
use Respect\Validation\Validator as v;

class AuthCrontroller extends Controller
{	

	public function getSignup($request,$response)
	{
		
		return $this->view->render($response,'auth/signup.twig');

	}

	public function postSignup($request,$response)
	{
		
		$validator = $this->validator->validate($request,[
			'email' => v::noWhitespace()->notEmpty()->email(),
			'name' => v::notEmpty()->alpha(),
			'password' => v::noWhitespace()->notEmpty(),
		]);

		if($this->validator->failed()){
			return $response->withRedirect($this->router->pathFor('auth.signup'));
		}

		$user=User::create([
			'email'=> $request->getParam('email'),
			'name'=> $request->getParam('name'),
			'password'=> password_hash($request->getParam('password'), PASSWORD_DEFAULT),
		]);

		return $response->withRedirect($this->router->pathFor('home'));

	}

}

?>