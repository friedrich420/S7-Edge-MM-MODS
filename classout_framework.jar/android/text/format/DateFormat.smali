.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CAPITAL_AM_PM:C = 'A'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE:C = 'd'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DAY:C = 'E'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR:C = 'h'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_OF_DAY:C = 'k'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:C = 'm'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MONTH:C = 'M'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final QUOTE:C = '\''
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SECONDS:C = 's'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDALONE_MONTH:C = 'L'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_ZONE:C = 'z'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YEAR:C = 'y'
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .registers 7
    .param p0, "s"    # Landroid/text/SpannableStringBuilder;
    .param p1, "i"    # I
    .param p2, "len"    # I

    .prologue
    const/16 v3, 0x27

    .line 595
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_15

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_15

    .line 596
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 597
    const/4 v1, 0x1

    .line 628
    :cond_14
    :goto_14
    return v1

    .line 600
    :cond_15
    const/4 v1, 0x0

    .line 603
    .local v1, "count":I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 604
    add-int/lit8 p2, p2, -0x1

    .line 606
    :goto_1d
    if-ge p1, p2, :cond_14

    .line 607
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 609
    .local v0, "c":C
    if-ne v0, v3, :cond_43

    .line 611
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_3d

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3d

    .line 613
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 614
    add-int/lit8 p2, p2, -0x1

    .line 615
    add-int/lit8 v1, v1, 0x1

    .line 616
    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 619
    :cond_3d
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_14

    .line 623
    :cond_43
    add-int/lit8 p1, p1, 0x1

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method public static format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inTimeInMillis"    # J

    .prologue
    .line 343
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .registers 12
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Calendar;

    .prologue
    .line 439
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 442
    .local v7, "s":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v5

    .line 444
    .local v5, "localeData":Llibcore/icu/LocaleData;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 446
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v4, :cond_b8

    .line 447
    const/4 v1, 0x1

    .line 448
    .local v1, "count":I
    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 450
    .local v0, "c":I
    const/16 v8, 0x27

    if-ne v0, v8, :cond_27

    .line 451
    invoke-static {v7, v3, v4}, appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    .line 452
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 446
    :cond_25
    :goto_25
    add-int/2addr v3, v1

    goto :goto_12

    .line 456
    :cond_27
    :goto_27
    add-int v8, v3, v1

    if-ge v8, v4, :cond_36

    add-int v8, v3, v1

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v0, :cond_36

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 461
    :cond_36
    sparse-switch v0, :sswitch_data_c8

    .line 515
    const/4 v6, 0x0

    .line 519
    .local v6, "replacement":Ljava/lang/String;
    :goto_3a
    if-eqz v6, :cond_25

    .line 520
    add-int v8, v3, v1

    invoke-virtual {v7, v3, v8, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 521
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 522
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    goto :goto_25

    .line 464
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_4a
    iget-object v8, v5, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x0

    aget-object v6, v8, v9

    .line 465
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3a

    .line 467
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_57
    const/4 v8, 0x5

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 468
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3a

    .line 471
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_61
    const/4 v8, 0x7

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v5, v8, v1, v0}, getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v6

    .line 473
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3a

    .line 477
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_6b
    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 478
    .local v2, "hour":I
    const/16 v8, 0x68

    if-ne v0, v8, :cond_79

    if-nez v2, :cond_79

    .line 479
    const/16 v2, 0xc

    .line 481
    :cond_79
    invoke-static {v2, v1}, zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 483
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3a

    .line 487
    .end local v2    # "hour":I
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_7e
    const/16 v8, 0xb

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 494
    .restart local v2    # "hour":I
    invoke-static {v2, v1}, zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 496
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3a

    .line 499
    .end local v2    # "hour":I
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_89
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v5, v8, v1, v0}, getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;

    move-result-object v6

    .line 501
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3a

    .line 503
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_93
    const/16 v8, 0xc

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 504
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3a

    .line 506
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_9e
    const/16 v8, 0xd

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, zeroPad(II)Ljava/lang/String;

    move-result-object v6

    .line 507
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3a

    .line 509
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_a9
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8, v1}, getYearString(II)Ljava/lang/String;

    move-result-object v6

    .line 510
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3a

    .line 512
    .end local v6    # "replacement":Ljava/lang/String;
    :sswitch_b3
    invoke-static {p1, v1}, getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v6

    .line 513
    .restart local v6    # "replacement":Ljava/lang/String;
    goto :goto_3a

    .line 526
    .end local v0    # "c":I
    .end local v1    # "count":I
    .end local v6    # "replacement":Ljava/lang/String;
    :cond_b8
    instance-of v8, p0, Landroid/text/Spanned;

    if-eqz v8, :cond_c2

    .line 527
    new-instance v8, Landroid/text/SpannedString;

    invoke-direct {v8, v7}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 529
    :goto_c1
    return-object v8

    :cond_c2
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_c1

    .line 461
    nop

    :sswitch_data_c8
    .sparse-switch
        0x41 -> :sswitch_4a
        0x45 -> :sswitch_61
        0x48 -> :sswitch_7e
        0x4b -> :sswitch_6b
        0x4c -> :sswitch_89
        0x4d -> :sswitch_89
        0x61 -> :sswitch_4a
        0x63 -> :sswitch_61
        0x64 -> :sswitch_57
        0x68 -> :sswitch_6b
        0x6b -> :sswitch_7e
        0x6d -> :sswitch_93
        0x73 -> :sswitch_9e
        0x79 -> :sswitch_a9
        0x7a -> :sswitch_b3
    .end sparse-switch
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "inDate"    # Ljava/util/Date;

    .prologue
    .line 354
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 355
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 356
    invoke-static {p0, v0}, format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static formatZoneOffset(II)Ljava/lang/String;
    .registers 8
    .param p0, "offset"    # I
    .param p1, "count"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 571
    div-int/lit16 p0, p0, 0x3e8

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .local v2, "tb":Ljava/lang/StringBuilder;
    if-gez p0, :cond_2a

    .line 575
    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    neg-int p0, p0

    .line 581
    :goto_11
    div-int/lit16 v0, p0, 0xe10

    .line 582
    .local v0, "hours":I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 584
    .local v1, "minutes":I
    invoke-static {v0, v5}, zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-static {v1, v5}, zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 578
    .end local v0    # "hours":I
    .end local v1    # "minutes":I
    :cond_2a
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11
.end method

.method public static getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "skeleton"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-static {p1, p0}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormatOrder(Landroid/content/Context;)[C
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    invoke-static {}, getDateFormatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method private static getDateFormatString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 327
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 328
    .local v0, "df":Ljava/text/DateFormat;
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_10

    .line 329
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "df":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 332
    .restart local v0    # "df":Ljava/text/DateFormat;
    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "!(df instanceof SimpleDateFormat)"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static getDayOfWeekString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .registers 6
    .param p0, "ld"    # Llibcore/icu/LocaleData;
    .param p1, "day"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .prologue
    .line 534
    const/16 v1, 0x63

    if-ne p3, v1, :cond_f

    const/4 v0, 0x1

    .line 535
    .local v0, "standalone":Z
    :goto_5
    const/4 v1, 0x5

    if-ne p2, v1, :cond_16

    .line 536
    if-eqz v0, :cond_11

    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 540
    :goto_e
    return-object v1

    .line 534
    .end local v0    # "standalone":Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 536
    .restart local v0    # "standalone":Z
    :cond_11
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_e

    .line 537
    :cond_16
    const/4 v1, 0x4

    if-ne p2, v1, :cond_25

    .line 538
    if-eqz v0, :cond_20

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_e

    :cond_20
    iget-object v1, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_e

    .line 540
    :cond_25
    if-eqz v0, :cond_2c

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_e

    :cond_2c
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_e
.end method

.method public static getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getMonthString(Llibcore/icu/LocaleData;III)Ljava/lang/String;
    .registers 6
    .param p0, "ld"    # Llibcore/icu/LocaleData;
    .param p1, "month"    # I
    .param p2, "count"    # I
    .param p3, "kind"    # I

    .prologue
    .line 545
    const/16 v1, 0x4c

    if-ne p3, v1, :cond_f

    const/4 v0, 0x1

    .line 546
    .local v0, "standalone":Z
    :goto_5
    const/4 v1, 0x5

    if-ne p2, v1, :cond_16

    .line 547
    if-eqz v0, :cond_11

    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 554
    :goto_e
    return-object v1

    .line 545
    .end local v0    # "standalone":Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 547
    .restart local v0    # "standalone":Z
    :cond_11
    iget-object v1, p0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_e

    .line 548
    :cond_16
    const/4 v1, 0x4

    if-ne p2, v1, :cond_25

    .line 549
    if-eqz v0, :cond_20

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_e

    :cond_20
    iget-object v1, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_e

    .line 550
    :cond_25
    const/4 v1, 0x3

    if-ne p2, v1, :cond_34

    .line 551
    if-eqz v0, :cond_2f

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_e

    :cond_2f
    iget-object v1, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    goto :goto_e

    .line 554
    :cond_34
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1, p2}, zeroPad(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public static getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeFormatString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 279
    .local v0, "d":Llibcore/icu/LocaleData;
    invoke-static {p0, p1}, is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    :goto_16
    return-object v1

    :cond_17
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    goto :goto_16
.end method

.method private static getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .registers 7
    .param p0, "inDate"    # Ljava/util/Calendar;
    .param p1, "count"    # I

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 559
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 560
    .local v1, "tz":Ljava/util/TimeZone;
    const/4 v3, 0x2

    if-ge p1, v3, :cond_1a

    .line 561
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    .line 566
    :goto_19
    return-object v2

    .line 565
    :cond_1a
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_26

    const/4 v0, 0x1

    .line 566
    .local v0, "dst":Z
    :goto_21
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    .end local v0    # "dst":Z
    :cond_26
    move v0, v2

    .line 565
    goto :goto_21
.end method

.method private static getYearString(II)Ljava/lang/String;
    .registers 7
    .param p0, "year"    # I
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x2

    .line 590
    if-gt p1, v1, :cond_a

    rem-int/lit8 v0, p0, 0x64

    invoke-static {v0, v1}, zeroPad(II)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static hasDesignator(Ljava/lang/CharSequence;C)Z
    .registers 8
    .param p0, "inFormat"    # Ljava/lang/CharSequence;
    .param p1, "designator"    # C

    .prologue
    const/4 v4, 0x0

    .line 381
    if-nez p0, :cond_4

    .line 399
    :cond_3
    :goto_3
    return v4

    .line 383
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 388
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v3, :cond_3

    .line 389
    const/4 v1, 0x1

    .line 390
    .local v1, "count":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 392
    .local v0, "c":I
    const/16 v5, 0x27

    if-ne v0, v5, :cond_1a

    .line 393
    invoke-static {p0, v2, v3}, skipQuotedText(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 388
    :cond_18
    add-int/2addr v2, v1

    goto :goto_9

    .line 394
    :cond_1a
    if-ne v0, p1, :cond_18

    .line 395
    const/4 v4, 0x1

    goto :goto_3
.end method

.method public static hasSeconds(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "inFormat"    # Ljava/lang/CharSequence;

    .prologue
    .line 371
    const/16 v0, 0x73

    invoke-static {p0, v0}, hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static is24HourFormat(Landroid/content/Context;I)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "time_12_24"

    invoke-static {v5, v6, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "value":Ljava/lang/String;
    if-nez v4, :cond_62

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 186
    .local v0, "locale":Ljava/util/Locale;
    sget-object v6, sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 187
    :try_start_1a
    sget-object v5, sIs24HourLocale:Ljava/util/Locale;

    if-eqz v5, :cond_2a

    sget-object v5, sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v5, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 188
    sget-boolean v5, sIs24Hour:Z

    monitor-exit v6

    .line 216
    .end local v0    # "locale":Ljava/util/Locale;
    :goto_29
    return v5

    .line 190
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_2a
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_56

    .line 192
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 195
    .local v1, "natural":Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_5c

    move-object v3, v1

    .line 196
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 197
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "pattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_59

    .line 200
    const-string v4, "24"

    .line 208
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_45
    sget-object v6, sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 209
    :try_start_48
    sput-object v0, sIs24HourLocale:Ljava/util/Locale;

    .line 210
    const-string v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, sIs24Hour:Z

    .line 211
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_5f

    .line 213
    sget-boolean v5, sIs24Hour:Z

    goto :goto_29

    .line 190
    .end local v1    # "natural":Ljava/text/DateFormat;
    :catchall_56
    move-exception v5

    :try_start_57
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v5

    .line 202
    .restart local v1    # "natural":Ljava/text/DateFormat;
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_59
    const-string v4, "12"

    goto :goto_45

    .line 205
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5c
    const-string v4, "12"

    goto :goto_45

    .line 211
    :catchall_5f
    move-exception v5

    :try_start_60
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v5

    .line 216
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "natural":Ljava/text/DateFormat;
    :cond_62
    const-string v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_29
.end method

.method private static skipQuotedText(Ljava/lang/CharSequence;II)I
    .registers 7
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "i"    # I
    .param p2, "len"    # I

    .prologue
    const/16 v3, 0x27

    .line 403
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_10

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_10

    .line 404
    const/4 v1, 0x2

    .line 428
    :cond_f
    return v1

    .line 407
    :cond_10
    const/4 v1, 0x1

    .line 409
    .local v1, "count":I
    add-int/lit8 p1, p1, 0x1

    .line 411
    :goto_13
    if-ge p1, p2, :cond_f

    .line 412
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 414
    .local v0, "c":C
    if-ne v0, v3, :cond_2c

    .line 415
    add-int/lit8 v1, v1, 0x1

    .line 417
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_f

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_f

    .line 418
    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    .line 423
    :cond_2c
    add-int/lit8 p1, p1, 0x1

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method private static zeroPad(II)Ljava/lang/String;
    .registers 7
    .param p0, "inValue"    # I
    .param p1, "inMinDigits"    # I

    .prologue
    .line 632
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
