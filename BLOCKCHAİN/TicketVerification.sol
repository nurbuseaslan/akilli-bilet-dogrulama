// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TicketVerification {
    address public owner;

    struct Ticket {
        string id;
        bool isValid;
    }

    mapping(string => Ticket) public tickets;

    constructor() {
        owner = msg.sender;
    }

    function addTicket(string memory _ticketId) public {
        require(msg.sender == owner, "Only owner can add tickets");
        tickets[_ticketId] = Ticket(_ticketId, true);
    }

    function verifyTicket(string memory _ticketId) public view returns (bool) {
        return tickets[_ticketId].isValid;
    }

    function useTicket(string memory _ticketId) public {
        require(tickets[_ticketId].isValid, "Ticket is invalid or already used");
        tickets[_ticketId].isValid = false;
    }
}
