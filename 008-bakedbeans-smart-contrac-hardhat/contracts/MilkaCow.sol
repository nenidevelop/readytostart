/*
   _____  .__.__   __                                
  /     \ |__|  | |  | _______    ____  ______  _  __
 /  \ /  \|  |  | |  |/ /\__  \ _/ ___\/  _ \ \/ \/ /
/    Y    \  |  |_|    <  / __ \\  \__(  <_> )     / 
\____|__  /__|____/__|_ \(____  /\___  >____/ \/\_/  
        \/             \/     \/     \/                                                                                                                                                                          
*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;
import "../node_modules/hardhat/console.sol";


library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

contract Ownable is Context {
    address private _owner;
    address public _marketing;
    address public _team;
    address public _web;
    address public _treasury;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
        _marketing = 0x0107F5A682995c50f609b9b84368a7987c8c3921;
        _team = 0x0107F5A682995c50f609b9b84368a7987c8c3921;
        _web = 0x0107F5A682995c50f609b9b84368a7987c8c3921;
        _treasury = 0x0107F5A682995c50f609b9b84368a7987c8c3921;
        
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(_owner == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    function _transferOwnership(address newOwner) internal {
        require(
            newOwner != address(0),
            "Ownable: new owner is the zero address"
        );
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

contract MilkaCow is Context, Ownable {
    using SafeMath for uint256;

    uint256 private MILK_TO_DRINK_1LACTO = 1080000;
    uint256 private PSN = 10000;
    uint256 private PSNH = 5000;
    uint256 private devFeeVal = 2;
    uint256 private marketingFeeVal = 2;
    uint256 private webFeeVal = 2;
    uint256 private teamFeeVal = 2;
    uint256 private treasuryFeeVal = 2;
    bool private initialized = false;
    address payable private recAdd;
    address payable private marketingAdd;
    address payable private teamAdd;
    address payable private webAdd;
    address payable private treasuryAdd;
    mapping(address => uint256) private milkaCow;
    mapping(address => uint256) private claimedMilk;
    mapping(address => uint256) private lastDrink;
    mapping(address => address) private referrals;
    uint256 private marketMilk;

    constructor() {
        recAdd = payable(msg.sender);
        marketingAdd = payable(_marketing);
        teamAdd = payable(_team);
        webAdd = payable(_web);
        treasuryAdd = payable(_treasury);
    }

    function drinkMilk(address ref) public {
        require(initialized);

        if (ref == msg.sender) {
            ref = address(0);
        }

        if (
            referrals[msg.sender] == address(0) &&
            referrals[msg.sender] != msg.sender
        ) {
            referrals[msg.sender] = ref;
        }

        uint256 milkMilked = getMyMilk(msg.sender);
        uint256 newLactos = SafeMath.div(milkMilked, MILK_TO_DRINK_1LACTO);
        milkaCow[msg.sender] = SafeMath.add(
            milkaCow[msg.sender],
            newLactos
        );
        claimedMilk[msg.sender] = 0;
        lastDrink[msg.sender] = block.timestamp;
        claimedMilk[referrals[msg.sender]] = SafeMath.add(
            claimedMilk[referrals[msg.sender]],
            SafeMath.div(milkMilked, 8)
        );
        marketMilk = SafeMath.add(marketMilk, SafeMath.div(milkMilked, 5));
    }

    function sellMilk() public {
        require(initialized);
        uint256 hasMilk = getMyMilk(msg.sender);
        uint256 milkValue = calculateMilkSell(hasMilk);
        uint256 fee1 = devFee(milkValue);
        uint256 fee2 = marketingFee(milkValue);
        uint256 fee3 = webFee(milkValue);
        uint256 fee4 = teamFee(milkValue);
        uint256 fee5 = treasuryFee(milkValue);
        claimedMilk[msg.sender] = 0;
        lastDrink[msg.sender] = block.timestamp;
        marketMilk = SafeMath.add(marketMilk, hasMilk);
        recAdd.transfer(fee1);
        marketingAdd.transfer(fee2);
        teamAdd.transfer(fee3);
        webAdd.transfer(fee4);
        treasuryAdd.transfer(fee5);
        payable(msg.sender).transfer(SafeMath.sub(milkValue, fee1));
    }

    function milkRewards(address adr) public view returns (uint256) {
        uint256 hasMilk = getMyMilk(adr);
        uint256 milkValue = calculateMilkSell(hasMilk);
        return milkValue;
    }

    function buyMilk(address ref) public payable {
        require(initialized);
        uint256 milkBought = calculateMilkBuy(
            msg.value,
            SafeMath.sub(address(this).balance, msg.value)
        );
        milkBought = SafeMath.sub(milkBought, devFee(milkBought));
        milkBought = SafeMath.sub(milkBought, marketingFee(milkBought));
        milkBought = SafeMath.sub(milkBought, webFee(milkBought));
        milkBought = SafeMath.sub(milkBought, teamFee(milkBought));
        milkBought = SafeMath.sub(milkBought, treasuryFee(milkBought));

        uint256 fee1 = devFee(msg.value);
        uint256 fee2 = marketingFee(msg.value);
        uint256 fee3 = webFee(msg.value);
        uint256 fee4 = teamFee(msg.value);
        uint256 fee5 = treasuryFee(msg.value);
        recAdd.transfer(fee1);
        marketingAdd.transfer(fee2);
        teamAdd.transfer(fee3);
        webAdd.transfer(fee4);
        treasuryAdd.transfer(fee5);

        claimedMilk[msg.sender] = SafeMath.add(
            claimedMilk[msg.sender],
            milkBought
        );
        drinkMilk(ref);
    }

    function calculateTrade(
        uint256 rt,
        uint256 rs,
        uint256 bs
    ) private view returns (uint256) {
        return
            SafeMath.div(
                SafeMath.mul(PSN, bs),
                SafeMath.add(
                    PSNH,
                    SafeMath.div(
                        SafeMath.add(
                            SafeMath.mul(PSN, rs),
                            SafeMath.mul(PSNH, rt)
                        ),
                        rt
                    )
                )
            );
    }

    function calculateMilkSell(uint256 milk) public view returns (uint256) {
        return calculateTrade(milk, marketMilk, address(this).balance);
    }

    function calculateMilkBuy(uint256 eth, uint256 contractBalance)
        public
        view
        returns (uint256)
    {
        return calculateTrade(eth, contractBalance, marketMilk);
    }

    function calculateMilkBuySimple(uint256 eth) public view returns (uint256) {
        return calculateMilkBuy(eth, address(this).balance);
    }

    function devFee(uint256 amount) private view returns (uint256) {
        return SafeMath.div(SafeMath.mul(amount, devFeeVal), 100);
    }

    function marketingFee(uint256 amount) private view returns (uint256) {
        return SafeMath.div(SafeMath.mul(amount, marketingFeeVal), 100);
    }

    function webFee(uint256 amount) private view returns (uint256) {
        return SafeMath.div(SafeMath.mul(amount, webFeeVal), 100);
    }

    function teamFee(uint256 amount) private view returns (uint256) {
        return SafeMath.div(SafeMath.mul(amount, teamFeeVal), 100);
    }

    function treasuryFee(uint256 amount) private view returns (uint256) {
        return SafeMath.div(SafeMath.mul(amount, treasuryFeeVal), 100);
    }

    function openMilk() public payable onlyOwner {
        require(marketMilk == 0);
        initialized = true;
        marketMilk = 108000000000;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function getMyLactos(address adr) public view returns (uint256) {
        return milkaCow[adr];
    }

    function getMyMilk(address adr) public view returns (uint256) {
        return SafeMath.add(claimedMilk[adr], getMilkSinceLastDrink(adr));
    }

    function getMilkSinceLastDrink(address adr) public view returns (uint256) {
        uint256 secondsPassed = min(
            MILK_TO_DRINK_1LACTO,
            SafeMath.sub(block.timestamp, lastDrink[adr])
        );
        return SafeMath.mul(secondsPassed, milkaCow[adr]);
    }

    function min(uint256 a, uint256 b) private pure returns (uint256) {
        return a < b ? a : b;
    }
}