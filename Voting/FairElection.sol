pragma solidity ^0.5.0;

contract Voting {

    mapping (bytes32 => uint8) public totalVotes;

    bytes32[] public candidates;

    constructor(bytes32[] memory candidateNames) public {
        candidates = candidateNames;
    }

    function totalVotesFor(bytes32 candidate) validity(candidate) public view returns (uint8) {
        return totalVotes[candidate];
    }

    function voteForCandidate(bytes32 candidate) validity(candidate) public {
        totalVotes[candidate] += 1;}

    modifier validity(bytes32 candidate){
        require(isValidCandidate(candidate));
        _;
    }

    function isValidCandidate (bytes32 candidate) public  view returns (bool) {
        for(uint i = 0; i < candidates.length; i++) {
            if (candidates[i] == candidate) {
                return true;
            }
        }
        return false;
    }
}