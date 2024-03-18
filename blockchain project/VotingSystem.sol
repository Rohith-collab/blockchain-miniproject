//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

//by rohith babu Y

contract VotingSystem {
    string[5] public candidates;

    mapping(string =>uint256) private candidateVotes;

    event VoteCast(string candidate,uint256 newVoteCount);

      constructor(){
        candidates[0] = "rohith";
        candidates[1] = "gowtham";
        candidates[2] = "santhosh";
        candidates[3] = "kabilan";
        candidates[4] = "hari";
 }
  function  vote(uint8 candidateIndex) public {
     require(candidateIndex < 5, "Invalid candidate Index");

     string memory selectedcandidate = candidates[candidateIndex];
     candidateVotes[selectedcandidate]++;
     emit VoteCast(selectedcandidate, candidateVotes[selectedcandidate]);
  }
function getvotes(string memory candidate) public view returns (uint256) {
    return candidateVotes[candidate];

}

function getCandidateNames() public view returns (string[5] memory) {
    return candidates;
}
}
