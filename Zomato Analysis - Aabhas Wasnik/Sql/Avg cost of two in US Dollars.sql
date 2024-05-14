SELECT Currency,Average_Cost_for_two,
CASE 
WHEN mainz_csv.Currency = 'Indian Rupees(Rs.)' then mainz_csv.Average_Cost_for_two * 0.012 
WHEN mainz_csv.Currency = 'Dollar($)' then mainz_csv.Average_Cost_for_two * 1 
WHEN mainz_csv.Currency = 'Pounds(Œ£)' then mainz_csv.Average_Cost_for_two * 1.24 
WHEN mainz_csv.Currency = 'NewZealand($)' then mainz_csv.Average_Cost_for_two * 0.6 
WHEN mainz_csv.Currency = 'Emirati Diram(AED)' then mainz_csv.Average_Cost_for_two * 0.27
WHEN mainz_csv.Currency = 'Brazilian Real(R$)' then mainz_csv.Average_Cost_for_two * 0.2
WHEN mainz_csv.Currency = 'Turkish Lira(TL)' then mainz_csv.Average_Cost_for_two * 0.05 
WHEN mainz_csv.Currency = 'Qatari Rial(QR)' then mainz_csv.Average_Cost_for_two * 0.27
WHEN mainz_csv.Currency = 'Rand(R)' then mainz_csv.Average_Cost_for_two * 0.051
WHEN mainz_csv.Currency = 'Botswana Pula(P)' then mainz_csv.Average_Cost_for_two * 0.073
WHEN mainz_csv.Currency = 'Sri Lankan Rupee(LKR)' then mainz_csv.Average_Cost_for_two * 0.034
WHEN mainz_csv.Currency = 'Indonesian Rupiah(IDR)' then mainz_csv.Average_Cost_for_two * '0.000067'
END as AVG_COST_IN_US_DOLLARS
From mainz_csv

