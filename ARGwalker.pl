#!/usr/bin/perl -w
use strict;
use IRiSapp;

# Estimate Individual Recombination Rate, run in sequence(batch run), version 5.0 with algorithm optimization
# forward walk root path tracing + backward walk recombination frequency estimation 
# Chen Hao, 27 Nov 2013

    my $USAGE = "no input files";
    @ARGV or die $USAGE;
    my $title = $ARGV[0];            # just input file title, without file type and file index
    my $out_title = $ARGV[1];        # the title of output files  

    my $netfile = $filetitle.".net";
    my $agefile = $filetitle."_node_age.txt";
    my $outfile = $out_title."_individual_rate_new.txt";

    # 1.initialize the IRiSapp
    my $ia = IRiSapp->new();

    # 2.run IRiS to get net file
    $ia->run_iris($filetitle);

    # 3.parse the net file: stoe nodes info, edges info, also mark the nodes; 
     #get the age of each node from age file; 
     #get the causal SNP type of each sequences   
    $ia->read_net_data($netfile);  
    $ia->read_age_data($agefile);
     
    # 4.mining the graph to get the path of each individual and renew the root age
    $ia->forward_walk();
    $ia->path_tracing();
    $ia->renew_age();   

    # 5.estimate the recombination volume of each leaf node, pass rate to each individual        
    $ia->recom_vol_estimation();                               
    $ia->indiv_recom_estimation();

    # 7.print out the data into outfile
    $ia->write_data($outfile);
 
