.class Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapDetector"
.end annotation


# instance fields
.field private mDownEvent:Landroid/view/MotionEvent;

.field private mFirstTapEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .registers 2

    .prologue
    .line 1705
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p2, "x1"    # Lcom/android/server/accessibility/SamsungTouchExplorer$1;

    .prologue
    .line 1705
    invoke-direct {p0, p1}, <init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1811
    iget-object v0, p0, mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    .line 1812
    iget-object v0, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1813
    iput-object v1, p0, mDownEvent:Landroid/view/MotionEvent;

    .line 1815
    :cond_c
    iget-object v0, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_17

    .line 1816
    iget-object v0, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1817
    iput-object v1, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1819
    :cond_17
    return-void
.end method

.method public firstTapDetected()Z
    .registers 5

    .prologue
    .line 1822
    iget-object v0, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$900(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)V
    .registers 30
    .param p1, "secondTapUp"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1764
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_8

    .line 1808
    :cond_7
    :goto_7
    return-void

    .line 1769
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1100(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 1770
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1200(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 1771
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1300(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 1773
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1774
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1776
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1777
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1780
    :cond_5b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    .line 1781
    .local v23, "pointerId":I
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    .line 1783
    .local v24, "pointerIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1600(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/graphics/Point;

    move-result-object v21

    .line 1784
    .local v21, "clickLocation":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I
    invoke-static {v4, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1700(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/graphics/Point;)I

    move-result v25

    .line 1785
    .local v25, "result":I
    if-eqz v25, :cond_7

    .line 1790
    const/4 v4, 0x1

    new-array v10, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 1791
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v4, 0x0

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v10, v4

    .line 1792
    const/4 v4, 0x0

    aget-object v4, v10, v4

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1793
    const/4 v4, 0x1

    new-array v11, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 1794
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v4, 0x0

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v11, v4

    .line 1795
    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1796
    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1797
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sec_touchscreen2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_106

    const/4 v14, 0x1

    .line 1801
    .local v14, "mDisplayId":I
    :goto_cb
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 1805
    .local v22, "event":Landroid/view/MotionEvent;
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_108

    const/16 v26, 0x1

    .line 1806
    .local v26, "targetAccessibilityFocus":Z
    :goto_f4
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    move-object/from16 v0, v22

    move/from16 v1, p2

    move/from16 v2, v26

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1800(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;IZ)V

    .line 1807
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_7

    .line 1797
    .end local v14    # "mDisplayId":I
    .end local v22    # "event":Landroid/view/MotionEvent;
    .end local v26    # "targetAccessibilityFocus":Z
    :cond_106
    const/4 v14, 0x0

    goto :goto_cb

    .line 1805
    .restart local v14    # "mDisplayId":I
    .restart local v22    # "event":Landroid/view/MotionEvent;
    :cond_108
    const/16 v26, 0x0

    goto :goto_f4
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v5, 0x0

    .line 1710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1711
    .local v1, "actionIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1712
    .local v0, "action":I
    packed-switch v0, :pswitch_data_aa

    .line 1760
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 1715
    :pswitch_d
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1c

    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1717
    invoke-virtual {p0}, clear()V

    .line 1719
    :cond_1c
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    goto :goto_c

    .line 1723
    :pswitch_23
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_c

    .line 1726
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1727
    invoke-virtual {p0}, clear()V

    goto :goto_c

    .line 1730
    :cond_33
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v3

    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$800(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 1732
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_59

    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$900(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1734
    :cond_59
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1735
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1736
    iput-object v5, p0, mDownEvent:Landroid/view/MotionEvent;

    goto :goto_c

    .line 1739
    :cond_67
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$900(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v3

    iget-object v4, p0, this$0:Lcom/android/server/accessibility/SamsungTouchExplorer;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->access$1000(Lcom/android/server/accessibility/SamsungTouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 1741
    invoke-virtual {p0, p1, p2}, onDoubleTap(Landroid/view/MotionEvent;I)V

    .line 1742
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1743
    iput-object v5, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1744
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1745
    iput-object v5, p0, mDownEvent:Landroid/view/MotionEvent;

    goto :goto_c

    .line 1748
    :cond_8d
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1749
    iput-object v5, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1756
    :cond_94
    :goto_94
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1757
    iput-object v5, p0, mDownEvent:Landroid/view/MotionEvent;

    goto/16 :goto_c

    .line 1751
    :cond_9d
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_94

    .line 1752
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1753
    iput-object v5, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    goto :goto_94

    .line 1712
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_d
        :pswitch_23
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_23
    .end packed-switch
.end method
