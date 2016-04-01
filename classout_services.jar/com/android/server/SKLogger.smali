.class public Lcom/android/server/SKLogger;
.super Ljava/lang/Object;
.source "SKLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SKLogger$1;,
        Lcom/android/server/SKLogger$SKHandler;,
        Lcom/android/server/SKLogger$SKFormatter;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field public static LOG_LEVEL_ALL:I

.field public static LOG_LEVEL_DENIALS:I

.field public static LOG_LEVEL_OFF:I

.field private static LOG_MAX_SIZE:I

.field private static LOG_NEW:Ljava/lang/String;

.field private static LOG_OLD:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static SK_VERBOSE_DEFAULT:I

.field private static SK_VERBOSE_PROP:Ljava/lang/String;

.field private static mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

.field private static mLogger:Ljava/util/logging/Logger;

.field private static final mSKLogger:Lcom/android/server/SKLogger;

.field private static mSKTxt:Lcom/android/server/SKLogger$SKHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 33
    const/4 v0, 0x0

    sput v0, LOG_LEVEL_OFF:I

    .line 34
    sput v1, LOG_LEVEL_DENIALS:I

    .line 35
    const/4 v0, 0x2

    sput v0, LOG_LEVEL_ALL:I

    .line 37
    const-string v0, "SKLogger"

    sput-object v0, LOG_TAG:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "persist.security.ams.verbose"

    sput-object v0, SK_VERBOSE_PROP:Ljava/lang/String;

    .line 40
    sget v0, LOG_LEVEL_DENIALS:I

    sput v0, SK_VERBOSE_DEFAULT:I

    .line 43
    const-string v0, "/data/misc/audit/sk.log"

    sput-object v0, LOG_NEW:Ljava/lang/String;

    .line 44
    const-string v0, "/data/misc/audit/sk.old"

    sput-object v0, LOG_OLD:Ljava/lang/String;

    .line 45
    const/high16 v0, 0x60000

    sput v0, LOG_MAX_SIZE:I

    .line 46
    sput-boolean v1, DEBUG:Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, mLogger:Ljava/util/logging/Logger;

    .line 52
    new-instance v0, Lcom/android/server/SKLogger;

    invoke-direct {v0}, <init>()V

    sput-object v0, mSKLogger:Lcom/android/server/SKLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static getCurrentLogLevel()I
    .registers 2

    .prologue
    .line 97
    sget-object v0, SK_VERBOSE_PROP:Ljava/lang/String;

    sget v1, SK_VERBOSE_DEFAULT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLogger()Lcom/android/server/SKLogger;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 63
    const-class v13, Lcom/android/server/SKLogger;

    monitor-enter v13

    const/4 v0, 0x0

    :try_start_5
    sput-object v0, mLogger:Ljava/util/logging/Logger;

    .line 65
    sget-object v0, mLogger:Ljava/util/logging/Logger;
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_6c

    if-nez v0, :cond_62

    .line 67
    :try_start_b
    const-string v0, "SKLogger"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, mLogger:Ljava/util/logging/Logger;

    .line 68
    sget-object v0, mLogger:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 69
    sget-object v0, mLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v9

    .line 70
    .local v9, "handlers":[Ljava/util/logging/Handler;
    move-object v6, v9

    .local v6, "arr$":[Ljava/util/logging/Handler;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_22
    if-ge v10, v11, :cond_2e

    aget-object v8, v6, v10

    .line 72
    .local v8, "handler":Ljava/util/logging/Handler;
    sget-object v0, mLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_2b} :catch_69
    .catchall {:try_start_b .. :try_end_2b} :catchall_6c

    .line 70
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    .line 75
    .end local v8    # "handler":Ljava/util/logging/Handler;
    :cond_2e
    :try_start_2e
    new-instance v0, Lcom/android/server/SKLogger$SKHandler;

    new-instance v1, Lcom/android/server/SKLogger;

    invoke-direct {v1}, <init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LOG_NEW:Ljava/lang/String;

    sget-object v3, LOG_OLD:Ljava/lang/String;

    sget v4, LOG_MAX_SIZE:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SKLogger$SKHandler;-><init>(Lcom/android/server/SKLogger;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, mSKTxt:Lcom/android/server/SKLogger$SKHandler;
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_44} :catch_66
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_44} :catch_69
    .catchall {:try_start_2e .. :try_end_44} :catchall_6c

    .line 79
    :try_start_44
    new-instance v0, Lcom/android/server/SKLogger$SKFormatter;

    new-instance v1, Lcom/android/server/SKLogger;

    invoke-direct {v1}, <init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/SKLogger$SKFormatter;-><init>(Lcom/android/server/SKLogger;Lcom/android/server/SKLogger$1;)V

    sput-object v0, mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

    .line 80
    sget-object v0, mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    sget-object v1, mFormatterTxt:Lcom/android/server/SKLogger$SKFormatter;

    invoke-virtual {v0, v1}, Lcom/android/server/SKLogger$SKHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 81
    sget-object v0, mLogger:Ljava/util/logging/Logger;

    sget-object v1, mSKTxt:Lcom/android/server/SKLogger$SKHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_62
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_62} :catch_69
    .catchall {:try_start_44 .. :try_end_62} :catchall_6c

    .line 87
    :cond_62
    :try_start_62
    sget-object v0, mSKLogger:Lcom/android/server/SKLogger;
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_6c

    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :goto_64
    monitor-exit v13

    return-object v0

    .line 76
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    :catch_66
    move-exception v7

    .local v7, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v12

    .line 77
    goto :goto_64

    .line 82
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :catch_69
    move-exception v7

    .local v7, "e":Ljava/lang/SecurityException;
    move-object v0, v12

    .line 83
    goto :goto_64

    .line 63
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catchall_6c
    move-exception v0

    monitor-exit v13

    throw v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 189
    if-nez p0, :cond_5

    .line 190
    const-string v3, ""

    .line 203
    :goto_4
    return-object v3

    .line 192
    :cond_5
    move-object v2, p0

    .line 193
    .local v2, "t":Ljava/lang/Throwable;
    :goto_6
    if-eqz v2, :cond_14

    .line 194
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_f

    .line 195
    const-string v3, ""

    goto :goto_4

    .line 197
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_6

    .line 200
    :cond_14
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 201
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 202
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 203
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "isAllowed"    # I
    .param p2, "seinfo"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "agentType"    # I
    .param p5, "uid"    # I
    .param p6, "isSrcTrusted"    # Z
    .param p7, "pid"    # I
    .param p8, "Service"    # Ljava/lang/String;
    .param p9, "method"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {}, getCurrentLogLevel()I

    move-result v0

    .line 120
    .local v0, "currentLogLevel":I
    sget v3, LOG_LEVEL_OFF:I

    if-ne v0, v3, :cond_9

    .line 150
    :cond_8
    :goto_8
    return-void

    .line 124
    :cond_9
    sget v3, LOG_LEVEL_DENIALS:I

    if-ne v0, v3, :cond_f

    if-gez p1, :cond_8

    .line 127
    :cond_f
    sget v3, LOG_LEVEL_ALL:I

    if-ne v0, v3, :cond_8

    .line 131
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 132
    .local v2, "tObj":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 133
    const-string v3, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    if-ltz p1, :cond_10d

    const-string v1, "SK-Allowed <"

    .line 136
    .local v1, "logText":Ljava/lang/String;
    :goto_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "srcInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "containerAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DestInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "dest_service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dest_method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    sget-object v4, mSKLogger:Lcom/android/server/SKLogger;

    monitor-enter v4

    .line 148
    :try_start_100
    sget-object v3, mLogger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 149
    monitor-exit v4

    goto/16 :goto_8

    :catchall_10a
    move-exception v3

    monitor-exit v4
    :try_end_10c
    .catchall {:try_start_100 .. :try_end_10c} :catchall_10a

    throw v3

    .line 135
    .end local v1    # "logText":Ljava/lang/String;
    :cond_10d
    const-string v1, "SK-Denied <"

    goto/16 :goto_28
.end method

.method public logAll(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 156
    .local v1, "tObj":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 157
    const-string v2, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    const-string v2, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "logText":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    sget-object v3, mSKLogger:Lcom/android/server/SKLogger;

    monitor-enter v3

    .line 163
    :try_start_48
    sget-object v2, mLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 164
    monitor-exit v3

    .line 165
    return-void

    .line 164
    :catchall_51
    move-exception v2

    monitor-exit v3
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_51

    throw v2
.end method

.method public logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 171
    .local v1, "tObj":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 172
    const-string v2, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    const-string v2, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "logText":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    sget-object v3, mSKLogger:Lcom/android/server/SKLogger;

    monitor-enter v3

    .line 179
    :try_start_63
    sget-object v2, mLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 180
    monitor-exit v3

    .line 181
    return-void

    .line 180
    :catchall_6c
    move-exception v2

    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_6c

    throw v2
.end method
