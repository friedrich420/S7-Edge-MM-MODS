.class public abstract Lmf/javax/xml/datatype/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# static fields
.field private static final DEBUG:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method private static getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .registers 3
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 1006
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .registers 9
    .param p1, "bd"    # Ljava/math/BigDecimal;

    .prologue
    .line 967
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 968
    .local v3, "intString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    .line 970
    .local v4, "scale":I
    if-nez v4, :cond_f

    .line 990
    .end local v3    # "intString":Ljava/lang/String;
    :goto_e
    return-object v3

    .line 976
    .restart local v3    # "intString":Ljava/lang/String;
    :cond_f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v5, v4

    .line 977
    .local v2, "insertionPoint":I
    if-nez v2, :cond_27

    .line 978
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 979
    :cond_27
    if-lez v2, :cond_38

    .line 980
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 981
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 990
    :goto_33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 983
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_38
    new-instance v0, Ljava/lang/StringBuffer;

    rsub-int/lit8 v5, v2, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 984
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    const-string v5, "0."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 985
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4a
    neg-int v5, v2

    if-lt v1, v5, :cond_51

    .line 988
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_33

    .line 986
    :cond_51
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 985
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a
.end method


# virtual methods
.method public abstract add(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;
.end method

.method public abstract addTo(Ljava/util/Calendar;)V
.end method

.method public addTo(Ljava/util/Date;)V
    .registers 6
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 579
    if-nez p1, :cond_25

    .line 580
    new-instance v1, Ljava/lang/NullPointerException;

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot call "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 583
    const-string v3, "#addTo(Date date) with date == null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 581
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    :cond_25
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 588
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 589
    invoke-virtual {p0, v0}, addTo(Ljava/util/Calendar;)V

    .line 590
    invoke-static {v0}, getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 591
    return-void
.end method

.method public abstract compare(Lmf/javax/xml/datatype/Duration;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "duration"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 885
    if-eqz p1, :cond_7

    instance-of v1, p1, Lmf/javax/xml/datatype/Duration;

    if-nez v1, :cond_8

    .line 889
    .end local p1    # "duration":Ljava/lang/Object;
    :cond_7
    :goto_7
    return v0

    .restart local p1    # "duration":Ljava/lang/Object;
    :cond_8
    check-cast p1, Lmf/javax/xml/datatype/Duration;

    .end local p1    # "duration":Ljava/lang/Object;
    invoke-virtual {p0, p1}, compare(Lmf/javax/xml/datatype/Duration;)I

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getDays()I
    .registers 2

    .prologue
    .line 299
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public abstract getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
.end method

.method public getHours()I
    .registers 2

    .prologue
    .line 313
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .registers 2

    .prologue
    .line 327
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getMonths()I
    .registers 2

    .prologue
    .line 286
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .registers 2

    .prologue
    .line 342
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public abstract getSign()I
.end method

.method public getTimeInMillis(Ljava/util/Calendar;)J
    .registers 8
    .param p1, "startInstant"    # Ljava/util/Calendar;

    .prologue
    .line 376
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 377
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, addTo(Ljava/util/Calendar;)V

    .line 378
    invoke-static {v0}, getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 379
    invoke-static {p1}, getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    .line 378
    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public getTimeInMillis(Ljava/util/Date;)J
    .registers 8
    .param p1, "startInstant"    # Ljava/util/Date;

    .prologue
    .line 414
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 415
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 416
    invoke-virtual {p0, v0}, addTo(Ljava/util/Calendar;)V

    .line 417
    invoke-static {v0}, getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public getXMLSchemaType()Lmf/javax/xml/namespace/QName;
    .registers 10

    .prologue
    .line 201
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, isSet(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v5

    .line 202
    .local v5, "yearSet":Z
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, isSet(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v3

    .line 203
    .local v3, "monthSet":Z
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, isSet(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v0

    .line 204
    .local v0, "daySet":Z
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, isSet(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v1

    .line 205
    .local v1, "hourSet":Z
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, isSet(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v2

    .line 206
    .local v2, "minuteSet":Z
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v6}, isSet(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Z

    move-result v4

    .line 209
    .local v4, "secondSet":Z
    if-eqz v5, :cond_33

    .line 210
    if-eqz v3, :cond_33

    .line 211
    if-eqz v0, :cond_33

    .line 212
    if-eqz v1, :cond_33

    .line 213
    if-eqz v2, :cond_33

    .line 214
    if-eqz v4, :cond_33

    .line 215
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->DURATION:Lmf/javax/xml/namespace/QName;

    .line 235
    :goto_32
    return-object v6

    .line 219
    :cond_33
    if-nez v5, :cond_42

    .line 220
    if-nez v3, :cond_42

    .line 221
    if-eqz v0, :cond_42

    .line 222
    if-eqz v1, :cond_42

    .line 223
    if-eqz v2, :cond_42

    .line 224
    if-eqz v4, :cond_42

    .line 225
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->DURATION_DAYTIME:Lmf/javax/xml/namespace/QName;

    goto :goto_32

    .line 229
    :cond_42
    if-eqz v5, :cond_51

    .line 230
    if-eqz v3, :cond_51

    .line 231
    if-nez v0, :cond_51

    .line 232
    if-nez v1, :cond_51

    .line 233
    if-nez v2, :cond_51

    .line 234
    if-nez v4, :cond_51

    .line 235
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->DURATION_YEARMONTH:Lmf/javax/xml/namespace/QName;

    goto :goto_32

    .line 239
    :cond_51
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "javax.xml.datatype.Duration#getXMLSchemaType(): this Duration does not match one of the XML Schema date/time datatypes: year set = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 243
    const-string v8, " month set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 244
    const-string v8, " day set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 245
    const-string v8, " hour set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 246
    const-string v8, " minute set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 247
    const-string v8, " second set = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 240
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 239
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getYears()I
    .registers 2

    .prologue
    .line 273
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v0}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public isLongerThan(Lmf/javax/xml/datatype/Duration;)Z
    .registers 4
    .param p1, "duration"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    const/4 v0, 0x1

    .line 820
    invoke-virtual {p0, p1}, compare(Lmf/javax/xml/datatype/Duration;)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract isSet(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Z
.end method

.method public isShorterThan(Lmf/javax/xml/datatype/Duration;)Z
    .registers 4
    .param p1, "duration"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    .line 842
    invoke-virtual {p0, p1}, compare(Lmf/javax/xml/datatype/Duration;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public multiply(I)Lmf/javax/xml/datatype/Duration;
    .registers 4
    .param p1, "factor"    # I

    .prologue
    .line 663
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, multiply(Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public abstract multiply(Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;
.end method

.method public abstract negate()Lmf/javax/xml/datatype/Duration;
.end method

.method public abstract normalizeWith(Ljava/util/Calendar;)Lmf/javax/xml/datatype/Duration;
.end method

.method public subtract(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;
    .registers 3
    .param p1, "rhs"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    .line 643
    invoke-virtual {p1}, negate()Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, add(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 915
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 917
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, getSign()I

    move-result v7

    if-gez v7, :cond_10

    .line 918
    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 920
    :cond_10
    const/16 v7, 0x50

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 922
    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    .line 923
    .local v6, "years":Ljava/math/BigInteger;
    if-eqz v6, :cond_35

    .line 924
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 927
    :cond_35
    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    .line 928
    .local v4, "months":Ljava/math/BigInteger;
    if-eqz v4, :cond_55

    .line 929
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    :cond_55
    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 933
    .local v1, "days":Ljava/math/BigInteger;
    if-eqz v1, :cond_75

    .line 934
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "D"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 937
    :cond_75
    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 938
    .local v2, "hours":Ljava/math/BigInteger;
    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 939
    .local v3, "minutes":Ljava/math/BigInteger;
    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v7}, getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    .line 940
    .local v5, "seconds":Ljava/math/BigDecimal;
    if-nez v2, :cond_93

    if-nez v3, :cond_93

    if-eqz v5, :cond_e4

    .line 941
    :cond_93
    const/16 v7, 0x54

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 942
    if-eqz v2, :cond_b0

    .line 943
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "H"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 945
    :cond_b0
    if-eqz v3, :cond_c8

    .line 946
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "M"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 948
    :cond_c8
    if-eqz v5, :cond_e4

    .line 949
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 953
    :cond_e4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
