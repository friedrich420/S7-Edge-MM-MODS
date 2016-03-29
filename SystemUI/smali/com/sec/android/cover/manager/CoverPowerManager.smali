.class public Lcom/sec/android/cover/manager/CoverPowerManager;
.super Ljava/lang/Object;
.source "CoverPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;
    }
.end annotation


# static fields
.field private static instance:Lcom/sec/android/cover/manager/CoverPowerManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsTimerResetBlocked:Z

.field private mPMS:Landroid/os/PowerManager;

.field private mTimeOutDuration:I

.field private mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mUnblockTimerResetHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v1, 0x1770

    iput v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimeOutDuration:I

    .line 37
    iput-boolean v3, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    .line 39
    new-instance v1, Lcom/sec/android/cover/manager/CoverPowerManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/cover/manager/CoverPowerManager$1;-><init>(Lcom/sec/android/cover/manager/CoverPowerManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    .line 54
    const-string v1, "CoverUI"

    const-string v2, "create CoverPowerManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    .line 57
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    .line 59
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    const-string v2, "SViewCoverBaseService.mCoverStateWakeLock"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 63
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "powersavingState":I
    if-ne v0, v4, :cond_0

    .line 66
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimeOutDuration:I

    .line 68
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/cover/manager/CoverPowerManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/manager/CoverPowerManager;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverPowerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    return-object v0
.end method


# virtual methods
.method public cancelScreenOffTimer()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public getCurrentBrightness()F
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "current_brightness":F
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v0

    .line 162
    :cond_0
    const-string v1, "CoverPowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current_brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v0
.end method

.method public goToSleep()V
    .locals 4

    .prologue
    .line 135
    const-string v0, "CoverPowerManager"

    const-string v1, "goToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 139
    :cond_0
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_0
.end method

.method public releaseWakeLock()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "CoverPowerManager"

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 151
    :cond_0
    return-void
.end method

.method public resetScreenOffTimer()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 89
    return-void
.end method

.method public resetScreenOffTimerWithInterval()V
    .locals 4

    .prologue
    const/16 v1, 0x65

    .line 92
    iget-boolean v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    .line 97
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method public setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .prologue
    .line 71
    const-string v0, "CoverPowerManager"

    const-string v1, "setTimerExpireHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .line 74
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 77
    :cond_0
    return-void
.end method

.method public setmTimeOutDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimeOutDuration:I

    .line 155
    return-void
.end method

.method public startScreenOffTimer()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 81
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 107
    const-string v0, "CoverPowerManager"

    const-string v1, "userActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 111
    :cond_0
    return-void
.end method

.method public wakeUp()V
    .locals 4

    .prologue
    .line 121
    const-string v0, "CoverPowerManager"

    const-string v1, "wakeUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 125
    :cond_0
    return-void
.end method

.method public wakeUpWithReason()V
    .locals 4

    .prologue
    .line 128
    const-string v0, "CoverPowerManager"

    const-string v1, "wakeUpWithReason"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x6

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JI)V

    .line 132
    :cond_0
    return-void
.end method
