// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Bet {

    //Structs
    struct Player{
        uint256 amountBet;
        uint256 numberSelected;
        uint256 groupSelected;
        uint256 duqueSelected;
        uint256 ternoSelected;
        uint256 quadraSelected;
        uint256 quinaSelected;
        uint256 dezenaSelected;
        uint256 centenaSelected;
    }

    // Properties
    address public owner;
    address[] public players;
    uint256 public totalBet;
    uint256 public minimunBet;
    address[] public winners;

    mapping(address => Player) addressToPlayer;
    mapping(address => uint256) private addressToBalance;


    // Modifiers
    modifier isOwner() {
        require(msg.sender == owner , "Sender is not owner!");
        _;
    }

    // Constructor
    constructor (uint256 minimunBetValue) {
        owner = msg.sender;
        if(minimunBetValue != 0) {
            minimunBet = minimunBetValue;
        }else {
            revert("Invalid value");
        }
    }

    // Public Functions
    function betGrupo(uint256 numberSelected) public payable {
        require(msg.value >= minimunBet * 10**18, "The bet amount is less than the minimum allowed");
        uint256 valueBet = msg.value;
        address playerBet = msg.sender;

        uint256 numberBet = 0; 
        uint256 groupNumberBet = numberSelected;
        uint256 duqueNumberBet = 0;
        uint256 ternoNumberBet = 0;
        uint256 quadraNumberBet = 0;
        uint256 quinaNumberBet = 0;
        uint256 dezenaNumberBet = 0; 
        uint256 centenaNumberBet = 0;

        Player memory newPlayer = Player({
            numberSelected: numberBet,
            amountBet: valueBet,
            groupSelected: groupNumberBet,
            duqueSelected: duqueNumberBet,
            ternoSelected: ternoNumberBet,
            quadraSelected: quadraNumberBet,
            quinaSelected: quinaNumberBet,
            dezenaSelected: dezenaNumberBet,
            centenaSelected: centenaNumberBet
        });
        addressToPlayer[playerBet] = newPlayer;

        totalBet += valueBet;
        players.push(playerBet);
    }

    function betDuque(uint256 numberSelected) public payable {
        require(msg.value >= minimunBet * 10**18, "The bet amount is less than the minimum allowed");
        uint256 valueBet = msg.value;
        address playerBet = msg.sender;

        uint256 numberBet = 0; 
        uint256 groupNumberBet = numberSelected/100; // 2547 --> 25 
        uint256 duqueNumberBet = numberSelected-((numberSelected/100)*100); // 2547 --> 47
        uint256 ternoNumberBet = 0;
        uint256 quadraNumberBet = 0;
        uint256 quinaNumberBet = 0;
        uint256 dezenaNumberBet = 0; 
        uint256 centenaNumberBet = 0;

        Player memory newPlayer = Player({
            numberSelected: numberBet,
            amountBet: valueBet,
            groupSelected: groupNumberBet,
            duqueSelected: duqueNumberBet,
            ternoSelected: ternoNumberBet,
            quadraSelected: quadraNumberBet,
            quinaSelected: quinaNumberBet,
            dezenaSelected: dezenaNumberBet,
            centenaSelected: centenaNumberBet
        });
        addressToPlayer[playerBet] = newPlayer;

        totalBet += valueBet;
        players.push(playerBet);
    }

    function betTerno(uint256 numberSelected) public payable {
        require(msg.value >= minimunBet * 10**18, "The bet amount is less than the minimum allowed");
        uint256 valueBet = msg.value;
        address playerBet = msg.sender;

        uint256 numberBet = 0; 
        uint256 groupNumberBet = numberSelected/10000; // 254712 --> 25 
        uint256 duqueNumberBet = ((numberSelected-((numberSelected/10000)*10000))/100); // 254712 --> 47
        uint256 ternoNumberBet = numberSelected-((numberSelected/100)*100); // 254712 --> 12
        uint256 quadraNumberBet = 0;
        uint256 quinaNumberBet = 0;
        uint256 dezenaNumberBet = 0; 
        uint256 centenaNumberBet = 0;

        Player memory newPlayer = Player({
            numberSelected: numberBet,
            amountBet: valueBet,
            groupSelected: groupNumberBet,
            duqueSelected: duqueNumberBet,
            ternoSelected: ternoNumberBet,
            quadraSelected: quadraNumberBet,
            quinaSelected: quinaNumberBet,
            dezenaSelected: dezenaNumberBet,
            centenaSelected: centenaNumberBet
        });
        addressToPlayer[playerBet] = newPlayer;

        totalBet += valueBet;
        players.push(playerBet);
    }

    function betQuadra(uint256 numberSelected) public payable {
        require(msg.value >= minimunBet * 10**18, "The bet amount is less than the minimum allowed");
        uint256 valueBet = msg.value;
        address playerBet = msg.sender;

        uint256 numberBet = 0; 
        uint256 groupNumberBet = numberSelected/1000000; // 25471284 --> 25 
        uint256 duqueNumberBet = ((numberSelected - ((numberSelected/1000000)*1000000))/10000); // 25471284 --> 47
        uint256 ternoNumberBet = ((numberSelected - ((numberSelected/10000)*10000))/100); // 25471284 --> 12
        uint256 quadraNumberBet = (numberSelected-((numberSelected/100)*100)); // 25471284 --> 84
        uint256 quinaNumberBet = 0;
        uint256 dezenaNumberBet = 0; 
        uint256 centenaNumberBet = 0;

        Player memory newPlayer = Player({
            numberSelected: numberBet,
            amountBet: valueBet,
            groupSelected: groupNumberBet,
            duqueSelected: duqueNumberBet,
            ternoSelected: ternoNumberBet,
            quadraSelected: quadraNumberBet,
            quinaSelected: quinaNumberBet,
            dezenaSelected: dezenaNumberBet,
            centenaSelected: centenaNumberBet
        });
        addressToPlayer[playerBet] = newPlayer;

        totalBet += valueBet;
        players.push(playerBet);
    }


    function betQuina(uint256 numberSelected) public payable {
        require(msg.value >= minimunBet * 10**18, "The bet amount is less than the minimum allowed");
        uint256 valueBet = msg.value;
        address playerBet = msg.sender;

        uint256 numberBet = 0; 
        uint256 groupNumberBet = numberSelected/100000000; // 2547128421 --> 25 
        uint256 duqueNumberBet = ((numberSelected - ((numberSelected/100000000)*100000000))/1000000); // 2547128421 --> 47
        uint256 ternoNumberBet = ((numberSelected - ((numberSelected/1000000)*1000000))/10000); // 2547128421 --> 12
        uint256 quadraNumberBet = ((numberSelected-((numberSelected/10000)*10000))/100); // 2547128421 --> 84
        uint256 quinaNumberBet = (numberSelected-((numberSelected/100)*100)); // 2547128421 --> 21;
        uint256 dezenaNumberBet = 0; 
        uint256 centenaNumberBet = 0;

        Player memory newPlayer = Player({
            numberSelected: numberBet,
            amountBet: valueBet,
            groupSelected: groupNumberBet,
            duqueSelected: duqueNumberBet,
            ternoSelected: ternoNumberBet,
            quadraSelected: quadraNumberBet,
            quinaSelected: quinaNumberBet,
            dezenaSelected: dezenaNumberBet,
            centenaSelected: centenaNumberBet
        });
        addressToPlayer[playerBet] = newPlayer;

        totalBet += valueBet;
        players.push(playerBet);
    }



    function betDezena(uint256 numberSelected) public payable {
        require(msg.value >= minimunBet * 10**18, "The bet amount is less than the minimum allowed");
        uint256 valueBet = msg.value;
        address playerBet = msg.sender;

        uint256 numberBet = 0; 
        uint256 groupNumberBet = 0;
        uint256 duqueNumberBet = 0;
        uint256 ternoNumberBet = 0;
        uint256 quadraNumberBet = 0;
        uint256 quinaNumberBet = 0;
        uint256 dezenaNumberBet = numberSelected; 
        uint256 centenaNumberBet = 0;

        Player memory newPlayer = Player({
            numberSelected: numberBet,
            amountBet: valueBet,
            groupSelected: groupNumberBet,
            duqueSelected: duqueNumberBet,
            ternoSelected: ternoNumberBet,
            quadraSelected: quadraNumberBet,
            quinaSelected: quinaNumberBet,
            dezenaSelected: dezenaNumberBet,
            centenaSelected: centenaNumberBet
        });
        addressToPlayer[playerBet] = newPlayer;

        totalBet += valueBet;
        players.push(playerBet);
    }
    
    
    
    function betCentena(uint256 numberSelected) public payable {
        require(msg.value >= minimunBet * 10**18, "The bet amount is less than the minimum allowed");
        uint256 valueBet = msg.value;
        address playerBet = msg.sender;

        uint256 numberBet = 0; 
        uint256 groupNumberBet = 0;
        uint256 duqueNumberBet = 0; 
        uint256 ternoNumberBet = 0; 
        uint256 quadraNumberBet = 0; 
        uint256 quinaNumberBet = 0; 
        uint256 dezenaNumberBet = 0; 
        uint256 centenaNumberBet = numberSelected; 

        Player memory newPlayer = Player({
            numberSelected: numberBet,
            amountBet: valueBet,
            groupSelected: groupNumberBet,
            duqueSelected: duqueNumberBet,
            ternoSelected: ternoNumberBet,
            quadraSelected: quadraNumberBet,
            quinaSelected: quinaNumberBet,
            dezenaSelected: dezenaNumberBet,
            centenaSelected: centenaNumberBet
        });
        addressToPlayer[playerBet] = newPlayer;

        totalBet += valueBet;
        players.push(playerBet);
    }
    
    
    
    function betMilhar(uint256 numberSelected) public payable {
        require(msg.value >= minimunBet * 10**18, "The bet amount is less than the minimum allowed");
        uint256 valueBet = msg.value;
        address playerBet = msg.sender;

        uint256 numberBet = numberSelected; 
        uint256 groupNumberBet = 0;
        uint256 duqueNumberBet = 0; 
        uint256 ternoNumberBet = 0; 
        uint256 quadraNumberBet = 0; 
        uint256 quinaNumberBet = 0; 
        uint256 dezenaNumberBet = 0; 
        uint256 centenaNumberBet = 0;

        Player memory newPlayer = Player({
            numberSelected: numberBet,
            amountBet: valueBet,
            groupSelected: groupNumberBet,
            duqueSelected: duqueNumberBet,
            ternoSelected: ternoNumberBet,
            quadraSelected: quadraNumberBet,
            quinaSelected: quinaNumberBet,
            dezenaSelected: dezenaNumberBet,
            centenaSelected: centenaNumberBet
        });
        addressToPlayer[playerBet] = newPlayer;

        totalBet += valueBet;
        players.push(playerBet);
    }

    

    // Private Function

    function rewardWinnerGrupo(uint256 number1, uint256 number2, uint256 number3, uint256 number4, uint256 number5) private{
        number1 = number1-((number1/100)*100);
        number2 = number2-((number2/100)*100);
        number3 = number3-((number3/100)*100);
        number4 = number4-((number4/100)*100);
        number5 = number5-((number5/100)*100);
        for(uint256 i = 0; i < players.length; i++){
            address playerAddress = players[i]; 

            if(group(addressToPlayer[playerAddress].groupSelected, number1) == true) {
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 12x
                }
            }
            if((group(addressToPlayer[playerAddress].groupSelected, number2) == true) || (group(addressToPlayer[playerAddress].groupSelected, number3) == true) || (group(addressToPlayer[playerAddress].groupSelected, number4) == true) || (group(addressToPlayer[playerAddress].groupSelected, number5) == true)) {
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 12x
                }
            }
        }
    }

    function rewardWinnerDuque(uint256 number1, uint256 number2, uint256 number3, uint256 number4, uint256 number5) private{
        number1 = number1-((number1/100)*100);
        number2 = number2-((number2/100)*100);
        number3 = number3-((number3/100)*100);
        number4 = number4-((number4/100)*100);
        number5 = number5-((number5/100)*100); 
        for(uint256 i = 0; i < players.length; i++){
            address playerAddress = players[i];
            uint256 countDuque = 0;

            if((((group(addressToPlayer[playerAddress].groupSelected, number1) == true)) && ((group(addressToPlayer[playerAddress].duqueSelected, number2))== true)) || (((group(addressToPlayer[playerAddress].groupSelected, number2) == true)) && ((group(addressToPlayer[playerAddress].duqueSelected, number1))== true))){
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 600x
                }
            } else {
                if ((group(addressToPlayer[playerAddress].groupSelected, number1) == true) || (group(addressToPlayer[playerAddress].groupSelected, number2) == true) || (group(addressToPlayer[playerAddress].groupSelected, number3) == true) || (group(addressToPlayer[playerAddress].groupSelected, number4) == true) || (group(addressToPlayer[playerAddress].groupSelected, number5) == true)){
                    countDuque = countDuque+1;
                }
                if ((group(addressToPlayer[playerAddress].duqueSelected, number1) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number2) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number3) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number4) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number5) == true)){
                    countDuque = countDuque+1;
                }
            }
            if (countDuque == 2) {
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 600x
                }
            }
        }
    }


    function rewardWinnerTerno(uint256 number1, uint256 number2, uint256 number3, uint256 number4, uint256 number5) private{
        number1 = number1-((number1/100)*100);
        number2 = number2-((number2/100)*100);
        number3 = number3-((number3/100)*100);
        number4 = number4-((number4/100)*100);
        number5 = number5-((number5/100)*100); 
        for(uint256 i = 0; i < players.length; i++){
            address playerAddress = players[i];
            uint256 countTerno = 0;

            if((((group(addressToPlayer[playerAddress].groupSelected, number1)) 
            || (group(addressToPlayer[playerAddress].duqueSelected, number1)) 
            || (group(addressToPlayer[playerAddress].ternoSelected, number1))) == true) 
            &&
            (((group(addressToPlayer[playerAddress].groupSelected, number2)) 
            || (group(addressToPlayer[playerAddress].duqueSelected, number2)) 
            || (group(addressToPlayer[playerAddress].ternoSelected, number2))) == true)
            &&
            (((group(addressToPlayer[playerAddress].groupSelected, number3)) 
            || (group(addressToPlayer[playerAddress].duqueSelected, number3)) 
            || (group(addressToPlayer[playerAddress].ternoSelected, number3))) == true)
            ) { 
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 600x
                }
            } else {
                if ((group(addressToPlayer[playerAddress].groupSelected, number1) == true) || (group(addressToPlayer[playerAddress].groupSelected, number2) == true) || (group(addressToPlayer[playerAddress].groupSelected, number3) == true) || (group(addressToPlayer[playerAddress].groupSelected, number4) == true) || (group(addressToPlayer[playerAddress].groupSelected, number5) == true)){
                    countTerno = countTerno+1;
                }
                if ((group(addressToPlayer[playerAddress].duqueSelected, number1) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number2) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number3) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number4) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number5) == true)){
                    countTerno = countTerno+1;
                }
                if ((group(addressToPlayer[playerAddress].ternoSelected, number1) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number2) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number3) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number4) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number5) == true)){
                    countTerno = countTerno+1;
                }
            }
            if (countTerno == 3) {
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 600x
                }
            }
        }
    }

    function rewardWinnerQuadra(uint256 number1, uint256 number2, uint256 number3, uint256 number4, uint256 number5) private{
        number1 = number1-((number1/100)*100);
        number2 = number2-((number2/100)*100);
        number3 = number3-((number3/100)*100);
        number4 = number4-((number4/100)*100);
        number5 = number5-((number5/100)*100);
        for(uint256 i = 0; i < players.length; i++){
            address playerAddress = players[i];
            uint256 countQuadra = 0;

            if((((group(addressToPlayer[playerAddress].groupSelected, number1)) 
            || (group(addressToPlayer[playerAddress].duqueSelected, number1)) 
            || (group(addressToPlayer[playerAddress].ternoSelected, number1))
            || (group(addressToPlayer[playerAddress].quadraSelected, number1))) == true) 
            &&
            (((group(addressToPlayer[playerAddress].groupSelected, number2)) 
            || (group(addressToPlayer[playerAddress].duqueSelected, number2)) 
            || (group(addressToPlayer[playerAddress].ternoSelected, number2))
            || (group(addressToPlayer[playerAddress].quadraSelected, number2))) == true)
            &&
            (((group(addressToPlayer[playerAddress].groupSelected, number3)) 
            || (group(addressToPlayer[playerAddress].duqueSelected, number3)) 
            || (group(addressToPlayer[playerAddress].ternoSelected, number3))
            || (group(addressToPlayer[playerAddress].quadraSelected, number3))) == true)
            &&
            (((group(addressToPlayer[playerAddress].groupSelected, number4)) 
            || (group(addressToPlayer[playerAddress].duqueSelected, number4)) 
            || (group(addressToPlayer[playerAddress].ternoSelected, number4))
            || (group(addressToPlayer[playerAddress].quadraSelected, number4))) == true)
            ) { 
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 600x
                }
            } else {
                if ((group(addressToPlayer[playerAddress].groupSelected, number1) == true) || (group(addressToPlayer[playerAddress].groupSelected, number2) == true) || (group(addressToPlayer[playerAddress].groupSelected, number3) == true) || (group(addressToPlayer[playerAddress].groupSelected, number4) == true) || (group(addressToPlayer[playerAddress].groupSelected, number5) == true)){
                    countQuadra = countQuadra+1;
                }
                if ((group(addressToPlayer[playerAddress].duqueSelected, number1) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number2) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number3) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number4) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number5) == true)){
                    countQuadra = countQuadra+1;
                }
                if ((group(addressToPlayer[playerAddress].ternoSelected, number1) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number2) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number3) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number4) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number5) == true)){
                    countQuadra = countQuadra+1;
                }
                if ((group(addressToPlayer[playerAddress].quadraSelected, number1) == true) || (group(addressToPlayer[playerAddress].quadraSelected, number2) == true) || (group(addressToPlayer[playerAddress].quadraSelected, number3) == true) || (group(addressToPlayer[playerAddress].quadraSelected, number4) == true) || (group(addressToPlayer[playerAddress].quadraSelected, number5) == true)){
                    countQuadra = countQuadra+1;
                }
            }
            if (countQuadra == 4) {
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 600x
                }
            }
        }
    }

    function rewardWinnerQuina(uint256 number1, uint256 number2, uint256 number3, uint256 number4, uint256 number5) private{
        number1 = number1-((number1/100)*100);
        number2 = number2-((number2/100)*100);
        number3 = number3-((number3/100)*100);
        number4 = number4-((number4/100)*100);
        number5 = number5-((number5/100)*100);
        for(uint256 i = 0; i < players.length; i++){
            address playerAddress = players[i];
            uint256 countQuina = 0;

            if ((group(addressToPlayer[playerAddress].groupSelected, number1) == true) || (group(addressToPlayer[playerAddress].groupSelected, number2) == true) || (group(addressToPlayer[playerAddress].groupSelected, number3) == true) || (group(addressToPlayer[playerAddress].groupSelected, number4) == true) || (group(addressToPlayer[playerAddress].groupSelected, number5) == true)){
                countQuina = countQuina+1;
            }
            if ((group(addressToPlayer[playerAddress].duqueSelected, number1) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number2) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number3) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number4) == true) || (group(addressToPlayer[playerAddress].duqueSelected, number5) == true)){
                countQuina = countQuina+1;
            }
            if ((group(addressToPlayer[playerAddress].ternoSelected, number1) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number2) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number3) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number4) == true) || (group(addressToPlayer[playerAddress].ternoSelected, number5) == true)){
                countQuina = countQuina+1;
            }
            if ((group(addressToPlayer[playerAddress].quadraSelected, number1) == true) || (group(addressToPlayer[playerAddress].quadraSelected, number2) == true) || (group(addressToPlayer[playerAddress].quadraSelected, number3) == true) || (group(addressToPlayer[playerAddress].quadraSelected, number4) == true) || (group(addressToPlayer[playerAddress].quadraSelected, number5) == true)){
                countQuina = countQuina+1;
            }
            if ((group(addressToPlayer[playerAddress].quinaSelected, number1) == true) || (group(addressToPlayer[playerAddress].quinaSelected, number2) == true) || (group(addressToPlayer[playerAddress].quinaSelected, number3) == true) || (group(addressToPlayer[playerAddress].quinaSelected, number4) == true) || (group(addressToPlayer[playerAddress].quinaSelected, number5) == true)){
                countQuina = countQuina+1;
            }
    
            if (countQuina == 5) {
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 600x
                }
            }
        }
    }

    function rewardWinnerDezena(uint256 number1, uint256 number2, uint256 number3, uint256 number4, uint256 number5) private{
        number1 = number1-((number1/100)*100);  
        number2 = number2-((number2/100)*100);
        number3 = number3-((number3/100)*100);
        number4 = number4-((number4/100)*100);
        number5 = number5-((number5/100)*100);
        for(uint256 i = 0; i < players.length; i++){
            address playerAddress = players[i];
            uint256 countDezena = 0;

            if ((addressToPlayer[playerAddress].dezenaSelected == number1)) {
                countDezena = countDezena+1;
            }
            if ((addressToPlayer[playerAddress].dezenaSelected == number2)) {
                countDezena = countDezena+1;
            }
            if ((addressToPlayer[playerAddress].dezenaSelected == number3)) {
                countDezena = countDezena+1;
            }
            if ((addressToPlayer[playerAddress].dezenaSelected == number4)) {
                countDezena = countDezena+1;
            }
            if ((addressToPlayer[playerAddress].dezenaSelected == number5)) {
                countDezena = countDezena+1;
            }
            if (countDezena >= 1) {
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 600x
                }
            }
        }
    }

    function rewardWinnerCentena(uint256 number1, uint256 number2, uint256 number3, uint256 number4, uint256 number5) private{
        number1 = number1-((number1/1000)*1000); 
        number2 = number2-((number2/1000)*1000);
        number3 = number3-((number3/1000)*1000);
        number4 = number4-((number4/1000)*1000);
        number5 = number5-((number5/1000)*1000);
        for(uint256 i = 0; i < players.length; i++){
            address playerAddress = players[i];
            uint256 countCentena = 0;

            if ((addressToPlayer[playerAddress].centenaSelected == number1)) {
                countCentena = countCentena+1;
            }
            if ((addressToPlayer[playerAddress].centenaSelected == number2)) {
                countCentena = countCentena+1;
            }
            if ((addressToPlayer[playerAddress].centenaSelected == number3)) {
                countCentena = countCentena+1;
            }
            if ((addressToPlayer[playerAddress].centenaSelected == number4)) {
                countCentena = countCentena+1;
            }
            if ((addressToPlayer[playerAddress].centenaSelected == number5)) {
                countCentena = countCentena+1;
            }
            if (countCentena >= 1) {
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 600x
                }
            }
        }
    }

    function rewardWinnerMilhar(uint256 number1, uint256 number2, uint256 number3, uint256 number4, uint256 number5) private{

        for(uint256 i = 0; i < players.length; i++){
            address playerAddress = players[i];
            uint256 countMilhar = 0;

            if ((addressToPlayer[playerAddress].numberSelected == number1)) {
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 2); //should be 600x
                }
            }
            if ((addressToPlayer[playerAddress].numberSelected == number2)) {
                countMilhar = countMilhar+1;
            }
            if ((addressToPlayer[playerAddress].numberSelected == number3)) {
                countMilhar = countMilhar+1;
            }
            if ((addressToPlayer[playerAddress].numberSelected == number4)) {
                countMilhar = countMilhar+1;
            }
            if ((addressToPlayer[playerAddress].numberSelected == number5)) {
                countMilhar = countMilhar+1;
            }
            if (countMilhar >= 1) {
                address payable payTo = payable(playerAddress); // verificar se precisa dos dois payable
                if(payTo != address(0)) {
                    payTo.transfer(addressToPlayer[playerAddress].amountBet * 1); //should be 600x
                }
            }
        }
    }

    function generateWinnerNumber() private {
        uint256 numberPrize1 = 2047; 
        uint256 numberPrize2 = 1258; 
        uint256 numberPrize3 = 8546; 
        uint256 numberPrize4 = 7236; 
        uint256 numberPrize5 = 6179; 

        //aposta com grupos
        rewardWinnerGrupo(uint256(numberPrize1), uint256(numberPrize2), uint256(numberPrize3),  uint256(numberPrize4), uint256(numberPrize5));
        rewardWinnerDuque(uint256(numberPrize1), uint256(numberPrize2), uint256(numberPrize3),  uint256(numberPrize4), uint256(numberPrize5));
        rewardWinnerTerno(uint256(numberPrize1), uint256(numberPrize2), uint256(numberPrize3),  uint256(numberPrize4), uint256(numberPrize5));
        rewardWinnerQuadra(uint256(numberPrize1), uint256(numberPrize2), uint256(numberPrize3),  uint256(numberPrize4), uint256(numberPrize5));
        rewardWinnerQuina(uint256(numberPrize1), uint256(numberPrize2), uint256(numberPrize3),  uint256(numberPrize4), uint256(numberPrize5));

        //aposta com numeros
        rewardWinnerDezena(uint256(numberPrize1), uint256(numberPrize2), uint256(numberPrize3),  uint256(numberPrize4), uint256(numberPrize5));
        rewardWinnerCentena(uint256(numberPrize1), uint256(numberPrize2), uint256(numberPrize3),  uint256(numberPrize4), uint256(numberPrize5));
        rewardWinnerMilhar(uint256(numberPrize1), uint256(numberPrize2), uint256(numberPrize3),  uint256(numberPrize4), uint256(numberPrize5));
    }

    function generateWinner() public isOwner{
        generateWinnerNumber();
    }

    function group(uint256 groupNumber, uint256 number) private returns(bool){
        if (groupNumber == 31) {
            if ((number == 1) || (number == 2) || (number == 3) || (number == 4)) {
                return(true);
            }
        }
        if (groupNumber == 32) {
            if ((number == 5) || (number == 6) || (number == 7) || (number == 8)) {
                return(true);
            }
        }
        if (groupNumber == 33) {
            if ((number == 9) || (number == 10) || (number == 11) || (number == 12)) {
                return(true);
            }
        }
        if (groupNumber == 34) {
            if ((number == 13) || (number == 14) || (number == 15) || (number == 16)) {
                return(true);
            }
        }
        if (groupNumber == 35) {
            if ((number == 17) || (number == 18) || (number == 19) || (number == 20)) {
                return(true);
            }
        }
        if (groupNumber == 36) {
            if ((number == 21) || (number == 22) || (number == 23) || (number == 24)) {
                return(true);
            }
        }
        if (groupNumber == 37) {
            if ((number == 25) || (number == 26) || (number == 27) || (number == 28)) {
                return(true);
            }
        }
        if (groupNumber == 38) {
            if ((number == 29) || (number == 30) || (number == 31) || (number == 32)) {
                return(true);
            }
        }
        if (groupNumber == 39) {
            if ((number == 33) || (number == 34) || (number == 35) || (number == 36)) {
                return(true);
            }
        }
        if (groupNumber == 10) {
            if ((number == 37) || (number == 38) || (number == 39) || (number == 40)) {
                return(true);
            }
        }
        if (groupNumber == 11) {
            if ((number == 41) || (number == 42) || (number == 43) || (number == 44)) {
                return(true);
            }
        }
        if (groupNumber == 12) {
            if ((number == 45) || (number == 46) || (number == 47) || (number == 48)) {
                return(true);
            }
        }
        if (groupNumber == 13) {
            if ((number == 49) || (number == 50) || (number == 51) || (number == 52)) {
                return(true);
            }
        }
        if (groupNumber == 14) {
            if ((number == 53) || (number == 54) || (number == 55) || (number == 56)) {
                return(true);
            }
        }
        if (groupNumber == 15) {
            if ((number == 57) || (number == 58) || (number == 59) || (number == 60)) {
                return(true);
            }
        }
        if (groupNumber == 16) {
            if ((number == 61) || (number == 62) || (number == 63) || (number == 64)) {
                return(true);
            }
        }
        if (groupNumber == 17) {
            if ((number == 65) || (number == 66) || (number == 67) || (number == 68)) {
                return(true);
            }
        }
        if (groupNumber == 18) {
            if ((number == 69) || (number == 70) || (number == 71) || (number == 72)) {
                return(true);
            }
        }
        if (groupNumber == 19) {
            if ((number == 73) || (number == 74) || (number == 75) || (number == 76)) {
                return(true);
            }
        }
        if (groupNumber == 20) {
            if ((number == 77) || (number == 78) || (number == 79) || (number == 80)) {
                return(true);
            }
        }
        if (groupNumber == 21) {
            if ((number == 81) || (number == 82) || (number == 83) || (number == 84)) {
                return(true);
            }
        }
        if (groupNumber == 22) {
            if ((number == 85) || (number == 86) || (number == 87) || (number == 88)) {
                return(true);
            }
        }
        if (groupNumber == 23) {
            if ((number == 89) || (number == 90) || (number == 91) || (number == 92)) {
                return(true);
            }
        }
        if (groupNumber == 24) {
            if ((number == 93) || (number == 94) || (number == 95) || (number == 96)) {
                return(true);
            }
        }
        if (groupNumber == 25) {
            if ((number == 97) || (number == 98) || (number == 99) || (number == 0)) {
                return(true);
            }
        }
    }
}
