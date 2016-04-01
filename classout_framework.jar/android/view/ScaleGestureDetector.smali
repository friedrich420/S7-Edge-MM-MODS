.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SaveState;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private AREA_RATE_THRESHOLD:F

.field private AREA_THRESHOLD:F

.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private mAreaRateCalculating:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrLenBeforeSqrt:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevLenBeforeSqrt:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private final mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

.field private mStylusScaleEnabled:Z

.field private mTempLenBeforeSqrt:F

.field private mTouchHistoryDirection:I

.field private mTouchHistoryLastAccepted:F

.field private mTouchHistoryLastAcceptedTime:J

.field private mTouchLower:F

.field private mTouchMinMajor:I

.field private mTouchUpper:F

.field private mUpdatePrevious:Z

.field private mUseTwoFingerSweep:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean v4, p0, mUpdatePrevious:Z

    .line 134
    iput-boolean v3, p0, mAreaRateCalculating:Z

    .line 135
    iput-boolean v3, p0, mUseTwoFingerSweep:Z

    .line 136
    const/4 v2, 0x0

    iput v2, p0, mTempLenBeforeSqrt:F

    .line 153
    const v2, 0x45bb8000    # 6000.0f

    iput v2, p0, AREA_THRESHOLD:F

    .line 154
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, AREA_RATE_THRESHOLD:F

    .line 155
    new-instance v2, Landroid/view/ScaleGestureDetector$SaveState;

    invoke-direct {v2}, Landroid/view/ScaleGestureDetector$SaveState;-><init>()V

    iput-object v2, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 168
    iput v3, p0, mAnchoredScaleMode:I

    .line 225
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 226
    iput-object p2, p0, mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    .local v0, "res":Landroid/content/res/Resources;
    iget v2, p0, AREA_THRESHOLD:F

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, p0, AREA_THRESHOLD:F

    .line 230
    const v2, 0x1050013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mTouchMinMajor:I

    .line 232
    iput-object p3, p0, mHandler:Landroid/os/Handler;

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 235
    .local v1, "targetSdkVersion":I
    const/16 v2, 0x12

    if-le v1, v2, :cond_4b

    .line 236
    invoke-virtual {p0, v4}, setQuickScaleEnabled(Z)V

    .line 239
    :cond_4b
    const/16 v2, 0x16

    if-le v1, v2, :cond_52

    .line 240
    invoke-virtual {p0, v4}, setStylusScaleEnabled(Z)V

    .line 242
    :cond_52
    return-void
.end method

.method static synthetic access$000(Landroid/view/ScaleGestureDetector;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 46
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Landroid/view/ScaleGestureDetector;F)F
    .registers 2
    .param p0, "x0"    # Landroid/view/ScaleGestureDetector;
    .param p1, "x1"    # F

    .prologue
    .line 46
    iput p1, p0, mAnchoredScaleStartX:F

    return p1
.end method

.method static synthetic access$202(Landroid/view/ScaleGestureDetector;F)F
    .registers 2
    .param p0, "x0"    # Landroid/view/ScaleGestureDetector;
    .param p1, "x1"    # F

    .prologue
    .line 46
    iput p1, p0, mAnchoredScaleStartY:F

    return p1
.end method

.method static synthetic access$302(Landroid/view/ScaleGestureDetector;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/ScaleGestureDetector;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, mAnchoredScaleMode:I

    return p1
.end method

.method private addTouchHistory(Landroid/view/MotionEvent;)V
    .registers 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 251
    .local v8, "currentTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 252
    .local v6, "count":I
    move-object/from16 v0, p0

    iget-wide v0, v0, mTouchHistoryLastAcceptedTime:J

    move-wide/from16 v22, v0

    sub-long v22, v8, v22

    const-wide/16 v24, 0x80

    cmp-long v21, v22, v24

    if-ltz v21, :cond_c8

    const/4 v4, 0x1

    .line 253
    .local v4, "accept":Z
    :goto_17
    const/16 v20, 0x0

    .line 254
    .local v20, "total":F
    const/16 v17, 0x0

    .line 255
    .local v17, "sampleCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1c
    if-ge v13, v6, :cond_e1

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, mTouchHistoryLastAccepted:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_cb

    const/4 v11, 0x1

    .line 257
    .local v11, "hasLastAccepted":Z
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 258
    .local v12, "historySize":I
    add-int/lit8 v16, v12, 0x1

    .line 259
    .local v16, "pointerSampleCount":I
    const/4 v10, 0x0

    .local v10, "h":I
    :goto_32
    move/from16 v0, v16

    if-ge v10, v0, :cond_db

    .line 261
    if-ge v10, v12, :cond_ce

    .line 262
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v14

    .line 266
    .local v14, "major":F
    :goto_3e
    move-object/from16 v0, p0

    iget v0, v0, mTouchMinMajor:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v14, v21

    if-gez v21, :cond_56

    move-object/from16 v0, p0

    iget v0, v0, mTouchMinMajor:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v14, v0

    .line 267
    :cond_56
    add-float v20, v20, v14

    .line 269
    move-object/from16 v0, p0

    iget v0, v0, mTouchUpper:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_6e

    move-object/from16 v0, p0

    iget v0, v0, mTouchUpper:F

    move/from16 v21, v0

    cmpl-float v21, v14, v21

    if-lez v21, :cond_72

    .line 270
    :cond_6e
    move-object/from16 v0, p0

    iput v14, v0, mTouchUpper:F

    .line 272
    :cond_72
    move-object/from16 v0, p0

    iget v0, v0, mTouchLower:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_88

    move-object/from16 v0, p0

    iget v0, v0, mTouchLower:F

    move/from16 v21, v0

    cmpg-float v21, v14, v21

    if-gez v21, :cond_8c

    .line 273
    :cond_88
    move-object/from16 v0, p0

    iput v14, v0, mTouchLower:F

    .line 276
    :cond_8c
    if-eqz v11, :cond_c4

    .line 277
    move-object/from16 v0, p0

    iget v0, v0, mTouchHistoryLastAccepted:F

    move/from16 v21, v0

    sub-float v21, v14, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->signum(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v7, v0

    .line 278
    .local v7, "directionSig":I
    move-object/from16 v0, p0

    iget v0, v0, mTouchHistoryDirection:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v7, v0, :cond_b1

    if-nez v7, :cond_c4

    move-object/from16 v0, p0

    iget v0, v0, mTouchHistoryDirection:I

    move/from16 v21, v0

    if-nez v21, :cond_c4

    .line 280
    :cond_b1
    move-object/from16 v0, p0

    iput v7, v0, mTouchHistoryDirection:I

    .line 281
    if-ge v10, v12, :cond_d6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v18

    .line 283
    .local v18, "time":J
    :goto_bd
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mTouchHistoryLastAcceptedTime:J

    .line 284
    const/4 v4, 0x0

    .line 259
    .end local v7    # "directionSig":I
    .end local v18    # "time":J
    :cond_c4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_32

    .line 252
    .end local v4    # "accept":Z
    .end local v10    # "h":I
    .end local v11    # "hasLastAccepted":Z
    .end local v12    # "historySize":I
    .end local v13    # "i":I
    .end local v14    # "major":F
    .end local v16    # "pointerSampleCount":I
    .end local v17    # "sampleCount":I
    .end local v20    # "total":F
    :cond_c8
    const/4 v4, 0x0

    goto/16 :goto_17

    .line 256
    .restart local v4    # "accept":Z
    .restart local v13    # "i":I
    .restart local v17    # "sampleCount":I
    .restart local v20    # "total":F
    :cond_cb
    const/4 v11, 0x0

    goto/16 :goto_2b

    .line 264
    .restart local v10    # "h":I
    .restart local v11    # "hasLastAccepted":Z
    .restart local v12    # "historySize":I
    .restart local v16    # "pointerSampleCount":I
    :cond_ce
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v14

    .restart local v14    # "major":F
    goto/16 :goto_3e

    .line 281
    .restart local v7    # "directionSig":I
    :cond_d6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    goto :goto_bd

    .line 288
    .end local v7    # "directionSig":I
    .end local v14    # "major":F
    :cond_db
    add-int v17, v17, v16

    .line 255
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1c

    .line 291
    .end local v10    # "h":I
    .end local v11    # "hasLastAccepted":Z
    .end local v12    # "historySize":I
    .end local v16    # "pointerSampleCount":I
    :cond_e1
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v5, v20, v21

    .line 293
    .local v5, "avg":F
    if-eqz v4, :cond_138

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, mTouchUpper:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mTouchLower:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v21, v21, v5

    const/high16 v22, 0x40400000    # 3.0f

    div-float v15, v21, v22

    .line 295
    .local v15, "newAccepted":F
    move-object/from16 v0, p0

    iget v0, v0, mTouchUpper:F

    move/from16 v21, v0

    add-float v21, v21, v15

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTouchUpper:F

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, mTouchLower:F

    move/from16 v21, v0

    add-float v21, v21, v15

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTouchLower:F

    .line 297
    move-object/from16 v0, p0

    iput v15, v0, mTouchHistoryLastAccepted:F

    .line 298
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mTouchHistoryDirection:I

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mTouchHistoryLastAcceptedTime:J

    .line 301
    .end local v15    # "newAccepted":F
    :cond_138
    return-void
.end method

.method private clearTouchHistory()V
    .registers 3

    .prologue
    const/high16 v0, 0x7fc00000    # NaNf

    .line 308
    iput v0, p0, mTouchUpper:F

    .line 309
    iput v0, p0, mTouchLower:F

    .line 310
    iput v0, p0, mTouchHistoryLastAccepted:F

    .line 311
    const/4 v0, 0x0

    iput v0, p0, mTouchHistoryDirection:I

    .line 312
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mTouchHistoryLastAcceptedTime:J

    .line 313
    return-void
.end method

.method private getArea(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "bInitialized":Z
    const/4 v2, 0x0

    .local v2, "focusX":F
    const/4 v3, 0x0

    .line 459
    .local v3, "focusY":F
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector$SaveState;->reset()V

    .line 461
    invoke-direct {p0, p1}, addTouchHistory(Landroid/view/MotionEvent;)V

    .line 463
    invoke-direct {p0}, inAnchoredScaleMode()Z

    move-result v7

    if-eqz v7, :cond_58

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 467
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 468
    .local v6, "y":F
    iget v2, p0, mAnchoredScaleStartX:F

    .line 469
    iget v3, p0, mAnchoredScaleStartY:F

    .line 470
    iget-object v8, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v7, v2, v5

    if-lez v7, :cond_50

    sub-float v7, v2, v5

    :goto_25
    iget v9, p0, mTouchHistoryLastAccepted:F

    add-float/2addr v7, v9

    iput v7, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    .line 471
    iget-object v8, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v7, v3, v6

    if-lez v7, :cond_53

    sub-float v7, v3, v6

    :goto_32
    iget v9, p0, mTouchHistoryLastAccepted:F

    add-float/2addr v7, v9

    iput v7, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    .line 472
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v9, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    .line 473
    cmpg-float v7, v6, v3

    if-gez v7, :cond_56

    const/4 v7, 0x1

    :goto_49
    iput-boolean v7, p0, mEventBeforeOrAboveStartingGestureEvent:Z

    .line 514
    .end local v5    # "x":F
    .end local v6    # "y":F
    :goto_4b
    iput v2, p0, mFocusX:F

    .line 515
    iput v3, p0, mFocusY:F

    .line 516
    return-void

    .line 470
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :cond_50
    sub-float v7, v5, v2

    goto :goto_25

    .line 471
    :cond_53
    sub-float v7, v6, v3

    goto :goto_32

    .line 473
    :cond_56
    const/4 v7, 0x0

    goto :goto_49

    .line 475
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 476
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5d
    if-ge v4, v1, :cond_b0

    .line 478
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 479
    .restart local v5    # "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 481
    .restart local v6    # "y":F
    if-eqz v0, :cond_9e

    .line 482
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_75

    .line 483
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 485
    :cond_75
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_81

    .line 486
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 488
    :cond_81
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_8d

    .line 489
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 491
    :cond_8d
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v7, v7, v6

    if-gez v7, :cond_99

    .line 492
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    .line 502
    :cond_99
    :goto_99
    add-float/2addr v2, v5

    .line 503
    add-float/2addr v3, v6

    .line 476
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 495
    :cond_9e
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 496
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 497
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 498
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    .line 499
    const/4 v0, 0x1

    goto :goto_99

    .line 506
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_b0
    int-to-float v7, v1

    div-float/2addr v2, v7

    .line 507
    int-to-float v7, v1

    div-float/2addr v3, v7

    .line 508
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v9, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    .line 509
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iget-object v9, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    .line 510
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object v9, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    mul-float/2addr v8, v9

    iget-object v9, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v10, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    goto/16 :goto_4b
.end method

.method private inAnchoredScaleMode()Z
    .registers 2

    .prologue
    .line 527
    iget v0, p0, mAnchoredScaleMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 519
    iput-boolean v1, p0, mInProgress:Z

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, mUpdatePrevious:Z

    .line 521
    iput-boolean v1, p0, mAreaRateCalculating:Z

    .line 522
    iput v1, p0, mAnchoredScaleMode:I

    .line 523
    invoke-direct {p0}, clearTouchHistory()V

    .line 524
    return-void
.end method


# virtual methods
.method public getAreaRateThreshold()F
    .registers 2

    .prologue
    .line 766
    iget v0, p0, AREA_RATE_THRESHOLD:F

    return v0
.end method

.method public getAreaThreshold()F
    .registers 2

    .prologue
    .line 750
    iget v0, p0, AREA_THRESHOLD:F

    return v0
.end method

.method public getCurrentSpan()F
    .registers 2

    .prologue
    .line 644
    iget v0, p0, mCurrLenBeforeSqrt:F

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanX()F
    .registers 2

    .prologue
    .line 654
    iget v0, p0, mCurrSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanY()F
    .registers 2

    .prologue
    .line 664
    iget v0, p0, mCurrSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getEnableEdgeZoom()Z
    .registers 2

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    .line 734
    iget-wide v0, p0, mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .registers 2

    .prologue
    .line 620
    iget v0, p0, mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .registers 2

    .prologue
    .line 634
    iget v0, p0, mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .registers 2

    .prologue
    .line 674
    iget v0, p0, mPrevLenBeforeSqrt:F

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanX()F
    .registers 2

    .prologue
    .line 684
    iget v0, p0, mPrevSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanY()F
    .registers 2

    .prologue
    .line 694
    iget v0, p0, mPrevSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 705
    invoke-direct {p0}, inAnchoredScaleMode()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 709
    iget-boolean v3, p0, mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v3, :cond_15

    iget v3, p0, mCurrLenBeforeSqrt:F

    iget v4, p0, mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_21

    :cond_15
    iget-boolean v3, p0, mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v3, :cond_3c

    iget v3, p0, mCurrLenBeforeSqrt:F

    iget v4, p0, mPrevLenBeforeSqrt:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3c

    :cond_21
    const/4 v0, 0x1

    .line 712
    .local v0, "scaleUp":Z
    :goto_22
    iget v3, p0, mCurrLenBeforeSqrt:F

    iget v4, p0, mPrevLenBeforeSqrt:F

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v3, v4

    .line 713
    .local v1, "spanDiff":F
    iget v3, p0, mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_3e

    .line 715
    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_3b
    :goto_3b
    return v2

    .line 709
    :cond_3c
    const/4 v0, 0x0

    goto :goto_22

    .line 713
    .restart local v0    # "scaleUp":Z
    .restart local v1    # "spanDiff":F
    :cond_3e
    if-eqz v0, :cond_42

    add-float/2addr v2, v1

    goto :goto_3b

    :cond_42
    sub-float/2addr v2, v1

    goto :goto_3b

    .line 715
    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_44
    iget v3, p0, mPrevLenBeforeSqrt:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3b

    iget v2, p0, mCurrLenBeforeSqrt:F

    iget v3, p0, mPrevLenBeforeSqrt:F

    div-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    goto :goto_3b
.end method

.method public getTimeDelta()J
    .registers 5

    .prologue
    .line 725
    iget-wide v0, p0, mCurrTime:J

    iget-wide v2, p0, mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isEdgeZoomInProgress()Z
    .registers 2

    .prologue
    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method public isInProgress()Z
    .registers 2

    .prologue
    .line 597
    iget-boolean v0, p0, mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .registers 2

    .prologue
    .line 571
    iget-boolean v0, p0, mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .registers 2

    .prologue
    .line 590
    iget-boolean v0, p0, mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, mCurrTime:J

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 334
    .local v0, "action":I
    iget-boolean v7, p0, mQuickScaleEnabled:Z

    if-eqz v7, :cond_13

    .line 335
    iget-object v7, p0, mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 338
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_47

    const/4 v4, 0x1

    .line 341
    .local v4, "isStylusButtonDown":Z
    :goto_1c
    iget v7, p0, mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_49

    if-nez v4, :cond_49

    const/4 v1, 0x1

    .line 343
    .local v1, "anchoredScaleCancelled":Z
    :goto_24
    const/4 v7, 0x1

    if-eq v0, v7, :cond_2c

    const/4 v7, 0x3

    if-eq v0, v7, :cond_2c

    if-eqz v1, :cond_4b

    :cond_2c
    const/4 v6, 0x1

    .line 346
    .local v6, "streamComplete":Z
    :goto_2d
    if-eqz v0, :cond_31

    if-eqz v6, :cond_5c

    .line 350
    :cond_31
    iget-boolean v7, p0, mInProgress:Z

    if-eqz v7, :cond_4d

    .line 351
    iget-object v7, p0, mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 352
    const/4 v7, 0x0

    iput-boolean v7, p0, mInProgress:Z

    .line 353
    const/4 v7, 0x0

    iput v7, p0, mAnchoredScaleMode:I

    .line 359
    :cond_40
    :goto_40
    if-eqz v6, :cond_5c

    .line 360
    invoke-direct {p0}, clearTouchHistory()V

    .line 361
    const/4 v7, 0x1

    .line 451
    :goto_46
    return v7

    .line 338
    .end local v1    # "anchoredScaleCancelled":Z
    .end local v4    # "isStylusButtonDown":Z
    .end local v6    # "streamComplete":Z
    :cond_47
    const/4 v4, 0x0

    goto :goto_1c

    .line 341
    .restart local v4    # "isStylusButtonDown":Z
    :cond_49
    const/4 v1, 0x0

    goto :goto_24

    .line 343
    .restart local v1    # "anchoredScaleCancelled":Z
    :cond_4b
    const/4 v6, 0x0

    goto :goto_2d

    .line 354
    .restart local v6    # "streamComplete":Z
    :cond_4d
    invoke-direct {p0}, inAnchoredScaleMode()Z

    move-result v7

    if-eqz v7, :cond_40

    if-eqz v6, :cond_40

    .line 355
    const/4 v7, 0x0

    iput-boolean v7, p0, mInProgress:Z

    .line 356
    const/4 v7, 0x0

    iput v7, p0, mAnchoredScaleMode:I

    goto :goto_40

    .line 366
    :cond_5c
    iget-boolean v7, p0, mInProgress:Z

    if-nez v7, :cond_17e

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6d

    const/4 v7, 0x1

    if-eq v0, v7, :cond_6d

    const/4 v7, 0x3

    if-ne v0, v7, :cond_72

    .line 368
    :cond_6d
    invoke-direct {p0}, reset()V

    .line 451
    :cond_70
    :goto_70
    const/4 v7, 0x1

    goto :goto_46

    .line 370
    :cond_72
    iget-boolean v7, p0, mStylusScaleEnabled:Z

    if-eqz v7, :cond_8f

    invoke-direct {p0}, inAnchoredScaleMode()Z

    move-result v7

    if-nez v7, :cond_8f

    if-nez v6, :cond_8f

    if-eqz v4, :cond_8f

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, mAnchoredScaleStartX:F

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, mAnchoredScaleStartY:F

    .line 374
    const/4 v7, 0x2

    iput v7, p0, mAnchoredScaleMode:I

    .line 377
    :cond_8f
    invoke-direct {p0, p1}, getArea(Landroid/view/MotionEvent;)V

    .line 379
    if-eqz v0, :cond_9c

    const/4 v7, 0x6

    if-eq v0, v7, :cond_9c

    const/4 v7, 0x5

    if-eq v0, v7, :cond_9c

    if-eqz v1, :cond_129

    :cond_9c
    const/4 v3, 0x1

    .line 383
    .local v3, "configChanged":Z
    :goto_9d
    if-eqz v3, :cond_b1

    .line 384
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v7, p0, mCurrSpanX:F

    .line 385
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v7, p0, mCurrSpanY:F

    .line 386
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, mCurrLenBeforeSqrt:F

    .line 389
    :cond_b1
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, AREA_THRESHOLD:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_161

    .line 390
    iget-boolean v7, p0, mAreaRateCalculating:Z

    if-nez v7, :cond_cc

    iget-boolean v7, p0, mUseTwoFingerSweep:Z

    if-nez v7, :cond_cc

    .line 391
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, mTempLenBeforeSqrt:F

    .line 392
    const/4 v7, 0x1

    iput-boolean v7, p0, mAreaRateCalculating:Z

    .line 394
    :cond_cc
    iget-boolean v7, p0, mUseTwoFingerSweep:Z

    if-eqz v7, :cond_d6

    .line 395
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, mPrevLenBeforeSqrt:F

    .line 399
    :cond_d6
    iget-boolean v7, p0, mAreaRateCalculating:Z

    if-eqz v7, :cond_135

    .line 400
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, mTempLenBeforeSqrt:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_12c

    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, mTempLenBeforeSqrt:F

    div-float v2, v7, v8

    .line 407
    .local v2, "areaRate":F
    :goto_ec
    iget-boolean v7, p0, mUseTwoFingerSweep:Z

    if-eqz v7, :cond_153

    iget v7, p0, AREA_RATE_THRESHOLD:F

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_151

    const/4 v5, 0x1

    .line 409
    .local v5, "scaleDecision":Z
    :goto_f7
    if-eqz v5, :cond_70

    .line 410
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v7, p0, mCurrSpanX:F

    iput v7, p0, mPrevSpanX:F

    .line 411
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v7, p0, mCurrSpanY:F

    iput v7, p0, mPrevSpanY:F

    .line 412
    iget-wide v8, p0, mCurrTime:J

    iput-wide v8, p0, mPrevTime:J

    .line 413
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, mCurrLenBeforeSqrt:F

    iput v7, p0, mPrevLenBeforeSqrt:F

    .line 414
    iget-object v7, p0, mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    iput-boolean v7, p0, mInProgress:Z

    .line 415
    const-string v7, "ScaleGestureDetector"

    const-string v8, "TwScaleGestureDetector"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v7, 0x0

    iput-boolean v7, p0, mAreaRateCalculating:Z

    goto/16 :goto_70

    .line 379
    .end local v2    # "areaRate":F
    .end local v3    # "configChanged":Z
    .end local v5    # "scaleDecision":Z
    :cond_129
    const/4 v3, 0x0

    goto/16 :goto_9d

    .line 400
    .restart local v3    # "configChanged":Z
    :cond_12c
    iget v7, p0, mTempLenBeforeSqrt:F

    iget-object v8, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float v2, v7, v8

    goto :goto_ec

    .line 403
    :cond_135
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, mPrevLenBeforeSqrt:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_148

    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v8, p0, mPrevLenBeforeSqrt:F

    div-float v2, v7, v8

    .restart local v2    # "areaRate":F
    :goto_147
    goto :goto_ec

    .end local v2    # "areaRate":F
    :cond_148
    iget v7, p0, mPrevLenBeforeSqrt:F

    iget-object v8, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float v2, v7, v8

    goto :goto_147

    .line 407
    .restart local v2    # "areaRate":F
    :cond_151
    const/4 v5, 0x0

    goto :goto_f7

    :cond_153
    iget-boolean v7, p0, mAreaRateCalculating:Z

    if-eqz v7, :cond_15f

    iget v7, p0, AREA_RATE_THRESHOLD:F

    cmpl-float v7, v2, v7

    if-lez v7, :cond_15f

    const/4 v5, 0x1

    goto :goto_f7

    :cond_15f
    const/4 v5, 0x0

    goto :goto_f7

    .line 419
    .end local v2    # "areaRate":F
    :cond_161
    const/4 v7, 0x2

    if-eq v0, v7, :cond_168

    const/16 v7, 0xd5

    if-ne v0, v7, :cond_70

    .line 420
    :cond_168
    iget-boolean v7, p0, mUpdatePrevious:Z

    if-eqz v7, :cond_70

    .line 421
    iget v7, p0, mCurrSpanX:F

    iput v7, p0, mPrevSpanX:F

    .line 422
    iget v7, p0, mCurrSpanY:F

    iput v7, p0, mPrevSpanY:F

    .line 423
    iget v7, p0, mCurrLenBeforeSqrt:F

    iput v7, p0, mPrevLenBeforeSqrt:F

    .line 424
    iget-wide v8, p0, mCurrTime:J

    iput-wide v8, p0, mPrevTime:J

    goto/16 :goto_70

    .line 430
    .end local v3    # "configChanged":Z
    :cond_17e
    const/4 v7, 0x2

    if-eq v0, v7, :cond_185

    const/16 v7, 0xd5

    if-ne v0, v7, :cond_1c4

    .line 431
    :cond_185
    invoke-direct {p0, p1}, getArea(Landroid/view/MotionEvent;)V

    .line 432
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_194

    const/4 v7, 0x1

    goto/16 :goto_46

    .line 433
    :cond_194
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v7, p0, mCurrSpanX:F

    .line 434
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v7, p0, mCurrSpanY:F

    .line 435
    iget-object v7, p0, mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v7, p0, mCurrLenBeforeSqrt:F

    .line 437
    iget-object v7, p0, mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    iput-boolean v7, p0, mUpdatePrevious:Z

    .line 443
    :goto_1ae
    iget-boolean v7, p0, mUpdatePrevious:Z

    if-eqz v7, :cond_70

    .line 444
    iget v7, p0, mCurrSpanX:F

    iput v7, p0, mPrevSpanX:F

    .line 445
    iget v7, p0, mCurrSpanY:F

    iput v7, p0, mPrevSpanY:F

    .line 446
    iget v7, p0, mCurrLenBeforeSqrt:F

    iput v7, p0, mPrevLenBeforeSqrt:F

    .line 447
    iget-wide v8, p0, mCurrTime:J

    iput-wide v8, p0, mPrevTime:J

    goto/16 :goto_70

    .line 439
    :cond_1c4
    iget-object v7, p0, mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v7, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 440
    invoke-direct {p0}, reset()V

    goto :goto_1ae
.end method

.method public setAreaRateThreshold(F)V
    .registers 2
    .param p1, "areaRate"    # F

    .prologue
    .line 758
    iput p1, p0, AREA_RATE_THRESHOLD:F

    .line 759
    return-void
.end method

.method public setAreaThreshold(F)V
    .registers 2
    .param p1, "threshold"    # F

    .prologue
    .line 742
    iput p1, p0, AREA_THRESHOLD:F

    .line 743
    return-void
.end method

.method public setEnableEdgeZoom(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 784
    return-void
.end method

.method public setQuickScaleEnabled(Z)V
    .registers 6
    .param p1, "scales"    # Z

    .prologue
    .line 537
    iput-boolean p1, p0, mQuickScaleEnabled:Z

    .line 538
    iget-boolean v1, p0, mQuickScaleEnabled:Z

    if-eqz v1, :cond_20

    iget-object v1, p0, mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_20

    .line 539
    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .line 561
    .local v0, "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, mGestureDetector:Landroid/view/GestureDetector;

    .line 562
    iget-object v1, p0, mGestureDetector:Landroid/view/GestureDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 564
    .end local v0    # "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_20
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .registers 2
    .param p1, "scales"    # Z

    .prologue
    .line 582
    iput-boolean p1, p0, mStylusScaleEnabled:Z

    .line 583
    return-void
.end method

.method public setUseTwoFingerSweep(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 796
    iput-boolean p1, p0, mUseTwoFingerSweep:Z

    .line 797
    return-void
.end method
