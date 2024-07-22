function mpc = case141
%CASE141  Power flow data for 141 bus distribution system
%   Please see CASEFORMAT for details on the case file format.
%
%   Data from ...
%       H.M. Khodr, F.G. Olsina, P.M. De Oliveira-De Jesus, J.M. Yusta,
%       Maximum savings approach for location and sizing of capacitors in
%       distribution systems, Electric Power Systems Research, Volume 78,
%       Issue 7, July 2008, Pages 1192-1203
%       https://doi.org/10.1016/j.epsr.2007.10.002
%
%   Covers "a zone of the metropolitan area of Caracas" in Venezuela.
%
%   The data in the paper includes numerous typos, including the following
%   which were corrected based on the one-line diagram.
%       - branch 17--10 should be 17--18
%       - branch 16--19 should be 18--19
%       - branch 27--23 should be 27--28
%       - branch 27--26 should be 25--26
%       - branch 67--63 should be 67--68
%       - branch 66--70 should be 55--70
%       - branch 16--137 should be 18--137
%
%   Modifications:
%     v2 - 2020-10-01 (RDZ)
%         - Specify branch parameters in Ohms, loads in kVA.
%         - Added code for explicit conversion of loads from kVA
%           to MVA, then from MVA and power factor to MW and MVAr, and
%           of branch parameters from Ohms to p.u.
%         - Doubled load at bus 53 (100 kVA instead of 50 kVA)
%         - Set BASE_KV to 12.47 kV (instead of 12.5)
%         - Branch order as in paper (rather than sorted by from bus)
%         - Slack bus Vmin = Vmax = 1.0
%         - Gen Qmin, Qmax, Pmax magnitudes set to 100 (instead of 999)
%         - Branch flow limits disabled, i.e. set to 0 (instead of 999)
%         - Add gen cost.


%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 10;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [ %% (Pd is specified in kVA here for 0.85 power factor, converted to MW & MVAr below)
	1	3	0	0	0	0	1	1	0	12.47	1	1	1;
	2	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	3	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	4	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	5	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	6	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	7	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	8	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	9	1	10	0	0	0	1	1	0	12.47	1	1.1	0.9;
	10	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	11	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	12	1	25	0	0	0	1	1	0	12.47	1	1.1	0.9;
	13	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	14	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	15	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	16	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	17	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	18	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	19	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	20	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	21	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	22	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	23	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	24	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	25	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	26	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	27	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	28	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	29	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	30	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	31	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	32	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	33	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	34	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	35	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	36	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	37	1	50	0	0	0	1	1	0	12.47	1	1.1	0.9;
	38	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	39	1	20	0	0	0	1	1	0	12.47	1	1.1	0.9;
	40	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	41	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	42	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	43	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	44	1	50	0	0	0	1	1	0	12.47	1	1.1	0.9;
	45	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	46	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	47	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	48	1	125	0	0	0	1	1	0	12.47	1	1.1	0.9;
	49	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	50	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	51	1	125	0	0	0	1	1	0	12.47	1	1.1	0.9;
	52	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	53	1	100	0	0	0	1	1	0	12.47	1	1.1	0.9;
	54	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	55	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	56	1	25	0	0	0	1	1	0	12.47	1	1.1	0.9;
	57	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	58	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	59	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	60	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	61	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	62	1	200	0	0	0	1	1	0	12.47	1	1.1	0.9;
	63	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	64	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	65	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	66	1	225	0	0	0	1	1	0	12.47	1	1.1	0.9;
	67	1	50	0	0	0	1	1	0	12.47	1	1.1	0.9;
	68	1	100	0	0	0	1	1	0	12.47	1	1.1	0.9;
	69	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	70	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	71	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	72	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	73	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	74	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	75	1	45	0	0	0	1	1	0	12.47	1	1.1	0.9;
	76	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	77	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	78	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	79	1	502.5	0	0	0	1	1	0	12.47	1	1.1	0.9;
	80	1	750	0	0	0	1	1	0	12.47	1	1.1	0.9;
	81	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	82	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	83	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	84	1	225	0	0	0	1	1	0	12.47	1	1.1	0.9;
	85	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	86	1	500	0	0	0	1	1	0	12.47	1	1.1	0.9;
	87	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	88	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	89	1	65	0	0	0	1	1	0	12.47	1	1.1	0.9;
	90	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	91	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	92	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	93	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	94	1	110	0	0	0	1	1	0	12.47	1	1.1	0.9;
	95	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	96	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	97	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	98	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	99	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	100	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	101	1	15	0	0	0	1	1	0	12.47	1	1.1	0.9;
	102	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	103	1	125	0	0	0	1	1	0	12.47	1	1.1	0.9;
	104	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	105	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	106	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	107	1	502.5	0	0	0	1	1	0	12.47	1	1.1	0.9;
	108	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	109	1	750	0	0	0	1	1	0	12.47	1	1.1	0.9;
	110	1	750	0	0	0	1	1	0	12.47	1	1.1	0.9;
	111	1	25	0	0	0	1	1	0	12.47	1	1.1	0.9;
	112	1	500	0	0	0	1	1	0	12.47	1	1.1	0.9;
	113	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	114	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	115	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	116	1	300	0	0	0	1	1	0	12.47	1	1.1	0.9;
	117	1	65	0	0	0	1	1	0	12.47	1	1.1	0.9;
	118	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	119	1	110	0	0	0	1	1	0	12.47	1	1.1	0.9;
	120	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	121	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	122	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	123	1	100	0	0	0	1	1	0	12.47	1	1.1	0.9;
	124	1	125	0	0	0	1	1	0	12.47	1	1.1	0.9;
	125	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	126	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	127	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	128	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	129	1	110	0	0	0	1	1	0	12.47	1	1.1	0.9;
	130	1	112.5	0	0	0	1	1	0	12.47	1	1.1	0.9;
	131	1	0	0	0	0	1	1	0	12.47	1	1.1	0.9;
	132	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	133	1	45	0	0	0	1	1	0	12.47	1	1.1	0.9;
	134	1	35	0	0	0	1	1	0	12.47	1	1.1	0.9;
	135	1	25	0	0	0	1	1	0	12.47	1	1.1	0.9;
	136	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
	137	1	55	0	0	0	1	1	0	12.47	1	1.1	0.9;
	138	1	50	0	0	0	1	1	0	12.47	1	1.1	0.9;
	139	1	50	0	0	0	1	1	0	12.47	1	1.1	0.9;
	140	1	150	0	0	0	1	1	0	12.47	1	1.1	0.9;
	141	1	75	0	0	0	1	1	0	12.47	1	1.1	0.9;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0	0	100	-100	1	100	1	100	0	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [  %% (r and x specified in ohms here, converted to p.u. below)
	1	2	0.0577	0.0409	0	0	0	0	0	0	1	-360	360;
	2	3	0.1725	0.1223	0	0	0	0	0	0	1	-360	360;
	3	4	0.0009	0.0006	0	0	0	0	0	0	1	-360	360;
	4	5	0.0092	0.0065	0	0	0	0	0	0	1	-360	360;
	5	6	0.0068	0.0049	0	0	0	0	0	0	1	-360	360;
	6	7	0.0469	0.0625	0	0	0	0	0	0	1	-360	360;
	7	8	0.0736	0.0981	0	0	0	0	0	0	1	-360	360;
	8	9	0.0649	0.0459	0	0	0	0	0	0	1	-360	360;
	9	10	0.0507	0.0359	0	0	0	0	0	0	1	-360	360;
	10	11	0.0116	0.0082	0	0	0	0	0	0	1	-360	360;
	11	12	0.1291	0.0913	0	0	0	0	0	0	1	-360	360;
	12	13	0.1227	0.0866	0	0	0	0	0	0	1	-360	360;
	13	14	0.0488	0.0345	0	0	0	0	0	0	1	-360	360;
	14	15	0.0957	0.0677	0	0	0	0	0	0	1	-360	360;
	15	16	0.086	0.0609	0	0	0	0	0	0	1	-360	360;
	16	17	0.0398	0.0282	0	0	0	0	0	0	1	-360	360;
	17	18	0.0828	0.0566	0	0	0	0	0	0	1	-360	360;
	18	19	0.0186	0.0132	0	0	0	0	0	0	1	-360	360;
	19	20	0.0559	0.0395	0	0	0	0	0	0	1	-360	360;
	20	21	0.0365	0.0246	0	0	0	0	0	0	1	-360	360;
	21	22	0.0573	0.0307	0	0	0	0	0	0	1	-360	360;
	22	23	0.0263	0.0191	0	0	0	0	0	0	1	-360	360;
	23	24	0.0683	0.0497	0	0	0	0	0	0	1	-360	360;
	24	25	0.0398	0.0282	0	0	0	0	0	0	1	-360	360;
	25	26	0.0729	0.053	0	0	0	0	0	0	1	-360	360;
	26	27	0.0335	0.0244	0	0	0	0	0	0	1	-360	360;
	27	28	0.0584	0.0414	0	0	0	0	0	0	1	-360	360;
	28	29	0.0655	0.0463	0	0	0	0	0	0	1	-360	360;
	61	62	0.0411	0.0291	0	0	0	0	0	0	1	-360	360;
	60	63	0.0353	0.025	0	0	0	0	0	0	1	-360	360;
	63	64	0.1047	0.0741	0	0	0	0	0	0	1	-360	360;
	64	65	0.0674	0.0477	0	0	0	0	0	0	1	-360	360;
	65	66	0.0302	0.0214	0	0	0	0	0	0	1	-360	360;
	66	67	0.0456	0.0323	0	0	0	0	0	0	1	-360	360;
	67	68	0.0218	0.0154	0	0	0	0	0	0	1	-360	360;
	70	72	0.07	0.0495	0	0	0	0	0	0	1	-360	360;
	42	73	0.0231	0.0164	0	0	0	0	0	0	1	-360	360;
	73	74	0.003	0.0064	0	0	0	0	0	0	1	-360	360;
	43	75	0.0379	0.0268	0	0	0	0	0	0	1	-360	360;
	44	76	0.0552	0.0391	0	0	0	0	0	0	1	-360	360;
	46	77	0.0516	0.0436	0	0	0	0	0	0	1	-360	360;
	76	78	0.0167	0.011	0	0	0	0	0	0	1	-360	360;
	78	79	0.0415	0.0101	0	0	0	0	0	0	1	-360	360;
	79	80	0.1003	0.0244	0	0	0	0	0	0	1	-360	360;
	79	81	0.1513	0.037	0	0	0	0	0	0	1	-360	360;
	81	82	0.0033	0.0008	0	0	0	0	0	0	1	-360	360;
	47	83	0.0085	0.0062	0	0	0	0	0	0	1	-360	360;
	49	84	0.0517	0.0449	0	0	0	0	0	0	1	-360	360;
	50	85	0.0147	0.0036	0	0	0	0	0	0	1	-360	360;
	85	86	0.0037	0.0016	0	0	0	0	0	0	1	-360	360;
	86	87	0	0.00001	0	0	0	0	0	0	1	-360	360;
	7	88	0.0174	0.0231	0	0	0	0	0	0	1	-360	360;
	88	89	0.0469	0.0625	0	0	0	0	0	0	1	-360	360;
	89	90	0.0299	0.0398	0	0	0	0	0	0	1	-360	360;
	90	91	0.0212	0.0283	0	0	0	0	0	0	1	-360	360;
	91	92	0.0315	0.042	0	0	0	0	0	0	1	-360	360;
	92	93	0.028	0.0373	0	0	0	0	0	0	1	-360	360;
	93	94	0.0206	0.0274	0	0	0	0	0	0	1	-360	360;
	94	95	0.0206	0.0274	0	0	0	0	0	0	1	-360	360;
	89	96	0.0687	0.0486	0	0	0	0	0	0	1	-360	360;
	96	97	0.097	0.0686	0	0	0	0	0	0	1	-360	360;
	97	98	0.0902	0.0196	0	0	0	0	0	0	1	-360	360;
	97	99	0.0033	0.0008	0	0	0	0	0	0	1	-360	360;
	131	132	0.0347	0.0245	0	0	0	0	0	0	1	-360	360;
	131	133	0.092	0.0669	0	0	0	0	0	0	1	-360	360;
	121	134	0.0841	0.0612	0	0	0	0	0	0	1	-360	360;
	16	135	0.0527	0.0373	0	0	0	0	0	0	1	-360	360;
	16	136	0.0302	0.0214	0	0	0	0	0	0	1	-360	360;
	18	137	0.0584	0.0414	0	0	0	0	0	0	1	-360	360;
	23	138	0.0769	0.0559	0	0	0	0	0	0	1	-360	360;
	29	30	0.0342	0.0248	0	0	0	0	0	0	1	-360	360;
	30	31	0.0128	0.0091	0	0	0	0	0	0	1	-360	360;
	31	32	0.0347	0.0245	0	0	0	0	0	0	1	-360	360;
	2	33	0.0443	0.0314	0	0	0	0	0	0	1	-360	360;
	33	34	0.002	0.0009	0	0	0	0	0	0	1	-360	360;
	5	35	0.2274	0.0554	0	0	0	0	0	0	1	-360	360;
	5	36	0.1265	0.1565	0	0	0	0	0	0	1	-360	360;
	6	37	0.0055	0.0073	0	0	0	0	0	0	1	-360	360;
	37	38	0.2036	0.144	0	0	0	0	0	0	1	-360	360;
	38	39	0.0938	0.0663	0	0	0	0	0	0	1	-360	360;
	39	40	0.0347	0.0245	0	0	0	0	0	0	1	-360	360;
	40	41	0.0918	0.065	0	0	0	0	0	0	1	-360	360;
	41	42	0.2318	0.164	0	0	0	0	0	0	1	-360	360;
	42	43	0.1207	0.0854	0	0	0	0	0	0	1	-360	360;
	43	44	0.0443	0.0314	0	0	0	0	0	0	1	-360	360;
	44	45	0.0405	0.0288	0	0	0	0	0	0	1	-360	360;
	45	46	0.016	0.0127	0	0	0	0	0	0	1	-360	360;
	46	47	0.0636	0.045	0	0	0	0	0	0	1	-360	360;
	47	48	0.0417	0.0295	0	0	0	0	0	0	1	-360	360;
	48	49	0.0732	0.051	0	0	0	0	0	0	1	-360	360;
	49	50	0.0828	0.0556	0	0	0	0	0	0	1	-360	360;
	50	51	0.0398	0.0282	0	0	0	0	0	0	1	-360	360;
	51	52	0.0225	0.0159	0	0	0	0	0	0	1	-360	360;
	38	53	0.0841	0.0595	0	0	0	0	0	0	1	-360	360;
	42	54	0.0161	0.0114	0	0	0	0	0	0	1	-360	360;
	54	55	0.0527	0.0373	0	0	0	0	0	0	1	-360	360;
	55	56	0.0893	0.0632	0	0	0	0	0	0	1	-360	360;
	56	57	0.0867	0.0613	0	0	0	0	0	0	1	-360	360;
	57	58	0.0674	0.0477	0	0	0	0	0	0	1	-360	360;
	58	59	0.0469	0.0332	0	0	0	0	0	0	1	-360	360;
	55	60	0.0334	0.0236	0	0	0	0	0	0	1	-360	360;
	60	61	0.0327	0.0232	0	0	0	0	0	0	1	-360	360;
	63	69	0.0366	0.0259	0	0	0	0	0	0	1	-360	360;
	55	70	0.0231	0.0164	0	0	0	0	0	0	1	-360	360;
	70	71	0.012	0.0029	0	0	0	0	0	0	1	-360	360;
	99	100	0.0033	0.0008	0	0	0	0	0	0	1	-360	360;
	91	101	0.0231	0.0164	0	0	0	0	0	0	1	-360	360;
	101	102	0.0578	0.0409	0	0	0	0	0	0	1	-360	360;
	102	103	0.0889	0.0217	0	0	0	0	0	0	1	-360	360;
	103	104	0.0629	0.0153	0	0	0	0	0	0	1	-360	360;
	104	105	0.117	0.0285	0	0	0	0	0	0	1	-360	360;
	104	106	0.0114	0.0026	0	0	0	0	0	0	1	-360	360;
	92	107	0.0849	0.0207	0	0	0	0	0	0	1	-360	360;
	94	108	0.0612	0.026	0	0	0	0	0	0	1	-360	360;
	108	109	0.0452	0.0192	0	0	0	0	0	0	1	-360	360;
	94	110	0.0033	0.0008	0	0	0	0	0	0	1	-360	360;
	7	111	0.0719	0.0509	0	0	0	0	0	0	1	-360	360;
	10	112	0.107	0.0261	0	0	0	0	0	0	1	-360	360;
	11	113	0.0347	0.0245	0	0	0	0	0	0	1	-360	360;
	13	114	0.0623	0.0441	0	0	0	0	0	0	1	-360	360;
	114	115	0.0668	0.0473	0	0	0	0	0	0	1	-360	360;
	115	116	0.004	0.001	0	0	0	0	0	0	1	-360	360;
	14	117	0.0506	0.0366	0	0	0	0	0	0	1	-360	360;
	15	118	0.0161	0.0114	0	0	0	0	0	0	1	-360	360;
	118	119	0.0462	0.0327	0	0	0	0	0	0	1	-360	360;
	119	120	0.0424	0.03	0	0	0	0	0	0	1	-360	360;
	120	121	0.0507	0.0359	0	0	0	0	0	0	1	-360	360;
	121	122	0.0732	0.0518	0	0	0	0	0	0	1	-360	360;
	122	123	0.0584	0.0414	0	0	0	0	0	0	1	-360	360;
	123	124	0.061	0.0432	0	0	0	0	0	0	1	-360	360;
	124	125	0.0783	0.0554	0	0	0	0	0	0	1	-360	360;
	125	126	0.0834	0.0607	0	0	0	0	0	0	1	-360	360;
	126	127	0.0347	0.0245	0	0	0	0	0	0	1	-360	360;
	127	128	0.057	0.042	0	0	0	0	0	0	1	-360	360;
	128	129	0.0585	0.0425	0	0	0	0	0	0	1	-360	360;
	129	130	0.0103	0.0073	0	0	0	0	0	0	1	-360	360;
	119	131	0.0355	0.0253	0	0	0	0	0	0	1	-360	360;
	25	139	0.095	0.0673	0	0	0	0	0	0	1	-360	360;
	30	140	0.0519	0.0377	0	0	0	0	0	0	1	-360	360;
	31	141	0.0584	0.0414	0	0	0	0	0	0	1	-360	360;
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0	20	0;
];


%% convert branch impedances from Ohms to p.u.
%[PQ, PV, REF, NONE, BUS_I, BUS_TYPE, PD, QD, GS, BS, BUS_AREA, VM, ...
%    VA, BASE_KV, ZONE, VMAX, VMIN, LAM_P, LAM_Q, MU_VMAX, MU_VMIN] = idx_bus;
%[F_BUS, T_BUS, BR_R, BR_X, BR_B, RATE_A, RATE_B, RATE_C, ...
%    TAP, SHIFT, BR_STATUS, PF, QF, PT, QT, MU_SF, MU_ST, ...
%    ANGMIN, ANGMAX, MU_ANGMIN, MU_ANGMAX] = idx_brch;
%Vbase = mpc.bus(1, BASE_KV) * 1e3;      %% in Volts
%Sbase = mpc.baseMVA * 1e6;              %% in VA
%mpc.branch(:, [BR_R BR_X]) = mpc.branch(:, [BR_R BR_X]) / (Vbase^2 / Sbase);

%% convert loads from kW to MW
%mpc.bus(:, [PD, QD]) = mpc.bus(:, [PD, QD]) / 1e3;

%% convert loads from MVA to MW and MVAr, using 0.85 power factor
%pf = 0.85;
%mpc.bus(:, QD) = mpc.bus(:, PD) * sin(acos(pf));
%mpc.bus(:, PD) = mpc.bus(:, PD) * pf;
