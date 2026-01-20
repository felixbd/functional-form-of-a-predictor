* final - second dataset ;

* %let mypath=~/mylib;
* libname medinf "&mypath";

/* Datensatz laden */
* data myeloma;
*    set medinf.stanford;
* run;



* Myeloma-Daten (s. SAS Example 89.1);
* study on multiple myeloma in which researchers treated 65 patients with alkylating agents;
* Time represents the survival time in months from diagnosis;
* LogBUN (log(BUN) at diagnosis, BUN=Harnstoff im Blut);
* HGB (hemoglobin at diagnosis);
* Platelet (platelets at diagnosis: 0=abnormal, 1=normal);
* Age (age at diagnosis, in years);
* LogWBC (log(WBC) at diagnosis);
* Frac (fractures at diagnosis: 0=none, 1=present);
* LogPBM (log percentage of plasma cells in bone marrow);
* Protein (proteinuria at diagnosis);
* SCalc (serum calcium at diagnosis);
data Myeloma;
   input Time VStatus LogBUN HGB Platelet Age LogWBC Frac
         LogPBM Protein SCalc;
   label Time='Survival Time'
         VStatus='0=Alive 1=Dead';
   datalines;
 1.25  1  2.2175   9.4  1  67  3.6628  1  1.9542  12  10
 1.25  1  1.9395  12.0  1  38  3.9868  1  1.9542  20  18
 2.00  1  1.5185   9.8  1  81  3.8751  1  2.0000   2  15
 2.00  1  1.7482  11.3  0  75  3.8062  1  1.2553   0  12
 2.00  1  1.3010   5.1  0  57  3.7243  1  2.0000   3   9
 3.00  1  1.5441   6.7  1  46  4.4757  0  1.9345  12  10
 5.00  1  2.2355  10.1  1  50  4.9542  1  1.6628   4   9
 5.00  1  1.6812   6.5  1  74  3.7324  0  1.7324   5   9
 6.00  1  1.3617   9.0  1  77  3.5441  0  1.4624   1   8
 6.00  1  2.1139  10.2  0  70  3.5441  1  1.3617   1   8
 6.00  1  1.1139   9.7  1  60  3.5185  1  1.3979   0  10
 6.00  1  1.4150  10.4  1  67  3.9294  1  1.6902   0   8
 7.00  1  1.9777   9.5  1  48  3.3617  1  1.5682   5  10
 7.00  1  1.0414   5.1  0  61  3.7324  1  2.0000   1  10
 7.00  1  1.1761  11.4  1  53  3.7243  1  1.5185   1  13
 9.00  1  1.7243   8.2  1  55  3.7993  1  1.7404   0  12
11.00  1  1.1139  14.0  1  61  3.8808  1  1.2788   0  10
11.00  1  1.2304  12.0  1  43  3.7709  1  1.1761   1   9
11.00  1  1.3010  13.2  1  65  3.7993  1  1.8195   1  10
11.00  1  1.5682   7.5  1  70  3.8865  0  1.6721   0  12
11.00  1  1.0792   9.6  1  51  3.5051  1  1.9031   0   9
13.00  1  0.7782   5.5  0  60  3.5798  1  1.3979   2  10
14.00  1  1.3979  14.6  1  66  3.7243  1  1.2553   2  10
15.00  1  1.6021  10.6  1  70  3.6902  1  1.4314   0  11
16.00  1  1.3424   9.0  1  48  3.9345  1  2.0000   0  10
16.00  1  1.3222   8.8  1  62  3.6990  1  0.6990  17  10
17.00  1  1.2304  10.0  1  53  3.8808  1  1.4472   4   9
17.00  1  1.5911  11.2  1  68  3.4314  0  1.6128   1  10
18.00  1  1.4472   7.5  1  65  3.5682  0  0.9031   7   8
19.00  1  1.0792  14.4  1  51  3.9191  1  2.0000   6  15
19.00  1  1.2553   7.5  0  60  3.7924  1  1.9294   5   9
24.00  1  1.3010  14.6  1  56  4.0899  1  0.4771   0   9
25.00  1  1.0000  12.4  1  67  3.8195  1  1.6435   0  10
26.00  1  1.2304  11.2  1  49  3.6021  1  2.0000  27  11
32.00  1  1.3222  10.6  1  46  3.6990  1  1.6335   1   9
35.00  1  1.1139   7.0  0  48  3.6532  1  1.1761   4  10
37.00  1  1.6021  11.0  1  63  3.9542  0  1.2041   7   9
41.00  1  1.0000  10.2  1  69  3.4771  1  1.4771   6  10
41.00  1  1.1461   5.0  1  70  3.5185  1  1.3424   0   9
51.00  1  1.5682   7.7  0  74  3.4150  1  1.0414   4  13
52.00  1  1.0000  10.1  1  60  3.8573  1  1.6532   4  10
54.00  1  1.2553   9.0  1  49  3.7243  1  1.6990   2  10
58.00  1  1.2041  12.1  1  42  3.6990  1  1.5798  22  10
66.00  1  1.4472   6.6  1  59  3.7853  1  1.8195   0   9
67.00  1  1.3222  12.8  1  52  3.6435  1  1.0414   1  10
88.00  1  1.1761  10.6  1  47  3.5563  0  1.7559  21   9
89.00  1  1.3222  14.0  1  63  3.6532  1  1.6232   1   9
92.00  1  1.4314  11.0  1  58  4.0755  1  1.4150   4  11
 4.00  0  1.9542  10.2  1  59  4.0453  0  0.7782  12  10
 4.00  0  1.9243  10.0  1  49  3.9590  0  1.6232   0  13
 7.00  0  1.1139  12.4  1  48  3.7993  1  1.8573   0  10
 7.00  0  1.5315  10.2  1  81  3.5911  0  1.8808   0  11
 8.00  0  1.0792   9.9  1  57  3.8325  1  1.6532   0   8
12.00  0  1.1461  11.6  1  46  3.6435  0  1.1461   0   7
11.00  0  1.6128  14.0  1  60  3.7324  1  1.8451   3   9
12.00  0  1.3979   8.8  1  66  3.8388  1  1.3617   0   9
13.00  0  1.6628   4.9  0  71  3.6435  0  1.7924   0   9
16.00  0  1.1461  13.0  1  55  3.8573  0  0.9031   0   9
19.00  0  1.3222  13.0  1  59  3.7709  1  2.0000   1  10
19.00  0  1.3222  10.8  1  69  3.8808  1  1.5185   0  10
28.00  0  1.2304   7.3  1  82  3.7482  1  1.6721   0   9
41.00  0  1.7559  12.8  1  72  3.7243  1  1.4472   1   9
53.00  0  1.1139  12.0  1  66  3.6128  1  2.0000   1  11
57.00  0  1.2553  12.5  1  66  3.9685  0  1.9542   0  11
77.00  0  1.0792  14.0  1  60  3.6812  0  0.9542   0  12
;
run;


/* Basis-Modell mit Linearitaetsannahme
 * und Ueberpruefung mittels ASSESS von
 * SCalc-Wirkung */
proc phreg data=Myeloma;  
   model Time*VStatus(0) = SCalc / rl;
   assess var=(SCalc) / resample;
run;


/* Tet for cubic */


/* Erzeugung polynomialer Terme fuer SCalc */
data Myeloma_poly3;
   set Myeloma;
   SCalc_sq = SCalc*SCalc;
   SCalc_cu = SCalc*SCalc*SCalc;
run;


/*
data Myeloma_poly3;
   set Myeloma;
   SCalc_c = SCalc - mean(SCalc);
   SCalc_sq = SCalc_c**2;
   SCalc_cu = SCalc_c**3;
run;
*/



/* Cox-Modell mit kubischer Polynomialform von SCalc */
proc phreg data=Myeloma_poly3;
   model Time*VStatus(0) = SCalc SCalc_sq SCalc_cu / rl;
run;



/* Der kubische Term `SCalc_cu` ist klar nicht signifikant.​
 *
 * Analysis of Maximum Likelihood Estimates: Pr > ChiSq
 *
 * 0.5074
 */


/* Test for quadratic */


data Myeloma_poly2;
   set Myeloma;
   SCalc_sq = SCalc*SCalc;
run;


/* Test auf quadratischen Effekt */
proc phreg data=Myeloma_poly2;
   model Time*VStatus(0) = SCalc SCalc_sq / rl;
run;

/*
 * p Wert von `SCalc_sq` ist der direkte Test auf Nicht Linearität:​
 * Wenn age_sq signifikant ist, ist der Effekt von age nicht linear.​
 */


* Kategorisierung und grafische Exploration;

/*
 * - Parallele Kurven mit zunehmender Trennung
 *    sprechen für linearen Effekt.​
 *
 * - Kreuzungen oder nicht monotone Abstände
 *    sprechen für Nicht Linearität.​
 */

/* Erzeuge SCalc-Quantile */
proc rank data=Myeloma
          out=Myeloma_cat
          groups=3;
   var SCalc;
   ranks SCalc_q;
run;


/* Label der Quantil-Gruppen */
data Myeloma_cat;
   set Myeloma_cat;
   SCalc_cat = SCalc_q + 1; /* Gruppen = 1, 2, 3 */
run;

/* Kaplan Meier Kurven nach SCalc-Quantilen */
proc lifetest data=Myeloma_cat plots=survival;
   time Time*VStatus(0);
   strata SCalc_cat;
run;

/*
	In the ‘product limit survival estimate’ plot of the three quantiles,
	you can also clearly see that the middle quantile lies outside,
	meaning that the order does not correspond to the quantiles.
	This also indicates non-linearity.
*/


* Splines mit effect ;
proc phreg data=Myeloma;
   effect SCalc_spline = spline(SCalc / naturalcubic);
   model Time*VStatus(0) = SCalc_spline / rl;
run;


/*
	Type 3 Tests
	Effect 	DF 	Wald Chi-Square 	Pr > ChiSq
	SCalc_spline 	2 	11.1966 	0.0037

	Der nicht lineare Alterseffekt ist insgesamt hochsignifikant.​

	Die statistischen Befunde legen nahe, dass das `SCalc` einen relevanten, nichtlinearen Einfluss auf das Hazard hat.​
*/




/* SCalc-Raster */
data SCalc_grid;
    do SCalc = 7 to 18 by 0.5;
        output;
    end;
run;

* Choose distinct knot locations manually.;
* For SCalc, clinically and empirically reasonable knots are: 8 10 12 14;
proc phreg data=Myeloma;
   effect SCalc_spline = spline(
      SCalc / naturalcubic); * details knotmethod=list(8 10 12 14) );

   model Time*VStatus(0) = SCalc_spline;
   
   hazardratio SCalc / at(SCalc=0 2 5 7 10 15 18);

   baseline out=pred_spline
      covariates=SCalc_grid
      xbeta=xb;
run;






data SCalc_grid;
    do SCalc = 7 to 18 by 0.5;
        SCalc_jit = SCalc; /* keine Zufallsrauschen im Grid */
        output;
    end;
run;


data Myeloma_jit;
    set Myeloma;
    SCalc_jit = SCalc + rannor(12345) * 1e-6;
run;

proc phreg data=Myeloma_jit;
    effect SCalc_spline = spline(
        SCalc_jit / naturalcubic); * knotmethod=percentiles(5));

    model Time*VStatus(0) = SCalc_spline;
    

    baseline out=pred_spline
        covariates=SCalc_grid
        xbeta=xb;
run;


/*

* Grid mit SCalc und SCalc_jit;
data SCalc_grid;
    do SCalc = 7 to 18 by 0.5;
        SCalc_jit = SCalc;  * ohne Rauschen im Grid;
        output;
    end;
run;

* Modell mit Jitter, um Knotenduplikate zu vermeiden;
data Myeloma_jit;
    set Myeloma;
    SCalc_jit = SCalc + rannor(12345) * 1e-6;
run;

proc phreg data=Myeloma_jit;
    effect SCalc_spline = spline(
        SCalc_jit / naturalcubic knotmethod=percentiles(5)
    );

    model Time*VStatus(0) = SCalc_spline;

    baseline out=pred_spline
        covariates=SCalc_grid
        xbeta=xb;
run;

*/


/*

proc sql;
    create table hr_table as
    select SCalc,
           exp(xb - (select xb from pred_spline where SCalc = 10)) as HR
    from pred_spline
    order by SCalc;
quit;

*/


proc sql;
    create table hr_table as
    select a.SCalc,
           exp(a.xb - b.xb) as HR
    from pred_spline as a
         inner join pred_spline as b
             on b.SCalc = 10
    order by a.SCalc;
quit;





proc sgplot data=hr_table;
    series x=SCalc y=HR / markers;
    refline 1 / axis=y;
    xaxis label="SCalc (serum calcium)";
    yaxis label="Hazard Ratio (ref = SCalc 10)";
run;

