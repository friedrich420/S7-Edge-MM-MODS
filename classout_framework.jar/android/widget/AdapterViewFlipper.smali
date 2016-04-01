.class public Landroid/widget/AdapterViewFlipper;
.super Landroid/widget/AdapterViewAnimator;
.source "AdapterViewFlipper.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x2710

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewFlipper"


# instance fields
.field private final FLIP_MSG:I

.field private mAdvancedByHost:Z

.field private mAttachedReceiver:Z

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

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;)V

    .line 46
    const/16 v0, 0x2710

    iput v0, p0, mFlipInterval:I

    .line 47
    iput-boolean v1, p0, mAutoStart:Z

    .line 49
    iput-boolean v1, p0, mRunning:Z

    .line 50
    iput-boolean v1, p0, mStarted:Z

    .line 51
    iput-boolean v1, p0, mVisible:Z

    .line 52
    iput-boolean v2, p0, mUserPresent:Z

    .line 53
    iput-boolean v1, p0, mAdvancedByHost:Z

    .line 55
    iput-boolean v1, p0, mAttachedReceiver:Z

    .line 86
    new-instance v0, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    iput v2, p0, FLIP_MSG:I

    .line 301
    new-instance v0, Landroid/widget/AdapterViewFlipper$2;

    invoke-direct {v0, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    iput v4, p0, mFlipInterval:I

    .line 47
    iput-boolean v2, p0, mAutoStart:Z

    .line 49
    iput-boolean v2, p0, mRunning:Z

    .line 50
    iput-boolean v2, p0, mStarted:Z

    .line 51
    iput-boolean v2, p0, mVisible:Z

    .line 52
    iput-boolean v3, p0, mUserPresent:Z

    .line 53
    iput-boolean v2, p0, mAdvancedByHost:Z

    .line 55
    iput-boolean v2, p0, mAttachedReceiver:Z

    .line 86
    new-instance v1, Landroid/widget/AdapterViewFlipper$1;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$1;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    iput v3, p0, FLIP_MSG:I

    .line 301
    new-instance v1, Landroid/widget/AdapterViewFlipper$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewFlipper$2;-><init>(Landroid/widget/AdapterViewFlipper;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 73
    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewFlipper:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, mFlipInterval:I

    .line 77
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, mAutoStart:Z

    .line 81
    iput-boolean v3, p0, mLoopViews:Z

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method static synthetic access$002(Landroid/widget/AdapterViewFlipper;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AdapterViewFlipper;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, mUserPresent:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/AdapterViewFlipper;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/AdapterViewFlipper;

    .prologue
    .line 40
    invoke-direct {p0}, updateRunning()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/AdapterViewFlipper;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AdapterViewFlipper;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, updateRunning(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/AdapterViewFlipper;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/AdapterViewFlipper;

    .prologue
    .line 40
    iget-boolean v0, p0, mRunning:Z

    return v0
.end method

.method private updateRunning()V
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-direct {p0, v0}, updateRunning(Z)V

    .line 247
    return-void
.end method

.method private updateRunning(Z)V
    .registers 8
    .param p1, "flipNow"    # Z

    .prologue
    const/4 v2, 0x1

    .line 258
    iget-boolean v3, p0, mAdvancedByHost:Z

    if-nez v3, :cond_32

    iget-boolean v3, p0, mVisible:Z

    if-eqz v3, :cond_32

    iget-boolean v3, p0, mStarted:Z

    if-eqz v3, :cond_32

    iget-boolean v3, p0, mUserPresent:Z

    if-eqz v3, :cond_32

    iget-object v3, p0, mAdapter:Landroid/widget/Adapter;

    if-eqz v3, :cond_32

    move v1, v2

    .line 260
    .local v1, "running":Z
    :goto_16
    iget-boolean v3, p0, mRunning:Z

    if-eq v1, v3, :cond_31

    .line 261
    if-eqz v1, :cond_34

    .line 262
    iget v3, p0, mWhichChild:I

    invoke-virtual {p0, v3, p1}, showOnly(IZ)V

    .line 263
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 264
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget v3, p0, mFlipInterval:I

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 268
    .end local v0    # "msg":Landroid/os/Message;
    :goto_2f
    iput-boolean v1, p0, mRunning:Z

    .line 274
    :cond_31
    return-void

    .line 258
    .end local v1    # "running":Z
    :cond_32
    const/4 v1, 0x0

    goto :goto_16

    .line 266
    .restart local v1    # "running":Z
    :cond_34
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2f
.end method


# virtual methods
.method public fyiWillBeAdvancedByHostKThx()V
    .registers 2

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, mAdvancedByHost:Z

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, updateRunning(Z)V

    .line 322
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 326
    const-class v0, Landroid/widget/AdapterViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlipInterval()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, mFlipInterval:I

    return v0
.end method

.method public isAutoStart()Z
    .registers 2

    .prologue
    .line 296
    iget-boolean v0, p0, mAutoStart:Z

    return v0
.end method

.method public isFlipping()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, mStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onAttachedToWindow()V

    .line 119
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, mAttachedReceiver:Z

    .line 134
    iget-boolean v0, p0, mAutoStart:Z

    if-eqz v0, :cond_2c

    .line 136
    invoke-virtual {p0}, startFlipping()V

    .line 138
    :cond_2c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->onDetachedFromWindow()V

    .line 143
    iput-boolean v2, p0, mVisible:Z

    .line 145
    iget-boolean v0, p0, mAttachedReceiver:Z

    if-eqz v0, :cond_15

    .line 146
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    iput-boolean v2, p0, mAttachedReceiver:Z

    .line 149
    :cond_15
    invoke-direct {p0}, updateRunning()V

    .line 150
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onWindowVisibilityChanged(I)V

    .line 155
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, mVisible:Z

    .line 156
    invoke-direct {p0, v1}, updateRunning(Z)V

    .line 157
    return-void

    :cond_d
    move v0, v1

    .line 155
    goto :goto_7
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    .line 162
    invoke-direct {p0}, updateRunning()V

    .line 163
    return-void
.end method

.method public setAutoStart(Z)V
    .registers 2
    .param p1, "autoStart"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, mAutoStart:Z

    .line 289
    return-void
.end method

.method public setFlipInterval(I)V
    .registers 2
    .param p1, "flipInterval"    # I

    .prologue
    .line 188
    iput p1, p0, mFlipInterval:I

    .line 189
    return-void
.end method

.method public showNext()V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 215
    iget-boolean v1, p0, mRunning:Z

    if-eqz v1, :cond_18

    .line 216
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 218
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget v2, p0, mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 220
    .end local v0    # "msg":Landroid/os/Message;
    :cond_18
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 221
    return-void
.end method

.method public showPrevious()V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 231
    iget-boolean v1, p0, mRunning:Z

    if-eqz v1, :cond_18

    .line 232
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 234
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget v2, p0, mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 236
    .end local v0    # "msg":Landroid/os/Message;
    :cond_18
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    .line 237
    return-void
.end method

.method public startFlipping()V
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, mStarted:Z

    .line 196
    invoke-direct {p0}, updateRunning()V

    .line 197
    return-void
.end method

.method public stopFlipping()V
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, mStarted:Z

    .line 204
    invoke-direct {p0}, updateRunning()V

    .line 205
    return-void
.end method
