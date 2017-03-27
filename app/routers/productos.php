<?php

// $app->get('/pedro', function ($request, $response) {
//     return $this->view->render($response,'home.twig');
// });

$app->get('/','HomeCrontroller:index')->setName('home');

$app->get('/auth/signup','AuthCrontroller:getSignup')->setName('auth.signup');

$app->post('/auth/signup','AuthCrontroller:postSignup');

