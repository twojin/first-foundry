// 为 Bank 合约 编写测试。

// 测试Case 包含：

// 断言检查存款前后用户在 Bank 合约中的存款额更新是否正确。
// 检查存款金额的前 3 名用户是否正确，分别检查有1个、2个、3个、4 个用户， 以及同一个用户多次存款的情况。
// 检查只有管理员可取款，其他人不可以取款。
// 请提交 github 仓库，仓库中需包含运行 case 通过的日志。
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Bank} from "../src/bank/Bank.sol";

contract BankTest is Test {

    Bank bank;

    function setUp() public {
        bank = new Bank();
    }

    function testa() external {
        bank.deposit{value: 1}();
        assertEq(bank.blanceOf(), 1);
    } 
}