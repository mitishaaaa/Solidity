// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//1. create a twitter contract
//2. create a mapping between user and tweet
//3. add function to create a tweet and save it in mapping
//4. create a function to get tweet
//1.
contract Twitter{
//2.
mapping(address => string) public tweets;
//3. func to create the tweet 
function createTweet(string memory _tweet) public 
     tweets[msg.sender] = _tweet; 
     //saving the tweet
     }

     











}
