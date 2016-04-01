.class public Lcom/android/server/policy/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ImmersiveModeConfirmation$H;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
    }
.end annotation


# static fields
.field private static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SHOW_EVERY_TIME:Z = false

.field private static final TAG:Ljava/lang/String; = "ImmersiveModeConfirmation"


# instance fields
.field private mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mConfirmed:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

.field private final mPanicThresholdMs:J

.field private mPanicTime:J

.field private final mShowDelayMs:J

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$1;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    iput-object v0, p0, mConfirm:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Lcom/android/server/policy/ImmersiveModeConfirmation$1;)V

    iput-object v0, p0, mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    .line 73
    invoke-direct {p0}, getNavBarExitDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, mShowDelayMs:J

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, mPanicThresholdMs:J

    .line 76
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    .line 78
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    .line 53
    invoke-direct {p0}, handleHide()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    .line 53
    invoke-direct {p0}, handleShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/ImmersiveModeConfirmation;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    .line 53
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/ImmersiveModeConfirmation;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    .line 53
    iget-boolean v0, p0, mConfirmed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/policy/ImmersiveModeConfirmation;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, mConfirmed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    .line 53
    invoke-direct {p0}, saveSetting()V

    return-void
.end method

.method private getNavBarExitDuration()J
    .registers 5

    .prologue
    .line 81
    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x10a0021

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 82
    .local v0, "exit":Landroid/view/animation/Animation;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    :goto_f
    return-wide v2

    :cond_10
    const-wide/16 v2, 0x0

    goto :goto_f
.end method

.method private handleHide()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_e

    .line 154
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .line 157
    :cond_e
    return-void
.end method

.method private handleShow()V
    .registers 5

    .prologue
    .line 315
    new-instance v1, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mConfirm:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    .line 318
    iget-object v1, p0, mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->setSystemUiVisibility(I)V

    .line 323
    invoke-virtual {p0}, getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 324
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    return-void
.end method

.method private saveSetting()V
    .registers 6

    .prologue
    .line 104
    :try_start_0
    iget-boolean v2, p0, mConfirmed:Z

    if-eqz v2, :cond_14

    const-string v1, "confirmed"

    .line 105
    .local v1, "value":Ljava/lang/String;
    :goto_6
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "immersive_mode_confirmations"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_16

    .line 113
    .end local v1    # "value":Ljava/lang/String;
    :goto_13
    return-void

    .line 104
    :cond_14
    const/4 v1, 0x0

    goto :goto_6

    .line 110
    :catch_16
    move-exception v0

    .line 111
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "ImmersiveModeConfirmation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error saving confirmations, mConfirmed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mConfirmed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method


# virtual methods
.method public confirmCurrentPrompt()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_b

    .line 147
    iget-object v0, p0, mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    iget-object v1, p0, mConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    .line 149
    :cond_b
    return-void
.end method

.method public getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    .prologue
    .line 177
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 160
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const v4, 0x1000108

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 170
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 171
    const-string v1, "ImmersiveModeConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    const v1, 0x10302ef

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 173
    return-object v0
.end method

.method public immersiveModeChanged(Ljava/lang/String;ZZ)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isImmersiveMode"    # Z
    .param p3, "userSetupComplete"    # Z

    .prologue
    const/4 v4, 0x1

    .line 117
    iget-object v1, p0, mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 118
    if-eqz p2, :cond_1c

    .line 119
    invoke-static {p1}, Lcom/android/server/policy/PolicyControl;->disableImmersiveConfirmation(Ljava/lang/String;)Z

    move-result v0

    .line 122
    .local v0, "disabled":Z
    if-nez v0, :cond_1b

    iget-boolean v1, p0, mConfirmed:Z

    if-nez v1, :cond_1b

    if-eqz p3, :cond_1b

    .line 123
    iget-object v1, p0, mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    iget-wide v2, p0, mShowDelayMs:J

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessageDelayed(IJ)Z

    .line 128
    .end local v0    # "disabled":Z
    :cond_1b
    :goto_1b
    return-void

    .line 126
    :cond_1c
    iget-object v1, p0, mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    goto :goto_1b
.end method

.method public loadSetting(I)V
    .registers 7
    .param p1, "currentUserId"    # I

    .prologue
    .line 86
    const/4 v2, 0x0

    iput-boolean v2, p0, mConfirmed:Z

    .line 87
    iput p1, p0, mCurrentUserId:I

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "value":Ljava/lang/String;
    :try_start_6
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "immersive_mode_confirmations"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "confirmed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, mConfirmed:Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1c} :catch_1d

    .line 99
    :goto_1c
    return-void

    .line 96
    :catch_1d
    move-exception v0

    .line 97
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "ImmersiveModeConfirmation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading confirmations, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public onPowerKeyDown(ZJZ)Z
    .registers 11
    .param p1, "isScreenOn"    # Z
    .param p2, "time"    # J
    .param p4, "inImmersiveMode"    # Z

    .prologue
    const/4 v0, 0x0

    .line 131
    if-nez p1, :cond_13

    iget-wide v2, p0, mPanicTime:J

    sub-long v2, p2, v2

    iget-wide v4, p0, mPanicThresholdMs:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_13

    .line 133
    iget-object v1, p0, mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-nez v1, :cond_12

    const/4 v0, 0x1

    .line 141
    :cond_12
    :goto_12
    return v0

    .line 135
    :cond_13
    if-eqz p1, :cond_1a

    if-eqz p4, :cond_1a

    .line 137
    iput-wide p2, p0, mPanicTime:J

    goto :goto_12

    .line 139
    :cond_1a
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mPanicTime:J

    goto :goto_12
.end method
