let test = artifacts.require("Test");

contract("Simple Test", async () => {
    it("Event test", async () => {
        let myContract = await test.deployed();

        myContract.contract.events.NameSet((err, res) => {
            console.log(res);
        });
        await myContract.setName("John");
        assert.equal("John", await myContract.name.call());
    });
});
