.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;
.super Ljava/lang/Object;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomCircletouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method private constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p2, "x1"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;

    .prologue
    .line 1098
    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1102
    .local v2, "action":I
    and-int/lit16 v6, v2, 0xff

    .line 1103
    .local v6, "maskedAction":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsUnlockStarted:Z
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1104
    const/4 v12, 0x1

    .line 1248
    :goto_0
    return v12

    .line 1107
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsIgnoreTouch:Z
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2200(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1108
    const/4 v12, 0x1

    if-eq v2, v12, :cond_1

    const/4 v12, 0x3

    if-ne v2, v12, :cond_2

    .line 1109
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsIgnoreTouch:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2202(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1110
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    .line 1114
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    .line 1115
    .local v9, "touchedEventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    .line 1117
    .local v10, "touchedEventY":F
    packed-switch v6, :pswitch_data_0

    .line 1248
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 1119
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_4

    .line 1120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2302(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1121
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v13, "mIsMultiTouch true"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1123
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2302(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v13, "mIsMultiTouch false"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1128
    :pswitch_2
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1129
    .local v11, "visibleRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mTempRect.left ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mTempRect.top ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget v13, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    int-to-float v13, v13

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartX:F
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2402(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    .line 1134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget v13, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    int-to-float v13, v13

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartY:F
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2502(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    .line 1135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const-wide/16 v14, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D
    invoke-static {v12, v14, v15}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2602(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;D)D

    .line 1137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-boolean v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mNeedTochangeParent:Z

    if-eqz v12, :cond_5

    .line 1138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->changeParent()V
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2700(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    .line 1141
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewPressed()V

    .line 1142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2802(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowAnimator(Z)V
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2900(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setDCircleAnimator(ZZ)V
    invoke-static {v12, v13, v14}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;ZZ)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setDCircleAlphaAnimator(Z)V
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowBlinker()V
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3200(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$900(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 1151
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$800(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 1152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mBlinkAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1200(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 1153
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 1154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/animation/ValueAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    .line 1157
    .end local v11    # "visibleRect":Landroid/graphics/Rect;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2800(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->userActivity()V

    .line 1160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartX:F
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2400(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v12

    sub-float v12, v9, v12

    float-to-int v3, v12

    .line 1161
    .local v3, "diffX":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mStartY:F
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2500(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v12

    sub-float v12, v10, v12

    float-to-int v4, v12

    .line 1163
    .local v4, "diffY":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    int-to-double v14, v3

    int-to-double v0, v4

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D
    invoke-static {v12, v14, v15}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2602(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;D)D

    .line 1164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2600(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)D

    move-result-wide v12

    double-to-float v5, v12

    .line 1165
    .local v5, "distance":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v12

    cmpl-float v12, v5, v12

    if-lez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F
    invoke-static {v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v13

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setMoveCircluRadius(F)V
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3400(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleMaxRadius:F
    invoke-static {v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v13

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewColor(F)V
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 1177
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->showHideCArrow(F)V
    invoke-static {v12, v5}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3600(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOldDistance:F
    invoke-static {v12, v5}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3702(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    .line 1180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2600(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mSecondBorder:I
    invoke-static {v14}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3800(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)I

    move-result v14

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsUnlockStarted:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2102(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2802(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1186
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->userActivity()V

    .line 1188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockExecuted()V

    .line 1189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    goto/16 :goto_1

    .line 1171
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3500(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v12, v5, v12

    if-lez v12, :cond_6

    .line 1172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setMoveCircluRadius(F)V
    invoke-static {v12, v5}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3400(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewColor(F)V
    invoke-static {v12, v5}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    goto/16 :goto_2

    .line 1192
    .end local v3    # "diffX":I
    .end local v4    # "diffY":I
    .end local v5    # "distance":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v13, "ACTION_MOVE without ACTION_DOWN"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1196
    :pswitch_4
    const v12, 0xff00

    and-int/2addr v12, v2

    shr-int/lit8 v8, v12, 0x8

    .line 1197
    .local v8, "pointer_index":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 1198
    .local v7, "pointer_id":I
    if-nez v7, :cond_9

    .line 1199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsIgnoreTouch:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2202(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1203
    .end local v7    # "pointer_id":I
    .end local v8    # "pointer_index":I
    :cond_9
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_a

    .line 1204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2302(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v13, "mIsMultiTouch false"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_a
    const/4 v12, 0x3

    if-ne v6, v12, :cond_b

    .line 1209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    .line 1211
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1402(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->startHideAnimations(Z)V
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3900(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const-wide/16 v14, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D
    invoke-static {v12, v14, v15}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2602(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;D)D

    .line 1216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2802(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    goto/16 :goto_1

    .line 1219
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_c

    .line 1220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2302(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v13, "mIsMultiTouch false"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mFirstBorder:I
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$4000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)I

    move-result v12

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D
    invoke-static {v14}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2600(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)D

    move-result-wide v14

    cmpg-double v12, v12, v14

    if-gez v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsMultiTouch:Z
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-nez v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2800(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    .line 1225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1402(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mIsUnlockStarted:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2102(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->userActivity()V

    .line 1229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isSecureLockScreen()Z
    invoke-static {v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1500(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v13

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$102(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v12

    if-nez v12, :cond_e

    const/4 v12, 0x1

    :goto_3
    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->startHideAnimations(Z)V
    invoke-static {v13, v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3900(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isSecureLockScreen()Z
    invoke-static {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1500(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v12

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v12}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCustom()Z

    move-result v12

    if-nez v12, :cond_d

    .line 1233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v12, v12, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mContentIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1241
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const-wide/16 v14, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDistance:D
    invoke-static {v12, v14, v15}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2602(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;D)D

    .line 1242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mActionDown:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$2802(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    goto/16 :goto_1

    .line 1230
    :cond_e
    const/4 v12, 0x0

    goto :goto_3

    .line 1237
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x1

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$102(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mOpenApplication:Z
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1402(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 1239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v13, 0x0

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->startHideAnimations(Z)V
    invoke-static {v12, v13}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$3900(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)V

    goto :goto_4

    .line 1117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
