.class public Lcom/android/server/DrmEventService;
.super Landroid/app/Service;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DrmEventService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final DRM_TIME_PATH:Ljava/lang/String; = "/data/drm/beforeTime.ini"

.field private static final TAG:Ljava/lang/String; = "DrmEventService"

.field private static final TIME_CLOCK_UPDATE:I = 0x6

.field static isLogEnabled:Z


# instance fields
.field private isRegisteredBootTime:Z

.field mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mIs24HourFormat:Z

.field private mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field mTvOutReceiver:Landroid/content/BroadcastReceiver;

.field nitZReceiver:Landroid/content/BroadcastReceiver;

.field nitzFilter:Landroid/content/IntentFilter;

.field private timeFormat:Ljava/lang/String;

.field userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, isLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    iput-object v0, p0, mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 60
    iput-object v0, p0, nitzFilter:Landroid/content/IntentFilter;

    .line 61
    iput-object v0, p0, timeFormat:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, isRegisteredBootTime:Z

    .line 65
    iput-boolean v1, p0, mIs24HourFormat:Z

    .line 191
    new-instance v0, Lcom/android/server/DrmEventService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$1;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, mTvOutReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v0, Lcom/android/server/DrmEventService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$2;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, nitZReceiver:Landroid/content/BroadcastReceiver;

    .line 409
    new-instance v0, Lcom/android/server/DrmEventService$3;

    invoke-direct {v0, p0}, Lcom/android/server/DrmEventService$3;-><init>(Lcom/android/server/DrmEventService;)V

    iput-object v0, p0, userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DrmEventService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DrmEventService;

    .prologue
    .line 49
    iget-boolean v0, p0, isRegisteredBootTime:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/DrmEventService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/DrmEventService;

    .prologue
    .line 49
    invoke-direct {p0}, registerReceiever()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DrmEventService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DrmEventService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-direct {p0, p1}, userUpdateHandler(Landroid/content/Intent;)V

    return-void
.end method

.method private getBeforeTime()J
    .registers 11

    .prologue
    .line 277
    const-wide/16 v0, 0x0

    .line 278
    .local v0, "beforeTime":J
    const/4 v2, 0x0

    .line 280
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/data/drm/beforeTime.ini"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_f} :catch_b2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_84
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_92
    .catchall {:try_start_3 .. :try_end_f} :catchall_9e

    .line 281
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_f
    sget-boolean v7, isLogEnabled:Z

    if-eqz v7, :cond_1a

    .line 282
    const-string v7, "DrmEventService"

    const-string v8, "FileReading Start"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1a
    const-string v5, ""

    .line 284
    .local v5, "nextLine":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    .local v6, "sb":Ljava/lang/StringBuffer;
    :goto_21
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 286
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_2a} :catch_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_2a} :catch_af
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2a} :catch_ac
    .catchall {:try_start_f .. :try_end_2a} :catchall_a9

    goto :goto_21

    .line 297
    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_2b
    move-exception v4

    move-object v2, v3

    .line 299
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/NumberFormatException;
    :goto_2d
    :try_start_2d
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_9e

    .line 309
    if-eqz v2, :cond_35

    .line 311
    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_a5

    .line 316
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_35
    :goto_35
    return-wide v0

    .line 288
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "nextLine":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_36
    :try_start_36
    sget-boolean v7, isLogEnabled:Z

    if-eqz v7, :cond_56

    .line 289
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beforeTIme is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_56
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 293
    sget-boolean v7, isLogEnabled:Z

    if-eqz v7, :cond_7a

    .line 294
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beforeTIme in Long is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_7a} :catch_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_7a} :catch_af
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_7a} :catch_ac
    .catchall {:try_start_36 .. :try_end_7a} :catchall_a9

    .line 309
    :cond_7a
    if-eqz v3, :cond_b5

    .line 311
    :try_start_7c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_81

    move-object v2, v3

    .line 312
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_35

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_81
    move-exception v7

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_35

    .line 300
    .end local v5    # "nextLine":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_84
    move-exception v4

    .line 302
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_85
    :try_start_85
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_9e

    .line 303
    const-wide/16 v0, -0x64

    .line 309
    if-eqz v2, :cond_35

    .line 311
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_35

    .line 312
    :catch_90
    move-exception v7

    goto :goto_35

    .line 304
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_92
    move-exception v4

    .line 306
    .local v4, "e":Ljava/io/IOException;
    :goto_93
    :try_start_93
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_9e

    .line 309
    if-eqz v2, :cond_35

    .line 311
    :try_start_98
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_35

    .line 312
    :catch_9c
    move-exception v7

    goto :goto_35

    .line 309
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_9e
    move-exception v7

    :goto_9f
    if-eqz v2, :cond_a4

    .line 311
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a7

    .line 312
    :cond_a4
    :goto_a4
    throw v7

    .local v4, "e":Ljava/lang/NumberFormatException;
    :catch_a5
    move-exception v7

    goto :goto_35

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_a7
    move-exception v8

    goto :goto_a4

    .line 309
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_a9
    move-exception v7

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_9f

    .line 304
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_ac
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_93

    .line 300
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_af
    move-exception v4

    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_85

    .line 297
    :catch_b2
    move-exception v4

    goto/16 :goto_2d

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "nextLine":Ljava/lang/String;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_b5
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_35
.end method

.method private declared-synchronized handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I
    .registers 11
    .param p1, "operation"    # I
    .param p2, "drmInfo"    # Landroid/drm/DrmInfo;
    .param p3, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 419
    monitor-enter p0

    :try_start_1
    sget-boolean v3, isLogEnabled:Z

    if-eqz v3, :cond_1e

    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleDbOperation case "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1e
    const/4 v1, -0x1

    .line 422
    .local v1, "ret":I
    packed-switch p1, :pswitch_data_92

    .line 452
    sget-boolean v3, isLogEnabled:Z

    if-eqz v3, :cond_2d

    const-string v3, "DrmEventService"

    const-string v4, "Not a valid operation requested in handleDbOperation"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_83

    .line 455
    :cond_2d
    :goto_2d
    monitor-exit p0

    return v1

    .line 426
    :pswitch_2f
    const/4 v2, 0x0

    .line 427
    .local v2, "status":Ljava/lang/String;
    const/4 v0, 0x0

    .line 429
    .local v0, "result_info":Landroid/drm/DrmInfo;
    :try_start_31
    iget-object v3, p0, mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v3, :cond_86

    .line 430
    sget-boolean v3, isLogEnabled:Z

    if-eqz v3, :cond_41

    const-string v3, "DrmEventService"

    const-string/jumbo v4, "handleDbOperation acquireDrmInfo "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_41
    iget-object v3, p0, mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, p3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_7b

    .line 434
    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    sget-boolean v3, isLogEnabled:Z

    if-eqz v3, :cond_70

    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireDrmInfo status is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_70
    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 438
    const/4 v1, 0x0

    goto :goto_2d

    .line 441
    :cond_7b
    const-string v3, "DrmEventService"

    const-string v4, " no response from SecureClock "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_31 .. :try_end_82} :catchall_83

    goto :goto_2d

    .line 419
    .end local v0    # "result_info":Landroid/drm/DrmInfo;
    .end local v1    # "ret":I
    .end local v2    # "status":Ljava/lang/String;
    :catchall_83
    move-exception v3

    monitor-exit p0

    throw v3

    .line 445
    .restart local v0    # "result_info":Landroid/drm/DrmInfo;
    .restart local v1    # "ret":I
    .restart local v2    # "status":Ljava/lang/String;
    :cond_86
    :try_start_86
    sget-boolean v3, isLogEnabled:Z

    if-eqz v3, :cond_2d

    const-string v3, "DrmEventService"

    const-string v4, "Failed to Install the rights received. No DRM manager instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_86 .. :try_end_91} :catchall_83

    goto :goto_2d

    .line 422
    :pswitch_data_92
    .packed-switch 0x6
        :pswitch_2f
    .end packed-switch
.end method

.method private declared-synchronized registerReceiever()V
    .registers 7

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    sget-boolean v3, isLogEnabled:Z

    if-eqz v3, :cond_c

    const-string v3, "DrmEventService"

    const-string v4, "Registering for both NITZ and Timeset"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_c
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v2, "userTimeFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, userUpdatedTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v0, "nitzFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, mIs24HourFormat:Z

    .line 173
    iget-boolean v3, p0, mIs24HourFormat:Z

    if-eqz v3, :cond_95

    .line 174
    const-string v3, "24"

    iput-object v3, p0, timeFormat:Ljava/lang/String;

    .line 178
    :goto_37
    sget-boolean v3, isLogEnabled:Z

    if-eqz v3, :cond_55

    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time Format is: :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, timeFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_55
    invoke-virtual {p0}, getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, nitZReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v1, "tvOutFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, mTvOutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    const/4 v3, 0x1

    iput-boolean v3, p0, isRegisteredBootTime:Z

    .line 188
    sget-boolean v3, isLogEnabled:Z

    if-eqz v3, :cond_93

    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerReceiever, All registration over, isRegisteredBootTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, isRegisteredBootTime:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_1 .. :try_end_93} :catchall_9a

    .line 189
    :cond_93
    monitor-exit p0

    return-void

    .line 176
    .end local v1    # "tvOutFilter":Landroid/content/IntentFilter;
    :cond_95
    :try_start_95
    const-string v3, "12"

    iput-object v3, p0, timeFormat:Ljava/lang/String;
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_9a

    goto :goto_37

    .line 161
    .end local v0    # "nitzFilter":Landroid/content/IntentFilter;
    .end local v2    # "userTimeFilter":Landroid/content/IntentFilter;
    :catchall_9a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private userUpdateHandler(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 224
    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "nowTimeFormat":Ljava/lang/String;
    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 226
    .local v0, "autoEnable":I
    sget-boolean v4, isLogEnabled:Z

    if-eqz v4, :cond_66

    .line 227
    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nowTimeFormat before setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 234
    .local v1, "now":Ljava/util/Date;
    iget-object v4, p0, timeFormat:Ljava/lang/String;

    if-nez v4, :cond_76

    .line 235
    const-string v4, "24"

    iput-object v4, p0, timeFormat:Ljava/lang/String;

    .line 238
    :cond_76
    if-nez v2, :cond_7a

    .line 239
    const-string v2, "24"

    .line 241
    :cond_7a
    sget-boolean v4, isLogEnabled:Z

    if-eqz v4, :cond_b2

    .line 242
    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, timeFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v4, "DrmEventService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nowTimeFormat after setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_b2
    iget-object v4, p0, timeFormat:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 248
    sget-boolean v4, isLogEnabled:Z

    if-eqz v4, :cond_c6

    .line 249
    const-string v4, "DrmEventService"

    const-string/jumbo v5, "userUpdatedTimeReceiver time format is not changed check if it is NITZ Update"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_c6
    if-nez v0, :cond_d7

    .line 252
    sget-boolean v4, isLogEnabled:Z

    if-eqz v4, :cond_d3

    .line 253
    const-string v4, "DrmEventService"

    const-string v5, "This is a not NITZ update.Time format is also not changed.Update delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_d3
    invoke-virtual {p0, p1}, handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V

    .line 274
    :cond_d6
    :goto_d6
    return-void

    .line 257
    :cond_d7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 259
    .local v3, "telephonymanager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_f1

    .line 260
    sget-boolean v4, isLogEnabled:Z

    if-eqz v4, :cond_ed

    .line 261
    const-string v4, "DrmEventService"

    const-string v5, "Auto time update is on but sim is not in ready state hence no NITZ update will follow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_ed
    invoke-virtual {p0, p1}, handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V

    goto :goto_d6

    .line 266
    :cond_f1
    sget-boolean v4, isLogEnabled:Z

    if-eqz v4, :cond_d6

    .line 267
    const-string v4, "DrmEventService"

    const-string v5, "This is a NITZ update.So no need to update delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    .line 270
    .end local v3    # "telephonymanager":Landroid/telephony/TelephonyManager;
    :cond_fd
    sget-boolean v4, isLogEnabled:Z

    if-eqz v4, :cond_109

    .line 271
    const-string v4, "DrmEventService"

    const-string/jumbo v5, "userUpdatedTimeReceiver format is changed no need to udpate Delta"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_109
    iput-object v2, p0, timeFormat:Ljava/lang/String;

    goto :goto_d6
.end method


# virtual methods
.method public handleNitztimeUpdation(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 320
    const-wide/16 v4, 0x0

    .line 321
    .local v4, "nitzTime":J
    if-eqz p1, :cond_170

    .line 322
    const-string v6, "DrmEventService"

    const-string/jumbo v7, "handleNitztimeUpdation"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 326
    .local v0, "c":Ljava/util/Calendar;
    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 328
    :try_start_19
    sget-boolean v6, isLogEnabled:Z

    if-eqz v6, :cond_c0

    .line 330
    const-string v6, "DrmEventService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "date is :: year"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "month"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "day"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "hour"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "minute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "second"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_c0
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v6, 0x23

    const-string/jumbo v7, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v2, v6, v7}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 340
    .local v2, "mPRDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string/jumbo v6, "year"

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    const-string/jumbo v6, "month"

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    const-string/jumbo v6, "day"

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    const-string/jumbo v6, "hour"

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    const-string/jumbo v6, "minute"

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    const-string/jumbo v6, "second"

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    sget-boolean v6, isLogEnabled:Z

    if-eqz v6, :cond_14c

    const-string v6, "DrmEventService"

    const-string v7, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_14c
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v2, v8}, handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v3

    .line 357
    .local v3, "ret":I
    sget-boolean v6, isLogEnabled:Z

    if-eqz v6, :cond_170

    const-string v6, "DrmEventService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleDbOperation : TIME_CLOCK_UPDATE  secure clock for PR  ret is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_170} :catch_171

    .line 363
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "mPRDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    .end local v3    # "ret":I
    :cond_170
    :goto_170
    return-void

    .line 359
    .restart local v0    # "c":Ljava/util/Calendar;
    :catch_171
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_170
.end method

.method public handleUserUpdatedTimeUpdation(Landroid/content/Intent;)V
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 368
    const-wide/16 v2, 0x0

    .line 369
    .local v2, "beforeTime":J
    const-wide/16 v0, 0x0

    .line 370
    .local v0, "afterTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 371
    .local v5, "now":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 372
    invoke-direct {p0}, getBeforeTime()J

    move-result-wide v2

    .line 374
    const-wide/16 v8, -0x64

    cmp-long v7, v2, v8

    if-nez v7, :cond_28

    .line 376
    const-string v7, "DrmEventService"

    const-string/jumbo v8, "handleUserUpdatedTimeUpdation beforeTime -100"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_27
    :goto_27
    return-void

    .line 380
    :cond_28
    sget-boolean v7, isLogEnabled:Z

    if-eqz v7, :cond_4f

    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleUserUpdatedTimeUpdation beforeTime :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "and afterTime :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_4f
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v7, 0x24

    const-string/jumbo v8, "video/vnd.ms-playready.media.pyv"

    invoke-direct {v4, v7, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 383
    .local v4, "mPRDrmInfoRequest":Landroid/drm/DrmInfoRequest;
    const-string v7, "before"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    const-string v7, "after"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    sget-boolean v7, isLogEnabled:Z

    if-eqz v7, :cond_7e

    const-string v7, "DrmEventService"

    const-string v8, "calling handleDbOperation : TIME_CLOCK_UPDATE "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_7e
    const/4 v7, 0x6

    invoke-direct {p0, v7, v12, v4, v12}, handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v6

    .line 398
    .local v6, "ret":I
    sget-boolean v7, isLogEnabled:Z

    if-eqz v7, :cond_27

    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleDbOperation : TIME_CLOCK_UPDATE Updating of secure clock ret  for PR is  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    sget-boolean v0, isLogEnabled:Z

    if-eqz v0, :cond_b

    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 105
    sget-boolean v1, isLogEnabled:Z

    if-eqz v1, :cond_b

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_b
    iget-object v1, p0, mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-nez v1, :cond_16

    .line 111
    new-instance v1, Landroid/drm/DrmManagerClient;

    invoke-direct {v1, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 113
    :cond_16
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmEventService"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 115
    .local v0, "thread":Landroid/os/HandlerThread;
    sget-boolean v1, isLogEnabled:Z

    if-eqz v1, :cond_29

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : onCreate before thread.start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_29
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 119
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, mServiceLooper:Landroid/os/Looper;

    .line 120
    new-instance v1, Lcom/android/server/DrmEventService$ServiceHandler;

    iget-object v2, p0, mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DrmEventService$ServiceHandler;-><init>(Lcom/android/server/DrmEventService;Landroid/os/Looper;)V

    iput-object v1, p0, mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    .line 121
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 95
    sget-boolean v0, isLogEnabled:Z

    if-eqz v0, :cond_b

    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_b
    iget-object v0, p0, mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 97
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 90
    sget-boolean v0, isLogEnabled:Z

    if-eqz v0, :cond_b

    const-string v0, "DrmEventService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_b
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 92
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 69
    sget-boolean v1, isLogEnabled:Z

    if-eqz v1, :cond_30

    const-string v1, "DrmEventService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStart intent.getAction() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isRegisteredBootTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, isRegisteredBootTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_30
    sget-boolean v1, isLogEnabled:Z

    if-eqz v1, :cond_3b

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_3b
    iget-object v1, p0, mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/server/DrmEventService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 73
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 74
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v1, p0, mServiceHandler:Lcom/android/server/DrmEventService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DrmEventService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    sget-boolean v1, isLogEnabled:Z

    if-eqz v1, :cond_55

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : Service is started.Check if registration is required"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_55
    iget-boolean v1, p0, isRegisteredBootTime:Z

    if-nez v1, :cond_68

    .line 80
    sget-boolean v1, isLogEnabled:Z

    if-eqz v1, :cond_64

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : This is not BootTime.So register now."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_64
    invoke-direct {p0}, registerReceiever()V

    .line 85
    :cond_67
    :goto_67
    return-void

    .line 83
    :cond_68
    sget-boolean v1, isLogEnabled:Z

    if-eqz v1, :cond_67

    const-string v1, "DrmEventService"

    const-string v2, "DrmEventService : Registration is already done in BootComplete.Leave it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method
