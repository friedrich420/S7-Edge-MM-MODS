.class Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapDetector"
.end annotation


# instance fields
.field private mDownEvent:Landroid/view/MotionEvent;

.field private mFirstTapEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 2

    .prologue
    .line 1132
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p2, "x1"    # Lcom/android/server/accessibility/TouchExplorer$1;

    .prologue
    .line 1132
    invoke-direct {p0, p1}, <init>(Lcom/android/server/accessibility/TouchExplorer;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1238
    iget-object v0, p0, mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    .line 1239
    iget-object v0, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1240
    iput-object v1, p0, mDownEvent:Landroid/view/MotionEvent;

    .line 1242
    :cond_c
    iget-object v0, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_17

    .line 1243
    iget-object v0, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1244
    iput-object v1, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1246
    :cond_17
    return-void
.end method

.method public firstTapDetected()Z
    .registers 5

    .prologue
    .line 1249
    iget-object v0, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)I

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
    .line 1191
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_8

    .line 1235
    :cond_7
    :goto_7
    return-void

    .line 1196
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 1197
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1100(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 1198
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1201
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1203
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1207
    :cond_5b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    .line 1208
    .local v23, "pointerId":I
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    .line 1210
    .local v24, "pointerIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempPoint:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Point;

    move-result-object v21

    .line 1211
    .local v21, "clickLocation":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I
    invoke-static {v4, v0}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;Landroid/graphics/Point;)I

    move-result v25

    .line 1212
    .local v25, "result":I
    if-eqz v25, :cond_7

    .line 1217
    const/4 v4, 0x1

    new-array v10, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 1218
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v4, 0x0

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v10, v4

    .line 1219
    const/4 v4, 0x0

    aget-object v4, v10, v4

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1220
    const/4 v4, 0x1

    new-array v11, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 1221
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v4, 0x0

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v11, v4

    .line 1222
    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1223
    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1224
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

    .line 1228
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

    .line 1232
    .local v22, "event":Landroid/view/MotionEvent;
    const/4 v4, 0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_108

    const/16 v26, 0x1

    .line 1233
    .local v26, "targetAccessibilityFocus":Z
    :goto_f4
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    move-object/from16 v0, v22

    move/from16 v1, p2

    move/from16 v2, v26

    # invokes: Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->access$1700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;IZ)V

    .line 1234
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_7

    .line 1224
    .end local v14    # "mDisplayId":I
    .end local v22    # "event":Landroid/view/MotionEvent;
    .end local v26    # "targetAccessibilityFocus":Z
    :cond_106
    const/4 v14, 0x0

    goto :goto_cb

    .line 1232
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

    .line 1137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1138
    .local v1, "actionIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1139
    .local v0, "action":I
    packed-switch v0, :pswitch_data_aa

    .line 1187
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 1142
    :pswitch_d
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1c

    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1144
    invoke-virtual {p0}, clear()V

    .line 1146
    :cond_1c
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    goto :goto_c

    .line 1150
    :pswitch_23
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_c

    .line 1153
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1154
    invoke-virtual {p0}, clear()V

    goto :goto_c

    .line 1157
    :cond_33
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$600(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    iget-object v4, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 1159
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_59

    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1161
    :cond_59
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1162
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1163
    iput-object v5, p0, mDownEvent:Landroid/view/MotionEvent;

    goto :goto_c

    .line 1166
    :cond_67
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    iget-object v4, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    # getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$900(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 1168
    invoke-virtual {p0, p1, p2}, onDoubleTap(Landroid/view/MotionEvent;I)V

    .line 1169
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1170
    iput-object v5, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1171
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1172
    iput-object v5, p0, mDownEvent:Landroid/view/MotionEvent;

    goto :goto_c

    .line 1175
    :cond_8d
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1176
    iput-object v5, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1183
    :cond_94
    :goto_94
    iget-object v2, p0, mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1184
    iput-object v5, p0, mDownEvent:Landroid/view/MotionEvent;

    goto/16 :goto_c

    .line 1178
    :cond_9d
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_94

    .line 1179
    iget-object v2, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1180
    iput-object v5, p0, mFirstTapEvent:Landroid/view/MotionEvent;

    goto :goto_94

    .line 1139
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
