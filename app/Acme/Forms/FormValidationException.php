<?php namespace Acme\Forms;

class FormValidationException extends \Exception {

    /**
     * @var MessageBag
     */
    protected $errors;

    /**
     * @param string $message
     * @param MessageBag $errors
     */
    function __construct($message, Illuminate\Support\MessageBag $errors)
    {
        $this->errors = $errors;

        parent::__construct($message);
    }

    /**
     * @return MessageBag
     */
    public function getErrors()
    {
        return $this->errors;
    }
}