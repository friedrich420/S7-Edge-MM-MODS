.class public final Lmf/javax/xml/datatype/DatatypeConstants;
.super Ljava/lang/Object;
.source "DatatypeConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/javax/xml/datatype/DatatypeConstants$Field;
    }
.end annotation


# static fields
.field public static final APRIL:I = 0x4

.field public static final AUGUST:I = 0x8

.field public static final DATE:Lmf/javax/xml/namespace/QName;

.field public static final DATETIME:Lmf/javax/xml/namespace/QName;

.field public static final DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

.field public static final DECEMBER:I = 0xc

.field public static final DURATION:Lmf/javax/xml/namespace/QName;

.field public static final DURATION_DAYTIME:Lmf/javax/xml/namespace/QName;

.field public static final DURATION_YEARMONTH:Lmf/javax/xml/namespace/QName;

.field public static final EQUAL:I = 0x0

.field public static final FEBRUARY:I = 0x2

.field public static final FIELD_UNDEFINED:I = -0x80000000

.field public static final GDAY:Lmf/javax/xml/namespace/QName;

.field public static final GMONTH:Lmf/javax/xml/namespace/QName;

.field public static final GMONTHDAY:Lmf/javax/xml/namespace/QName;

.field public static final GREATER:I = 0x1

.field public static final GYEAR:Lmf/javax/xml/namespace/QName;

.field public static final GYEARMONTH:Lmf/javax/xml/namespace/QName;

.field public static final HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

.field public static final INDETERMINATE:I = 0x2

.field public static final JANUARY:I = 0x1

.field public static final JULY:I = 0x7

.field public static final JUNE:I = 0x6

.field public static final LESSER:I = -0x1

.field public static final MARCH:I = 0x3

.field public static final MAX_TIMEZONE_OFFSET:I = -0x348

.field public static final MAY:I = 0x5

.field public static final MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

.field public static final MIN_TIMEZONE_OFFSET:I = 0x348

.field public static final MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

.field public static final NOVEMBER:I = 0xb

.field public static final OCTOBER:I = 0xa

.field public static final SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

.field public static final SEPTEMBER:I = 0x9

.field public static final TIME:Lmf/javax/xml/namespace/QName;

.field public static final YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v0, Lmf/javax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "YEARS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmf/javax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sput-object v0, YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .line 159
    new-instance v0, Lmf/javax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "MONTHS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmf/javax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sput-object v0, MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .line 164
    new-instance v0, Lmf/javax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "DAYS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lmf/javax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sput-object v0, DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .line 169
    new-instance v0, Lmf/javax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "HOURS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lmf/javax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sput-object v0, HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .line 174
    new-instance v0, Lmf/javax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "MINUTES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lmf/javax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sput-object v0, MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .line 179
    new-instance v0, Lmf/javax/xml/datatype/DatatypeConstants$Field;

    const-string v1, "SECONDS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lmf/javax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;ILmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sput-object v0, SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .line 232
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v2, "dateTime"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, DATETIME:Lmf/javax/xml/namespace/QName;

    .line 237
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v2, "time"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, TIME:Lmf/javax/xml/namespace/QName;

    .line 242
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v2, "date"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, DATE:Lmf/javax/xml/namespace/QName;

    .line 247
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v2, "gYearMonth"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, GYEARMONTH:Lmf/javax/xml/namespace/QName;

    .line 252
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v2, "gMonthDay"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, GMONTHDAY:Lmf/javax/xml/namespace/QName;

    .line 257
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v2, "gYear"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, GYEAR:Lmf/javax/xml/namespace/QName;

    .line 262
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v2, "gMonth"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, GMONTH:Lmf/javax/xml/namespace/QName;

    .line 267
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v2, "gDay"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, GDAY:Lmf/javax/xml/namespace/QName;

    .line 272
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v2, "duration"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, DURATION:Lmf/javax/xml/namespace/QName;

    .line 277
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2003/11/xpath-datatypes"

    const-string/jumbo v2, "dayTimeDuration"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, DURATION_DAYTIME:Lmf/javax/xml/namespace/QName;

    .line 282
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/2003/11/xpath-datatypes"

    const-string/jumbo v2, "yearMonthDuration"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, DURATION_YEARMONTH:Lmf/javax/xml/namespace/QName;

    .line 292
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method
