.class public Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;
.super Ljava/lang/Object;
.source "KeyguardUnlockEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

.field private final mContext:Landroid/content/Context;

.field private mDistance:D

.field private mFirstBorder:I

.field private mIsKeyguardDismissing:Z

.field private mIsMultiTouch:Z

.field private mIsUnlockStarted:Z

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field mTempRect:Landroid/graphics/Rect;

.field private mUnlockView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;Lcom/android/keyguard/effect/KeyguardEffectViewBase;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;
    .param p3, "unlockView"    # Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mDistance:D

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    .line 49
    iput-boolean v2, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    .line 50
    iput-boolean v2, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    .line 84
    iput-object p3, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    .line 85
    iput-object p2, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    .line 86
    iput-object p1, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mFirstBorder:I

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_second_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mSecondBorder:I

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;)Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->launch()V

    return-void
.end method

.method private launch()V
    .locals 4

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 276
    .local v0, "isDeviceInteractive":Z
    const-string v1, "KeyguardUnlockEventHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch() - mIsKeyguardDismissing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDeviceInteractive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-boolean v1, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    if-nez v1, :cond_0

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    .line 279
    iget-object v1, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v1}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockExecuted()V

    .line 292
    :cond_0
    return-void
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    const-string v11, "KeyguardUnlockEventHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mIsUnlockStarted - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSimPermDisabled()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimDisabledPermanently()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 98
    const-string v11, "KeyguardUnlockEventHandler"

    const-string v12, "isSupportSimPermDisabled!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v11, 0x1

    .line 271
    :goto_0
    return v11

    .line 102
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 103
    .local v2, "action":I
    if-nez v2, :cond_1

    .line 104
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 107
    :cond_1
    and-int/lit16 v7, v2, 0xff

    .line 108
    .local v7, "maskedAction":I
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    if-eqz v11, :cond_2

    .line 109
    const/4 v11, 0x1

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    .line 113
    .local v9, "touchedEventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    .line 115
    .local v10, "touchedEventY":F
    packed-switch v7, :pswitch_data_0

    .line 271
    :cond_3
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-nez v11, :cond_f

    const/4 v11, 0x0

    goto :goto_0

    .line 117
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_4

    .line 118
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 119
    const-string v11, "KeyguardUnlockEventHandler"

    const-string v12, "mIsMultiTouch true"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz p1, :cond_3

    .line 121
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 122
    .local v8, "me":Landroid/view/MotionEvent;
    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 124
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 125
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 126
    const-string v11, "KeyguardUnlockEventHandler"

    const-string v12, "mIsMultiTouch false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    .end local v8    # "me":Landroid/view/MotionEvent;
    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 130
    const-string v11, "KeyguardUnlockEventHandler"

    const-string v12, "mIsMultiTouch false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    :pswitch_2
    if-nez p1, :cond_5

    .line 135
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mStartX:F

    .line 136
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mStartY:F

    .line 144
    :goto_2
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mDistance:D

    .line 146
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewPressed()V

    goto :goto_1

    .line 138
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 140
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mStartX:F

    .line 141
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mStartY:F

    goto :goto_2

    .line 151
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_6

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 155
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mStartX:F

    sub-float v11, v9, v11

    float-to-int v3, v11

    .line 156
    .local v3, "diffX":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mStartY:F

    sub-float v11, v10, v11

    float-to-int v6, v11

    .line 158
    .local v6, "diffY":I
    int-to-double v12, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    int-to-double v14, v6

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mDistance:D

    .line 161
    if-eqz p1, :cond_3

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mDistance:D

    cmpg-double v11, v12, v14

    if-gez v11, :cond_7

    .line 163
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    goto/16 :goto_1

    .line 167
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_3

    .line 168
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewSwiped(Z)V

    goto/16 :goto_1

    .line 210
    .end local v3    # "diffX":I
    .end local v6    # "diffY":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_8

    .line 211
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 212
    const-string v11, "KeyguardUnlockEventHandler"

    const-string v12, "mIsMultiTouch false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_9

    const/4 v11, 0x3

    if-ne v7, v11, :cond_9

    .line 216
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 218
    :cond_9
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mDistance:D

    goto/16 :goto_1

    .line 221
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_a

    .line 222
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;->onUnlockViewReleased()V

    .line 225
    :cond_a
    const-string v11, "KeyguardUnlockEventHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ACTION_UP mDistance: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mDistance:D

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mFirstBorder:I

    int-to-double v12, v11

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mDistance:D

    cmpg-double v11, v12, v14

    if-gez v11, :cond_d

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mDistance:D

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mSecondBorder:I

    int-to-double v14, v11

    cmpg-double v11, v12, v14

    if-ltz v11, :cond_b

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    if-nez v11, :cond_d

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mStartX:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_d

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mStartY:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_d

    .line 231
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    .line 232
    const-wide/16 v4, 0x0

    .line 234
    .local v4, "delay":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    if-eqz v11, :cond_c

    .line 235
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 238
    if-nez p1, :cond_c

    .line 239
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    invoke-interface {v11}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->getUnlockDelay()J

    move-result-wide v4

    .line 243
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    if-eqz v11, :cond_d

    .line 245
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    instance-of v11, v11, Landroid/view/View;

    if-eqz v11, :cond_e

    .line 246
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    check-cast v11, Landroid/view/View;

    new-instance v12, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$1;-><init>(Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;)V

    invoke-virtual {v11, v12, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    .end local v4    # "delay":J
    :cond_d
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_3

    .line 263
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsMultiTouch:Z

    .line 264
    const-string v11, "KeyguardUnlockEventHandler"

    const-string v12, "mIsMultiTouch false"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 256
    .restart local v4    # "delay":J
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    invoke-interface {v11}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->launch()V

    goto :goto_3

    .line 271
    .end local v4    # "delay":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mUnlockView:Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1}, Lcom/android/keyguard/effect/KeyguardEffectViewBase;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v11

    goto/16 :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 295
    const-string v0, "KeyguardUnlockEventHandler"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iput-boolean v3, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsUnlockStarted:Z

    .line 297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mDistance:D

    .line 298
    iput-boolean v3, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mIsKeyguardDismissing:Z

    .line 299
    iput v2, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mStartX:F

    .line 300
    iput v2, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mStartY:F

    .line 301
    return-void
.end method
