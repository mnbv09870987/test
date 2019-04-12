use warnings;
use strict;


	my @a = ( 265, 45, 10, 135 );
	my @b = ( 18, 4,  7,  152 , 15 , 253, 30, 178, 198, 376, 470, 21, 543 );
    my @c = ( 65, 5, 160, 252, 1, 90, 98, 14, );
	my @d = ( 168, 55,  37,  12 , 6, 47, 271 );


	my @as = sort {$a <=> $b} @a;
	my @bs = sort {$a <=> $b} @b;
	my @cs = sort {$a <=> $b} @c;
	my @ds = sort {$a <=> $b} @d;
   
print "\n@as\n@bs\n@cs\n@ds\n\n\n";

	while( @as && @bs && @cs && @ds ) {
		
		if( $as[0] < $bs[0]) {

					if( $as[0] < $cs[0]) {

							  if( $as[0] < $ds[0]) {
			                   print $as[0], " ";
			                   print "ONE_NEXT: --$as[0] == @as    -- $bs[0] == @bs    --$cs[0] == @cs     --$ds[0] == @ds  \n";
						       shift @as;
					           }
						        else {
				                print $ds[0], " ";		
				     	        print "TWO_NEXT: --$as[0] == @as    -- $bs[0] == @bs    --$cs[0] == @cs     --$ds[0] == @ds  \n";
					            shift @ds;
				                } 
			
					   if ( $cs[0] < $ds[0]) {
					   print $cs[0], " ";
					   print "THREE_NEXT: --$as[0] == @as    -- $bs[0] == @bs    --$cs[0] == @cs     --$ds[0] == @ds  \n";
					   shift @cs;
					   }
						 
					    else {
					    print $ds[0], " ";		
					        print "FOUR_NEXT: --$as[0] == @as    -- $bs[0] == @bs    --$cs[0] == @cs     --$ds[0] == @ds  \n";
					    shift @ds;
					    } 
					
                     }
      		if ( $bs[0] < $cs[0]) {

				  if( $bs[0] < $ds[0]) {
				  print $bs[0], " ";
				  print "FIVE_NEXT: --$as[0] == @as    -- $bs[0] == @bs    --$cs[0] == @cs     --$ds[0] == @ds  \n";
				  shift @bs;
				  }
				   else {
				   print $ds[0], " ";		
				   print "SIX_NEXT: --$as[0] == @as    -- $bs[0] == @bs    --$cs[0] == @cs     --$ds[0] == @ds  \n";
				   shift @ds;
				   } 
				}
		    

      
		if ( $cs[0] < $ds[0]) {
		   print $cs[0], " ";
		   print "SEVEN_NEXT: --$as[0] == @as    -- $bs[0] == @bs    --$cs[0] == @cs     --$ds[0] == @ds  \n";
		   shift @cs;
		   }
			 
		    else {
		    print $ds[0], " ";		
		        print "8_NEXT: --$as[0] == @as    -- $bs[0] == @bs    --$cs[0] == @cs     --$ds[0] == @ds  \n";
		    shift @ds;
		    } 
	}
							
					   
}

	print "\n@as\n@bs\n@cs\n@ds\n\n\n";