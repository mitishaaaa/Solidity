// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//1️⃣ Define a Tweet struct with author, content, timestamp, likes.
//2️⃣ Add the struct to array.
//3️⃣ Test Tweets.
//4️⃣ Adding Require Statements.

contract Twitter {

uint16 constant MAX_TWEET_LENGHT = 280; //uint created for the req stat.

 //1️⃣
 struct Tweet {
 address author;
 string content;
 uint256 timestamp;
 uint256 likes;
 }

//2️⃣
mapping(address => Tweet[]) public tweets;
 function createTweet(string memory _tweet) public{

//4️⃣
require(bytes(_tweet).length <= MAX_TWEET-LENGTH, "Tweet is too long.");

 //memory =  temp storage till the task finishes
   Tweet memory newTweet = Tweet({ 
      author: msg.sender,
      content: _tweet,
      timestamp: block.timestamp,
      likes: 0
      });

      tweets[msg.sender].push(newTweet);
      }

  function getTweet(address _owner, uint _i) public view returns (Tweet memory) {
  return tweets[_owner][_i];
  }

  function getAllTweets(address _owner) public view returns (Tweet[] memory){
  return tweets[_owner];
  }
  }
