# Nawaraj Bhattarai, Judith Charlton, Caroline Rudisill, Martin C Gulliford, 2024.

import sys, csv, re

codes = [{"code":"792B.00","system":"readv2"},{"code":"7927100","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-coronary-heart-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-coronary-heart-disease-repair---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-coronary-heart-disease-repair---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-coronary-heart-disease-repair---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
