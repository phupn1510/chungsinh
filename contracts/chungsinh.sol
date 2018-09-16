pragma solidity 0.4.24;
//Made by PHAN NHAT PHU
contract Chungsinh {
  address public owner;
 uint conID;
 event Khoitaochungsinh(string tencon, uint amount,uint conID);

  struct thongtinChungsinh  {
   string  nguoinuoiduong_me;
   uint  namsinh;
   string ngaysinhcon;
   string tencon;
  }
 uint numCon;
 mapping (uint => thongtinChungsinh) thongtin;


constructor() public {
      owner = msg.sender;
    //  doitac.push(msg.sender);
    //    NoidungInfo[msg.sender].structArray = noidung;
   //     thongtin[msg.sender].hoten = ten;
     //   thongtin[msg.sender].tuoi = sotuoi;
   
    //   emit Khoitaochungsinh(string  tencon, uint ngaysinhcon,uint con_ID);
   }
   
function newChungsinh(string nguoinuoiduong_me,uint namsinh,string ngaysinhcoin, string tencon) public returns (uint conID){
 conID=numCon++;
 emit Khoitaochungsinh(tencon,namsinh,conID);
 thongtin[conID] = thongtinChungsinh(nguoinuoiduong_me,namsinh,ngaysinhcoin,tencon);
}

//function docChungsinh(unit conID) public return (uint conID)
//{


//}

//function suaChungsinh(unit conID,string nguoinuoiduong_me,uint namsinh,string ngaysinhcoin, string tencon)
//{
    


//}
//function SetDoitacB(address partnerB,string ten,uint sotuoi) public {
//  doitac.push(partnerB);
//thongtin[partnerB].hoten = ten;
//        thongtin[partnerB].tuoi = sotuoi;
//}

//function() public payable {}

function kill() public {
      if(msg.sender == owner) selfdestruct(owner);
   }
//function getNoidung() public constant returns(string) {
 //  
 // return NoidungInfo[owner].structArray ;

//}
//function getDoitac(uint so) public constant returns(address,string,uint)  {
   
// if ( so == 1 ) {
 // return (doitac[0],thongtin[owner].hoten,thongtin[owner].tuoi);
//  }
 // else if ( so == 2 )
 // {
  //  return (doitac[1],thongtin[doitac[1]].hoten,thongtin[doitac[1]].tuoi);
 // }
//}

//function kyketB(string ten,uint sotuoi) public payable {
//require(counthopdong < 2);
//require(msg.value >= 1);
//require (msg.sender != owner);
//SetDoitacB(msg.sender,ten,sotuoi);
//counthopdong++;
//}
//function countstatus() public constant returns(uint){
 //  return counthopdong;
//}
//function statusKyket() public constant returns(bool){
// if (counthopdong == 2)
//{
//   return true ;
//}
//else return false;
//}
}


