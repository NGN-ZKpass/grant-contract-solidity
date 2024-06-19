// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.25;

import "./ProofVerifier.sol";

contract ZkNIMC is ProofVerifier {
    address admin;
    uint256 public claimersCount;
    mapping (address => bool) claimed;
    mapping (address => bool) hasProof;
    mapping (address => uint32) candidateVotes;
    uint64 duration;
    uint64 startTime;
    uint64 endTime;

    event Claimed(address claimer);

}