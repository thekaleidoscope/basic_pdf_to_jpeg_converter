### Bulk PDF to JPEG Converter 

This project is for quick conversion of large count of PDF of similar name (like invoices) to JPEG.

---

#### Usage

Run the shell script with the following syntax:
```
    ./convert_to_jpeg.sh -d <absolute path to directory with all the PDFs> -f <common prefix of file name>
```

Both the parameters are right now manditory, if there is no common prefix enter empty string.

Example useage:
```
./convert_to_jpeg.sh -d ~/feb-invoices/ -f uber
```

---

#### Contribution Quickstart:

This repo requires no additional plugins or add ons and works solely on bash capabilities and sips.

Clone and update the code as seemed fit