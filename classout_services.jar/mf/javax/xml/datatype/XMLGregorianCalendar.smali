.class public abstract Lmf/javax/xml/datatype/XMLGregorianCalendar;
.super Ljava/lang/Object;
.source "XMLGregorianCalendar.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method


# virtual methods
.method public abstract add(Lmf/javax/xml/datatype/Duration;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 709
    if-eqz p1, :cond_7

    instance-of v1, p1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    if-nez v1, :cond_8

    .line 712
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_7
    :goto_7
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    check-cast p1, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public abstract getDay()I
.end method

.method public abstract getEon()Ljava/math/BigInteger;
.end method

.method public abstract getEonAndYear()Ljava/math/BigInteger;
.end method

.method public abstract getFractionalSecond()Ljava/math/BigDecimal;
.end method

.method public abstract getHour()I
.end method

.method public getMillisecond()I
    .registers 4

    .prologue
    .line 630
    invoke-virtual {p0}, getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v0

    .line 633
    .local v0, "fractionalSeconds":Ljava/math/BigDecimal;
    if-nez v0, :cond_9

    .line 634
    const/high16 v1, -0x80000000

    .line 637
    :goto_8
    return v1

    :cond_9
    invoke-virtual {p0}, getFractionalSecond()Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    goto :goto_8
.end method

.method public abstract getMinute()I
.end method

.method public abstract getMonth()I
.end method

.method public abstract getSecond()I
.end method

.method public abstract getTimeZone(I)Ljava/util/TimeZone;
.end method

.method public abstract getTimezone()I
.end method

.method public abstract getXMLSchemaType()Lmf/javax/xml/namespace/QName;
.end method

.method public abstract getYear()I
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 727
    invoke-virtual {p0}, getTimezone()I

    move-result v1

    .line 728
    .local v1, "timezone":I
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_9

    .line 729
    const/4 v1, 0x0

    .line 731
    :cond_9
    move-object v0, p0

    .line 732
    .local v0, "gc":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    if-eqz v1, :cond_10

    .line 733
    invoke-virtual {p0}, normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    .line 735
    :cond_10
    invoke-virtual {v0}, getYear()I

    move-result v2

    .line 736
    invoke-virtual {v0}, getMonth()I

    move-result v3

    .line 735
    add-int/2addr v2, v3

    .line 737
    invoke-virtual {v0}, getDay()I

    move-result v3

    .line 735
    add-int/2addr v2, v3

    .line 738
    invoke-virtual {v0}, getHour()I

    move-result v3

    .line 735
    add-int/2addr v2, v3

    .line 739
    invoke-virtual {v0}, getMinute()I

    move-result v3

    .line 735
    add-int/2addr v2, v3

    .line 740
    invoke-virtual {v0}, getSecond()I

    move-result v3

    .line 735
    add-int/2addr v2, v3

    return v2
.end method

.method public abstract isValid()Z
.end method

.method public abstract normalize()Lmf/javax/xml/datatype/XMLGregorianCalendar;
.end method

.method public abstract reset()V
.end method

.method public abstract setDay(I)V
.end method

.method public abstract setFractionalSecond(Ljava/math/BigDecimal;)V
.end method

.method public abstract setHour(I)V
.end method

.method public abstract setMillisecond(I)V
.end method

.method public abstract setMinute(I)V
.end method

.method public abstract setMonth(I)V
.end method

.method public abstract setSecond(I)V
.end method

.method public setTime(III)V
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 366
    .line 370
    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, p1, p2, p3, v0}, setTime(IIILjava/math/BigDecimal;)V

    .line 372
    return-void
.end method

.method public setTime(IIII)V
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "millisecond"    # I

    .prologue
    .line 485
    invoke-virtual {p0, p1}, setHour(I)V

    .line 486
    invoke-virtual {p0, p2}, setMinute(I)V

    .line 487
    invoke-virtual {p0, p3}, setSecond(I)V

    .line 488
    invoke-virtual {p0, p4}, setMillisecond(I)V

    .line 489
    return-void
.end method

.method public setTime(IIILjava/math/BigDecimal;)V
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "fractional"    # Ljava/math/BigDecimal;

    .prologue
    .line 460
    invoke-virtual {p0, p1}, setHour(I)V

    .line 461
    invoke-virtual {p0, p2}, setMinute(I)V

    .line 462
    invoke-virtual {p0, p3}, setSecond(I)V

    .line 463
    invoke-virtual {p0, p4}, setFractionalSecond(Ljava/math/BigDecimal;)V

    .line 464
    return-void
.end method

.method public abstract setTimezone(I)V
.end method

.method public abstract setYear(I)V
.end method

.method public abstract setYear(Ljava/math/BigInteger;)V
.end method

.method public abstract toGregorianCalendar()Ljava/util/GregorianCalendar;
.end method

.method public abstract toGregorianCalendar(Ljava/util/TimeZone;Ljava/util/Locale;Lmf/javax/xml/datatype/XMLGregorianCalendar;)Ljava/util/GregorianCalendar;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 886
    invoke-virtual {p0}, toXMLFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toXMLFormat()Ljava/lang/String;
.end method
