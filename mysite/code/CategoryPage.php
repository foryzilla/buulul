<?php
class CategoryPage extends SubPage{
    //This page type class object only allows ItemPage page type childs.
    private static $allowed_children = array('ItemPage');    
}

class CategoryPage_Controller extends SubPage_Controller{
    
}

