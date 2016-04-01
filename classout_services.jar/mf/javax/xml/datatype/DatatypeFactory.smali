.class public abstract Lmf/javax/xml/datatype/DatatypeFactory;
.super Ljava/lang/Object;
.source "DatatypeFactory.java"


# static fields
.field public static final DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

.field public static final DATATYPEFACTORY_PROPERTY:Ljava/lang/String; = "javax.xml.datatype.DatatypeFactory"

.field private static final XDTSCHEMA_DTD:Ljava/util/regex/Pattern;

.field private static final XDTSCHEMA_YMD:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/String;

    const-string v1, "com.sun.org.apache.xerces.internal.jaxp.datatype.DatatypeFactoryImpl"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    .line 118
    const-string v0, "[^DT]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 117
    sput-object v0, XDTSCHEMA_YMD:Ljava/util/regex/Pattern;

    .line 121
    const-string v0, "[^YM]*[DT].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 120
    sput-object v0, XDTSCHEMA_DTD:Ljava/util/regex/Pattern;

    .line 121
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public static newInstance()Lmf/javax/xml/datatype/DatatypeFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    const-string/jumbo v1, "javax.xml.datatype.DatatypeFactory"

    .line 152
    sget-object v2, DATATYPEFACTORY_IMPLEMENTATION_CLASS:Ljava/lang/String;

    .line 148
    invoke-static {v1, v2}, Lmf/javax/xml/datatype/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/datatype/DatatypeFactory;
    :try_end_b
    .catch Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 153
    :catch_c
    move-exception v0

    .line 154
    .local v0, "e":Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/datatype/DatatypeConfigurationException;

    invoke-virtual {v0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmf/javax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/datatype/DatatypeFactory;
    .registers 6
    .param p0, "factoryClassName"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1, v1}, Lmf/javax/xml/datatype/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/javax/xml/datatype/DatatypeFactory;
    :try_end_7
    .catch Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError; {:try_start_1 .. :try_end_7} :catch_8

    return-object v1

    .line 196
    :catch_8
    move-exception v0

    .line 197
    .local v0, "e":Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;
    new-instance v1, Lmf/javax/xml/datatype/DatatypeConfigurationException;

    invoke-virtual {v0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/javax/xml/datatype/FactoryFinder$ConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmf/javax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract newDuration(J)Lmf/javax/xml/datatype/Duration;
.end method

.method public abstract newDuration(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;
.end method

.method public newDuration(ZIIIIII)Lmf/javax/xml/datatype/Duration;
    .registers 16
    .param p1, "isPositive"    # Z
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I
    .param p5, "hours"    # I
    .param p6, "minutes"    # I
    .param p7, "seconds"    # I

    .prologue
    .line 343
    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_3d

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 346
    .local v2, "realYears":Ljava/math/BigInteger;
    :goto_9
    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_3f

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 349
    .local v3, "realMonths":Ljava/math/BigInteger;
    :goto_12
    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_41

    int-to-long v0, p4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 352
    .local v4, "realDays":Ljava/math/BigInteger;
    :goto_1b
    const/high16 v0, -0x80000000

    if-eq p5, v0, :cond_43

    int-to-long v0, p5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 355
    .local v5, "realHours":Ljava/math/BigInteger;
    :goto_24
    const/high16 v0, -0x80000000

    if-eq p6, v0, :cond_45

    int-to-long v0, p6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 358
    .local v6, "realMinutes":Ljava/math/BigInteger;
    :goto_2d
    const/high16 v0, -0x80000000

    if-eq p7, v0, :cond_47

    int-to-long v0, p7

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v7

    .local v7, "realSeconds":Ljava/math/BigDecimal;
    :goto_36
    move-object v0, p0

    move v1, p1

    .line 360
    invoke-virtual/range {v0 .. v7}, newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    .line 343
    .end local v2    # "realYears":Ljava/math/BigInteger;
    .end local v3    # "realMonths":Ljava/math/BigInteger;
    .end local v4    # "realDays":Ljava/math/BigInteger;
    .end local v5    # "realHours":Ljava/math/BigInteger;
    .end local v6    # "realMinutes":Ljava/math/BigInteger;
    .end local v7    # "realSeconds":Ljava/math/BigDecimal;
    :cond_3d
    const/4 v2, 0x0

    goto :goto_9

    .line 346
    .restart local v2    # "realYears":Ljava/math/BigInteger;
    :cond_3f
    const/4 v3, 0x0

    goto :goto_12

    .line 349
    .restart local v3    # "realMonths":Ljava/math/BigInteger;
    :cond_41
    const/4 v4, 0x0

    goto :goto_1b

    .line 352
    .restart local v4    # "realDays":Ljava/math/BigInteger;
    :cond_43
    const/4 v5, 0x0

    goto :goto_24

    .line 355
    .restart local v5    # "realHours":Ljava/math/BigInteger;
    :cond_45
    const/4 v6, 0x0

    goto :goto_2d

    .line 358
    .restart local v6    # "realMinutes":Ljava/math/BigInteger;
    :cond_47
    const/4 v7, 0x0

    goto :goto_36
.end method

.method public abstract newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;
.end method

.method public newDurationDayTime(J)Lmf/javax/xml/datatype/Duration;
    .registers 4
    .param p1, "durationInMilliseconds"    # J

    .prologue
    .line 454
    invoke-virtual {p0, p1, p2}, newDuration(J)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationDayTime(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;
    .registers 6
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;

    .prologue
    .line 397
    if-nez p1, :cond_a

    .line 398
    new-instance v1, Ljava/lang/NullPointerException;

    .line 399
    const-string v2, "Trying to create an xdt:dayTimeDuration with an invalid lexical representation of \"null\""

    .line 398
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 404
    :cond_a
    sget-object v1, XDTSCHEMA_DTD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 405
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_31

    .line 406
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to create an xdt:dayTimeDuration with an invalid lexical representation of \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 409
    const-string v3, "\", data model requires years and months only."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 407
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_31
    invoke-virtual {p0, p1}, newDuration(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;

    move-result-object v1

    return-object v1
.end method

.method public newDurationDayTime(ZIIII)Lmf/javax/xml/datatype/Duration;
    .registers 12
    .param p1, "isPositive"    # Z
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    .line 539
    .line 541
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 542
    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 543
    int-to-long v0, p4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 544
    int-to-long v0, p5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    .line 539
    invoke-virtual/range {v0 .. v5}, newDurationDayTime(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationDayTime(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;
    .registers 14
    .param p1, "isPositive"    # Z
    .param p2, "day"    # Ljava/math/BigInteger;
    .param p3, "hour"    # Ljava/math/BigInteger;
    .param p4, "minute"    # Ljava/math/BigInteger;
    .param p5, "second"    # Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x0

    .line 496
    .line 503
    if-eqz p5, :cond_13

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, p5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    :goto_8
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 496
    invoke-virtual/range {v0 .. v7}, newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    :cond_13
    move-object v7, v2

    .line 503
    goto :goto_8
.end method

.method public newDurationYearMonth(J)Lmf/javax/xml/datatype/Duration;
    .registers 10
    .param p1, "durationInMilliseconds"    # J

    .prologue
    .line 634
    invoke-virtual {p0, p1, p2}, newDuration(J)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    .line 635
    .local v0, "fullDuration":Lmf/javax/xml/datatype/Duration;
    invoke-virtual {v0}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_29

    const/4 v1, 0x0

    .line 637
    .local v1, "isPositive":Z
    :goto_c
    sget-object v4, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v4}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 638
    .local v3, "years":Ljava/math/BigInteger;
    if-nez v3, :cond_18

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 640
    :cond_18
    sget-object v4, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v0, v4}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 641
    .local v2, "months":Ljava/math/BigInteger;
    if-nez v2, :cond_24

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 643
    :cond_24
    invoke-virtual {p0, v1, v3, v2}, newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;

    move-result-object v4

    return-object v4

    .line 635
    .end local v1    # "isPositive":Z
    .end local v2    # "months":Ljava/math/BigInteger;
    .end local v3    # "years":Ljava/math/BigInteger;
    :cond_29
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public newDurationYearMonth(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;
    .registers 6
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;

    .prologue
    .line 576
    if-nez p1, :cond_a

    .line 577
    new-instance v1, Ljava/lang/NullPointerException;

    .line 578
    const-string v2, "Trying to create an xdt:yearMonthDuration with an invalid lexical representation of \"null\""

    .line 577
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :cond_a
    sget-object v1, XDTSCHEMA_YMD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 584
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_31

    .line 585
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to create an xdt:yearMonthDuration with an invalid lexical representation of \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 588
    const-string v3, "\", data model requires days and times only."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 586
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :cond_31
    invoke-virtual {p0, p1}, newDuration(Ljava/lang/String;)Lmf/javax/xml/datatype/Duration;

    move-result-object v1

    return-object v1
.end method

.method public newDurationYearMonth(ZII)Lmf/javax/xml/datatype/Duration;
    .registers 8
    .param p1, "isPositive"    # Z
    .param p2, "year"    # I
    .param p3, "month"    # I

    .prologue
    .line 710
    .line 712
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 713
    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 710
    invoke-virtual {p0, p1, v0, v1}, newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newDurationYearMonth(ZLjava/math/BigInteger;Ljava/math/BigInteger;)Lmf/javax/xml/datatype/Duration;
    .registers 12
    .param p1, "isPositive"    # Z
    .param p2, "year"    # Ljava/math/BigInteger;
    .param p3, "month"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    .line 676
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public abstract newXMLGregorianCalendar()Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .registers 20
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millisecond"    # I
    .param p8, "timezone"    # I

    .prologue
    .line 889
    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_30

    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 893
    .local v3, "realYear":Ljava/math/BigInteger;
    :goto_9
    const/4 v9, 0x0

    .line 894
    .local v9, "realMillisecond":Ljava/math/BigDecimal;
    const/high16 v2, -0x80000000

    move/from16 v0, p7

    if-eq v0, v2, :cond_3e

    .line 895
    if-ltz p7, :cond_18

    const/16 v2, 0x3e8

    move/from16 v0, p7

    if-le v0, v2, :cond_32

    .line 896
    :cond_18
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 897
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendar(int year, int month, int day, int hour, int minute, int second, int millisecond, int timezone)with invalid millisecond: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 899
    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 897
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 896
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 889
    .end local v3    # "realYear":Ljava/math/BigInteger;
    .end local v9    # "realMillisecond":Ljava/math/BigDecimal;
    :cond_30
    const/4 v3, 0x0

    goto :goto_9

    .line 903
    .restart local v3    # "realYear":Ljava/math/BigInteger;
    .restart local v9    # "realMillisecond":Ljava/math/BigDecimal;
    :cond_32
    move/from16 v0, p7

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v9

    :cond_3e
    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p8

    .line 906
    invoke-virtual/range {v2 .. v10}, newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v2

    return-object v2
.end method

.method public abstract newXMLGregorianCalendar(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public newXMLGregorianCalendarDate(IIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .registers 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "timezone"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 947
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, p4

    invoke-virtual/range {v0 .. v8}, newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .registers 14
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "timezone"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 983
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, v1

    move v8, p4

    invoke-virtual/range {v0 .. v8}, newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .registers 12
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "milliseconds"    # I
    .param p5, "timezone"    # I

    .prologue
    .line 1062
    const/4 v4, 0x0

    .line 1063
    .local v4, "realMilliseconds":Ljava/math/BigDecimal;
    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_2b

    .line 1064
    if-ltz p4, :cond_b

    const/16 v0, 0x3e8

    if-le p4, v0, :cond_21

    .line 1065
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "javax.xml.datatype.DatatypeFactory#newXMLGregorianCalendarTime(int hours, int minutes, int seconds, int milliseconds, int timezone)with invalid milliseconds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1066
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1065
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_21
    int-to-long v0, p4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v4

    :cond_2b
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    .line 1075
    invoke-virtual/range {v0 .. v5}, newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public newXMLGregorianCalendarTime(IIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .registers 15
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "fractionalSecond"    # Ljava/math/BigDecimal;
    .param p5, "timezone"    # I

    .prologue
    const/high16 v2, -0x80000000

    .line 1022
    .line 1023
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    .line 1022
    invoke-virtual/range {v0 .. v8}, newXMLGregorianCalendar(Ljava/math/BigInteger;IIIIILjava/math/BigDecimal;I)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method
