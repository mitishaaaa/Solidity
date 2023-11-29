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

//4.
function getTweet(address _owner) public view returns (string memory)
//u have to specify what type u are returning, therefore string is used. 
//memory is used bc u have to store certain things.
//view is specified cos its simply returning some data and allows sol to be more gas efficient.
{
return tweets[_owner]; //finding thats why square bracket
}
     











}
