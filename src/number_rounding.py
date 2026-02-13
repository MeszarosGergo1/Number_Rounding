def round_number(number, decimals):
    if(decimals == 0):
        return str(round(number))  
    return str(round(number, decimals))
