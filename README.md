# BiddingContract

- minBidAmount Function:

      will return minimum amount required for bidding:
- Eligibility Function:

      caller will pass amount for bidding and function will check this is eligible amount for bidding or not:
- changeOwner Function:

      only Owner of the contract can change owner.
- bidNow Function:

      this function will receive ethers for bidding ,but this function modifier will also check amount should be greater than 15 ethers,also this record will be saved in Bidder mapping.
- returnBidderAmount Function:

      will return amount for bidding of specific address.
-returnBalance Function:

      In this function only Owner of the contract can check total balance in the contract stored.


    
