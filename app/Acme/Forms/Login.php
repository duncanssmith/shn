<?php namespace Acme\Forms;

class Login extends FormValidator {

    /**
     * Validation rules for login form
     */
    protected $rules = [
        'username' => 'required',
        'password' => 'required'
    ];

}