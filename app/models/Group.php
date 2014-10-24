<?php

class Group extends Eloquent {

    public function works()
    {
        return $this->belongsToMany('Work');
    }

    public function texts()
    {
        return $this->belongsToMany('Text');
    }

}