.class public Lcom/absolute/android/persistservice/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;

.field static final synthetic b:Z


# instance fields
.field private c:Lcom/absolute/android/persistservice/u;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/io/File;

.field private i:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    const-class v0, Lcom/absolute/android/persistservice/v;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, b:Z

    .line 61
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, a:Ljava/lang/String;

    return-void

    .line 31
    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/absolute/android/persistservice/y;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x4

    iput v0, p0, e:I

    .line 70
    const/16 v0, 0x3c

    iput v0, p0, f:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, h:Ljava/io/File;

    .line 106
    iput-object p2, p0, d:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/absolute/android/persistservice/u;

    invoke-direct {v0, p1, p0, p2}, Lcom/absolute/android/persistservice/u;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3, v0, v1, v1}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/ac;ZZ)V

    .line 109
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, a(Lcom/absolute/android/persistservice/u;Z)V

    .line 110
    return-void
.end method

.method protected static a(C)I
    .registers 2

    .prologue
    const/4 v0, 0x3

    .line 441
    .line 443
    sparse-switch p0, :sswitch_data_e

    .line 460
    :goto_4
    :sswitch_4
    return v0

    .line 445
    :sswitch_5
    const/4 v0, 0x2

    .line 446
    goto :goto_4

    .line 451
    :sswitch_7
    const/4 v0, 0x4

    .line 452
    goto :goto_4

    .line 454
    :sswitch_9
    const/4 v0, 0x5

    .line 455
    goto :goto_4

    .line 457
    :sswitch_b
    const/4 v0, 0x6

    goto :goto_4

    .line 443
    nop

    :sswitch_data_e
    .sparse-switch
        0x44 -> :sswitch_4
        0x45 -> :sswitch_b
        0x49 -> :sswitch_7
        0x56 -> :sswitch_5
        0x57 -> :sswitch_9
    .end sparse-switch
.end method

.method protected static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 81
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x4

    .line 524
    const-string v0, ""

    .line 525
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 526
    sget-boolean v2, b:Z

    if-nez v2, :cond_18

    array-length v2, v1

    if-gt v2, v4, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 527
    :cond_18
    array-length v2, v1

    if-le v2, v4, :cond_50

    .line 528
    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 529
    if-nez p1, :cond_33

    .line 530
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    :cond_50
    return-object v0
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistence/LogEntry;)V
    .registers 11

    .prologue
    .line 472
    monitor-enter p0

    :try_start_1
    iget v0, p0, f:I

    if-eqz v0, :cond_9

    iget-object v0, p0, h:Ljava/io/File;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b1

    if-nez v0, :cond_b

    .line 513
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 476
    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 478
    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getTimeStampUTC()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/dateutils/DateUtils;->encodeDateAsUTC(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getSeverity()I

    move-result v0

    invoke-static {v0}, b(I)C

    move-result v3

    .line 480
    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 485
    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v5, a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 486
    array-length v6, v5

    const/4 v0, 0x0

    :goto_30
    if-ge v0, v6, :cond_57

    aget-object v7, v5, v0

    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 490
    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    sget-object v7, a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 497
    :cond_57
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-direct {p0, v0}, e(Ljava/lang/String;)V

    .line 501
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, h:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 502
    new-instance v2, Ljava/io/BufferedWriter;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 503
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_73} :catch_74
    .catchall {:try_start_b .. :try_end_73} :catchall_b1

    goto :goto_9

    .line 506
    :catch_74
    move-exception v0

    .line 507
    :try_start_75
    const-string v1, "APS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Persistence Service Logger writeToLogFile failed for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/absolute/android/persistence/LogEntry;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " . Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Re-initializing log."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    invoke-virtual {p0}, b()V

    .line 511
    iget-object v0, p0, c:Lcom/absolute/android/persistservice/u;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, a(Lcom/absolute/android/persistservice/u;Z)V
    :try_end_af
    .catchall {:try_start_75 .. :try_end_af} :catchall_b1

    goto/16 :goto_9

    .line 472
    :catchall_b1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/u;Z)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 207
    monitor-enter p0

    :try_start_2
    iput-object p1, p0, c:Lcom/absolute/android/persistservice/u;

    .line 208
    iget-object v1, p0, c:Lcom/absolute/android/persistservice/u;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/u;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, g:Ljava/lang/String;

    .line 209
    iget-object v1, p0, c:Lcom/absolute/android/persistservice/u;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/u;->a()I

    move-result v1

    iput v1, p0, e:I

    .line 210
    iget-object v1, p0, c:Lcom/absolute/android/persistservice/u;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/u;->b()I

    move-result v1

    iput v1, p0, f:I

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, e:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, i:Ljava/util/ArrayList;

    .line 214
    :goto_25
    iget v1, p0, e:I

    if-ge v0, v1, :cond_63

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 218
    iget-object v3, p0, g:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 219
    iput-object v2, p0, h:Ljava/io/File;

    .line 214
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 222
    :cond_63
    iget-object v0, p0, h:Ljava/io/File;

    if-nez v0, :cond_9b

    .line 224
    iget-object v0, p0, i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, h:Ljava/io/File;

    .line 225
    iget-object v0, p0, h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, g:Ljava/lang/String;

    .line 228
    if-nez p2, :cond_94

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persistence Service Logger - initializing current log file to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, c(Ljava/lang/String;)V

    .line 233
    :cond_94
    iget-object v0, p0, c:Lcom/absolute/android/persistservice/u;

    iget-object v1, p0, g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/u;->a(Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9b} :catch_9d
    .catchall {:try_start_2 .. :try_end_9b} :catchall_a6

    .line 245
    :cond_9b
    :goto_9b
    monitor-exit p0

    return-void

    .line 242
    :catch_9d
    move-exception v0

    .line 243
    :try_start_9e
    const-string v1, "APS"

    const-string v2, "Persistence Service Logger initialization failed, logging to logcat only. Got exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_a6

    goto :goto_9b

    .line 207
    :catchall_a6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static b(I)C
    .registers 2

    .prologue
    .line 410
    const/16 v0, 0x20

    .line 412
    packed-switch p0, :pswitch_data_16

    .line 429
    :goto_5
    return v0

    .line 414
    :pswitch_6
    const/16 v0, 0x56

    .line 415
    goto :goto_5

    .line 417
    :pswitch_9
    const/16 v0, 0x44

    .line 418
    goto :goto_5

    .line 420
    :pswitch_c
    const/16 v0, 0x49

    .line 421
    goto :goto_5

    .line 423
    :pswitch_f
    const/16 v0, 0x57

    .line 424
    goto :goto_5

    .line 426
    :pswitch_12
    const/16 v0, 0x45

    goto :goto_5

    .line 412
    nop

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private c(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 589
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 593
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 595
    :cond_15
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 544
    iget-object v0, p0, h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    iget v2, p0, f:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_aa

    .line 546
    iget-object v0, p0, i:Ljava/util/ArrayList;

    iget-object v1, p0, h:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 547
    sget-boolean v1, b:Z

    if-nez v1, :cond_2b

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 549
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    .line 550
    iget v1, p0, e:I

    if-lt v0, v1, :cond_ab

    .line 551
    const/4 v0, 0x0

    move v1, v0

    .line 555
    :goto_33
    iget-object v0, p0, i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, c(Ljava/io/File;)V

    .line 558
    iget-object v0, p0, i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, e:I

    if-le v0, v2, :cond_62

    .line 559
    iget v0, p0, e:I

    move v2, v0

    :goto_4b
    iget-object v0, p0, i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_62

    .line 560
    iget-object v0, p0, i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, c(Ljava/io/File;)V

    .line 559
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4b

    .line 565
    :cond_62
    iget-object v0, p0, i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 566
    if-nez v0, :cond_99

    .line 567
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    iget-object v2, p0, i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 572
    :cond_99
    iput-object v0, p0, h:Ljava/io/File;

    .line 573
    iget-object v0, p0, h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, g:Ljava/lang/String;

    .line 574
    iget-object v0, p0, c:Lcom/absolute/android/persistservice/u;

    iget-object v1, p0, g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/u;->a(Ljava/lang/String;)V

    .line 581
    :cond_aa
    return-void

    :cond_ab
    move v1, v0

    goto :goto_33
.end method


# virtual methods
.method public a(I)Lcom/absolute/android/persistence/IABTLogIterator;
    .registers 3

    .prologue
    .line 118
    new-instance v0, Lcom/absolute/android/persistservice/t;

    invoke-direct {v0, p1, p0}, Lcom/absolute/android/persistservice/t;-><init>(ILcom/absolute/android/persistservice/v;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;I)Lcom/absolute/android/persistence/LogEntry;
    .registers 9

    .prologue
    .line 374
    const/4 v1, 0x0

    .line 377
    :try_start_1
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 378
    const-string v2, "/"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 379
    const-string v3, "/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 380
    invoke-static {v3}, a(C)I

    move-result v3

    .line 383
    if-lt v3, p2, :cond_69

    .line 385
    const/4 v4, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {v0}, Lcom/absolute/android/dateutils/DateUtils;->decodeUTCDateAsCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    .line 388
    const-string v0, ":"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 389
    const-string v5, "/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 391
    const-string v5, ":"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 393
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/absolute/android/persistence/LogEntry;-><init>(Ljava/util/Calendar;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_4c

    .line 398
    :goto_4b
    return-object v0

    .line 395
    :catch_4c
    move-exception v0

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception parsing log file line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_69
    move-object v0, v1

    goto :goto_4b
.end method

.method protected declared-synchronized a(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .prologue
    .line 326
    monitor-enter p0

    const/4 v1, 0x0

    .line 328
    :try_start_2
    iget-object v0, p0, h:Ljava/io/File;

    if-eq p1, v0, :cond_27

    .line 330
    if-nez p1, :cond_a

    .line 331
    iget-object p1, p0, h:Ljava/io/File;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_29

    .line 335
    :cond_a
    :try_start_a
    iget-object v0, p0, i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    .line 337
    iget v2, p0, e:I

    if-lt v0, v2, :cond_17

    .line 338
    const/4 v0, 0x0

    .line 340
    :cond_17
    iget-object v2, p0, i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_21
    .catchall {:try_start_a .. :try_end_1f} :catchall_29

    .line 346
    :goto_1f
    monitor-exit p0

    return-object v0

    .line 342
    :catch_21
    move-exception v0

    .line 343
    :try_start_22
    const-string v2, "Persistence Service Logger getNextOldestLogFile failed. Got exception: "

    invoke-virtual {p0, v2, v0}, a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_29

    :cond_27
    move-object v0, v1

    goto :goto_1f

    .line 326
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(II)V
    .registers 5

    .prologue
    .line 154
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_f

    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NumLogs argument must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 156
    :cond_f
    if-gez p2, :cond_19

    :try_start_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MaxSizeKB argument must >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_19
    iget v0, p0, e:I

    if-eq p1, v0, :cond_2d

    .line 163
    iget-object v0, p0, i:Ljava/util/ArrayList;

    iget v1, p0, e:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 165
    iput p1, p0, e:I

    .line 166
    iget-object v0, p0, c:Lcom/absolute/android/persistservice/u;

    iget v1, p0, e:I

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/u;->a(I)V

    .line 169
    :cond_2d
    iget v0, p0, f:I

    if-eq p2, v0, :cond_43

    .line 174
    if-nez p2, :cond_3a

    .line 175
    const-string v0, "APS"

    const-string v1, "Maximum Log Size has been set to 0. This will turn off Peristence Service logging to file"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_3a
    iput p2, p0, f:I

    .line 179
    iget-object v0, p0, c:Lcom/absolute/android/persistservice/u;

    iget v1, p0, f:I

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/u;->b(I)V
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_c

    .line 182
    :cond_43
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 126
    monitor-enter p0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_7

    const/4 v0, 0x2

    if-ge p1, v0, :cond_12

    .line 127
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid severity parameter for logMessage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    .line 126
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_12
    if-nez p3, :cond_16

    .line 130
    :try_start_14
    const-string p3, ""

    .line 132
    :cond_16
    if-nez p2, :cond_1a

    .line 133
    const-string p2, ""

    .line 135
    :cond_1a
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, a(Lcom/absolute/android/persistence/LogEntry;)V
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_f

    .line 136
    monitor-exit p0

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 257
    .line 258
    if-eqz p2, :cond_17

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 264
    :cond_17
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {p0, v2}, a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, a(Lcom/absolute/android/persistence/LogEntry;)V

    .line 265
    return-void
.end method

.method public declared-synchronized b()V
    .registers 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 144
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, c(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 142
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 276
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v2}, a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, a(Lcom/absolute/android/persistence/LogEntry;)V

    .line 277
    return-void
.end method

.method protected declared-synchronized b(Ljava/io/File;)Z
    .registers 3

    .prologue
    .line 358
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, h:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .registers 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget v0, p0, e:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 288
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v2}, a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, a(Lcom/absolute/android/persistence/LogEntry;)V

    .line 289
    return-void
.end method

.method public declared-synchronized d()I
    .registers 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget v0, p0, f:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 300
    new-instance v0, Lcom/absolute/android/persistence/LogEntry;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2}, a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/absolute/android/persistence/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, a(Lcom/absolute/android/persistence/LogEntry;)V

    .line 301
    return-void
.end method
