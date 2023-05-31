open OUT,">./all.filtered_snps.geno.update.content.filterParent1.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;
($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($P86_11,$P86_12)=split /\//,$P86_1;
($P86_21,$P86_22)=split /\//,$P86_2;
($P86_31,$P86_32)=split /\//,$P86_3;

($P9_11,$P9_12)=split /\//,$P9_1;
($P9_21,$P9_22)=split /\//,$P9_2;
($P9_31,$P9_32)=split /\//,$P9_3;

($PM_11,$PM_12)=split /\//,$PM_1;
($PM_21,$PM_22)=split /\//,$PM_2;
($PM_31,$PM_32)=split /\//,$PM_3;

next if ($P8_11 != $P8_12 || $P8_21 != $P8_22 || $P8_31 != $P8_32 ||$P86_11 != $P86_12|| $P86_21 != $P86_22|| $P86_31 != $P86_32 || $P9_11 != $P9_12 || $P9_21 != $P9_22 ||$P9_31 != $P9_32||$PM_11 != $PM_12 || $PM_21 != $PM_22|| $PM_31 != $PM_32);
print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_1\t$P8_86_2\t$P8_86_3\t$P8_9_1\t$P8_9_2\t$P8_9_3\t$P8_M_1\t$P8_M_2\t$P8_M_3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_1\t$P86_8_2\t$P86_8_3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_1\t$P9_8_2\t$P9_8_3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_1\t$PM_8_2\t$PM_8_3\n";
}
close(CLUSTER); 
close(FASTA);
close(OUT);

open OUT,">./all.filtered_snps.geno.update.content.filterParent2.1.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.filterParent1.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;

($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($P86_11,$P86_12)=split /\//,$P86_1;
($P86_21,$P86_22)=split /\//,$P86_2;
($P86_31,$P86_32)=split /\//,$P86_3;

($P9_11,$P9_12)=split /\//,$P9_1;
($P9_21,$P9_22)=split /\//,$P9_2;
($P9_31,$P9_32)=split /\//,$P9_3;

($PM_11,$PM_12)=split /\//,$PM_1;
($PM_21,$PM_22)=split /\//,$PM_2;
($PM_31,$PM_32)=split /\//,$PM_3;

next if ($P8_1=~/\.\/\./ || $P8_2=~/\.\/\./ || $P8_3=~/\.\/\./ || $P86_1=~/\.\/\./ || $P86_2=~/\.\/\./ || $P86_3=~/\.\/\./ || $P9_1=~/\.\/\./ || $P9_2=~/\.\/\./ || $P9_3=~/\.\/\./ || $PM_1=~/\.\/\./ || $PM_2=~/\.\/\./ || $PM_3=~/\.\/\./);

if ($P8_1 eq $P8_2 && $P8_1 eq $P8_3){
print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_1\t$P8_86_2\t$P8_86_3\t$P8_9_1\t$P8_9_2\t$P8_9_3\t$P8_M_1\t$P8_M_2\t$P8_M_3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_1\t$P86_8_2\t$P86_8_3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_1\t$P9_8_2\t$P9_8_3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_1\t$PM_8_2\t$PM_8_3\n";
}
}
close(CLUSTER); 
close(FASTA);
close(OUT);

open OUT,">./all.filtered_snps.geno.update.content.filterParent2.2.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.filterParent2.1.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;

($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($P86_11,$P86_12)=split /\//,$P86_1;
($P86_21,$P86_22)=split /\//,$P86_2;
($P86_31,$P86_32)=split /\//,$P86_3;

($P9_11,$P9_12)=split /\//,$P9_1;
($P9_21,$P9_22)=split /\//,$P9_2;
($P9_31,$P9_32)=split /\//,$P9_3;

($PM_11,$PM_12)=split /\//,$PM_1;
($PM_21,$PM_22)=split /\//,$PM_2;
($PM_31,$PM_32)=split /\//,$PM_3;

if ($P86_1 eq $P86_2 && $P86_1 eq $P86_3){
print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_1\t$P8_86_2\t$P8_86_3\t$P8_9_1\t$P8_9_2\t$P8_9_3\t$P8_M_1\t$P8_M_2\t$P8_M_3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_1\t$P86_8_2\t$P86_8_3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_1\t$P9_8_2\t$P9_8_3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_1\t$PM_8_2\t$PM_8_3\n";
}
}
close(CLUSTER); 
close(FASTA);
close(OUT);

open OUT,">./all.filtered_snps.geno.update.content.filterParent2.3.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.filterParent2.2.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;

($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($P86_11,$P86_12)=split /\//,$P86_1;
($P86_21,$P86_22)=split /\//,$P86_2;
($P86_31,$P86_32)=split /\//,$P86_3;

($P9_11,$P9_12)=split /\//,$P9_1;
($P9_21,$P9_22)=split /\//,$P9_2;
($P9_31,$P9_32)=split /\//,$P9_3;

($PM_11,$PM_12)=split /\//,$PM_1;
($PM_21,$PM_22)=split /\//,$PM_2;
($PM_31,$PM_32)=split /\//,$PM_3;

if ($P9_1 eq $P9_2 && $P9_1 eq $P9_3){
print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_1\t$P8_86_2\t$P8_86_3\t$P8_9_1\t$P8_9_2\t$P8_9_3\t$P8_M_1\t$P8_M_2\t$P8_M_3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_1\t$P86_8_2\t$P86_8_3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_1\t$P9_8_2\t$P9_8_3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_1\t$PM_8_2\t$PM_8_3\n";
}
}
close(CLUSTER); 
close(FASTA);
close(OUT);

open OUT,">./all.filtered_snps.geno.update.content.filterParent2.4.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.filterParent2.3.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;

($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($P86_11,$P86_12)=split /\//,$P86_1;
($P86_21,$P86_22)=split /\//,$P86_2;
($P86_31,$P86_32)=split /\//,$P86_3;

($P9_11,$P9_12)=split /\//,$P9_1;
($P9_21,$P9_22)=split /\//,$P9_2;
($P9_31,$P9_32)=split /\//,$P9_3;

($PM_11,$PM_12)=split /\//,$PM_1;
($PM_21,$PM_22)=split /\//,$PM_2;
($PM_31,$PM_32)=split /\//,$PM_3;

if ($PM_1 eq $PM_2 && $PM_1 eq $PM_3){
print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_1\t$P8_86_2\t$P8_86_3\t$P8_9_1\t$P8_9_2\t$P8_9_3\t$P8_M_1\t$P8_M_2\t$P8_M_3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_1\t$P86_8_2\t$P86_8_3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_1\t$P9_8_2\t$P9_8_3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_1\t$PM_8_2\t$PM_8_3\n";
}
}
close(CLUSTER); 
close(FASTA);
close(OUT);

open OUT,">./all.filtered_snps.geno.update.content.filterFill3.1.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.filterParent2.4.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;

($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($P8_86_11,$P8_86_12)=split /\//,$P8_86_1;
($P8_86_21,$P8_86_22)=split /\//,$P8_86_2;
($P8_86_31,$P8_86_32)=split /\//,$P8_86_3;

($P86_11,$P86_12)=split /\//,$P86_1;
($P86_21,$P86_22)=split /\//,$P86_2;
($P86_31,$P86_32)=split /\//,$P86_3;

next if (($P8_86_11 != $P8_11 and $P8_86_11 != $P86_11) || ($P8_86_12 != $P8_11 and $P8_86_12 != $P86_11) || ($P8_86_21 != $P8_11 and $P8_86_21 != $P86_11) || ($P8_86_22 != $P8_11 and $P8_86_22 != $P86_11) || ($P8_86_31 != $P8_11 and $P8_86_31 != $P86_11) || ($P8_86_32 != $P8_11 and $P8_86_32 != $P86_11));
print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_1\t$P8_86_2\t$P8_86_3\t$P8_9_1\t$P8_9_2\t$P8_9_3\t$P8_M_1\t$P8_M_2\t$P8_M_3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_1\t$P86_8_2\t$P86_8_3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_1\t$P9_8_2\t$P9_8_3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_1\t$PM_8_2\t$PM_8_3\n";
}
close(CLUSTER); 
close(FASTA);
close(OUT);

open OUT,">./all.filtered_snps.geno.update.content.filterFill3.2.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.filterFill3.1.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;

($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($P86_8_11,$P86_8_12)=split /\//,$P86_8_1;
($P86_8_21,$P86_8_22)=split /\//,$P86_8_2;
($P86_8_31,$P86_8_32)=split /\//,$P86_8_3;

($P86_11,$P86_12)=split /\//,$P86_1;
($P86_21,$P86_22)=split /\//,$P86_2;
($P86_31,$P86_32)=split /\//,$P86_3;

next if (($P86_8_11 != $P8_11 and $P86_8_11 != $P86_11) || ($P86_8_12 != $P8_11 and $P86_8_12 != $P86_11) || ($P86_8_21 != $P8_11 and $P86_8_21 != $P86_11) || ($P86_8_22 != $P8_11 and $P86_8_22 != $P86_11) || ($P86_8_31 != $P8_11 and $P86_8_31 != $P86_11) || ($P86_8_32 != $P8_11 and $P86_8_32 != $P86_11));
print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_1\t$P8_86_2\t$P8_86_3\t$P8_9_1\t$P8_9_2\t$P8_9_3\t$P8_M_1\t$P8_M_2\t$P8_M_3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_1\t$P86_8_2\t$P86_8_3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_1\t$P9_8_2\t$P9_8_3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_1\t$PM_8_2\t$PM_8_3\n";
}
close(CLUSTER); 
close(FASTA);
close(OUT);

open OUT,">./all.filtered_snps.geno.update.content.filterFill3.3.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.filterFill3.2.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;

($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($P8_9_11,$P8_9_12)=split /\//,$P8_9_1;
($P8_9_21,$P8_9_22)=split /\//,$P8_9_2;
($P8_9_31,$P8_9_32)=split /\//,$P8_9_3;

($P9_11,$P9_12)=split /\//,$P9_1;
($P9_21,$P9_22)=split /\//,$P9_2;
($P9_31,$P9_32)=split /\//,$P9_3;

next if (($P8_9_11 != $P8_11 and $P8_9_11 != $P9_11) || ($P8_9_12 != $P8_11 and $P8_9_12 != $P9_11) || ($P8_9_21 != $P8_11 and $P8_9_21 != $P9_11) || ($P8_9_22 != $P8_11 and $P8_9_22 != $P9_11) || ($P8_9_31 != $P8_11 and $P8_9_31 != $P9_11) || ($P8_9_32 != $P8_11 and $P8_9_32 != $P9_11));
print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_1\t$P8_86_2\t$P8_86_3\t$P8_9_1\t$P8_9_2\t$P8_9_3\t$P8_M_1\t$P8_M_2\t$P8_M_3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_1\t$P86_8_2\t$P86_8_3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_1\t$P9_8_2\t$P9_8_3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_1\t$PM_8_2\t$PM_8_3\n";
}
close(CLUSTER); 
close(FASTA);
close(OUT);

open OUT,">./all.filtered_snps.geno.update.content.filterFill3.4.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.filterFill3.3.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;

($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($P9_8_11,$P9_8_12)=split /\//,$P9_8_1;
($P9_8_21,$P9_8_22)=split /\//,$P9_8_2;
($P9_8_31,$P9_8_32)=split /\//,$P9_8_3;

($P9_11,$P9_12)=split /\//,$P9_1;
($P9_21,$P9_22)=split /\//,$P9_2;
($P9_31,$P9_32)=split /\//,$P9_3;

next if (($P9_8_11 != $P8_11 and $P9_8_11 != $P9_11) || ($P9_8_12 != $P8_11 and $P9_8_12 != $P9_11) || ($P9_8_21 != $P8_11 and $P9_8_21 != $P9_11) || ($P9_8_22 != $P8_11 and $P9_8_22 != $P9_11) || ($P9_8_31 != $P8_11 and $P9_8_31 != $P9_11) || ($P9_8_32 != $P8_11 and $P9_8_32 != $P9_11));
print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_1\t$P8_86_2\t$P8_86_3\t$P8_9_1\t$P8_9_2\t$P8_9_3\t$P8_M_1\t$P8_M_2\t$P8_M_3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_1\t$P86_8_2\t$P86_8_3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_1\t$P9_8_2\t$P9_8_3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_1\t$PM_8_2\t$PM_8_3\n";
}
close(CLUSTER); 
close(FASTA);
close(OUT);

open OUT,">./all.filtered_snps.geno.update.content.filterFill3.5.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.filterFill3.4.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;

($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($P8_M_11,$P8_M_12)=split /\//,$P8_M_1;
($P8_M_21,$P8_M_22)=split /\//,$P8_M_2;
($P8_M_31,$P8_M_32)=split /\//,$P8_M_3;

($PM_11,$PM_12)=split /\//,$PM_1;
($PM_21,$PM_22)=split /\//,$PM_2;
($PM_31,$PM_32)=split /\//,$PM_3;
next if (($P8_M_11 != $P8_11 and $P8_M_11 != $PM_11) || ($P8_M_12 != $P8_11 and $P8_M_12 != $PM_11) || ($P8_M_21 != $P8_11 and $P8_M_21 != $PM_11) || ($P8_M_22 != $P8_11 and $P8_M_22 != $PM_11) || ($P8_M_31 != $P8_11 and $P8_M_31 != $PM_11) || ($P8_M_32 != $P8_11 and $P8_M_32 != $PM_11));
print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_1\t$P8_86_2\t$P8_86_3\t$P8_9_1\t$P8_9_2\t$P8_9_3\t$P8_M_1\t$P8_M_2\t$P8_M_3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_1\t$P86_8_2\t$P86_8_3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_1\t$P9_8_2\t$P9_8_3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_1\t$PM_8_2\t$PM_8_3\n";
}
close(CLUSTER); 
close(FASTA);
close(OUT);

open OUT,">./all.filtered_snps.geno.update.content.filterFill3.6.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.filterFill3.5.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;

($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($PM_8_11,$PM_8_12)=split /\//,$PM_8_1;
($PM_8_21,$PM_8_22)=split /\//,$PM_8_2;
($PM_8_31,$PM_8_32)=split /\//,$PM_8_3;

($PM_11,$PM_12)=split /\//,$PM_1;
($PM_21,$PM_22)=split /\//,$PM_2;
($PM_31,$PM_32)=split /\//,$PM_3;
next if (($PM_8_11 != $P8_11 and $PM_8_11 != $PM_11) || ($PM_8_12 != $P8_11 and $PM_8_12 != $PM_11) || ($PM_8_21 != $P8_11 and $PM_8_21 != $PM_11) || ($PM_8_22 != $P8_11 and $PM_8_22 != $PM_11) || ($PM_8_31 != $P8_11 and $PM_8_31 != $PM_11) || ($PM_8_32 != $P8_11 and $PM_8_32 != $PM_11));
print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_1\t$P8_86_2\t$P8_86_3\t$P8_9_1\t$P8_9_2\t$P8_9_3\t$P8_M_1\t$P8_M_2\t$P8_M_3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_1\t$P86_8_2\t$P86_8_3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_1\t$P9_8_2\t$P9_8_3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_1\t$PM_8_2\t$PM_8_3\n";
}
close(CLUSTER); 
close(FASTA);
close(OUT);

open OUT,">./all.filtered_snps.geno.update.content.geno.vcf";
open(FASTA,"./all.filtered_snps.geno.update.content.filterFill3.6.vcf");
while(<FASTA>){
chomp;
my @fields = split /\t/;
my ($CHROM,$POS,$ID,$REF,$ALT,$QUAL,$FILTER,$INFO,$FORMAT,$P8_1,$P8_2,$P8_3,$P8_86_1,$P8_86_2,$P8_86_3,$P8_9_1,$P8_9_2,$P8_9_3,$P8_M_1,$P8_M_2,$P8_M_3,$P86_1,$P86_2,$P86_3,$P86_8_1,$P86_8_2,$P86_8_3,$P9_1,$P9_2,$P9_3,$P9_8_1,$P9_8_2,$P9_8_3,$PM_1,$PM_2,$PM_3,$PM_8_1,$PM_8_2,$PM_8_3) = @fields;

($P8_11,$P8_12)=split /\//,$P8_1;
($P8_21,$P8_22)=split /\//,$P8_2;
($P8_31,$P8_32)=split /\//,$P8_3;

($P8_86_11,$P8_86_12)=split /\//,$P8_86_1;
($P8_86_21,$P8_86_22)=split /\//,$P8_86_2;
($P8_86_31,$P8_86_32)=split /\//,$P8_86_3;

($P86_8_11,$P86_8_12)=split /\//,$P86_8_1;
($P86_8_21,$P86_8_22)=split /\//,$P86_8_2;
($P86_8_31,$P86_8_32)=split /\//,$P86_8_3;

($P86_11,$P86_12)=split /\//,$P86_1;
($P86_21,$P86_22)=split /\//,$P86_2;
($P86_31,$P86_32)=split /\//,$P86_3;

($P8_9_11,$P8_9_12)=split /\//,$P8_9_1;
($P8_9_21,$P8_9_22)=split /\//,$P8_9_2;
($P8_9_31,$P8_9_32)=split /\//,$P8_9_3;

($P9_8_11,$P9_8_12)=split /\//,$P9_8_1;
($P9_8_21,$P9_8_22)=split /\//,$P9_8_2;
($P9_8_31,$P9_8_32)=split /\//,$P9_8_3;

($P9_11,$P9_12)=split /\//,$P9_1;
($P9_21,$P9_22)=split /\//,$P9_2;
($P9_31,$P9_32)=split /\//,$P9_3;

($P8_M_11,$P8_M_12)=split /\//,$P8_M_1;
($P8_M_21,$P8_M_22)=split /\//,$P8_M_2;
($P8_M_31,$P8_M_32)=split /\//,$P8_M_3;

($PM_8_11,$PM_8_12)=split /\//,$PM_8_1;
($PM_8_21,$PM_8_22)=split /\//,$PM_8_2;
($PM_8_31,$PM_8_32)=split /\//,$PM_8_3;

($PM_11,$PM_12)=split /\//,$PM_1;
($PM_21,$PM_22)=split /\//,$PM_2;
($PM_31,$PM_32)=split /\//,$PM_3;

$P8_86_F1 = (($P8_86_11 != $P8_86_12) and ($P8_86_11 eq $P86_11))? "$P8_86_12\/$P8_86_11" : "$P8_86_1";
$P8_86_F2 = (($P8_86_21 != $P8_86_22) and ($P8_86_21 eq $P86_11))? "$P8_86_22\/$P8_86_21" : "$P8_86_2";
$P8_86_F3 = (($P8_86_31 != $P8_86_32) and ($P8_86_31 eq $P86_11))? "$P8_86_32\/$P8_86_31" : "$P8_86_3";

$P86_8_F1 = (($P86_8_11 != $P86_8_12) and ($P86_8_11 eq $P8_11))? "$P86_8_12\/$P86_8_11" : "$P86_8_1";
$P86_8_F2 = (($P86_8_21 != $P86_8_22) and ($P86_8_21 eq $P8_11))? "$P86_8_22\/$P86_8_21" : "$P86_8_2";
$P86_8_F3 = (($P86_8_31 != $P86_8_32) and ($P86_8_31 eq $P8_11))? "$P86_8_32\/$P86_8_31" : "$P86_8_3";

$P8_9_F1 = (($P8_9_11 != $P8_9_12) and ($P8_9_11 eq $P9_11))? "$P8_9_12\/$P8_9_11" : "$P8_9_1";
$P8_9_F2 = (($P8_9_21 != $P8_9_22) and ($P8_9_21 eq $P9_11))? "$P8_9_22\/$P8_9_21" : "$P8_9_2";
$P8_9_F3 = (($P8_9_31 != $P8_9_32) and ($P8_9_31 eq $P9_11))? "$P8_9_32\/$P8_9_31" : "$P8_9_3";

$P9_8_F1 = (($P9_8_11 != $P9_8_12) and ($P9_8_11 eq $P8_11))? "$P9_8_12\/$P9_8_11" : "$P9_8_1";
$P9_8_F2 = (($P9_8_21 != $P9_8_22) and ($P9_8_21 eq $P8_11))? "$P9_8_22\/$P9_8_21" : "$P9_8_2";
$P9_8_F3 = (($P9_8_31 != $P9_8_32) and ($P9_8_31 eq $P8_11))? "$P9_8_32\/$P9_8_31" : "$P9_8_3";

$P8_M_F1 = (($P8_M_11 != $P8_M_12) and ($P8_M_11 eq $PM_11))? "$P8_M_12\/$P8_M_11" : "$P8_M_1";
$P8_M_F2 = (($P8_M_21 != $P8_M_22) and ($P8_M_21 eq $PM_11))? "$P8_M_22\/$P8_M_21" : "$P8_M_2";
$P8_M_F3 = (($P8_M_31 != $P8_M_32) and ($P8_M_31 eq $PM_11))? "$P8_M_32\/$P8_M_31" : "$P8_M_3";

$PM_8_F1 = (($PM_8_11 != $PM_8_12) and ($PM_8_11 eq $P8_11))? "$PM_8_12\/$PM_8_11" : "$PM_8_1";
$PM_8_F2 = (($PM_8_21 != $PM_8_22) and ($PM_8_21 eq $P8_11))? "$PM_8_22\/$PM_8_21" : "$PM_8_2";
$PM_8_F3 = (($PM_8_31 != $PM_8_32) and ($PM_8_31 eq $P8_11))? "$PM_8_32\/$PM_8_31" : "$PM_8_3";

print  OUT "$CHROM\t$POS\t$ID\t$REF\t$ALT\t$QUAL\t$FILTER\t$INFO\t$FORMAT\t$P8_1\t$P8_2\t$P8_3\t$P8_86_F1\t$P8_86_F2\t$P8_86_F3\t$P8_9_F1\t$P8_9_F2\t$P8_9_F3\t$P8_M_F1\t$P8_M_F2\t$P8_M_F3\t$P86_1\t$P86_2\t$P86_3\t$P86_8_F1\t$P86_8_F2\t$P86_8_F3\t$P9_1\t$P9_2\t$P9_3\t$P9_8_F1\t$P9_8_F2\t$P9_8_F3\t$PM_1\t$PM_2\t$PM_3\t$PM_8_F1\t$PM_8_F2\t$PM_8_F3\n";
}
close(CLUSTER); 
close(FASTA);
close(OUT);
