.class public Lcom/android/server/notification/ZenLog;
.super Ljava/lang/Object;
.source "ZenLog.java"


# static fields
.field private static final DEBUG:Z

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final MSGS:[Ljava/lang/String;

.field private static final SIZE:I

.field private static final TAG:Ljava/lang/String; = "ZenLog"

.field private static final TIMES:[J

.field private static final TYPES:[I

.field private static final TYPE_ALLOW_DISABLE:I = 0x2

.field private static final TYPE_CONFIG:I = 0xb

.field private static final TYPE_DISABLE_EFFECTS:I = 0xd

.field private static final TYPE_DOWNTIME:I = 0x5

.field private static final TYPE_EXIT_CONDITION:I = 0x8

.field private static final TYPE_INTERCEPTED:I = 0x1

.field private static final TYPE_LISTENER_HINTS_CHANGED:I = 0xf

.field private static final TYPE_NOT_INTERCEPTED:I = 0xc

.field private static final TYPE_SET_RINGER_MODE_EXTERNAL:I = 0x3

.field private static final TYPE_SET_RINGER_MODE_INTERNAL:I = 0x4

.field private static final TYPE_SET_ZEN_MODE:I = 0x6

.field private static final TYPE_SUBSCRIBE:I = 0x9

.field private static final TYPE_SUPPRESSOR_CHANGED:I = 0xe

.field private static final TYPE_UNSUBSCRIBE:I = 0xa

.field private static final TYPE_UPDATE_ZEN_MODE:I = 0x7

.field private static sNext:I

.field private static sSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, DEBUG:Z

    .line 39
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_28

    const/16 v0, 0x64

    :goto_a
    sput v0, SIZE:I

    .line 41
    sget v0, SIZE:I

    new-array v0, v0, [J

    sput-object v0, TIMES:[J

    .line 42
    sget v0, SIZE:I

    new-array v0, v0, [I

    sput-object v0, TYPES:[I

    .line 43
    sget v0, SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, MSGS:[Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, FORMAT:Ljava/text/SimpleDateFormat;

    return-void

    .line 39
    :cond_28
    const/16 v0, 0x14

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(ILjava/lang/String;)V
    .registers 8
    .param p0, "type"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 197
    sget-object v1, MSGS:[Ljava/lang/String;

    monitor-enter v1

    .line 198
    :try_start_3
    sget-object v0, TIMES:[J

    sget v2, sNext:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 199
    sget-object v0, TYPES:[I

    sget v2, sNext:I

    aput p0, v0, v2

    .line 200
    sget-object v0, MSGS:[Ljava/lang/String;

    sget v2, sNext:I

    aput-object p1, v0, v2

    .line 201
    sget v0, sNext:I

    add-int/lit8 v0, v0, 0x1

    sget v2, SIZE:I

    rem-int/2addr v0, v2

    sput v0, sNext:I

    .line 202
    sget v0, sSize:I

    sget v2, SIZE:I

    if-ge v0, v2, :cond_2e

    .line 203
    sget v0, sSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, sSize:I

    .line 205
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_54

    .line 206
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_53

    const-string v0, "ZenLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_53
    return-void

    .line 205
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method private static componentToString(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 2
    .param p0, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 193
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 210
    sget-object v4, MSGS:[Ljava/lang/String;

    monitor-enter v4

    .line 211
    :try_start_3
    sget v3, sNext:I

    sget v5, sSize:I

    sub-int/2addr v3, v5

    sget v5, SIZE:I

    add-int/2addr v3, v5

    sget v5, SIZE:I

    rem-int v2, v3, v5

    .line 212
    .local v2, "start":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    sget v3, sSize:I

    if-ge v0, v3, :cond_4e

    .line 213
    add-int v3, v2, v0

    sget v5, SIZE:I

    rem-int v1, v3, v5

    .line 214
    .local v1, "j":I
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    sget-object v3, FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    sget-object v6, TIMES:[J

    aget-wide v6, v6, v1

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 217
    sget-object v3, TYPES:[I

    aget v3, v3, v1

    invoke-static {v3}, typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    sget-object v3, MSGS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 221
    .end local v1    # "j":I
    :cond_4e
    monitor-exit v4

    .line 222
    return-void

    .line 221
    .end local v0    # "i":I
    .end local v2    # "start":I
    :catchall_50
    move-exception v3

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v3
.end method

.method private static hintsToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "hints"    # I

    .prologue
    .line 185
    packed-switch p0, :pswitch_data_10

    .line 188
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 186
    :pswitch_8
    const-string/jumbo v0, "none"

    goto :goto_7

    .line 187
    :pswitch_c
    const-string/jumbo v0, "disable_effects"

    goto :goto_7

    .line 185
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "ringerMode"    # I

    .prologue
    .line 166
    packed-switch p0, :pswitch_data_14

    .line 170
    const-string/jumbo v0, "unknown"

    :goto_6
    return-object v0

    .line 167
    :pswitch_7
    const-string/jumbo v0, "silent"

    goto :goto_6

    .line 168
    :pswitch_b
    const-string/jumbo v0, "vibrate"

    goto :goto_6

    .line 169
    :pswitch_f
    const-string/jumbo v0, "normal"

    goto :goto_6

    .line 166
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method private static subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;
    .registers 3
    .param p0, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 141
    if-nez p0, :cond_6

    const-string/jumbo v0, "no provider"

    :goto_5
    return-object v0

    :cond_6
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_d
    const-string/jumbo v0, "ok"

    goto :goto_5
.end method

.method public static traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V
    .registers 6
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "oldConfig"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "newConfig"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 120
    const/16 v1, 0xb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_31

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig;->diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, append(ILjava/lang/String;)V

    .line 123
    return-void

    .line 120
    :cond_31
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 5
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 126
    const/16 v0, 0xd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    .line 127
    return-void
.end method

.method public static traceDowntimeAutotrigger(Ljava/lang/String;)V
    .registers 2
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x5

    invoke-static {v0, p0}, append(ILjava/lang/String;)V

    .line 96
    return-void
.end method

.method public static traceEffectsSuppressorChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 5
    .param p0, "oldSuppressor"    # Landroid/content/ComponentName;
    .param p1, "newSuppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 131
    const/16 v0, 0xe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, componentToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, componentToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    .line 133
    return-void
.end method

.method public static traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 107
    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, componentToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public static traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 5
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 67
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    :goto_8
    return-void

    .line 68
    :cond_9
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    goto :goto_8
.end method

.method public static traceListenerHintsChanged(III)V
    .registers 6
    .param p0, "oldHints"    # I
    .param p1, "newHints"    # I
    .param p2, "listenerCount"    # I

    .prologue
    .line 136
    const/16 v0, 0xf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, hintsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, hintsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",listeners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    .line 138
    return-void
.end method

.method public static traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 5
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 72
    if-eqz p0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_7

    .line 74
    :goto_6
    return-void

    .line 73
    :cond_7
    const/16 v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    goto :goto_6
.end method

.method public static traceSetRingerModeExternal(IILjava/lang/String;II)V
    .registers 8
    .param p0, "ringerModeOld"    # I
    .param p1, "ringerModeNew"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "ringerModeInternalIn"    # I
    .param p4, "ringerModeInternalOut"    # I

    .prologue
    .line 78
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",i:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public static traceSetRingerModeInternal(IILjava/lang/String;II)V
    .registers 8
    .param p0, "ringerModeOld"    # I
    .param p1, "ringerModeNew"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "ringerModeExternalIn"    # I
    .param p4, "ringerModeExternalOut"    # I

    .prologue
    .line 87
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",i:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    .line 92
    return-void
.end method

.method public static traceSetZenMode(ILjava/lang/String;)V
    .registers 5
    .param p0, "zenMode"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, zenModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    .line 100
    return-void
.end method

.method public static traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p2, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 111
    const/16 v0, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    .line 112
    return-void
.end method

.method public static traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p2, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 115
    const/16 v0, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    .line 116
    return-void
.end method

.method public static traceUpdateZenMode(II)V
    .registers 5
    .param p0, "fromMode"    # I
    .param p1, "toMode"    # I

    .prologue
    .line 103
    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, zenModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, zenModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, append(ILjava/lang/String;)V

    .line 104
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 145
    packed-switch p0, :pswitch_data_42

    .line 161
    const-string/jumbo v0, "unknown"

    :goto_6
    return-object v0

    .line 146
    :pswitch_7
    const-string/jumbo v0, "intercepted"

    goto :goto_6

    .line 147
    :pswitch_b
    const-string v0, "allow_disable"

    goto :goto_6

    .line 148
    :pswitch_e
    const-string/jumbo v0, "set_ringer_mode_external"

    goto :goto_6

    .line 149
    :pswitch_12
    const-string/jumbo v0, "set_ringer_mode_internal"

    goto :goto_6

    .line 150
    :pswitch_16
    const-string/jumbo v0, "downtime"

    goto :goto_6

    .line 151
    :pswitch_1a
    const-string/jumbo v0, "set_zen_mode"

    goto :goto_6

    .line 152
    :pswitch_1e
    const-string/jumbo v0, "update_zen_mode"

    goto :goto_6

    .line 153
    :pswitch_22
    const-string/jumbo v0, "exit_condition"

    goto :goto_6

    .line 154
    :pswitch_26
    const-string/jumbo v0, "subscribe"

    goto :goto_6

    .line 155
    :pswitch_2a
    const-string/jumbo v0, "unsubscribe"

    goto :goto_6

    .line 156
    :pswitch_2e
    const-string v0, "config"

    goto :goto_6

    .line 157
    :pswitch_31
    const-string/jumbo v0, "not_intercepted"

    goto :goto_6

    .line 158
    :pswitch_35
    const-string/jumbo v0, "disable_effects"

    goto :goto_6

    .line 159
    :pswitch_39
    const-string/jumbo v0, "suppressor_changed"

    goto :goto_6

    .line 160
    :pswitch_3d
    const-string/jumbo v0, "listener_hints_changed"

    goto :goto_6

    .line 145
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_3d
    .end packed-switch
.end method

.method private static zenModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "zenMode"    # I

    .prologue
    .line 175
    packed-switch p0, :pswitch_data_16

    .line 180
    const-string/jumbo v0, "unknown"

    :goto_6
    return-object v0

    .line 176
    :pswitch_7
    const-string/jumbo v0, "off"

    goto :goto_6

    .line 177
    :pswitch_b
    const-string/jumbo v0, "important_interruptions"

    goto :goto_6

    .line 178
    :pswitch_f
    const-string v0, "alarms"

    goto :goto_6

    .line 179
    :pswitch_12
    const-string/jumbo v0, "no_interruptions"

    goto :goto_6

    .line 175
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method
