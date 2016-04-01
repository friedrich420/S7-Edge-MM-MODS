.class public Lcom/android/server/accessibility/GestureWakeup;
.super Ljava/lang/Object;
.source "GestureWakeup.java"


# static fields
.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "GestureWakeup"

.field private static final TIMEOUT:I = 0x1

.field static mContext:Landroid/content/Context;

.field private static mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

.field private static mPM:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mWakelockSequence:I

.field private static sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;


# instance fields
.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mIsSettingGestureWakeUp:Z

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mWakeLockHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 36
    sput-object v0, mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsSettingGestureWakeUp:Z

    .line 214
    new-instance v0, Lcom/android/server/accessibility/GestureWakeup$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$1;-><init>(Lcom/android/server/accessibility/GestureWakeup;Landroid/os/Looper;)V

    iput-object v0, p0, mWakeLockHandler:Landroid/os/Handler;

    .line 227
    new-instance v0, Lcom/android/server/accessibility/GestureWakeup$2;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/GestureWakeup$2;-><init>(Lcom/android/server/accessibility/GestureWakeup;)V

    iput-object v0, p0, mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 51
    sput-object p1, mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private UnregisterApproachListener()V
    .registers 4

    .prologue
    .line 265
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 266
    iget-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_21

    .line 267
    iget-object v0, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 268
    const-string v0, "GestureWakeup"

    const-string v1, "GestureWakeupService : UnregisterApproachListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_21
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/GestureWakeup;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/GestureWakeup;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, handleTimeout(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/GestureWakeup;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/GestureWakeup;

    .prologue
    .line 26
    invoke-direct {p0}, launchGestureWakeup()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/accessibility/GestureWakeup;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-class v1, Lcom/android/server/accessibility/GestureWakeup;

    monitor-enter v1

    :try_start_3
    sget-object v0, sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    if-nez v0, :cond_e

    .line 45
    new-instance v0, Lcom/android/server/accessibility/GestureWakeup;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 47
    :cond_e
    sget-object v0, sGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleTimeout(I)V
    .registers 4
    .param p1, "seq"    # I

    .prologue
    .line 195
    monitor-enter p0

    .line 196
    :try_start_1
    const-string v0, "GestureWakeup"

    const-string/jumbo v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_f

    .line 199
    monitor-exit p0

    .line 206
    :goto_e
    return-void

    .line 202
    :cond_f
    sget v0, mWakelockSequence:I

    if-ne p1, v0, :cond_18

    .line 203
    sget-object v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 205
    :cond_18
    monitor-exit p0

    goto :goto_e

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 285
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 295
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_34
    return-void
.end method

.method private static isSupportCover()Z
    .registers 4

    .prologue
    .line 104
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.cover.flip"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 106
    .local v0, "sIsFilpCoverSystemFeatureEnabled":Z
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.cover.sview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 109
    .local v1, "sIsSViewCoverSystemFeatureEnabled":Z
    if-nez v0, :cond_1c

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v2, 0x1

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private launchGestureWakeup()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 113
    const-string v4, "GestureWakeup"

    const-string/jumbo v6, "launchGestureWakeup()+"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v4, mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 116
    .local v3, "teleManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_21

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-ne v4, v5, :cond_3e

    .line 118
    :cond_21
    const-string v4, "GestureWakeup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALL_STATE_OFFHOOK or CALL_STATE_RINGING : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_3d
    :goto_3d
    return-void

    .line 122
    :cond_3e
    iget-object v4, p0, mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    .line 124
    .local v2, "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    const/4 v0, 0x0

    .line 125
    .local v0, "bCoverOpen":Z
    if-eqz v2, :cond_4e

    .line 126
    :try_start_47
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v4

    if-ne v4, v5, :cond_b2

    move v0, v5

    .line 129
    :cond_4e
    :goto_4e
    if-nez v0, :cond_73

    invoke-static {}, isSupportCover()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 130
    const-string v4, "GestureWakeup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "..bCoverOpen.. = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_6e} :catch_6f

    goto :goto_3d

    .line 133
    :catch_6f
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_73
    sget-object v4, mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const-string v6, "GestureWakeup"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    .line 139
    sget-object v4, mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_97

    .line 141
    :try_start_8a
    sget-object v4, mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 142
    const-string v4, "GestureWakeup"

    const-string/jumbo v5, "mGestureWakeupLock.acquire()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_97} :catch_b4

    .line 148
    :cond_97
    :goto_97
    invoke-direct {p0}, pokeWakelock()V

    .line 149
    sget-object v4, mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.app.airwakeupview"

    const-string v6, "ACC3"

    invoke-static {v4, v5, v6}, insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v4, mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_3d

    .line 153
    :try_start_a7
    sget-object v4, mGestureWakeupLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ac} :catch_ad

    goto :goto_3d

    .line 154
    :catch_ad
    move-exception v1

    .line 155
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b2
    const/4 v0, 0x0

    goto :goto_4e

    .line 143
    :catch_b4
    move-exception v1

    .line 144
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_97
.end method

.method private pokeWakelock()V
    .registers 2

    .prologue
    .line 167
    const/16 v0, 0x2710

    invoke-direct {p0, v0}, pokeWakelock(I)V

    .line 168
    return-void
.end method

.method private pokeWakelock(I)V
    .registers 7
    .param p1, "holdMs"    # I

    .prologue
    .line 177
    monitor-enter p0

    .line 178
    :try_start_1
    const-string v1, "GestureWakeup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[c] pokeWakelock("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v1, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 181
    iget-object v1, p0, mWakeLockHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    sget v1, mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    sput v1, mWakelockSequence:I

    .line 183
    iget-object v1, p0, mWakeLockHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget v3, mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mWakeLockHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 185
    monitor-exit p0

    .line 186
    return-void

    .line 185
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_42
    move-exception v1

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private registerApproachListener()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 248
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 249
    .local v0, "CurrentUser":I
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.sec.feature.sensorhub"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 250
    iget-object v2, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v2, :cond_2c

    .line 251
    const-string v2, "GestureWakeup"

    const-string/jumbo v4, "registerApproachListener, mSContextManager is null, create again "

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v2, mContext:Landroid/content/Context;

    const-string/jumbo v4, "scontext"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 254
    :cond_2c
    new-instance v1, Landroid/hardware/scontext/SContextApproachAttribute;

    invoke-direct {v1, v0}, Landroid/hardware/scontext/SContextApproachAttribute;-><init>(I)V

    .line 255
    .local v1, "attribute":Landroid/hardware/scontext/SContextApproachAttribute;
    const-string v2, "GestureWakeup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerApproachListener, CurrentUser : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v2, v4, v3, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move v2, v3

    .line 260
    .end local v1    # "attribute":Landroid/hardware/scontext/SContextApproachAttribute;
    :goto_52
    return v2

    .line 259
    :cond_53
    const-string v2, "GestureWakeup"

    const-string v3, "GestureWakeup: registerApproachListener fail"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v2, 0x0

    goto :goto_52
.end method


# virtual methods
.method public StartGestureWakeup()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    const-string v0, "GestureWakeup"

    const-string v3, "StartGestureWakeup()+"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, checkSettingCondition(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, mIsSettingGestureWakeUp:Z

    .line 57
    sget-object v0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, mPM:Landroid/os/PowerManager;

    .line 58
    sget-object v0, mPM:Landroid/os/PowerManager;

    const v3, 0x1000001a

    const-string v4, "AirWakeupService"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    sget-object v0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 61
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_44

    .line 62
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    sget-object v3, mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 63
    const-string v0, "GestureWakeup"

    const-string v3, "StartGestureWakeup() create mCoverManager instance"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_44
    invoke-direct {p0}, registerApproachListener()Z

    move-result v0

    if-nez v0, :cond_53

    .line 66
    const-string v0, "GestureWakeup"

    const-string v2, "StartGestureWakeup() Can\'t use proximity sensor in sensor hub"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 72
    :goto_52
    return v0

    .line 70
    :cond_53
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_wake_up"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 71
    const-string v0, "GestureWakeup"

    const-string v1, "GestureWakeup start success"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 72
    goto :goto_52
.end method

.method public StopGestureWakeup()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 76
    const-string v1, "GestureWakeup"

    const-string v2, "StopGestureWakeup()+"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, checkSettingCondition(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, mIsSettingGestureWakeUp:Z

    .line 78
    iget-boolean v1, p0, mIsSettingGestureWakeUp:Z

    if-ne v1, v0, :cond_1f

    .line 79
    invoke-virtual {p0}, finalize()V

    .line 80
    const-string v1, "GestureWakeup"

    const-string v2, "GestureWakeup stop success"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_1e
    return v0

    .line 83
    :cond_1f
    const-string v0, "GestureWakeup"

    const-string v1, "GestureWakeup is aleady stopped"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public checkSettingCondition(Landroid/content/Context;)Z
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    monitor-enter p0

    .line 275
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_wake_up"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_3c

    :goto_11
    iput-boolean v0, p0, mIsSettingGestureWakeUp:Z

    .line 277
    const-string v0, "GestureWakeup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSettingCondition() mIsSettingGestureWakeUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsSettingGestureWakeUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " User mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-boolean v0, p0, mIsSettingGestureWakeUp:Z

    monitor-exit p0

    return v0

    :cond_3c
    move v0, v1

    .line 275
    goto :goto_11

    .line 279
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method protected finalize()V
    .registers 6

    .prologue
    .line 91
    :try_start_0
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_wake_up"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 92
    invoke-direct {p0}, UnregisterApproachListener()V

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 95
    const/4 v1, 0x0

    sput-object v1, mPM:Landroid/os/PowerManager;

    .line 96
    const/4 v1, 0x0

    sput-object v1, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    const-string v1, "GestureWakeup"

    const-string/jumbo v2, "finalize"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    .line 101
    :goto_21
    return-void

    .line 98
    :catch_22
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21
.end method
