package Mo;
$VERSION=0.22;
no warnings;my$P=__PACKAGE__.'::';*{$P.import}=sub{import warnings;$^H|=1538;my$p=caller.::;@{$p.ISA}=$P.'_';*{$p.extends}=sub{eval"no $_[0]()";@{$p.ISA}=$_[0]};*{$p.has}=sub{my($n,%a)=@_;my$d=$a{default}||$a{builder};*{$p.$n}=$d?sub{$#_?$_[0]{$n}=$_[1]:!exists$_[0]{$n}?$_[0]{$n}=$_[0]->$d:$_[0]{$n}}:sub{$#_?$_[0]{$n}=$_[1]:$_[0]{$n}}}};*{$P.'_::new'}=sub{$c=shift;my$s=bless{@_},$c;my@c;do{@c=($c.::BUILD,@c)}while($c)=@{$c.::ISA};exists&$_&&&$_($s)for@c;$s}
