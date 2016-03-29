.class public Lcom/android/keyguard/util/MultiSimUtils;
.super Ljava/lang/Object;
.source "MultiSimUtils.java"


# static fields
.field private static mCurrentPukLockSlot:I

.field private static mCurrnetPinLockSlot:I

.field private static mPIN1LockReceived:Z

.field private static mPIN2LockReceived:Z

.field private static mPINPUKLaunchMode:I

.field private static mPINPUKRequest:Z

.field private static mPINPUKSlot:I

.field private static mSlotCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/android/keyguard/util/MultiSimUtils;->mPINPUKRequest:Z

    .line 34
    sput v0, Lcom/android/keyguard/util/MultiSimUtils;->mSlotCount:I

    .line 35
    sput v0, Lcom/android/keyguard/util/MultiSimUtils;->mPINPUKSlot:I

    .line 36
    sput v1, Lcom/android/keyguard/util/MultiSimUtils;->mCurrnetPinLockSlot:I

    .line 37
    sput v1, Lcom/android/keyguard/util/MultiSimUtils;->mCurrentPukLockSlot:I

    .line 39
    sput-boolean v0, Lcom/android/keyguard/util/MultiSimUtils;->mPIN1LockReceived:Z

    .line 40
    sput-boolean v0, Lcom/android/keyguard/util/MultiSimUtils;->mPIN2LockReceived:Z

    .line 48
    sput v0, Lcom/android/keyguard/util/MultiSimUtils;->mPINPUKLaunchMode:I

    return-void
.end method

.method public static getDualModePINPUKRequest()Z
    .locals 3

    .prologue
    .line 143
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDualModePINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/util/MultiSimUtils;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-boolean v0, Lcom/android/keyguard/util/MultiSimUtils;->mPINPUKRequest:Z

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPINPUKRequest()Z
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->useSimCardManagerOnBoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/android/keyguard/util/MultiSimUtils;->getDualModePINPUKRequest()Z

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPINPUKRequest(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, "airPlaneEnabled":I
    const-string v2, "MultiSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKRequest airPlaneEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->useSimCardManagerOnBoot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-static {}, Lcom/android/keyguard/util/MultiSimUtils;->getDualModePINPUKRequest()Z

    move-result v1

    goto :goto_0
.end method

.method public static getPINPUKSlot()I
    .locals 3

    .prologue
    .line 151
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPINPUKSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/util/MultiSimUtils;->mPINPUKSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget v0, Lcom/android/keyguard/util/MultiSimUtils;->mPINPUKSlot:I

    return v0
.end method

.method public static getSimSlotCount()I
    .locals 3

    .prologue
    .line 222
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    sput v0, Lcom/android/keyguard/util/MultiSimUtils;->mSlotCount:I

    .line 223
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimSlotCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/keyguard/util/MultiSimUtils;->mSlotCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget v0, Lcom/android/keyguard/util/MultiSimUtils;->mSlotCount:I

    return v0
.end method

.method public static setPINPUKRequest(Z)V
    .locals 3
    .param p0, "state"    # Z

    .prologue
    .line 129
    sput-boolean p0, Lcom/android/keyguard/util/MultiSimUtils;->mPINPUKRequest:Z

    .line 130
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/util/MultiSimUtils;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public static setPINPUKRequestMode(I)V
    .locals 0
    .param p0, "launchMode"    # I

    .prologue
    .line 139
    sput p0, Lcom/android/keyguard/util/MultiSimUtils;->mPINPUKLaunchMode:I

    .line 140
    return-void
.end method

.method public static setPINPUKSlot(I)V
    .locals 3
    .param p0, "slot"    # I

    .prologue
    .line 134
    const-string v0, "MultiSimUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sput p0, Lcom/android/keyguard/util/MultiSimUtils;->mPINPUKSlot:I

    .line 136
    return-void
.end method
