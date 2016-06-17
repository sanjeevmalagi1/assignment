<?php

class tweets_model extends CI_Model {

        public function __construct()
        {
                // Call the CI_Model constructor
                parent::__construct();
                $this->load->database();
                $this->load->library('TwitterOAuth');//library to Authenticate to Twitter API
        }

        public function GetLastTweetId() {
            //select the last tweet and return its value
            $query = $this->db->select('id')->order_by('id','desc')->limit(1)->get('tweets');
            $result = $query->row_array();
            return $result['id'];
        }

        public function UpdateDatabase($since_id=NULL) {

          $consumer_key = "3fNj0SZkaHcddgSgQLMtkiw0H";
          $consumer_secret = "Cm95MHfPh5jV9Etn5j8Ky98x3kZE1hsJzyvY3AcNJ36gl0Grhz";
          $access_token = "2692164368-kDQEK0QIagVfHAdyweQZz1CHv8aup12mnJY6892";
          $access_token_secret = "CWrj4JNRssOLPvKBXE14AVE82WJhWDdbg3n7bWsejCCGO";
          //Authenticate to Twitter API
          $twitter = new TwitterOAuth($consumer_key,$consumer_secret,$access_token,$access_token_secret);

          if($since_id!=NULL)
          {
            //check for last tweet
            $url="https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=kamaalrkhan&since_id=$since_id";
            //Get the tweets for last updated tweet to most recent tweet
            $tweets = $twitter->get($url);

          }

          foreach ($tweets as $tweet) {
            if(!$this->tweets_model->isExsists($tweet->id))
            {
              //Check and insert tweets into table : tweets
              $data=array(
                  'id' => $tweet->id,
                  'id_str' => $tweet->id_str,
                  'text' => $tweet->text
              );
              $this->db->insert('tweets',$data);
           }
          };

        }

        public function GetTweets() {
          //Get All the Tweets for table : tweets
          $query = $this->db->order_by('id','desc')->get('tweets');
          $result = $query->result_array();
          return $result;
        }

        public function isExsists($id){
          //check whether the tweets exsists already (just in case)
          $this->db->where('id',$id);
          $query = $this->db->get('tweets');
          if($query->row_array())
          {
            return 1;
          }
          else {
            return 0;
          }
        }
}
