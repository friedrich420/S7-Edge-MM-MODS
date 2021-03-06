.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final DBG:Z = false

.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final NANOS_PER_MS:J = 0xf4240L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;

.field private static sLastCountry:Ljava/lang/String;

.field private static final sLastLockObj:Ljava/lang/Object;

.field private static sLastUniqueCountry:Ljava/lang/String;

.field private static final sLastUniqueLockObj:Ljava/lang/Object;

.field private static sLastUniqueZoneOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static sTmpFormatStr:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x1d

    const/4 v1, 0x0

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sLastLockObj:Ljava/lang/Object;

    .line 50
    sput-object v1, sLastZones:Ljava/util/ArrayList;

    .line 51
    sput-object v1, sLastCountry:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sLastUniqueLockObj:Ljava/lang/Object;

    .line 55
    sput-object v1, sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    .line 56
    sput-object v1, sLastUniqueCountry:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sFormatSync:Ljava/lang/Object;

    .line 252
    new-array v0, v2, [C

    sput-object v0, sFormatStr:[C

    .line 253
    new-array v0, v2, [C

    sput-object v0, sTmpFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .registers 6
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    .prologue
    .line 256
    const/16 v1, 0x3e7

    if-le p0, v1, :cond_f

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "num":I
    :goto_5
    if-eqz p0, :cond_c

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 260
    div-int/lit8 p0, p0, 0xa

    goto :goto_5

    .line 262
    :cond_c
    add-int v1, v0, p1

    .line 274
    .end local v0    # "num":I
    :goto_e
    return v1

    .line 264
    :cond_f
    const/16 v1, 0x63

    if-gt p0, v1, :cond_18

    if-eqz p2, :cond_1b

    const/4 v1, 0x3

    if-lt p3, v1, :cond_1b

    .line 265
    :cond_18
    add-int/lit8 v1, p1, 0x3

    goto :goto_e

    .line 267
    :cond_1b
    const/16 v1, 0x9

    if-gt p0, v1, :cond_24

    if-eqz p2, :cond_27

    const/4 v1, 0x2

    if-lt p3, v1, :cond_27

    .line 268
    :cond_24
    add-int/lit8 v1, p1, 0x2

    goto :goto_e

    .line 270
    :cond_27
    if-nez p2, :cond_2b

    if-lez p0, :cond_2e

    .line 271
    :cond_2b
    add-int/lit8 v1, p1, 0x1

    goto :goto_e

    .line 274
    :cond_2e
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 9
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 411
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 412
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    :goto_b
    return-void

    .line 415
    :cond_c
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, formatDuration(JLjava/io/PrintWriter;I)V

    goto :goto_b
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 5
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, formatDuration(JLjava/io/PrintWriter;I)V

    .line 407
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .registers 10
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    .prologue
    .line 398
    sget-object v2, sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 399
    :try_start_3
    invoke-static {p0, p1, p3}, formatDurationLocked(JI)I

    move-result v0

    .line 400
    .local v0, "len":I
    new-instance v1, Ljava/lang/String;

    sget-object v3, sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    monitor-exit v2

    .line 402
    return-void

    .line 401
    .end local v0    # "len":I
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .registers 7
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 390
    sget-object v2, sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 391
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, formatDurationLocked(JI)I

    move-result v0

    .line 392
    .local v0, "len":I
    sget-object v1, sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 393
    monitor-exit v2

    .line 394
    return-void

    .line 393
    .end local v0    # "len":I
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .registers 25
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    .prologue
    .line 318
    sget-object v4, sFormatStr:[C

    array-length v4, v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_d

    .line 319
    move/from16 v0, p2

    new-array v4, v0, [C

    sput-object v4, sFormatStr:[C

    .line 322
    :cond_d
    sget-object v2, sFormatStr:[C

    .line 324
    .local v2, "formatStr":[C
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-nez v4, :cond_30

    .line 325
    const/4 v5, 0x0

    .line 326
    .local v5, "pos":I
    add-int/lit8 p2, p2, -0x1

    move/from16 v16, v5

    .line 327
    .end local v5    # "pos":I
    .local v16, "pos":I
    :goto_1a
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_29

    .line 328
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "pos":I
    .restart local v5    # "pos":I
    const/16 v4, 0x20

    aput-char v4, v2, v16

    move/from16 v16, v5

    .end local v5    # "pos":I
    .restart local v16    # "pos":I
    goto :goto_1a

    .line 330
    :cond_29
    const/16 v4, 0x30

    aput-char v4, v2, v16

    .line 331
    add-int/lit8 v4, v16, 0x1

    .line 385
    .end local v16    # "pos":I
    :goto_2f
    return v4

    .line 335
    :cond_30
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-lez v4, :cond_bb

    .line 336
    const/16 v17, 0x2b

    .line 342
    .local v17, "prefix":C
    :goto_38
    const-wide/16 v6, 0x3e8

    rem-long v6, p0, v6

    long-to-int v13, v6

    .line 343
    .local v13, "millis":I
    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v18, v0

    .line 344
    .local v18, "seconds":I
    const/4 v3, 0x0

    .local v3, "days":I
    const/4 v12, 0x0

    .local v12, "hours":I
    const/4 v14, 0x0

    .line 346
    .local v14, "minutes":I
    const v4, 0x15180

    move/from16 v0, v18

    if-le v0, v4, :cond_5e

    .line 347
    const v4, 0x15180

    div-int v3, v18, v4

    .line 348
    const v4, 0x15180

    mul-int/2addr v4, v3

    sub-int v18, v18, v4

    .line 350
    :cond_5e
    const/16 v4, 0xe10

    move/from16 v0, v18

    if-le v0, v4, :cond_6c

    .line 351
    move/from16 v0, v18

    div-int/lit16 v12, v0, 0xe10

    .line 352
    mul-int/lit16 v4, v12, 0xe10

    sub-int v18, v18, v4

    .line 354
    :cond_6c
    const/16 v4, 0x3c

    move/from16 v0, v18

    if-le v0, v4, :cond_78

    .line 355
    div-int/lit8 v14, v18, 0x3c

    .line 356
    mul-int/lit8 v4, v14, 0x3c

    sub-int v18, v18, v4

    .line 359
    :cond_78
    const/4 v5, 0x0

    .line 361
    .restart local v5    # "pos":I
    if-eqz p2, :cond_cc

    .line 362
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, accumField(IIZI)I

    move-result v15

    .line 363
    .local v15, "myLen":I
    const/4 v6, 0x1

    if-lez v15, :cond_c4

    const/4 v4, 0x1

    :goto_86
    const/4 v7, 0x2

    invoke-static {v12, v6, v4, v7}, accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 364
    const/4 v6, 0x1

    if-lez v15, :cond_c6

    const/4 v4, 0x1

    :goto_90
    const/4 v7, 0x2

    invoke-static {v14, v6, v4, v7}, accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 365
    const/4 v6, 0x1

    if-lez v15, :cond_c8

    const/4 v4, 0x1

    :goto_9a
    const/4 v7, 0x2

    move/from16 v0, v18

    invoke-static {v0, v6, v4, v7}, accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 366
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lez v15, :cond_ca

    const/4 v4, 0x3

    :goto_a7
    invoke-static {v13, v6, v7, v4}, accumField(IIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v15, v4

    .line 367
    :goto_ae
    move/from16 v0, p2

    if-ge v15, v0, :cond_cc

    .line 368
    const/16 v4, 0x20

    aput-char v4, v2, v5

    .line 369
    add-int/lit8 v5, v5, 0x1

    .line 370
    add-int/lit8 v15, v15, 0x1

    goto :goto_ae

    .line 338
    .end local v3    # "days":I
    .end local v5    # "pos":I
    .end local v12    # "hours":I
    .end local v13    # "millis":I
    .end local v14    # "minutes":I
    .end local v15    # "myLen":I
    .end local v17    # "prefix":C
    .end local v18    # "seconds":I
    :cond_bb
    const/16 v17, 0x2d

    .line 339
    .restart local v17    # "prefix":C
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    goto/16 :goto_38

    .line 363
    .restart local v3    # "days":I
    .restart local v5    # "pos":I
    .restart local v12    # "hours":I
    .restart local v13    # "millis":I
    .restart local v14    # "minutes":I
    .restart local v15    # "myLen":I
    .restart local v18    # "seconds":I
    :cond_c4
    const/4 v4, 0x0

    goto :goto_86

    .line 364
    :cond_c6
    const/4 v4, 0x0

    goto :goto_90

    .line 365
    :cond_c8
    const/4 v4, 0x0

    goto :goto_9a

    .line 366
    :cond_ca
    const/4 v4, 0x0

    goto :goto_a7

    .line 374
    .end local v15    # "myLen":I
    :cond_cc
    aput-char v17, v2, v5

    .line 375
    add-int/lit8 v5, v5, 0x1

    .line 377
    move/from16 v19, v5

    .line 378
    .local v19, "start":I
    if-eqz p2, :cond_12b

    const/16 v20, 0x1

    .line 379
    .local v20, "zeropad":Z
    :goto_d6
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, printFieldLocked([CICIZI)I

    move-result v5

    .line 380
    const/16 v8, 0x68

    move/from16 v0, v19

    if-eq v5, v0, :cond_12e

    const/4 v10, 0x1

    :goto_e5
    if-eqz v20, :cond_130

    const/4 v11, 0x2

    :goto_e8
    move-object v6, v2

    move v7, v12

    move v9, v5

    invoke-static/range {v6 .. v11}, printFieldLocked([CICIZI)I

    move-result v5

    .line 381
    const/16 v8, 0x6d

    move/from16 v0, v19

    if-eq v5, v0, :cond_132

    const/4 v10, 0x1

    :goto_f6
    if-eqz v20, :cond_134

    const/4 v11, 0x2

    :goto_f9
    move-object v6, v2

    move v7, v14

    move v9, v5

    invoke-static/range {v6 .. v11}, printFieldLocked([CICIZI)I

    move-result v5

    .line 382
    const/16 v8, 0x73

    move/from16 v0, v19

    if-eq v5, v0, :cond_136

    const/4 v10, 0x1

    :goto_107
    if-eqz v20, :cond_138

    const/4 v11, 0x2

    :goto_10a
    move-object v6, v2

    move/from16 v7, v18

    move v9, v5

    invoke-static/range {v6 .. v11}, printFieldLocked([CICIZI)I

    move-result v5

    .line 383
    const/16 v8, 0x6d

    const/4 v10, 0x1

    if-eqz v20, :cond_13a

    move/from16 v0, v19

    if-eq v5, v0, :cond_13a

    const/4 v11, 0x3

    :goto_11c
    move-object v6, v2

    move v7, v13

    move v9, v5

    invoke-static/range {v6 .. v11}, printFieldLocked([CICIZI)I

    move-result v5

    .line 384
    const/16 v4, 0x73

    aput-char v4, v2, v5

    .line 385
    add-int/lit8 v4, v5, 0x1

    goto/16 :goto_2f

    .line 378
    .end local v20    # "zeropad":Z
    :cond_12b
    const/16 v20, 0x0

    goto :goto_d6

    .line 380
    .restart local v20    # "zeropad":Z
    :cond_12e
    const/4 v10, 0x0

    goto :goto_e5

    :cond_130
    const/4 v11, 0x0

    goto :goto_e8

    .line 381
    :cond_132
    const/4 v10, 0x0

    goto :goto_f6

    :cond_134
    const/4 v11, 0x0

    goto :goto_f9

    .line 382
    :cond_136
    const/4 v10, 0x0

    goto :goto_107

    :cond_138
    const/4 v11, 0x0

    goto :goto_10a

    .line 383
    :cond_13a
    const/4 v11, 0x0

    goto :goto_11c
.end method

.method public static formatForLogging(J)Ljava/lang/String;
    .registers 4
    .param p0, "millis"    # J

    .prologue
    .line 450
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_a

    .line 451
    const-string/jumbo v0, "unknown"

    .line 453
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static formatUptime(J)Ljava/lang/String;
    .registers 8
    .param p0, "time"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, p0, v2

    .line 421
    .local v0, "diff":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_2a

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    :goto_29
    return-object v2

    .line 424
    :cond_2a
    cmp-long v2, v0, v4

    if-gez v2, :cond_4d

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    .line 427
    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (now)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_29
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .registers 15
    .param p0, "offset"    # I
    .param p1, "dst"    # Z
    .param p2, "when"    # J
    .param p4, "country"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "best":Ljava/util/TimeZone;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 70
    .local v5, "d":Ljava/util/Date;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 71
    .local v1, "current":Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "currentName":Ljava/lang/String;
    invoke-virtual {v1, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 73
    .local v4, "currentOffset":I
    invoke-virtual {v1, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    .line 75
    .local v2, "currentDst":Z
    invoke-static {p4}, getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/TimeZone;

    .line 80
    .local v7, "tz":Ljava/util/TimeZone;
    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 81
    if-ne v4, p0, :cond_39

    if-ne v2, p1, :cond_39

    .line 99
    .end local v1    # "current":Ljava/util/TimeZone;
    .end local v7    # "tz":Ljava/util/TimeZone;
    :goto_38
    return-object v1

    .line 91
    .restart local v1    # "current":Ljava/util/TimeZone;
    .restart local v7    # "tz":Ljava/util/TimeZone;
    :cond_39
    if-nez v0, :cond_1e

    .line 92
    invoke-virtual {v7, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-ne v8, p0, :cond_1e

    invoke-virtual {v7, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    if-ne v8, p1, :cond_1e

    .line 94
    move-object v0, v7

    goto :goto_1e

    .end local v7    # "tz":Ljava/util/TimeZone;
    :cond_49
    move-object v1, v0

    .line 99
    goto :goto_38
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 238
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .param p0, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    sget-object v9, sLastLockObj:Ljava/lang/Object;

    monitor-enter v9

    .line 160
    if-eqz p0, :cond_11

    :try_start_5
    sget-object v8, sLastCountry:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 162
    sget-object v6, sLastZones:Ljava/util/ArrayList;

    monitor-exit v9

    .line 216
    :cond_10
    :goto_10
    return-object v6

    .line 164
    :cond_11
    monitor-exit v9
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_4d

    .line 166
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v6, "tzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    if-eqz p0, :cond_10

    .line 173
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 174
    .local v4, "r":Landroid/content/res/Resources;
    const v8, 0x111001a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 177
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_24
    const-string/jumbo v8, "timezones"

    invoke-static {v3, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 180
    :cond_2a
    :goto_2a
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 182
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_3c

    const-string/jumbo v8, "timezone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_39
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_39} :catch_7c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_39} :catch_9f
    .catchall {:try_start_24 .. :try_end_39} :catchall_c3

    move-result v8

    if-nez v8, :cond_50

    .line 209
    :cond_3c
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 212
    .end local v2    # "element":Ljava/lang/String;
    :goto_3f
    sget-object v9, sLastLockObj:Ljava/lang/Object;

    monitor-enter v9

    .line 214
    :try_start_42
    sput-object v6, sLastZones:Ljava/util/ArrayList;

    .line 215
    sput-object p0, sLastCountry:Ljava/lang/String;

    .line 216
    sget-object v6, sLastZones:Ljava/util/ArrayList;

    .end local v6    # "tzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    monitor-exit v9

    goto :goto_10

    .line 217
    :catchall_4a
    move-exception v8

    monitor-exit v9
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v8

    .line 164
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "r":Landroid/content/res/Resources;
    :catchall_4d
    move-exception v8

    :try_start_4e
    monitor-exit v9
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v8

    .line 187
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "r":Landroid/content/res/Resources;
    .restart local v6    # "tzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_50
    const/4 v8, 0x0

    :try_start_51
    const-string v9, "code"

    invoke-interface {v3, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 190
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2a

    .line 191
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "zoneIdString":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 193
    .local v5, "tz":Ljava/util/TimeZone;
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GMT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 195
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_7b} :catch_7c
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_7b} :catch_9f
    .catchall {:try_start_51 .. :try_end_7b} :catchall_c3

    goto :goto_2a

    .line 204
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "tz":Ljava/util/TimeZone;
    .end local v7    # "zoneIdString":Ljava/lang/String;
    :catch_7c
    move-exception v1

    .line 205
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7d
    const-string v8, "TimeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got xml parser exception getTimeZone(\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'): e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catchall {:try_start_7d .. :try_end_9b} :catchall_c3

    .line 209
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3f

    .line 206
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_9f
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/IOException;
    :try_start_a0
    const-string v8, "TimeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got IO exception getTimeZone(\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'): e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be
    .catchall {:try_start_a0 .. :try_end_be} :catchall_c3

    .line 209
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_3f

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_c3
    move-exception v8

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v8
.end method

.method public static getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    sget-object v7, sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 111
    if-eqz p0, :cond_11

    :try_start_5
    sget-object v6, sLastUniqueCountry:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 116
    sget-object v6, sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    monitor-exit v7

    .line 146
    :goto_10
    return-object v6

    .line 118
    :cond_11
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_4a

    .line 120
    invoke-static {p0}, getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 121
    .local v5, "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v3, "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TimeZone;

    .line 125
    .local v4, "zone":Ljava/util/TimeZone;
    const/4 v0, 0x0

    .line 126
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_44

    .line 127
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TimeZone;

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    if-ne v6, v7, :cond_4d

    .line 128
    const/4 v0, 0x1

    .line 132
    :cond_44
    if-nez v0, :cond_1f

    .line 137
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 118
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v4    # "zone":Ljava/util/TimeZone;
    .end local v5    # "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    :catchall_4a
    move-exception v6

    :try_start_4b
    monitor-exit v7
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v6

    .line 126
    .restart local v0    # "found":Z
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v4    # "zone":Ljava/util/TimeZone;
    .restart local v5    # "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 141
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v4    # "zone":Ljava/util/TimeZone;
    :cond_50
    sget-object v7, sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 143
    :try_start_53
    sput-object v3, sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    .line 144
    sput-object p0, sLastUniqueCountry:Ljava/lang/String;

    .line 146
    sget-object v6, sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    monitor-exit v7

    goto :goto_10

    .line 147
    :catchall_5b
    move-exception v6

    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5b

    throw v6
.end method

.method public static logTimeOfDay(J)Ljava/lang/String;
    .registers 6
    .param p0, "millis"    # J

    .prologue
    .line 439
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 440
    .local v0, "c":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_29

    .line 441
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 442
    const-string v1, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 444
    :goto_28
    return-object v1

    :cond_29
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_28
.end method

.method private static printFieldLocked([CICIZI)I
    .registers 11
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    .prologue
    .line 279
    if-nez p4, :cond_4

    if-lez p1, :cond_65

    .line 280
    :cond_4
    move v1, p3

    .line 281
    .local v1, "startPos":I
    const/16 v3, 0x3e7

    if-le p1, v3, :cond_2e

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, "tmp":I
    :goto_a
    if-eqz p1, :cond_1f

    sget-object v3, sTmpFormatStr:[C

    array-length v3, v3

    if-ge v2, v3, :cond_1f

    .line 284
    rem-int/lit8 v0, p1, 0xa

    .line 285
    .local v0, "dig":I
    sget-object v3, sTmpFormatStr:[C

    add-int/lit8 v4, v0, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 286
    add-int/lit8 v2, v2, 0x1

    .line 287
    div-int/lit8 p1, p1, 0xa

    .line 288
    goto :goto_a

    .line 289
    .end local v0    # "dig":I
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    .line 290
    :goto_21
    if-ltz v2, :cond_61

    .line 291
    sget-object v3, sTmpFormatStr:[C

    aget-char v3, v3, v2

    aput-char v3, p0, p3

    .line 292
    add-int/lit8 p3, p3, 0x1

    .line 293
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 296
    .end local v2    # "tmp":I
    :cond_2e
    if-eqz p4, :cond_33

    const/4 v3, 0x3

    if-ge p5, v3, :cond_37

    :cond_33
    const/16 v3, 0x63

    if-le p1, v3, :cond_43

    .line 297
    :cond_37
    div-int/lit8 v0, p1, 0x64

    .line 298
    .restart local v0    # "dig":I
    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 299
    add-int/lit8 p3, p3, 0x1

    .line 300
    mul-int/lit8 v3, v0, 0x64

    sub-int/2addr p1, v3

    .line 302
    .end local v0    # "dig":I
    :cond_43
    if-eqz p4, :cond_48

    const/4 v3, 0x2

    if-ge p5, v3, :cond_4e

    :cond_48
    const/16 v3, 0x9

    if-gt p1, v3, :cond_4e

    if-eq v1, p3, :cond_5a

    .line 303
    :cond_4e
    div-int/lit8 v0, p1, 0xa

    .line 304
    .restart local v0    # "dig":I
    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 305
    add-int/lit8 p3, p3, 0x1

    .line 306
    mul-int/lit8 v3, v0, 0xa

    sub-int/2addr p1, v3

    .line 308
    .end local v0    # "dig":I
    :cond_5a
    add-int/lit8 v3, p1, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 309
    add-int/lit8 p3, p3, 0x1

    .line 311
    :cond_61
    aput-char p2, p0, p3

    .line 312
    add-int/lit8 p3, p3, 0x1

    .line 314
    .end local v1    # "startPos":I
    :cond_65
    return p3
.end method
