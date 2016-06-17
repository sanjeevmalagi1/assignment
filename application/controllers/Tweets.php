<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tweets extends CI_Controller {
  public function __construct()
  {
          parent::__construct();
          $this->load->library('TwitterOAuth');
          $this->load->model('tweets_model');
  }

	public function index()
	{
    $this->load->view('Templates/stylesheets');
    $this->load->view('Templates/header');
    $this->load->view('Templates/sidebar');
    $this->load->view('Shows/Shows');
    $this->load->view('Templates/scripts');
  }


  public function TweetsJson()
  {
    $lastTweetID=$this->tweets_model->GetLastTweetId();//Get the id of last updated tweet
    $this->tweets_model->UpdateDatabase($lastTweetID);//Update recent tweets
    echo json_encode($this->tweets_model->GetTweets());//output tweets in JSON format
  }
}
