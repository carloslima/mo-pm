package Mo::chain;my$M="Mo::";
$VERSION=0.26;
*{$M.'chain::e'}=sub{my($P,$e,$o)=@_;$o->{chain}=sub{my($m,$n,%a)=@_;$a{chain}or return$m;sub{$#_?($m->(@_)and return$_[0]):$m->(@_)}}};