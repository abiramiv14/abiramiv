$(document).ready(function () {

    /* =========================
       NAME (alphabets + space, max 15)
    ========================== */
    $(".name").on("input", function () {
        this.value = this.value
            .replace(/[^a-zA-Z ]/g, "") // no numbers/special chars
            .substring(0, 15);          // max 15 chars
    });

    /* =========================
       MOBILE (10 digits, numbers only)
    ========================== */
    $(".mobile").on("input", function () {
        this.value = this.value
            .replace(/[^0-9]/g, "")  // numbers only
            .substring(0, 10);       // max 10 digits
    });

    /* =========================
       EMAIL (valid format, max 25 chars, no numbers after @)
    ========================== */
    $(".email").on("input", function () {
        let val = this.value;

        // max 25 characters
        if (val.length > 25) {
            this.value = val.substring(0, 25);
            return;
        }

        // prevent numbers after @
        if (val.includes("@")) {
            let parts = val.split("@");
            parts[1] = parts[1].replace(/[0-9]/g, "");
            this.value = parts[0] + "@" + parts[1];
        }
    });

    /* =========================
       AGE (1 to 100 only)
    ========================== */
    $(".age").on("input", function () {
        this.value = this.value.replace(/[^0-9]/g, "");

        if (this.value > 100) {
            this.value = 100;
        }
        if (this.value < 1) {
            this.value = "";
        }
    });

    /* =========================
       PASSWORD TOGGLE
    ========================== */
    $(".toggle-password").on("click", function () {
        let input = $("#" + $(this).data("target"));

        if (input.attr("type") === "password") {
            input.attr("type", "text");
            $(this).text("Hide");
        } else {
            input.attr("type", "password");
            $(this).text("Show");
        }
    });
    $(".salary-range").on("input", function () {
    let value = this.value.replace(/[^0-9]/g, "");
    value = value.substring(0, 6);
    let salary = parseInt(value);
    if (salary > 100000) {
        value = "100000";
    }
    this.value = value;
});

$(".semester-range").on("input", function () {
        // Allow only numbers
        let value = this.value.replace(/[^0-9]/g, "");

        // Limit length to 1 digit (1-8)
        value = value.substring(0, 1);

        // Convert to number
        let semester = parseInt(value);

        // Max limit 8
        if (semester > 8) {
            value = "8";
        }

        this.value = value;
    });

    $(".stock-range").on("input", function () {
        // Allow only numbers
        let value = this.value.replace(/[^0-9]/g, "");

        // Limit length to 2 digits
        value = value.substring(0, 2);

        // Convert to number
        let stock = parseInt(value);

        // Max limit 25
        if (stock > 25) {
            value = "25";
        }

        this.value = value;
    });


});

