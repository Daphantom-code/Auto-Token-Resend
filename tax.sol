pragma solidity ^0.5.0;

contract Tax{

    // if funds are received in this contract then 
    // Pay 1% to the target address
    address payable target = ENTERANADDRESSHERE;

    // Fallback function for incoming ether 
    function () payable external{
       
        //Send 1% to the target address configured above
        target.transfer(msg.value/100);

        //continue processing
    }
}
