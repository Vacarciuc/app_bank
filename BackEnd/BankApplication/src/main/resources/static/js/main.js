//get transaction type:
const transactType=document.querySelector("#transact-type");

//get transaction forms:
const paymentCard=document.querySelector(".payment-card");
const transferCard=document.querySelector(".transfer-card");
const depositCard=document.querySelector(".deposit-card");
const withdrawCard=document.querySelector(".withdraw-card");

//Check for transaction type event listner:
transactType.addEventListener("change",() =>{
    //Check for transaction type and display form:
    switch(transactType.value){
        case "payment":
            //paymentCard.previousElementSibling.style.display="none"; 
            /**of course you could stay on the previous version and the next element, 
            plus add a line of code for the others, but I decided to have a similarity in the code.....**/
            paymentCard.style.display="block";
            //paymentCard.nextElementSibling.style.display="none";
            transferCard.style.display="none";
            depositCard.style.display="none";
            withdrawCard.style.display="none";
        break;

        case "transfer":
            //transferCard.previousElementSibling.style.display="none";
            transferCard.style.display="block";
            //transferCard.nextElementSibling.style.display="none";
            paymentCard.style.display="none";
            depositCard.style.display="none";
            withdrawCard.style.display="none";
        break;

        case "deposit":
           // depositCard.previousElementSibling.style.display="none";
            depositCard.style.display="block";
           // depositCard.nextElementSibling.style.display="none";
            transferCard.style.display="none";
            paymentCard.style.display="none";
            withdrawCard.style.display="none";
        break;

        case "withdraw":
           // withdrawCard.previousElementSibling.style.display="none";
            withdrawCard.style.display="block";
           // withdrawCard.nextElementSibling.style.display="none";
            transferCard.style.display="none";
            depositCard.style.display="none";
            paymentCard.style.display="none";
        break;
    }
});
//End of check for transaction type and display form: