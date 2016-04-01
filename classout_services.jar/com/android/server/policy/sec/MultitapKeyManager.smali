.class public Lcom/android/server/policy/sec/MultitapKeyManager;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SAFE_DEBUG:Z

.field private static final SEC_DOUBLE_TAP_TIMEOUT:I = 0xaa

.field private static final TAG:Ljava/lang/String; = "MultitapKeyManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHomeConsumed:Z

.field private mHomeDoubleEventTime:J

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeFakeTripleTapPending:Z

.field private mHomeKeyLastEventTime:J

.field private mHomeTripleTapPending:Z

.field private final mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerConsumed:Z

.field private mPowerDoubleTapPending:Z

.field private mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mPowerTripleEventTime:J

.field private mPowerTripleTapPending:Z

.field private mPowerTripleTapReady:Z

.field private mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .registers 7
    .param p1, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "samsungPhoneWindowManager"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 55
    iput-boolean v1, p0, mHomeDoubleTapPending:Z

    .line 56
    iput-boolean v1, p0, mHomeTripleTapPending:Z

    .line 57
    iput-boolean v1, p0, mHomeFakeTripleTapPending:Z

    .line 58
    iput-boolean v1, p0, mHomeConsumed:Z

    .line 59
    iput-boolean v1, p0, mPowerDoubleTapPending:Z

    .line 60
    iput-boolean v1, p0, mPowerTripleTapPending:Z

    .line 61
    iput-boolean v1, p0, mPowerTripleTapReady:Z

    .line 62
    iput-boolean v1, p0, mPowerConsumed:Z

    .line 63
    iput-wide v2, p0, mPowerTripleEventTime:J

    .line 64
    iput-wide v2, p0, mHomeDoubleEventTime:J

    .line 65
    iput-wide v2, p0, mHomeKeyLastEventTime:J

    .line 256
    new-instance v0, Lcom/android/server/policy/sec/MultitapKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/MultitapKeyManager$1;-><init>(Lcom/android/server/policy/sec/MultitapKeyManager;)V

    iput-object v0, p0, mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 288
    new-instance v0, Lcom/android/server/policy/sec/MultitapKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/MultitapKeyManager$2;-><init>(Lcom/android/server/policy/sec/MultitapKeyManager;)V

    iput-object v0, p0, mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 311
    new-instance v0, Lcom/android/server/policy/sec/MultitapKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/MultitapKeyManager$3;-><init>(Lcom/android/server/policy/sec/MultitapKeyManager;)V

    iput-object v0, p0, mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 325
    new-instance v0, Lcom/android/server/policy/sec/MultitapKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/MultitapKeyManager$4;-><init>(Lcom/android/server/policy/sec/MultitapKeyManager;)V

    iput-object v0, p0, mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    .line 72
    iput-object p2, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/sec/MultitapKeyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;

    .prologue
    .line 45
    iget-boolean v0, p0, mHomeDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, mHomeDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/sec/MultitapKeyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;

    .prologue
    .line 45
    iget-boolean v0, p0, mHomeTripleTapPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, mHomeTripleTapPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/sec/MultitapKeyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;

    .prologue
    .line 45
    iget-boolean v0, p0, mHomeFakeTripleTapPending:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, mHomeFakeTripleTapPending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/sec/MultitapKeyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;

    .prologue
    .line 45
    iget-boolean v0, p0, mPowerDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, mPowerDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, mPowerTripleTapPending:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, mPowerTripleTapReady:Z

    return p1
.end method

.method private handleDoubleTapOnPower()V
    .registers 2

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, mPowerConsumed:Z

    .line 308
    iget-object v0, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    .line 309
    return-void
.end method

.method private handleTripleTapOnHome()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 267
    iput-boolean v2, p0, mHomeConsumed:Z

    .line 270
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_24

    .line 271
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 272
    iget-object v0, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    .line 286
    :goto_1d
    return-void

    .line 274
    :cond_1e
    iget-object v0, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    goto :goto_1d

    .line 281
    :cond_24
    iget-object v0, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 282
    iget-object v0, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendBroadcastForAccessibility()V

    goto :goto_1d

    .line 284
    :cond_32
    iget-object v0, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_1d
.end method

.method private handleTripleTapOnPower()V
    .registers 2

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, mPowerConsumed:Z

    .line 321
    iget-object v0, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendBroadcastForSafetyAssurance()V

    .line 322
    return-void
.end method


# virtual methods
.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z
    .registers 15
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "force"    # Z

    .prologue
    const-wide/16 v8, 0xaa

    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 81
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 82
    .local v2, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_19

    move v0, v4

    .line 84
    .local v0, "down":Z
    :goto_15
    sparse-switch v1, :sswitch_data_20a

    .line 197
    :cond_18
    :goto_18
    return v3

    .end local v0    # "down":Z
    :cond_19
    move v0, v3

    .line 82
    goto :goto_15

    .line 86
    .restart local v0    # "down":Z
    :sswitch_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    if-ne v5, v4, :cond_29

    iget-object v5, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isSmartHallFlipStateUnfold()Z

    move-result v5

    if-nez v5, :cond_18

    .line 89
    :cond_29
    if-nez v0, :cond_91

    .line 90
    iput-wide v10, p0, mHomeKeyLastEventTime:J

    .line 91
    iput-wide v10, p0, mHomeDoubleEventTime:J

    .line 92
    iget-boolean v5, p0, mHomeConsumed:Z

    if-eqz v5, :cond_3b

    iget-boolean v5, p0, mHomeFakeTripleTapPending:Z

    if-nez v5, :cond_3b

    .line 93
    iput-boolean v3, p0, mHomeConsumed:Z

    move v3, v4

    .line 94
    goto :goto_18

    .line 97
    :cond_3b
    iget-boolean v5, p0, mHomeTripleTapPending:Z

    if-nez v5, :cond_43

    iget-boolean v5, p0, mHomeFakeTripleTapPending:Z

    if-eqz v5, :cond_5e

    .line 98
    :cond_43
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_5c

    const-string v3, "MultitapKeyManager"

    const-string v5, "Home tripletap timeout runnable posted!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    move v3, v4

    .line 101
    goto :goto_18

    .line 102
    :cond_5e
    iget-object v5, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v5

    if-nez v5, :cond_6e

    iget-object v5, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 103
    :cond_6e
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iput-boolean v4, p0, mHomeDoubleTapPending:Z

    .line 105
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, mHomeKeyLastEventTime:J

    .line 106
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_8f

    const-string v3, "MultitapKeyManager"

    const-string v5, "Home doubletap timeout runnable posted!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    move v3, v4

    .line 108
    goto :goto_18

    .line 111
    :cond_91
    if-nez v2, :cond_18

    .line 112
    iput-boolean v3, p0, mHomeConsumed:Z

    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, mHomeDoubleEventTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_d3

    .line 116
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_cb

    const-string v3, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap wakeup time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " first="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_cb
    iput-wide v10, p0, mHomeDoubleEventTime:J

    .line 118
    invoke-virtual {p0}, handleDoubleTapOnHome()V

    move v3, v4

    .line 119
    goto/16 :goto_18

    .line 123
    :cond_d3
    if-eqz p2, :cond_107

    iget-object v5, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v5

    if-eqz v5, :cond_107

    .line 124
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const-wide/16 v8, 0x154

    add-long/2addr v6, v8

    iput-wide v6, p0, mHomeDoubleEventTime:J

    .line 125
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_104

    const-string v3, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap first event time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_104
    move v3, v4

    .line 126
    goto/16 :goto_18

    .line 129
    :cond_107
    iget-boolean v5, p0, mHomeDoubleTapPending:Z

    if-eqz v5, :cond_15f

    .line 130
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, mHomeKeyLastEventTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x28

    cmp-long v5, v6, v8

    if-gtz v5, :cond_143

    iget-object v5, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v5

    if-nez v5, :cond_143

    .line 131
    const-string v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap drop for time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, mHomeKeyLastEventTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-wide v10, p0, mHomeKeyLastEventTime:J

    goto/16 :goto_18

    .line 135
    :cond_143
    iput-boolean v3, p0, mHomeDoubleTapPending:Z

    .line 136
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object v3, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_159

    .line 138
    iput-boolean v4, p0, mHomeTripleTapPending:Z

    :goto_156
    move v3, v4

    .line 143
    goto/16 :goto_18

    .line 140
    :cond_159
    iput-boolean v4, p0, mHomeFakeTripleTapPending:Z

    .line 141
    invoke-virtual {p0}, handleDoubleTapOnHome()V

    goto :goto_156

    .line 144
    :cond_15f
    iget-boolean v5, p0, mHomeTripleTapPending:Z

    if-eqz v5, :cond_18

    .line 145
    iput-boolean v3, p0, mHomeTripleTapPending:Z

    .line 146
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    invoke-direct {p0}, handleTripleTapOnHome()V

    move v3, v4

    .line 148
    goto/16 :goto_18

    .line 153
    :sswitch_172
    if-nez v0, :cond_1cb

    .line 154
    iget-boolean v5, p0, mPowerConsumed:Z

    if-eqz v5, :cond_17d

    .line 155
    iput-boolean v3, p0, mPowerConsumed:Z

    move v3, v4

    .line 156
    goto/16 :goto_18

    .line 159
    :cond_17d
    iget-object v5, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v5

    if-eqz v5, :cond_19e

    .line 160
    iput-boolean v4, p0, mPowerTripleTapPending:Z

    .line 161
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, mPowerTripleEventTime:J

    .line 162
    sget-boolean v5, SAFE_DEBUG:Z

    if-eqz v5, :cond_19e

    const-string v5, "MultitapKeyManager"

    const-string v6, "Power tripletap timeout posted!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_19e
    iget-object v5, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v5

    if-eqz v5, :cond_18

    if-nez p2, :cond_18

    .line 165
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iput-boolean v4, p0, mPowerDoubleTapPending:Z

    .line 167
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_1c8

    const-string v3, "MultitapKeyManager"

    const-string v5, "Power doubletap timeout runnable posted!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c8
    move v3, v4

    .line 169
    goto/16 :goto_18

    .line 172
    :cond_1cb
    if-nez v2, :cond_18

    .line 173
    iput-boolean v3, p0, mPowerConsumed:Z

    .line 174
    iget-boolean v5, p0, mPowerTripleTapPending:Z

    if-eqz v5, :cond_1e8

    .line 175
    iput-boolean v3, p0, mPowerTripleTapPending:Z

    .line 176
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, mPowerTripleEventTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_1fe

    .line 177
    iget-boolean v5, p0, mPowerTripleTapReady:Z

    if-eqz v5, :cond_1fb

    .line 178
    iput-boolean v3, p0, mPowerTripleTapReady:Z

    .line 179
    invoke-direct {p0}, handleTripleTapOnPower()V

    .line 188
    :cond_1e8
    :goto_1e8
    iget-boolean v5, p0, mPowerDoubleTapPending:Z

    if-eqz v5, :cond_18

    .line 189
    iput-boolean v3, p0, mPowerDoubleTapPending:Z

    .line 190
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    invoke-direct {p0}, handleDoubleTapOnPower()V

    move v3, v4

    .line 192
    goto/16 :goto_18

    .line 181
    :cond_1fb
    iput-boolean v4, p0, mPowerTripleTapReady:Z

    goto :goto_1e8

    .line 184
    :cond_1fe
    const-string v5, "MultitapKeyManager"

    const-string/jumbo v6, "mPowerTripleTap is timeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iput-boolean v3, p0, mPowerTripleTapReady:Z

    goto :goto_1e8

    .line 84
    nop

    :sswitch_data_20a
    .sparse-switch
        0x3 -> :sswitch_1b
        0x1a -> :sswitch_172
    .end sparse-switch
.end method

.method public handleDoubleTapOnHome()V
    .registers 4

    .prologue
    .line 202
    iget-object v1, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getKnoxCustomManager()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 203
    .local v0, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 204
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in Sealed mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_15
    return-void

    .line 210
    :cond_16
    iget-object v1, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 211
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in kidsmode and container only mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 217
    :cond_26
    iget-object v1, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 218
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in access control"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 224
    :cond_37
    iget-object v1, p0, mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 225
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in LockTaskMode enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 230
    :cond_47
    iget-object v1, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isCurrentUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_57

    .line 231
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in UserSetup not complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 235
    :cond_57
    iget-object v1, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 236
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in SimLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 240
    :cond_67
    iget-object v1, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 241
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in CarrierLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 246
    :cond_77
    iget-object v1, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEncryptionMode()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 247
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in Encryption mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 252
    :cond_87
    const/4 v1, 0x1

    iput-boolean v1, p0, mHomeConsumed:Z

    .line 253
    iget-object v1, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchDoubleTapOnHomeCommand()V

    goto :goto_15
.end method

.method public isHomeConsumed()Z
    .registers 2

    .prologue
    .line 303
    iget-boolean v0, p0, mHomeConsumed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, mHomeTripleTapPending:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
