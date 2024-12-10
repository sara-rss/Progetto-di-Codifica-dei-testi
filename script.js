$(document).ready(function () {
    let VisibilitaPersone = false;
    let VisibilitaOpere = false;
    let VisibilitaLuoghi = false;
    let VisibilitaDate = false;
    let VisibilitaOrg = false;
    let VisibilitaTemi = false;
    let VisibilitaQuote = false;
    let VisibilitaAbbr = false;

    // Bottone persone
    $("#persone").click(function () {
        $(this).toggleClass('button-pressed');
        if (VisibilitaPersone) {
            $(".persName:not(#listPerson .persName)").css("background-color", "transparent");
        } else {
            $(".persName:not(#listPerson .persName)").css("background-color", "#FF6B6B");
        }
        VisibilitaPersone = !VisibilitaPersone;
    });

    // Bottone opere
    $("#opere").click(function () {
        $(this).toggleClass('button-pressed');
        if (VisibilitaOpere) {
            $(".bibl:not(#listBibl .bibl)").css("background-color", "transparent");
        } else {
            $(".bibl:not(#listBibl .bibl)").css("background-color", "#4ECDC4");
        }
        VisibilitaOpere = !VisibilitaOpere;
    });

    // Bottone luoghi
    $("#place").click(function () {
        $(this).toggleClass('button-pressed');
        if (VisibilitaLuoghi) {
            $(".placeName:not(#listPlace .placeName)").css("background-color", "transparent");
        } else {
            $(".placeName:not(#listPlace .placeName)").css("background-color", "#96CEB4");
        }
        VisibilitaLuoghi = !VisibilitaLuoghi;
    });

    // Bottone organizzazioni
    $("#org").click(function () {
        $(this).toggleClass('button-pressed');
        if (VisibilitaOrg) {
            $(".orgName:not(#listOrg .orgName)").css("background-color", "transparent");
        } else {
            $(".orgName:not(#listOrg .orgName)").css("background-color", "#6C5B7B");
        }
        VisibilitaOrg = !VisibilitaOrg;
    });

    // Bottone date
    $("#date").click(function () {
        $(this).toggleClass('button-pressed');
        if (VisibilitaDate) {
            $(".date:not(#indice .date)").css("background-color", "transparent");
        } else {
            $(".date:not(#indice .date)").css("background-color", "#FF9F1C");
        }
        VisibilitaDate = !VisibilitaDate;
    });

    // Bottone verismo
    $("#verismo").click(function () {
        $(this).toggleClass('button-pressed');
        if (VisibilitaTemi) {
            $(".term:not(#glossario .term)").css("background-color", "transparent");
        } else {
            $(".term:not(#glossario .term)").css("background-color", "#45B7D1");
        }
        VisibilitaTemi = !VisibilitaTemi;
    });

    // Bottone citazioni
    $("#quote").click(function () {
        $(this).toggleClass('button-pressed');
        if (VisibilitaQuote) {
            $(".cit:not(#indice .cit)").css("background-color", "transparent");
        } else {
            $(".cit:not(#indice .cit)").css("background-color", "#C06C84");
        }
        VisibilitaQuote = !VisibilitaQuote;
    });

    // Bottone abbr
    $("#abbr").click(function() {
        $(this).toggleClass('button-pressed');
        
        if (VisibilitaAbbr) {
            // Nascondi espansioni e mostra abbreviazioni
            $(".expan").removeClass("active");
            $(".abbr").removeClass("hidden");
        } else {
            // Mostra espansioni e nascondi abbreviazioni
            $(".expan").addClass("active");
            $(".abbr").addClass("hidden");
        }
        VisibilitaAbbr = !VisibilitaAbbr;
    });
});