<?php

class Group extends Eloquent {

    public function works()
    {
        return $this->belongsToMany('Work')->withTimestamps();
    }

    public function texts()
    {
        return $this->belongsToMany('Text')->withTimestamps();
    }

}