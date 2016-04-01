.class public Landroid/widget/ViewFlipper;
.super Landroid/widget/ViewAnimator;
.source "ViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0xbb8

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private final FLIP_MSG:I

.field private mAutoStart:Z

.field private mFlipInterval:I

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunning:Z

.field private mStarted:Z

.field private mUserPresent:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 44
    const/16 v0, 0xbb8

    iput v0, p0, mFlipInterval:I

    .line 45
    iput-boolean v1, p0, mAutoStart:Z

    .line 47
    iput-boolean v1, p0, mRunning:Z

    .line 48
    iput-boolean v1, p0, mStarted:Z

    .line 49
    iput-boolean v1, p0, mVisible:Z

    .line 50
    iput-boolean v2, p0, mUserPresent:Z

    .line 68
    new-instance v0, Landroid/widget/ViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput v2, p0, FLIP_MSG:I

    .line 214
    new-instance v0, Landroid/widget/ViewFlipper$2;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0xbb8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v4, p0, mFlipInterval:I

    .line 45
    iput-boolean v2, p0, mAutoStart:Z

    .line 47
    iput-boolean v2, p0, mRunning:Z

    .line 48
    iput-boolean v2, p0, mStarted:Z

    .line 49
    iput-boolean v2, p0, mVisible:Z

    .line 50
    iput-boolean v3, p0, mUserPresent:Z

    .line 68
    new-instance v1, Landroid/widget/ViewFlipper$1;

    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput v3, p0, FLIP_MSG:I

    .line 214
    new-instance v1, Landroid/widget/ViewFlipper$2;

    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper$2;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 59
    sget-object v1, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, mFlipInterval:I

    .line 63
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, mAutoStart:Z

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method static synthetic access$002(Landroid/widget/ViewFlipper;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ViewFlipper;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, mUserPresent:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/ViewFlipper;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/ViewFlipper;

    .prologue
    .line 38
    invoke-direct {p0}, updateRunning()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/ViewFlipper;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/ViewFlipper;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, updateRunning(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ViewFlipper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ViewFlipper;

    .prologue
    .line 38
    iget-boolean v0, p0, mRunning:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/ViewFlipper;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/ViewFlipper;

    .prologue
    .line 38
    iget v0, p0, mFlipInterval:I

    return v0
.end method

.method private updateRunning()V
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, updateRunning(Z)V

    .line 161
    return-void
.end method

.method private updateRunning(Z)V
    .registers 8
    .param p1, "flipNow"    # Z

    .prologue
    const/4 v2, 0x1

    .line 172
    iget-boolean v3, p0, mVisible:Z

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, mStarted:Z

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, mUserPresent:Z

    if-eqz v3, :cond_2a

    move v1, v2

    .line 173
    .local v1, "running":Z
    :goto_e
    iget-boolean v3, p0, mRunning:Z

    if-eq v1, v3, :cond_29

    .line 174
    if-eqz v1, :cond_2c

    .line 175
    iget v3, p0, mWhichChild:I

    invoke-virtual {p0, v3, p1}, showOnly(IZ)V

    .line 176
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget v3, p0, mFlipInterval:I

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 181
    .end local v0    # "msg":Landroid/os/Message;
    :goto_27
    iput-boolean v1, p0, mRunning:Z

    .line 187
    :cond_29
    return-void

    .line 172
    .end local v1    # "running":Z
    :cond_2a
    const/4 v1, 0x0

    goto :goto_e

    .line 179
    .restart local v1    # "running":Z
    :cond_2c
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_27
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 152
    const-class v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoStart()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, mAutoStart:Z

    return v0
.end method

.method public isFlipping()Z
    .registers 2

    .prologue
    .line 193
    iget-boolean v0, p0, mStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onAttachedToWindow()V

    .line 87
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    iget-boolean v0, p0, mAutoStart:Z

    if-eqz v0, :cond_29

    .line 103
    invoke-virtual {p0}, startFlipping()V

    .line 105
    :cond_29
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/ViewAnimator;->onDetachedFromWindow()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, mVisible:Z

    .line 112
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    invoke-direct {p0}, updateRunning()V

    .line 114
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->onWindowVisibilityChanged(I)V

    .line 119
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, mVisible:Z

    .line 120
    invoke-direct {p0, v1}, updateRunning(Z)V

    .line 121
    return-void

    :cond_d
    move v0, v1

    .line 119
    goto :goto_7
.end method

.method public setAutoStart(Z)V
    .registers 2
    .param p1, "autoStart"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, mAutoStart:Z

    .line 202
    return-void
.end method

.method public setFlipInterval(I)V
    .registers 2
    .param p1, "milliseconds"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 131
    iput p1, p0, mFlipInterval:I

    .line 132
    return-void
.end method

.method public startFlipping()V
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, mStarted:Z

    .line 139
    invoke-direct {p0}, updateRunning()V

    .line 140
    return-void
.end method

.method public stopFlipping()V
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, mStarted:Z

    .line 147
    invoke-direct {p0}, updateRunning()V

    .line 148
    return-void
.end method
