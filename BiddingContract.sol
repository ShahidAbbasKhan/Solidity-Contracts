// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;
contract Bidding {
    uint public minBidAmount=15 ether;
    mapping(address=>uint)Bidder;
    address public Owner;
    constructor(){
        Owner=msg.sender;
    }
    modifier minimumAmount {
        require(msg.value>=15 ether,"Minimum Bidding amount is 15 ethers");
        _;
    }
    modifier onlyOwner {
        require(msg.sender==Owner,"You aren't Owner");
        _;
    }
  function Eligibility(uint bidaAmount) public pure {
    if(bidaAmount<15000000000000000000){
        revert("Unfortunately, You are not Eligible for Bidding , Minimum Bidding Amount is 15 Eth") ;
    }
   }
    function changeOwner(address newOwner) external onlyOwner{
        Owner=newOwner;

    }
   function bidNow() public payable minimumAmount returns(bool){
            Bidder[msg.sender]+=msg.value;
            return true;
   }
   function returnBidderAmount(address bidderAdr) public view returns(uint){
             return Bidder[bidderAdr];
   }
   function returnBalance() public view  onlyOwner returns (uint){
       return address(this).balance;
   }


}