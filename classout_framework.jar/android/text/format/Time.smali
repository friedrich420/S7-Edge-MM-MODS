.class public Landroid/text/format/Time;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Time$TimeCalculator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DAYS_PER_MONTH:[I

.field public static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final FRIDAY:I = 0x5

.field public static final HOUR:I = 0x3

.field public static final MINUTE:I = 0x2

.field public static final MONDAY:I = 0x1

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final MONTH:I = 0x5

.field public static final MONTH_DAY:I = 0x4

.field public static final SATURDAY:I = 0x6

.field public static final SECOND:I = 0x1

.field public static final SUNDAY:I = 0x0

.field public static final THURSDAY:I = 0x4

.field public static final TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x3

.field public static final WEEK_DAY:I = 0x7

.field public static final WEEK_NUM:I = 0x9

.field public static final YEAR:I = 0x6

.field public static final YEAR_DAY:I = 0x8

.field private static final Y_M_D:Ljava/lang/String; = "%Y-%m-%d"

.field private static final Y_M_D_T_H_M_S_000:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000"

.field private static final Y_M_D_T_H_M_S_000_Z:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000Z"

.field private static final sThursdayOffset:[I


# instance fields
.field public allDay:Z

.field private calculator:Landroid/text/format/Time$TimeCalculator;

.field public gmtoff:J

.field public hour:I

.field public isDst:I

.field public minute:I

.field public month:I

.field public monthDay:I

.field public second:I

.field public timezone:Ljava/lang/String;

.field public weekDay:I

.field public year:I

.field public yearDay:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 250
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, DAYS_PER_MONTH:[I

    .line 876
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, sThursdayOffset:[I

    return-void

    .line 250
    :array_12
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 876
    :array_2e
    .array-data 4
        -0x3
        0x3
        0x2
        0x1
        0x0
        -0x1
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, initialize(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .registers 3
    .param p1, "other"    # Landroid/text/format/Time;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iget-object v0, p1, timezone:Ljava/lang/String;

    invoke-direct {p0, v0}, initialize(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, p1}, set(Landroid/text/format/Time;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "timezoneId"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    if-nez p1, :cond_e

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezoneId is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_e
    invoke-direct {p0, p1}, initialize(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private checkChar(Ljava/lang/String;IC)V
    .registers 10
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "spos"    # I
    .param p3, "expected"    # C

    .prologue
    .line 494
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 495
    .local v0, "c":C
    if-eq v0, p3, :cond_31

    .line 496
    new-instance v1, Landroid/util/TimeFormatException;

    const-string v2, "Unexpected character 0x%02d at pos=%d.  Expected 0x%02d (\'%c\')."

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_31
    return-void
.end method

.method public static compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .registers 4
    .param p0, "a"    # Landroid/text/format/Time;
    .param p1, "b"    # Landroid/text/format/Time;

    .prologue
    .line 337
    if-nez p0, :cond_a

    .line 338
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "a == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_a
    if-nez p1, :cond_14

    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "b == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_14
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 343
    iget-object v0, p1, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 345
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p1, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-static {v0, v1}, Landroid/text/format/Time$TimeCalculator;->compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I

    move-result v0

    return v0
.end method

.method private static getChar(Ljava/lang/String;II)I
    .registers 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "spos"    # I
    .param p2, "mul"    # I

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 504
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 505
    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    mul-int/2addr v1, p2

    return v1

    .line 507
    :cond_10
    new-instance v1, Landroid/util/TimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error at pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCurrentTimezone()Ljava/lang/String;
    .registers 1

    .prologue
    .line 685
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJulianDay(JJ)I
    .registers 12
    .param p0, "millis"    # J
    .param p2, "gmtoff"    # J

    .prologue
    .line 975
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    .line 976
    .local v2, "offsetMillis":J
    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    .line 977
    .local v0, "julianDay":J
    long-to-int v4, v0

    const v5, 0x253d8c    # 3.419992E-39f

    add-int/2addr v4, v5

    return v4
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .registers 3
    .param p0, "week"    # I

    .prologue
    .line 1053
    const v0, 0x253d89

    mul-int/lit8 v1, p0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .registers 5
    .param p0, "julianDay"    # I
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 1034
    rsub-int/lit8 v0, p1, 0x4

    .line 1035
    .local v0, "diff":I
    if-gez v0, :cond_6

    .line 1036
    add-int/lit8 v0, v0, 0x7

    .line 1038
    :cond_6
    const v2, 0x253d8c    # 3.419992E-39f

    sub-int v1, v2, v0

    .line 1039
    .local v1, "refDay":I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method private initialize(Ljava/lang/String;)V
    .registers 3
    .param p1, "timezoneId"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, timezone:Ljava/lang/String;

    .line 201
    const/16 v0, 0x7b2

    iput v0, p0, year:I

    .line 202
    const/4 v0, 0x1

    iput v0, p0, monthDay:I

    .line 205
    const/4 v0, -0x1

    iput v0, p0, isDst:I

    .line 208
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    invoke-direct {v0, p1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    .line 209
    return-void
.end method

.method public static isEpoch(Landroid/text/format/Time;)Z
    .registers 7
    .param p0, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v2, 0x1

    .line 952
    invoke-virtual {p0, v2}, toMillis(Z)J

    move-result-wide v0

    .line 953
    .local v0, "millis":J
    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, getJulianDay(JJ)I

    move-result v3

    const v4, 0x253d8c    # 3.419992E-39f

    if-ne v3, v4, :cond_11

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private parse3339Internal(Ljava/lang/String;)Z
    .registers 16
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x2d

    const/4 v11, 0x2

    const/16 v10, 0xa

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 554
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 555
    .local v3, "len":I
    if-ge v3, v10, :cond_15

    .line 556
    new-instance v8, Landroid/util/TimeFormatException;

    const-string v9, "String too short --- expected at least 10 characters."

    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 558
    :cond_15
    const/4 v2, 0x0

    .line 561
    .local v2, "inUtc":Z
    const/16 v8, 0x3e8

    invoke-static {p1, v13, v8}, getChar(Ljava/lang/String;II)I

    move-result v5

    .line 562
    .local v5, "n":I
    const/16 v8, 0x64

    invoke-static {p1, v12, v8}, getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 563
    invoke-static {p1, v11, v10}, getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 564
    const/4 v8, 0x3

    invoke-static {p1, v8, v12}, getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 565
    iput v5, p0, year:I

    .line 567
    const/4 v8, 0x4

    invoke-direct {p0, p1, v8, v9}, checkChar(Ljava/lang/String;IC)V

    .line 570
    const/4 v8, 0x5

    invoke-static {p1, v8, v10}, getChar(Ljava/lang/String;II)I

    move-result v5

    .line 571
    const/4 v8, 0x6

    invoke-static {p1, v8, v12}, getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 572
    add-int/lit8 v5, v5, -0x1

    .line 573
    iput v5, p0, month:I

    .line 575
    const/4 v8, 0x7

    invoke-direct {p0, p1, v8, v9}, checkChar(Ljava/lang/String;IC)V

    .line 578
    const/16 v8, 0x8

    invoke-static {p1, v8, v10}, getChar(Ljava/lang/String;II)I

    move-result v5

    .line 579
    const/16 v8, 0x9

    invoke-static {p1, v8, v12}, getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 580
    iput v5, p0, monthDay:I

    .line 582
    const/16 v8, 0x13

    if-lt v3, v8, :cond_12d

    .line 584
    const/16 v8, 0x54

    invoke-direct {p0, p1, v10, v8}, checkChar(Ljava/lang/String;IC)V

    .line 585
    iput-boolean v13, p0, allDay:Z

    .line 588
    const/16 v8, 0xb

    invoke-static {p1, v8, v10}, getChar(Ljava/lang/String;II)I

    move-result v5

    .line 589
    const/16 v8, 0xc

    invoke-static {p1, v8, v12}, getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 592
    move v1, v5

    .line 594
    .local v1, "hour":I
    const/16 v8, 0xd

    const/16 v9, 0x3a

    invoke-direct {p0, p1, v8, v9}, checkChar(Ljava/lang/String;IC)V

    .line 597
    const/16 v8, 0xe

    invoke-static {p1, v8, v10}, getChar(Ljava/lang/String;II)I

    move-result v5

    .line 598
    const/16 v8, 0xf

    invoke-static {p1, v8, v12}, getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 600
    move v4, v5

    .line 602
    .local v4, "minute":I
    const/16 v8, 0x10

    const/16 v9, 0x3a

    invoke-direct {p0, p1, v8, v9}, checkChar(Ljava/lang/String;IC)V

    .line 605
    const/16 v8, 0x11

    invoke-static {p1, v8, v10}, getChar(Ljava/lang/String;II)I

    move-result v5

    .line 606
    const/16 v8, 0x12

    invoke-static {p1, v8, v12}, getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 607
    iput v5, p0, second:I

    .line 611
    const/16 v7, 0x13

    .line 612
    .local v7, "tzIndex":I
    if-ge v7, v3, :cond_b4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_b4

    .line 614
    :cond_a6
    add-int/lit8 v7, v7, 0x1

    .line 615
    if-ge v7, v3, :cond_b4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_a6

    .line 618
    :cond_b4
    const/4 v6, 0x0

    .line 619
    .local v6, "offset":I
    if-le v3, v7, :cond_118

    .line 620
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 623
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_136

    .line 635
    new-instance v8, Landroid/util/TimeFormatException;

    const-string v9, "Unexpected character 0x%02d at position %d.  Expected + or -"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 626
    :sswitch_d8
    const/4 v6, 0x0

    .line 639
    :goto_d9
    const/4 v2, 0x1

    .line 641
    if-eqz v6, :cond_118

    .line 642
    add-int/lit8 v8, v7, 0x6

    if-ge v3, v8, :cond_fa

    .line 643
    new-instance v8, Landroid/util/TimeFormatException;

    const-string v9, "Unexpected length; should be %d characters"

    new-array v10, v12, [Ljava/lang/Object;

    add-int/lit8 v11, v7, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 629
    :sswitch_f6
    const/4 v6, 0x1

    .line 630
    goto :goto_d9

    .line 632
    :sswitch_f8
    const/4 v6, -0x1

    .line 633
    goto :goto_d9

    .line 649
    :cond_fa
    add-int/lit8 v8, v7, 0x1

    invoke-static {p1, v8, v10}, getChar(Ljava/lang/String;II)I

    move-result v5

    .line 650
    add-int/lit8 v8, v7, 0x2

    invoke-static {p1, v8, v12}, getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 651
    mul-int/2addr v5, v6

    .line 652
    add-int/2addr v1, v5

    .line 655
    add-int/lit8 v8, v7, 0x4

    invoke-static {p1, v8, v10}, getChar(Ljava/lang/String;II)I

    move-result v5

    .line 656
    add-int/lit8 v8, v7, 0x5

    invoke-static {p1, v8, v12}, getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 657
    mul-int/2addr v5, v6

    .line 658
    add-int/2addr v4, v5

    .line 661
    .end local v0    # "c":C
    :cond_118
    iput v1, p0, hour:I

    .line 662
    iput v4, p0, minute:I

    .line 664
    if-eqz v6, :cond_121

    .line 665
    invoke-virtual {p0, v13}, normalize(Z)J

    .line 674
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    .end local v6    # "offset":I
    .end local v7    # "tzIndex":I
    :cond_121
    :goto_121
    iput v13, p0, weekDay:I

    .line 675
    iput v13, p0, yearDay:I

    .line 676
    const/4 v8, -0x1

    iput v8, p0, isDst:I

    .line 677
    const-wide/16 v8, 0x0

    iput-wide v8, p0, gmtoff:J

    .line 678
    return v2

    .line 668
    :cond_12d
    iput-boolean v12, p0, allDay:Z

    .line 669
    iput v13, p0, hour:I

    .line 670
    iput v13, p0, minute:I

    .line 671
    iput v13, p0, second:I

    goto :goto_121

    .line 623
    :sswitch_data_136
    .sparse-switch
        0x2b -> :sswitch_f8
        0x2d -> :sswitch_f6
        0x5a -> :sswitch_d8
    .end sparse-switch
.end method

.method private parseInternal(Ljava/lang/String;)Z
    .registers 11
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0x8

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 424
    .local v1, "len":I
    if-ge v1, v7, :cond_2d

    .line 425
    new-instance v3, Landroid/util/TimeFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String is too short: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" Expected at least 8 characters."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 429
    :cond_2d
    const/4 v0, 0x0

    .line 432
    .local v0, "inUtc":Z
    const/16 v3, 0x3e8

    invoke-static {p1, v5, v3}, getChar(Ljava/lang/String;II)I

    move-result v2

    .line 433
    .local v2, "n":I
    const/16 v3, 0x64

    invoke-static {p1, v4, v3}, getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 434
    const/4 v3, 0x2

    invoke-static {p1, v3, v6}, getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 435
    const/4 v3, 0x3

    invoke-static {p1, v3, v4}, getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 436
    iput v2, p0, year:I

    .line 439
    const/4 v3, 0x4

    invoke-static {p1, v3, v6}, getChar(Ljava/lang/String;II)I

    move-result v2

    .line 440
    const/4 v3, 0x5

    invoke-static {p1, v3, v4}, getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 441
    add-int/lit8 v2, v2, -0x1

    .line 442
    iput v2, p0, month:I

    .line 445
    const/4 v3, 0x6

    invoke-static {p1, v3, v6}, getChar(Ljava/lang/String;II)I

    move-result v2

    .line 446
    const/4 v3, 0x7

    invoke-static {p1, v3, v4}, getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 447
    iput v2, p0, monthDay:I

    .line 449
    if-le v1, v7, :cond_d4

    .line 450
    if-ge v1, v8, :cond_8e

    .line 451
    new-instance v3, Landroid/util/TimeFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String is too short: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" If there are more than 8 characters there must be at least"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 15."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 456
    :cond_8e
    const/16 v3, 0x54

    invoke-direct {p0, p1, v7, v3}, checkChar(Ljava/lang/String;IC)V

    .line 457
    iput-boolean v5, p0, allDay:Z

    .line 460
    const/16 v3, 0x9

    invoke-static {p1, v3, v6}, getChar(Ljava/lang/String;II)I

    move-result v2

    .line 461
    invoke-static {p1, v6, v4}, getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 462
    iput v2, p0, hour:I

    .line 465
    const/16 v3, 0xb

    invoke-static {p1, v3, v6}, getChar(Ljava/lang/String;II)I

    move-result v2

    .line 466
    const/16 v3, 0xc

    invoke-static {p1, v3, v4}, getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 467
    iput v2, p0, minute:I

    .line 470
    const/16 v3, 0xd

    invoke-static {p1, v3, v6}, getChar(Ljava/lang/String;II)I

    move-result v2

    .line 471
    const/16 v3, 0xe

    invoke-static {p1, v3, v4}, getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 472
    iput v2, p0, second:I

    .line 474
    if-le v1, v8, :cond_c8

    .line 476
    const/16 v3, 0x5a

    invoke-direct {p0, p1, v8, v3}, checkChar(Ljava/lang/String;IC)V

    .line 477
    const/4 v0, 0x1

    .line 486
    :cond_c8
    :goto_c8
    iput v5, p0, weekDay:I

    .line 487
    iput v5, p0, yearDay:I

    .line 488
    const/4 v3, -0x1

    iput v3, p0, isDst:I

    .line 489
    const-wide/16 v4, 0x0

    iput-wide v4, p0, gmtoff:J

    .line 490
    return v0

    .line 480
    :cond_d4
    iput-boolean v4, p0, allDay:Z

    .line 481
    iput v5, p0, hour:I

    .line 482
    iput v5, p0, minute:I

    .line 483
    iput v5, p0, second:I

    goto :goto_c8
.end method


# virtual methods
.method public after(Landroid/text/format/Time;)Z
    .registers 3
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    .line 868
    invoke-static {p0, p1}, compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public before(Landroid/text/format/Time;)Z
    .registers 3
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    .line 852
    invoke-static {p0, p1}, compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public clear(Ljava/lang/String;)V
    .registers 4
    .param p1, "timezoneId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 301
    if-nez p1, :cond_c

    .line 302
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezone is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_c
    iput-object p1, p0, timezone:Ljava/lang/String;

    .line 305
    iput-boolean v0, p0, allDay:Z

    .line 306
    iput v0, p0, second:I

    .line 307
    iput v0, p0, minute:I

    .line 308
    iput v0, p0, hour:I

    .line 309
    iput v0, p0, monthDay:I

    .line 310
    iput v0, p0, month:I

    .line 311
    iput v0, p0, year:I

    .line 312
    iput v0, p0, weekDay:I

    .line 313
    iput v0, p0, yearDay:I

    .line 314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, gmtoff:J

    .line 315
    const/4 v0, -0x1

    iput v0, p0, isDst:I

    .line 316
    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 357
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format2445()Ljava/lang/String;
    .registers 3

    .prologue
    .line 777
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 778
    iget-object v1, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    iget-boolean v0, p0, allDay:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v1, v0}, Landroid/text/format/Time$TimeCalculator;->format2445(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public format3339(Z)Ljava/lang/String;
    .registers 12
    .param p1, "allDay"    # Z

    .prologue
    .line 925
    if-eqz p1, :cond_9

    .line 926
    const-string v5, "%Y-%m-%d"

    invoke-virtual {p0, v5}, format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 936
    :goto_8
    return-object v5

    .line 927
    :cond_9
    const-string v5, "UTC"

    iget-object v6, p0, timezone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 928
    const-string v5, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {p0, v5}, format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 930
    :cond_1a
    const-string v5, "%Y-%m-%dT%H:%M:%S.000"

    invoke-virtual {p0, v5}, format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, "base":Ljava/lang/String;
    iget-wide v6, p0, gmtoff:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_57

    const-string v4, "-"

    .line 932
    .local v4, "sign":Ljava/lang/String;
    :goto_2a
    iget-wide v6, p0, gmtoff:J

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-int v3, v6

    .line 933
    .local v3, "offset":I
    rem-int/lit16 v5, v3, 0xe10

    div-int/lit8 v2, v5, 0x3c

    .line 934
    .local v2, "minutes":I
    div-int/lit16 v1, v3, 0xe10

    .line 936
    .local v1, "hours":I
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s%s%02d:%02d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    .line 931
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "offset":I
    .end local v4    # "sign":Ljava/lang/String;
    :cond_57
    const-string v4, "+"

    goto :goto_2a
.end method

.method public getActualMaximum(I)I
    .registers 7
    .param p1, "field"    # I

    .prologue
    const/16 v0, 0x3b

    const/16 v2, 0x1c

    .line 261
    packed-switch p1, :pswitch_data_66

    .line 291
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad field="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_20
    move v2, v0

    .line 286
    :cond_21
    :goto_21
    return v2

    :pswitch_22
    move v2, v0

    .line 265
    goto :goto_21

    .line 267
    :pswitch_24
    const/16 v2, 0x17

    goto :goto_21

    .line 269
    :pswitch_27
    sget-object v3, DAYS_PER_MONTH:[I

    iget v4, p0, month:I

    aget v0, v3, v4

    .line 270
    .local v0, "n":I
    if-eq v0, v2, :cond_31

    move v2, v0

    .line 271
    goto :goto_21

    .line 273
    :cond_31
    iget v1, p0, year:I

    .line 274
    .local v1, "y":I
    rem-int/lit8 v3, v1, 0x4

    if-nez v3, :cond_21

    rem-int/lit8 v3, v1, 0x64

    if-nez v3, :cond_3f

    rem-int/lit16 v3, v1, 0x190

    if-nez v3, :cond_21

    :cond_3f
    const/16 v2, 0x1d

    goto :goto_21

    .line 278
    .end local v0    # "n":I
    .end local v1    # "y":I
    :pswitch_42
    const/16 v2, 0xb

    goto :goto_21

    .line 280
    :pswitch_45
    const/16 v2, 0x7f5

    goto :goto_21

    .line 282
    :pswitch_48
    const/4 v2, 0x6

    goto :goto_21

    .line 284
    :pswitch_4a
    iget v1, p0, year:I

    .line 286
    .restart local v1    # "y":I
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_5b

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_58

    rem-int/lit16 v2, v1, 0x190

    if-nez v2, :cond_5b

    :cond_58
    const/16 v2, 0x16d

    goto :goto_21

    :cond_5b
    const/16 v2, 0x16c

    goto :goto_21

    .line 289
    .end local v1    # "y":I
    :pswitch_5e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "WEEK_NUM not implemented"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_27
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_4a
        :pswitch_5e
    .end packed-switch
.end method

.method public getWeekNumber()I
    .registers 6

    .prologue
    .line 900
    iget v2, p0, yearDay:I

    sget-object v3, sThursdayOffset:[I

    iget v4, p0, weekDay:I

    aget v3, v3, v4

    add-int v0, v2, v3

    .line 903
    .local v0, "closestThursday":I
    if-ltz v0, :cond_15

    const/16 v2, 0x16c

    if-gt v0, v2, :cond_15

    .line 904
    div-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    .line 911
    :goto_14
    return v2

    .line 908
    :cond_15
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p0}, <init>(Landroid/text/format/Time;)V

    .line 909
    .local v1, "temp":Landroid/text/format/Time;
    iget v2, v1, monthDay:I

    sget-object v3, sThursdayOffset:[I

    iget v4, p0, weekDay:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, monthDay:I

    .line 910
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, normalize(Z)J

    .line 911
    iget v2, v1, yearDay:I

    div-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_14
.end method

.method public normalize(Z)J
    .registers 5
    .param p1, "ignoreDst"    # Z

    .prologue
    .line 230
    iget-object v2, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 231
    iget-object v2, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    .line 232
    .local v0, "timeInMillis":J
    iget-object v2, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 233
    return-wide v0
.end method

.method public parse(Ljava/lang/String;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 409
    if-nez p1, :cond_b

    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_b
    invoke-direct {p0, p1}, parseInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 413
    const-string v0, "UTC"

    iput-object v0, p0, timezone:Ljava/lang/String;

    .line 414
    const/4 v0, 0x1

    .line 416
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public parse3339(Ljava/lang/String;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 543
    if-nez p1, :cond_b

    .line 544
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_b
    invoke-direct {p0, p1}, parse3339Internal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 547
    const-string v0, "UTC"

    iput-object v0, p0, timezone:Ljava/lang/String;

    .line 548
    const/4 v0, 0x1

    .line 550
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public set(III)V
    .registers 6
    .param p1, "monthDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I

    .prologue
    const/4 v1, 0x0

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, allDay:Z

    .line 828
    iput v1, p0, second:I

    .line 829
    iput v1, p0, minute:I

    .line 830
    iput v1, p0, hour:I

    .line 831
    iput p1, p0, monthDay:I

    .line 832
    iput p2, p0, month:I

    .line 833
    iput p3, p0, year:I

    .line 834
    iput v1, p0, weekDay:I

    .line 835
    iput v1, p0, yearDay:I

    .line 836
    const/4 v0, -0x1

    iput v0, p0, isDst:I

    .line 837
    const-wide/16 v0, 0x0

    iput-wide v0, p0, gmtoff:J

    .line 838
    return-void
.end method

.method public set(IIIIII)V
    .registers 9
    .param p1, "second"    # I
    .param p2, "minute"    # I
    .param p3, "hour"    # I
    .param p4, "monthDay"    # I
    .param p5, "month"    # I
    .param p6, "year"    # I

    .prologue
    const/4 v0, 0x0

    .line 804
    iput-boolean v0, p0, allDay:Z

    .line 805
    iput p1, p0, second:I

    .line 806
    iput p2, p0, minute:I

    .line 807
    iput p3, p0, hour:I

    .line 808
    iput p4, p0, monthDay:I

    .line 809
    iput p5, p0, month:I

    .line 810
    iput p6, p0, year:I

    .line 811
    iput v0, p0, weekDay:I

    .line 812
    iput v0, p0, yearDay:I

    .line 813
    const/4 v0, -0x1

    iput v0, p0, isDst:I

    .line 814
    const-wide/16 v0, 0x0

    iput-wide v0, p0, gmtoff:J

    .line 815
    return-void
.end method

.method public set(J)V
    .registers 6
    .param p1, "millis"    # J

    .prologue
    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, allDay:Z

    .line 765
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, timezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 766
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time$TimeCalculator;->setTimeInMillis(J)V

    .line 767
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 768
    return-void
.end method

.method public set(Landroid/text/format/Time;)V
    .registers 4
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    .line 785
    iget-object v0, p1, timezone:Ljava/lang/String;

    iput-object v0, p0, timezone:Ljava/lang/String;

    .line 786
    iget-boolean v0, p1, allDay:Z

    iput-boolean v0, p0, allDay:Z

    .line 787
    iget v0, p1, second:I

    iput v0, p0, second:I

    .line 788
    iget v0, p1, minute:I

    iput v0, p0, minute:I

    .line 789
    iget v0, p1, hour:I

    iput v0, p0, hour:I

    .line 790
    iget v0, p1, monthDay:I

    iput v0, p0, monthDay:I

    .line 791
    iget v0, p1, month:I

    iput v0, p0, month:I

    .line 792
    iget v0, p1, year:I

    iput v0, p0, year:I

    .line 793
    iget v0, p1, weekDay:I

    iput v0, p0, weekDay:I

    .line 794
    iget v0, p1, yearDay:I

    iput v0, p0, yearDay:I

    .line 795
    iget v0, p1, isDst:I

    iput v0, p0, isDst:I

    .line 796
    iget-wide v0, p1, gmtoff:J

    iput-wide v0, p0, gmtoff:J

    .line 797
    return-void
.end method

.method public setJulianDay(I)J
    .registers 11
    .param p1, "julianDay"    # I

    .prologue
    const/4 v8, 0x0

    .line 1004
    const v4, 0x253d8c    # 3.419992E-39f

    sub-int v4, p1, v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long v2, v4, v6

    .line 1005
    .local v2, "millis":J
    invoke-virtual {p0, v2, v3}, set(J)V

    .line 1009
    iget-wide v4, p0, gmtoff:J

    invoke-static {v2, v3, v4, v5}, getJulianDay(JJ)I

    move-result v0

    .line 1010
    .local v0, "approximateDay":I
    sub-int v1, p1, v0

    .line 1011
    .local v1, "diff":I
    iget v4, p0, monthDay:I

    add-int/2addr v4, v1

    iput v4, p0, monthDay:I

    .line 1014
    iput v8, p0, hour:I

    .line 1015
    iput v8, p0, minute:I

    .line 1016
    iput v8, p0, second:I

    .line 1017
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, normalize(Z)J

    move-result-wide v2

    .line 1018
    return-wide v2
.end method

.method public setToNow()V
    .registers 3

    .prologue
    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, set(J)V

    .line 693
    return-void
.end method

.method public switchTimezone(Ljava/lang/String;)V
    .registers 3
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 245
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->switchTimeZone(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 247
    iput-object p1, p0, timezone:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public toMillis(Z)J
    .registers 4
    .param p1, "ignoreDst"    # Z

    .prologue
    .line 752
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 753
    iget-object v0, p0, calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 367
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, timezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "calculator":Landroid/text/format/Time$TimeCalculator;
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 369
    invoke-virtual {v0}, Landroid/text/format/Time$TimeCalculator;->toStringInternal()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
