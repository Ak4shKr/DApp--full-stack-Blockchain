//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract Transaction {
    struct TransactionStructure {
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
    }
    TransactionStructure[] transactions;
    event TrasferEth(
        address from,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp
    );

    function SendEth(
        address payable _receiver,
        uint256 amount,
        string memory _message
    ) public {
        // TransactionStructure memory newTransaction = TransactionStructure(
        //     msg.sender,
        //     _receiver,
        //     amount,
        //     _message,
        //     block.timestamp
        // );
        transactions.push(
            TransactionStructure(
                msg.sender,
                _receiver,
                amount,
                _message,
                block.timestamp
            )
        );
        emit TrasferEth(
            msg.sender,
            _receiver,
            amount,
            _message,
            block.timestamp
        );
    }

    function getTransactions()
        public
        view
        returns (TransactionStructure[] memory)
    {
        return transactions;
    }
}
