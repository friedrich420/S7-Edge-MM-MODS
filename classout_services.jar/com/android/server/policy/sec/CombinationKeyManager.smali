.class public Lcom/android/server/policy/sec/CombinationKeyManager;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field private static final QUICKSHOT_CHORD_DEBOUNDCE_DELAY_MLLIS:J = 0x15eL

.field private static final QUICKSHOT_CHORD_KEY_INTERVEAL_TIME_MILLIS:J = 0x96L

.field private static final SAFETYASSURANCE_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0xfaL

.field private static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final SYSDUMP_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "CombinationKeyManager"


# instance fields
.field private final mAccessControlChordLongPress:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyTime:J

.field private mBackKeyTriggered:Z

.field private mCameraKeyConsumed:Z

.field private mCameraKeyTime:J

.field private mCameraKeyTriggered:Z

.field private mCameraRecordKeyConsumed:Z

.field private mCameraRecordKeyTime:J

.field private mCameraRecordKeyTriggered:Z

.field mContext:Landroid/content/Context;

.field private mEnterKeyConsumed:Z

.field private mEnterKeyTime:J

.field private mEnterKeyTriggered:Z

.field private final mFactoryTestChordLongPress:Ljava/lang/Runnable;

.field private mFlashKeyConsumed:Z

.field private mFlashKeyTime:J

.field private mFlashKeyTriggered:Z

.field mHandler:Landroid/os/Handler;

.field private mHasPermanentMenuKey:Z

.field private mHomeKeyConsumed:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field private mIsSupportManualScreenPinning:Z

.field private mMenuConsumed:Z

.field private mMenuTime:J

.field private mMenuTriggered:Z

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerKeyConsumed:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerManager:Landroid/os/PowerManager;

.field private final mQuickShotChordLongPress:Ljava/lang/Runnable;

.field private mRecentKeyConsumed:Z

.field private mRecentKeyTime:J

.field private mRecentKeyTriggered:Z

.field mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

.field private final mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

.field mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field private final mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

.field private final mSysDumpLongPress:Ljava/lang/Runnable;

.field private mVolumeDownKeyConsumed:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumed:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWiFiProtectedSetupKeyConsumed:Z

.field private mWiFiProtectedSetupKeyTime:J

.field private mWiFiProtectedSetupKeyTriggered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "samsungPhoneWindowManager"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    const/4 v2, 0x1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 622
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$1;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, mSysDumpLongPress:Ljava/lang/Runnable;

    .line 698
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$2;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 730
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$3;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, mAccessControlChordLongPress:Ljava/lang/Runnable;

    .line 758
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$4;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    .line 811
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$5;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, mFactoryTestChordLongPress:Ljava/lang/Runnable;

    .line 850
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$6;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, mQuickShotChordLongPress:Ljava/lang/Runnable;

    .line 897
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$7;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    .line 146
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    .line 148
    iput-object p3, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .line 149
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 151
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 153
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceTimeoutWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 155
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 71
    sget-boolean v0, SAFE_DEBUG:Z

    return v0
.end method

.method private cancelPendingChordAction()V
    .registers 3

    .prologue
    .line 585
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 588
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mFactoryTestChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 589
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mQuickShotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 590
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 592
    const-string v0, ""

    const-string v1, "RestrictedInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 593
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mSysDumpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    :cond_3b
    iget-object v0, p0, mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 597
    :cond_48
    return-void
.end method

.method private getChordLongPressDelay()J
    .registers 3

    .prologue
    .line 600
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptAccessControlChord()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 707
    iget-object v2, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-nez v2, :cond_c

    .line 728
    :cond_b
    :goto_b
    return-void

    .line 708
    :cond_c
    iget-boolean v2, p0, mHomeKeyTriggered:Z

    if-eqz v2, :cond_41

    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_41

    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_41

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-nez v2, :cond_41

    .line 709
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 710
    .local v0, "now":J
    iget-wide v2, p0, mHomeKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 712
    iput-boolean v4, p0, mHomeKeyConsumed:Z

    .line 713
    iput-boolean v4, p0, mVolumeDownKeyConsumed:Z

    .line 714
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 715
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 717
    .end local v0    # "now":J
    :cond_41
    iget-boolean v2, p0, mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    .line 718
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 719
    .restart local v0    # "now":J
    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, mCameraRecordKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 721
    iput-boolean v4, p0, mPowerKeyConsumed:Z

    .line 722
    iput-boolean v4, p0, mCameraRecordKeyConsumed:Z

    .line 723
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 724
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 725
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b
.end method

.method private interceptFactoryTestChord()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 797
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_a

    .line 809
    :cond_9
    :goto_9
    return-void

    .line 798
    :cond_a
    iget-boolean v2, p0, mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_9

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 800
    .local v0, "now":J
    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    iget-wide v2, p0, mWiFiProtectedSetupKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    .line 802
    iput-boolean v4, p0, mWiFiProtectedSetupKeyConsumed:Z

    .line 803
    iput-boolean v4, p0, mPowerKeyConsumed:Z

    .line 804
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 805
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 806
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mFactoryTestChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method private interceptQuickShotChord()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x15e

    const/4 v6, 0x1

    .line 831
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v2

    if-nez v2, :cond_a

    .line 848
    :cond_9
    :goto_9
    return-void

    .line 832
    :cond_a
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 833
    iget-boolean v2, p0, mCameraKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, mHomeKeyTriggered:Z

    if-nez v2, :cond_9

    .line 834
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 835
    .local v0, "now":J
    iget-wide v2, p0, mVolumeUpKeyTime:J

    iget-wide v4, p0, mCameraKeyTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-lez v2, :cond_6f

    .line 844
    :cond_33
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptQuickShotChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 835
    :cond_6f
    iget-wide v2, p0, mVolumeUpKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_33

    iget-wide v2, p0, mCameraKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_33

    .line 838
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_b8

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptQuickShotChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_b8
    iput-boolean v6, p0, mCameraKeyConsumed:Z

    .line 840
    iput-boolean v6, p0, mVolumeUpKeyConsumed:Z

    .line 841
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mQuickShotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9
.end method

.method private interceptSafetyAssuranceChord()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 743
    iget-object v0, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isSupportPowerTriplePress()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 756
    :cond_11
    :goto_11
    return-void

    .line 745
    :cond_12
    iget-boolean v0, p0, mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, mHomeKeyTriggered:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, mPowerKeyTriggered:Z

    if-nez v0, :cond_11

    .line 746
    iget-wide v0, p0, mVolumeDownKeyTime:J

    iget-wide v2, p0, mVolumeUpKeyTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 747
    const-string v0, "CombinationKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptSafetyAssuranceChord - success and waiting long press : mVolumeDownKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mVolumeDownKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mVolumeUpKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mVolumeUpKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iput-boolean v4, p0, mVolumeDownKeyConsumed:Z

    .line 749
    iput-boolean v4, p0, mVolumeUpKeyConsumed:Z

    .line 750
    iget-object v0, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 751
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 752
    iget-object v0, p0, mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 753
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11
.end method

.method private interceptScreenshotChord()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x96

    const/4 v6, 0x1

    .line 642
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 695
    :cond_b
    :goto_b
    return-void

    .line 644
    :cond_c
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 645
    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_4a

    .line 646
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 647
    .local v0, "now":J
    iget-wide v2, p0, mVolumeDownKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 649
    iput-boolean v6, p0, mVolumeDownKeyConsumed:Z

    .line 650
    iput-boolean v6, p0, mPowerKeyConsumed:Z

    .line 651
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 652
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 653
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 656
    .end local v0    # "now":J
    :cond_4a
    iget-boolean v2, p0, mFlashKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    .line 657
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 658
    .restart local v0    # "now":J
    iget-wide v2, p0, mFlashKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 660
    iput-boolean v6, p0, mFlashKeyConsumed:Z

    .line 661
    iput-boolean v6, p0, mPowerKeyConsumed:Z

    .line 662
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 663
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 664
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 668
    .end local v0    # "now":J
    :cond_7c
    iget-boolean v2, p0, mHomeKeyTriggered:Z

    if-eqz v2, :cond_b5

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_b5

    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_b5

    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_b5

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 670
    .restart local v0    # "now":J
    iget-wide v2, p0, mHomeKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b5

    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b5

    .line 672
    iput-boolean v6, p0, mHomeKeyConsumed:Z

    .line 673
    iput-boolean v6, p0, mPowerKeyConsumed:Z

    .line 674
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 675
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 676
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 680
    .end local v0    # "now":J
    :cond_b5
    const-string v2, ""

    const-string v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 681
    iget-boolean v2, p0, mMenuTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, mEnterKeyTriggered:Z

    if-nez v2, :cond_b

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 683
    .restart local v0    # "now":J
    iget-wide v2, p0, mMenuTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 685
    iput-boolean v6, p0, mRecentKeyConsumed:Z

    .line 686
    iput-boolean v6, p0, mPowerKeyConsumed:Z

    .line 687
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 688
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 689
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b
.end method

.method private interceptStopLockTaskModeChord()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x96

    const/4 v6, 0x1

    .line 862
    iget-boolean v2, p0, mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_17

    .line 863
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 895
    :cond_17
    :goto_17
    return-void

    .line 864
    :cond_18
    iget-boolean v2, p0, mHasPermanentMenuKey:Z

    if-eqz v2, :cond_84

    .line 865
    iget-boolean v2, p0, mMenuTriggered:Z

    if-eqz v2, :cond_84

    iget-boolean v2, p0, mBackKeyTriggered:Z

    if-eqz v2, :cond_84

    .line 866
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 867
    .local v0, "now":J
    iget-wide v2, p0, mMenuTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_49

    iget-wide v2, p0, mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_49

    .line 869
    iput-boolean v6, p0, mMenuConsumed:Z

    .line 870
    iput-boolean v6, p0, mBackKeyConsumed:Z

    .line 871
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 872
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_17

    .line 876
    :cond_49
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_84

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mMenuKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mMenuTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    .end local v0    # "now":J
    :cond_84
    iget-boolean v2, p0, mRecentKeyTriggered:Z

    if-eqz v2, :cond_17

    iget-boolean v2, p0, mBackKeyTriggered:Z

    if-eqz v2, :cond_17

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 882
    .restart local v0    # "now":J
    iget-wide v2, p0, mRecentKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b2

    iget-wide v2, p0, mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b2

    .line 884
    iput-boolean v6, p0, mRecentKeyConsumed:Z

    .line 885
    iput-boolean v6, p0, mBackKeyConsumed:Z

    .line 886
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 887
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_17

    .line 891
    :cond_b2
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_17

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17
.end method

.method private interceptSysDumpChord()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 605
    const-string v2, ""

    const-string v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 606
    iget-boolean v2, p0, mMenuTriggered:Z

    if-eqz v2, :cond_53

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_53

    iget-boolean v2, p0, mEnterKeyTriggered:Z

    if-eqz v2, :cond_53

    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_53

    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_53

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 608
    .local v0, "now":J
    iget-wide v2, p0, mMenuTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_53

    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_53

    iget-wide v2, p0, mEnterKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_53

    .line 611
    iput-boolean v4, p0, mMenuConsumed:Z

    .line 612
    iput-boolean v4, p0, mPowerKeyConsumed:Z

    .line 613
    iput-boolean v4, p0, mEnterKeyConsumed:Z

    .line 614
    iget-object v2, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 615
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 616
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mSysDumpLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 620
    .end local v0    # "now":J
    :cond_53
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 912
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mPowerKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 913
    const-string v0, " mHomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHomeKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 914
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 915
    const-string v0, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 916
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCameraKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mCameraKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 917
    const-string v0, " mCameraRecordKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mCameraRecordKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 918
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFlashKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mFlashKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 919
    const-string v0, " mWiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 920
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBackKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mBackKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 921
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRecentKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mRecentKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 922
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMenuKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mMenuTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 923
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasPermanentMenuKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHasPermanentMenuKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 924
    return-void
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .registers 8
    .param p1, "flags"    # I

    .prologue
    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x96

    .line 429
    and-int/lit16 v2, p1, 0x400

    if-eqz v2, :cond_9

    .line 455
    :cond_8
    :goto_8
    return-wide v0

    .line 430
    :cond_9
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 431
    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-nez v2, :cond_1d

    .line 432
    iget-wide v0, p0, mVolumeDownKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8

    .line 433
    :cond_1d
    iget-boolean v2, p0, mFlashKeyTriggered:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-nez v2, :cond_29

    .line 434
    iget-wide v0, p0, mFlashKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8

    .line 437
    :cond_29
    iget-object v2, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 439
    :cond_39
    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_45

    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_45

    .line 440
    iget-wide v0, p0, mVolumeUpKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8

    .line 443
    :cond_45
    iget-object v2, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 444
    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_59

    iget-boolean v2, p0, mHomeKeyTriggered:Z

    if-nez v2, :cond_59

    .line 445
    iget-wide v0, p0, mVolumeDownKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8

    .line 446
    :cond_59
    iget-boolean v2, p0, mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_65

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-nez v2, :cond_65

    .line 447
    iget-wide v0, p0, mCameraRecordKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8

    .line 450
    :cond_65
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 451
    iget-boolean v2, p0, mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-nez v2, :cond_8

    .line 452
    iget-wide v0, p0, mWiFiProtectedSetupKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 165
    const/high16 v6, 0x20000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_20

    move v2, v4

    .line 166
    .local v2, "interactive":Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_22

    move v1, v4

    .line 167
    .local v1, "down":Z
    :goto_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 168
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 170
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_24

    .line 426
    :cond_1f
    :goto_1f
    return-void

    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v2    # "interactive":Z
    .end local v3    # "keyCode":I
    :cond_20
    move v2, v5

    .line 165
    goto :goto_8

    .restart local v2    # "interactive":Z
    :cond_22
    move v1, v5

    .line 166
    goto :goto_f

    .line 171
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    .restart local v3    # "keyCode":I
    :cond_24
    sparse-switch v3, :sswitch_data_28c

    goto :goto_1f

    .line 240
    :sswitch_28
    iget-object v6, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 241
    if-eqz v1, :cond_d3

    .line 242
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mHomeKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 243
    iput-boolean v4, p0, mHomeKeyTriggered:Z

    .line 244
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mHomeKeyTime:J

    .line 245
    iput-boolean v5, p0, mHomeKeyConsumed:Z

    .line 246
    iget-object v4, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 247
    invoke-direct {p0}, interceptScreenshotChord()V

    .line 248
    invoke-direct {p0}, interceptAccessControlChord()V

    goto :goto_1f

    .line 174
    :sswitch_4e
    if-eqz v1, :cond_73

    .line 175
    iget-boolean v6, p0, mVolumeDownKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 176
    iput-boolean v4, p0, mVolumeDownKeyTriggered:Z

    .line 177
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mVolumeDownKeyTime:J

    .line 178
    iput-boolean v5, p0, mVolumeDownKeyConsumed:Z

    .line 179
    iget-object v4, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 180
    invoke-direct {p0}, interceptSafetyAssuranceChord()V

    .line 181
    if-eqz v2, :cond_6f

    .line 182
    invoke-direct {p0}, interceptScreenshotChord()V

    .line 183
    invoke-direct {p0}, interceptAccessControlChord()V

    goto :goto_1f

    .line 185
    :cond_6f
    invoke-direct {p0}, interceptQuickShotChord()V

    goto :goto_1f

    .line 189
    :cond_73
    iput-boolean v5, p0, mVolumeDownKeyTriggered:Z

    .line 190
    invoke-direct {p0}, cancelPendingChordAction()V

    goto :goto_1f

    .line 196
    :sswitch_79
    if-eqz v1, :cond_97

    .line 197
    iget-boolean v6, p0, mVolumeUpKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 198
    iput-boolean v4, p0, mVolumeUpKeyTriggered:Z

    .line 199
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mVolumeUpKeyTime:J

    .line 200
    iput-boolean v5, p0, mVolumeUpKeyConsumed:Z

    .line 201
    iget-object v4, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 202
    invoke-direct {p0}, interceptSafetyAssuranceChord()V

    .line 203
    if-nez v2, :cond_1f

    .line 204
    invoke-direct {p0}, interceptQuickShotChord()V

    goto :goto_1f

    .line 208
    :cond_97
    iput-boolean v5, p0, mVolumeUpKeyTriggered:Z

    .line 209
    invoke-direct {p0}, cancelPendingChordAction()V

    goto :goto_1f

    .line 215
    :sswitch_9d
    if-eqz v1, :cond_cc

    .line 216
    iget-boolean v6, p0, mPowerKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 217
    iput-boolean v4, p0, mPowerKeyTriggered:Z

    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mPowerKeyTime:J

    .line 219
    iput-boolean v5, p0, mPowerKeyConsumed:Z

    .line 220
    if-eqz v2, :cond_c7

    .line 221
    invoke-direct {p0}, interceptScreenshotChord()V

    .line 222
    invoke-direct {p0}, interceptAccessControlChord()V

    .line 223
    invoke-direct {p0}, interceptFactoryTestChord()V

    .line 225
    const-string v4, ""

    const-string v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 226
    invoke-direct {p0}, interceptSysDumpChord()V

    goto/16 :goto_1f

    .line 230
    :cond_c7
    invoke-direct {p0}, interceptQuickShotChord()V

    goto/16 :goto_1f

    .line 234
    :cond_cc
    iput-boolean v5, p0, mPowerKeyTriggered:Z

    .line 235
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 251
    :cond_d3
    iput-boolean v5, p0, mHomeKeyTriggered:Z

    .line 252
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 258
    :sswitch_da
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 260
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 261
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_1f

    const-string v4, "CombinationKeyManager"

    const-string v5, "Camera key is blocked by policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 264
    :cond_f5
    if-eqz v1, :cond_111

    .line 265
    if-nez v2, :cond_1f

    iget-boolean v6, p0, mCameraKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 266
    iput-boolean v4, p0, mCameraKeyTriggered:Z

    .line 267
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mCameraKeyTime:J

    .line 268
    iput-boolean v5, p0, mCameraKeyConsumed:Z

    .line 269
    iget-object v4, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 270
    invoke-direct {p0}, interceptQuickShotChord()V

    goto/16 :goto_1f

    .line 273
    :cond_111
    iput-boolean v5, p0, mCameraKeyTriggered:Z

    .line 274
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 280
    :sswitch_118
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 281
    if-eqz v1, :cond_13a

    .line 282
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mFlashKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 283
    iput-boolean v4, p0, mFlashKeyTriggered:Z

    .line 284
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mFlashKeyTime:J

    .line 285
    iput-boolean v5, p0, mFlashKeyConsumed:Z

    .line 286
    iget-object v4, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 287
    invoke-direct {p0}, interceptScreenshotChord()V

    goto/16 :goto_1f

    .line 290
    :cond_13a
    iput-boolean v5, p0, mFlashKeyTriggered:Z

    .line 291
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 297
    :sswitch_141
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 298
    if-eqz v1, :cond_163

    .line 299
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mCameraRecordKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 300
    iput-boolean v4, p0, mCameraRecordKeyTriggered:Z

    .line 301
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mCameraRecordKeyTime:J

    .line 302
    iput-boolean v5, p0, mCameraRecordKeyConsumed:Z

    .line 303
    iget-object v4, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 304
    invoke-direct {p0}, interceptAccessControlChord()V

    goto/16 :goto_1f

    .line 307
    :cond_163
    iput-boolean v5, p0, mCameraRecordKeyTriggered:Z

    .line 308
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 314
    :sswitch_16a
    if-eqz v1, :cond_181

    .line 315
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mWiFiProtectedSetupKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 316
    iput-boolean v4, p0, mWiFiProtectedSetupKeyTriggered:Z

    .line 317
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mWiFiProtectedSetupKeyTime:J

    .line 318
    iput-boolean v5, p0, mWiFiProtectedSetupKeyConsumed:Z

    .line 319
    invoke-direct {p0}, interceptFactoryTestChord()V

    goto/16 :goto_1f

    .line 322
    :cond_181
    iput-boolean v5, p0, mWiFiProtectedSetupKeyTriggered:Z

    .line 323
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 328
    :sswitch_188
    if-eqz v1, :cond_1b3

    .line 329
    iget-object v6, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 330
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mBackKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 331
    iput-boolean v4, p0, mBackKeyTriggered:Z

    .line 332
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mBackKeyTime:J

    .line 333
    iput-boolean v5, p0, mBackKeyConsumed:Z

    .line 335
    iget-boolean v4, p0, mIsSupportManualScreenPinning:Z

    if-eqz v4, :cond_1f

    .line 336
    invoke-direct {p0}, interceptStopLockTaskModeChord()V

    goto/16 :goto_1f

    .line 341
    :cond_1b3
    iget-boolean v4, p0, mBackKeyTriggered:Z

    if-eqz v4, :cond_1f

    .line 342
    iput-boolean v5, p0, mBackKeyTriggered:Z

    .line 343
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 349
    :sswitch_1be
    iget-boolean v6, p0, mIsSupportManualScreenPinning:Z

    if-eqz v6, :cond_1f

    .line 350
    if-eqz v1, :cond_1e9

    .line 351
    iget-object v6, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 352
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mRecentKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 353
    iput-boolean v4, p0, mRecentKeyTriggered:Z

    .line 354
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mRecentKeyTime:J

    .line 355
    iput-boolean v5, p0, mRecentKeyConsumed:Z

    .line 356
    invoke-direct {p0}, interceptStopLockTaskModeChord()V

    goto/16 :goto_1f

    .line 359
    :cond_1e9
    iget-boolean v4, p0, mRecentKeyTriggered:Z

    if-eqz v4, :cond_1f

    .line 360
    iput-boolean v5, p0, mRecentKeyTriggered:Z

    .line 361
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 369
    :sswitch_1f4
    const-string v6, ""

    const-string v7, "RestrictedInput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_224

    .line 370
    if-eqz v1, :cond_21d

    .line 371
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mMenuTriggered:Z

    if-nez v6, :cond_1f

    .line 372
    iput-boolean v4, p0, mMenuTriggered:Z

    .line 373
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mMenuTime:J

    .line 374
    iput-boolean v5, p0, mMenuConsumed:Z

    .line 375
    iget-object v4, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 376
    invoke-direct {p0}, interceptScreenshotChord()V

    .line 377
    invoke-direct {p0}, interceptSysDumpChord()V

    goto/16 :goto_1f

    .line 380
    :cond_21d
    iput-boolean v5, p0, mMenuTriggered:Z

    .line 381
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 386
    :cond_224
    iget-boolean v6, p0, mIsSupportManualScreenPinning:Z

    if-eqz v6, :cond_1f

    .line 387
    iget-boolean v6, p0, mHasPermanentMenuKey:Z

    if-eqz v6, :cond_1f

    .line 388
    if-eqz v1, :cond_253

    .line 389
    iget-object v6, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 390
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mMenuTriggered:Z

    if-nez v6, :cond_1f

    .line 391
    iput-boolean v4, p0, mMenuTriggered:Z

    .line 392
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mMenuTime:J

    .line 393
    iput-boolean v5, p0, mMenuConsumed:Z

    .line 394
    invoke-direct {p0}, interceptStopLockTaskModeChord()V

    goto/16 :goto_1f

    .line 397
    :cond_253
    iget-boolean v4, p0, mMenuTriggered:Z

    if-eqz v4, :cond_1f

    .line 398
    iput-boolean v5, p0, mMenuTriggered:Z

    .line 399
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 408
    :sswitch_25e
    const-string v6, ""

    const-string v7, "RestrictedInput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 409
    if-eqz v1, :cond_284

    .line 410
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mEnterKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 411
    iput-boolean v4, p0, mEnterKeyTriggered:Z

    .line 412
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mEnterKeyTime:J

    .line 413
    iput-boolean v5, p0, mEnterKeyConsumed:Z

    .line 414
    iget-object v4, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 415
    invoke-direct {p0}, interceptSysDumpChord()V

    goto/16 :goto_1f

    .line 418
    :cond_284
    iput-boolean v5, p0, mEnterKeyTriggered:Z

    .line 419
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 171
    nop

    :sswitch_data_28c
    .sparse-switch
        0x3 -> :sswitch_28
        0x4 -> :sswitch_188
        0x6 -> :sswitch_9d
        0x18 -> :sswitch_79
        0x19 -> :sswitch_4e
        0x1a -> :sswitch_9d
        0x1b -> :sswitch_da
        0x42 -> :sswitch_25e
        0x52 -> :sswitch_1f4
        0xa8 -> :sswitch_79
        0xa9 -> :sswitch_4e
        0xbb -> :sswitch_1be
        0x3fe -> :sswitch_141
        0x404 -> :sswitch_118
        0x412 -> :sswitch_16a
    .end sparse-switch
.end method

.method public isCombinationKeyTriggered()Z
    .registers 3

    .prologue
    .line 572
    iget-object v0, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_32

    :cond_10
    iget-boolean v0, p0, mHomeKeyTriggered:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, mFlashKeyTriggered:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, mCameraRecordKeyTriggered:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, mWiFiProtectedSetupKeyTriggered:Z

    if-nez v0, :cond_32

    const-string v0, ""

    const-string v1, "RestrictedInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, mMenuTriggered:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, mEnterKeyTriggered:Z

    if-eqz v0, :cond_34

    .line 578
    :cond_32
    const/4 v0, 0x1

    .line 580
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 459
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 460
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_17

    move v0, v2

    .line 462
    .local v0, "down":Z
    :goto_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_19

    move v2, v3

    .line 568
    :cond_16
    :goto_16
    return v2

    .end local v0    # "down":Z
    :cond_17
    move v0, v3

    .line 460
    goto :goto_d

    .line 463
    .restart local v0    # "down":Z
    :cond_19
    sparse-switch v1, :sswitch_data_94

    :cond_1c
    move v2, v3

    .line 568
    goto :goto_16

    .line 466
    :sswitch_1e
    iget-boolean v4, p0, mVolumeDownKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 467
    if-nez v0, :cond_16

    .line 468
    iput-boolean v3, p0, mVolumeDownKeyConsumed:Z

    goto :goto_16

    .line 475
    :sswitch_27
    iget-boolean v4, p0, mVolumeUpKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 476
    if-nez v0, :cond_16

    .line 477
    iput-boolean v3, p0, mVolumeUpKeyConsumed:Z

    goto :goto_16

    .line 484
    :sswitch_30
    iget-boolean v4, p0, mPowerKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 485
    if-nez v0, :cond_16

    .line 486
    iput-boolean v3, p0, mPowerKeyConsumed:Z

    goto :goto_16

    .line 492
    :sswitch_39
    iget-boolean v4, p0, mHomeKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 493
    if-nez v0, :cond_16

    .line 494
    iput-boolean v3, p0, mHomeKeyConsumed:Z

    goto :goto_16

    .line 500
    :sswitch_42
    iget-boolean v4, p0, mCameraKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 501
    if-nez v0, :cond_16

    .line 502
    iput-boolean v3, p0, mCameraKeyConsumed:Z

    goto :goto_16

    .line 508
    :sswitch_4b
    iget-boolean v4, p0, mFlashKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 509
    if-nez v0, :cond_16

    .line 510
    iput-boolean v3, p0, mFlashKeyConsumed:Z

    goto :goto_16

    .line 516
    :sswitch_54
    iget-boolean v4, p0, mCameraRecordKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 517
    if-nez v0, :cond_16

    .line 518
    iput-boolean v3, p0, mCameraRecordKeyConsumed:Z

    goto :goto_16

    .line 524
    :sswitch_5d
    iget-boolean v4, p0, mWiFiProtectedSetupKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 525
    if-nez v0, :cond_16

    .line 526
    iput-boolean v3, p0, mWiFiProtectedSetupKeyConsumed:Z

    goto :goto_16

    .line 532
    :sswitch_66
    iget-boolean v4, p0, mBackKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 533
    if-nez v0, :cond_16

    .line 534
    iput-boolean v3, p0, mBackKeyConsumed:Z

    goto :goto_16

    .line 540
    :sswitch_6f
    iget-boolean v4, p0, mRecentKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 541
    if-nez v0, :cond_16

    .line 542
    iput-boolean v3, p0, mRecentKeyConsumed:Z

    goto :goto_16

    .line 548
    :sswitch_78
    iget-boolean v4, p0, mMenuConsumed:Z

    if-eqz v4, :cond_1c

    .line 549
    if-nez v0, :cond_16

    .line 550
    iput-boolean v3, p0, mMenuConsumed:Z

    goto :goto_16

    .line 557
    :sswitch_81
    const-string v4, ""

    const-string v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 558
    iget-boolean v4, p0, mEnterKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 559
    if-nez v0, :cond_16

    .line 560
    iput-boolean v3, p0, mEnterKeyConsumed:Z

    goto :goto_16

    .line 463
    :sswitch_data_94
    .sparse-switch
        0x3 -> :sswitch_39
        0x4 -> :sswitch_66
        0x6 -> :sswitch_30
        0x18 -> :sswitch_27
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_30
        0x1b -> :sswitch_42
        0x42 -> :sswitch_81
        0x52 -> :sswitch_78
        0xa8 -> :sswitch_27
        0xa9 -> :sswitch_1e
        0xbb -> :sswitch_6f
        0x3fe -> :sswitch_54
        0x404 -> :sswitch_4b
        0x412 -> :sswitch_5d
    .end sparse-switch
.end method

.method public onSystemReady()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, mHasPermanentMenuKey:Z

    .line 160
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mIsSupportManualScreenPinning:Z

    .line 162
    return-void
.end method
