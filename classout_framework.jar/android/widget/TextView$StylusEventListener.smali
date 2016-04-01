.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private mDirLTR:Z

.field private mEndCurPosition:I

.field private mIsSelectableTextView:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartCurPosition:I

.field private mStartX:F

.field private mStartY:F

.field private mThisView:Landroid/widget/TextView;

.field private oldEndPos:I

.field private selectRange:[I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 6
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 12995
    iput-object p1, p0, this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12982
    const/4 v0, 0x1

    iput-boolean v0, p0, mDirLTR:Z

    .line 12983
    iput-boolean v1, p0, mPressed:Z

    .line 12984
    iput-boolean v1, p0, mIsSelectableTextView:Z

    .line 12985
    iput v1, p0, mStartCurPosition:I

    .line 12986
    iput v1, p0, mEndCurPosition:I

    .line 12987
    const/4 v0, -0x1

    iput v0, p0, oldEndPos:I

    .line 12988
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, selectRange:[I

    .line 12990
    iput v2, p0, mStartX:F

    .line 12991
    iput v2, p0, mStartY:F

    .line 12992
    iput v2, p0, mMaxX:F

    .line 12993
    const/4 v0, 0x0

    iput-object v0, p0, mThisView:Landroid/widget/TextView;

    .line 12996
    iput-object p2, p0, mThisView:Landroid/widget/TextView;

    .line 12997
    return-void
.end method

.method static synthetic access$4400(Landroid/widget/TextView$StylusEventListener;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;

    .prologue
    .line 12981
    iget v0, p0, mStartCurPosition:I

    return v0
.end method

.method static synthetic access$4402(Landroid/widget/TextView$StylusEventListener;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 12981
    iput p1, p0, mStartCurPosition:I

    return p1
.end method

.method static synthetic access$4500(Landroid/widget/TextView$StylusEventListener;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;

    .prologue
    .line 12981
    iget v0, p0, mEndCurPosition:I

    return v0
.end method

.method static synthetic access$4502(Landroid/widget/TextView$StylusEventListener;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/TextView$StylusEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 12981
    iput p1, p0, mEndCurPosition:I

    return p1
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .registers 21
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "clipboardId"    # I

    .prologue
    .line 13000
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 13002
    .local v2, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEnableMultiSelection:Z
    invoke-static {v14}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)Z

    move-result v14

    if-nez v14, :cond_19

    .line 13310
    :cond_18
    :goto_18
    return-void

    .line 13006
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    .line 13007
    .local v9, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    .line 13009
    .local v10, "rawY":F
    if-nez v2, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    and-int/lit8 v14, v14, 0x20

    if-nez v14, :cond_2f

    :cond_2b
    const/16 v14, 0xd3

    if-ne v2, v14, :cond_1c5

    .line 13012
    :cond_2f
    # getter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {}, Landroid/widget/TextView;->access$2700()Z

    move-result v14

    if-nez v14, :cond_7c

    .line 13013
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    if-eqz v14, :cond_46

    .line 13014
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 13015
    const/4 v14, 0x0

    # setter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/TextView;->access$2802(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 13017
    :cond_46
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->canTextMultiSelection()Z
    invoke-static {v14}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v14

    if-eqz v14, :cond_74

    .line 13018
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    # setter for: Landroid/widget/TextView;->mCurTime:J
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3002(J)J

    .line 13019
    # getter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v14

    if-eqz v14, :cond_74

    # getter for: Landroid/widget/TextView;->mCurTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3000()J

    move-result-wide v14

    # getter for: Landroid/widget/TextView;->mLastHoveredTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3200()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x64

    cmp-long v14, v14, v16

    if-gez v14, :cond_74

    .line 13020
    # getter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$3100()Landroid/widget/TextView;

    move-result-object v14

    # setter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/TextView;->access$2802(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 13023
    :cond_74
    const/4 v14, 0x0

    # setter for: Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/TextView;->access$3102(Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 13024
    const/4 v14, 0x1

    # setter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {v14}, Landroid/widget/TextView;->access$2702(Z)Z

    .line 13026
    :cond_7c
    # getter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {}, Landroid/widget/TextView;->access$2700()Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8f

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, mThisView:Landroid/widget/TextView;

    if-eqz v14, :cond_18

    .line 13029
    :cond_8f
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, mThisView:Landroid/widget/TextView;

    if-eq v14, v15, :cond_a2

    .line 13030
    move-object/from16 v0, p0

    iget-object v14, v0, mThisView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->hideCursorControllers()V

    goto/16 :goto_18

    .line 13034
    :cond_a2
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;
    invoke-static {v14}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v14

    if-eqz v14, :cond_ba

    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;
    invoke-static {v14}, Landroid/widget/TextView;->access$3300(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v14

    if-eqz v14, :cond_18

    .line 13037
    :cond_ba
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    instance-of v14, v14, Landroid/widget/EditText;

    if-eqz v14, :cond_1a6

    .line 13038
    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->hideCursorControllers()V

    .line 13039
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    float-to-int v15, v9

    float-to-int v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    # invokes: Landroid/widget/TextView;->checkPosInView(III)Z
    invoke-static/range {v14 .. v17}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;III)Z

    move-result v14

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->canSelectText()Z

    move-result v14

    if-eqz v14, :cond_18

    .line 13055
    :cond_e3
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v13

    .line 13056
    .local v13, "text":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_18

    .line 13058
    sparse-switch v2, :sswitch_data_616

    goto/16 :goto_18

    .line 13062
    :sswitch_f6
    move-object/from16 v0, p0

    iget-boolean v14, v0, mPressed:Z

    if-nez v14, :cond_18

    .line 13064
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->hideMultiSelectPopupWindow()V
    invoke-static {v14}, Landroid/widget/TextView;->access$3600(Landroid/widget/TextView;)V

    .line 13065
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v14

    if-nez v14, :cond_115

    move-object/from16 v0, p0

    iget-object v14, v0, mThisView:Landroid/widget/TextView;

    instance-of v14, v14, Landroid/widget/EditText;

    if-eqz v14, :cond_1d7

    :cond_115
    const/4 v14, 0x1

    :goto_116
    move-object/from16 v0, p0

    iput-boolean v14, v0, mIsSelectableTextView:Z

    .line 13067
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, mThisView:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v11

    .line 13068
    .local v11, "startPos":Landroid/graphics/Point;
    iget v14, v11, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float v14, v9, v14

    move-object/from16 v0, p0

    iput v14, v0, mStartX:F

    .line 13069
    iget v14, v11, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    sub-float v14, v10, v14

    move-object/from16 v0, p0

    iput v14, v0, mStartY:F

    .line 13070
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, mMaxX:F

    .line 13072
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v15, v0, mStartX:F

    move-object/from16 v0, p0

    iget v0, v0, mStartY:F

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, mStartCurPosition:I

    .line 13073
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    if-ltz v14, :cond_23b

    .line 13074
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z
    invoke-static {v14}, Landroid/widget/TextView;->access$3800(Landroid/widget/TextView;)Z

    move-result v14

    if-eqz v14, :cond_227

    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsSelectableTextView:Z

    if-nez v14, :cond_227

    .line 13076
    # getter for: Landroid/widget/TextView;->mCurTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3000()J

    move-result-wide v14

    # getter for: Landroid/widget/TextView;->mLastPenDownTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3900()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_1da

    .line 13077
    # getter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/widget/TextView;->access$4000()Ljava/lang/Runnable;

    move-result-object v14

    if-eqz v14, :cond_195

    .line 13078
    move-object/from16 v0, p0

    iget-object v14, v0, mThisView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/widget/TextView;->access$4000()Ljava/lang/Runnable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13079
    const/4 v14, 0x0

    # setter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Landroid/widget/TextView;->access$4002(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 13081
    :cond_195
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 13082
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 13083
    # getter for: Landroid/widget/TextView;->mCurTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3000()J

    move-result-wide v14

    # setter for: Landroid/widget/TextView;->mLastPenDownTime:J
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3902(J)J

    goto/16 :goto_18

    .line 13043
    .end local v11    # "startPos":Landroid/graphics/Point;
    .end local v13    # "text":Ljava/lang/CharSequence;
    :cond_1a6
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    float-to-int v15, v9

    float-to-int v0, v10

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/TextView;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static/range {v17 .. v17}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    # invokes: Landroid/widget/TextView;->checkPosOnText(III)Z
    invoke-static/range {v14 .. v17}, Landroid/widget/TextView;->access$3500(Landroid/widget/TextView;III)Z

    move-result v14

    if-nez v14, :cond_e3

    goto/16 :goto_18

    .line 13049
    :cond_1c5
    const/4 v14, 0x0

    # setter for: Landroid/widget/TextView;->mIsFindTargetView:Z
    invoke-static {v14}, Landroid/widget/TextView;->access$2702(Z)Z

    .line 13050
    move-object/from16 v0, p0

    iget-boolean v14, v0, mPressed:Z

    if-eqz v14, :cond_18

    # getter for: Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/TextView;->access$2800()Landroid/widget/TextView;

    move-result-object v14

    if-nez v14, :cond_e3

    goto/16 :goto_18

    .line 13065
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_1d7
    const/4 v14, 0x0

    goto/16 :goto_116

    .line 13087
    .restart local v11    # "startPos":Landroid/graphics/Point;
    :cond_1da
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 13089
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, selectRange:[I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v5

    .line 13090
    .local v5, "flag":Z
    if-nez v5, :cond_200

    .line 13091
    move-object/from16 v0, p0

    iget-object v14, v0, selectRange:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 13092
    move-object/from16 v0, p0

    iget-object v14, v0, selectRange:[I

    const/4 v15, 0x1

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v16

    aput v16, v14, v15

    .line 13094
    :cond_200
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, selectRange:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ge v14, v15, :cond_241

    .line 13095
    move-object/from16 v0, p0

    iget-object v14, v0, selectRange:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, mStartCurPosition:I

    .line 13101
    :cond_219
    :goto_219
    # getter for: Landroid/widget/TextView;->mCurTime:J
    invoke-static {}, Landroid/widget/TextView;->access$3000()J

    move-result-wide v14

    # setter for: Landroid/widget/TextView;->mLastPenDownTime:J
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3902(J)J

    .line 13102
    const-string v14, "TextView"

    const-string v15, "Pen down with side button! : start text selection"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13104
    .end local v5    # "flag":Z
    :cond_227
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    move-object/from16 v0, p0

    iput v14, v0, oldEndPos:I

    .line 13105
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mPressed:Z

    .line 13106
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13109
    :cond_23b
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    goto/16 :goto_18

    .line 13097
    .restart local v5    # "flag":Z
    :cond_241
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, selectRange:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    if-le v14, v15, :cond_219

    .line 13098
    move-object/from16 v0, p0

    iget-object v14, v0, selectRange:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, mStartCurPosition:I

    goto :goto_219

    .line 13115
    .end local v5    # "flag":Z
    .end local v11    # "startPos":Landroid/graphics/Point;
    :sswitch_25b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    and-int/lit8 v14, v14, 0x20

    if-eqz v14, :cond_38f

    .line 13116
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z
    invoke-static {v14}, Landroid/widget/TextView;->access$4100(Landroid/widget/TextView;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 13117
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, mThisView:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v11

    .line 13118
    .restart local v11    # "startPos":Landroid/graphics/Point;
    iget v14, v11, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float v3, v9, v14

    .line 13119
    .local v3, "endX":F
    iget v14, v11, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    sub-float v4, v10, v14

    .line 13121
    .local v4, "endY":F
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    float-to-int v15, v9

    float-to-int v0, v10

    move/from16 v16, v0

    const/16 v17, 0x0

    # invokes: Landroid/widget/TextView;->checkPosInView(III)Z
    invoke-static/range {v14 .. v17}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;III)Z

    move-result v14

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 13123
    move-object/from16 v0, p0

    iget v14, v0, mMaxX:F

    move-object/from16 v0, p0

    iget v15, v0, mStartX:F

    sub-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_2b2

    .line 13124
    move-object/from16 v0, p0

    iget v14, v0, mStartX:F

    sub-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, mMaxX:F

    .line 13127
    :cond_2b2
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    invoke-virtual {v14, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, mEndCurPosition:I

    .line 13128
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsSelectableTextView:Z

    if-nez v14, :cond_2dd

    .line 13129
    move-object/from16 v0, p0

    iget v14, v0, mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, selectRange:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ge v14, v15, :cond_2f4

    .line 13130
    move-object/from16 v0, p0

    iget-object v14, v0, selectRange:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, mEndCurPosition:I

    .line 13137
    :cond_2dd
    :goto_2dd
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, mEndCurPosition:I

    if-ne v14, v15, :cond_30e

    .line 13138
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsSelectableTextView:Z

    if-nez v14, :cond_18

    .line 13139
    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    goto/16 :goto_18

    .line 13132
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_2f4
    move-object/from16 v0, p0

    iget v14, v0, mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, selectRange:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    if-le v14, v15, :cond_2dd

    .line 13133
    move-object/from16 v0, p0

    iget-object v14, v0, selectRange:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, mEndCurPosition:I

    goto :goto_2dd

    .line 13144
    :cond_30e
    move-object/from16 v0, p0

    iget v14, v0, oldEndPos:I

    move-object/from16 v0, p0

    iget v15, v0, mEndCurPosition:I

    if-eq v14, v15, :cond_18

    move-object/from16 v0, p0

    iget v14, v0, mEndCurPosition:I

    if-ltz v14, :cond_18

    .line 13145
    move-object/from16 v0, p0

    iget v14, v0, mEndCurPosition:I

    move-object/from16 v0, p0

    iput v14, v0, oldEndPos:I

    .line 13146
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    # setter for: Landroid/widget/TextView;->mHighlightPathBogus:Z
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$4202(Landroid/widget/TextView;Z)Z

    .line 13147
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsSelectableTextView:Z

    if-nez v14, :cond_36f

    .line 13148
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-le v14, v15, :cond_346

    .line 13149
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, mStartCurPosition:I

    .line 13151
    :cond_346
    move-object/from16 v0, p0

    iget v14, v0, mEndCurPosition:I

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-le v14, v15, :cond_358

    .line 13152
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, mEndCurPosition:I

    .line 13154
    :cond_358
    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, mEndCurPosition:I

    invoke-static {v13, v14, v15}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 13155
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    goto/16 :goto_18

    .line 13157
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_36f
    move-object/from16 v0, p0

    iget-object v14, v0, mThisView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->isFocused()Z

    move-result v14

    if-nez v14, :cond_380

    .line 13158
    move-object/from16 v0, p0

    iget-object v14, v0, mThisView:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->requestFocus()Z

    .line 13160
    :cond_380
    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, mEndCurPosition:I

    invoke-static {v13, v14, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_18

    .line 13173
    .end local v3    # "endX":F
    .end local v4    # "endY":F
    .end local v11    # "startPos":Landroid/graphics/Point;
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_38f
    :sswitch_38f
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, mThisView:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$3700(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v11

    .line 13174
    .restart local v11    # "startPos":Landroid/graphics/Point;
    iget v14, v11, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float v3, v9, v14

    .line 13175
    .restart local v3    # "endX":F
    iget v14, v11, Landroid/graphics/Point;->y:I

    int-to-float v14, v14

    sub-float v4, v10, v14

    .line 13177
    .restart local v4    # "endY":F
    move-object/from16 v0, p0

    iget v14, v0, mMaxX:F

    move-object/from16 v0, p0

    iget v15, v0, mStartX:F

    sub-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3c3

    .line 13178
    move-object/from16 v0, p0

    iget v14, v0, mStartX:F

    sub-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, mMaxX:F

    .line 13180
    :cond_3c3
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    invoke-virtual {v14, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, mEndCurPosition:I

    .line 13181
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsSelectableTextView:Z

    if-nez v14, :cond_3ee

    .line 13182
    move-object/from16 v0, p0

    iget v14, v0, mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, selectRange:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    if-ge v14, v15, :cond_469

    .line 13183
    move-object/from16 v0, p0

    iget-object v14, v0, selectRange:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, mEndCurPosition:I

    .line 13190
    :cond_3ee
    :goto_3ee
    const/4 v8, 0x0

    .line 13191
    .local v8, "isSameLine":Z
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v14}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v14

    if-eqz v14, :cond_410

    .line 13192
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v15, v0, mStartY:F

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Landroid/widget/TextView;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v15

    if-ne v14, v15, :cond_484

    const/4 v8, 0x1

    .line 13195
    :cond_410
    :goto_410
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsSelectableTextView:Z

    if-nez v14, :cond_486

    if-eqz v8, :cond_486

    move-object/from16 v0, p0

    iget v14, v0, mMaxX:F

    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->TOUCH_DELTA:F
    invoke-static {v15}, Landroid/widget/TextView;->access$2300(Landroid/widget/TextView;)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_486

    .line 13196
    # getter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/widget/TextView;->access$4000()Ljava/lang/Runnable;

    move-result-object v14

    if-eqz v14, :cond_43d

    .line 13197
    move-object/from16 v0, p0

    iget-object v14, v0, mThisView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/widget/TextView;->access$4000()Ljava/lang/Runnable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13198
    const/4 v14, 0x0

    # setter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Landroid/widget/TextView;->access$4002(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 13200
    :cond_43d
    new-instance v14, Landroid/widget/TextView$StylusEventListener$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView$StylusEventListener$1;-><init>(Landroid/widget/TextView$StylusEventListener;)V

    # setter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {v14}, Landroid/widget/TextView;->access$4002(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 13230
    move-object/from16 v0, p0

    iget-object v14, v0, mThisView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mShowPenSelectionRunnable:Ljava/lang/Runnable;
    invoke-static {}, Landroid/widget/TextView;->access$4000()Ljava/lang/Runnable;

    move-result-object v15

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13232
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13233
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mPressed:Z

    goto/16 :goto_18

    .line 13185
    .end local v8    # "isSameLine":Z
    :cond_469
    move-object/from16 v0, p0

    iget v14, v0, mEndCurPosition:I

    move-object/from16 v0, p0

    iget-object v15, v0, selectRange:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    if-le v14, v15, :cond_3ee

    .line 13186
    move-object/from16 v0, p0

    iget-object v14, v0, selectRange:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iput v14, v0, mEndCurPosition:I

    goto/16 :goto_3ee

    .line 13192
    .restart local v8    # "isSameLine":Z
    :cond_484
    const/4 v8, 0x0

    goto :goto_410

    .line 13237
    :cond_486
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    .line 13238
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, mEndCurPosition:I

    if-ne v14, v15, :cond_4c7

    .line 13239
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mPressed:Z

    .line 13240
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsSelectableTextView:Z

    if-nez v14, :cond_4bd

    .line 13241
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object v14, v13

    .line 13242
    check-cast v14, Landroid/text/Spannable;

    invoke-static {v14}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 13243
    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Landroid/widget/TextView;

    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v14

    if-lez v14, :cond_4bb

    const/4 v14, 0x1

    :goto_4b6
    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v15, v14}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    goto/16 :goto_18

    :cond_4bb
    const/4 v14, 0x0

    goto :goto_4b6

    .line 13245
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_4bd
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    goto/16 :goto_18

    .line 13250
    :cond_4c7
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, mEndCurPosition:I

    if-le v14, v15, :cond_4e1

    .line 13251
    move-object/from16 v0, p0

    iget v12, v0, mStartCurPosition:I

    .line 13252
    .local v12, "temp":I
    move-object/from16 v0, p0

    iget v14, v0, mEndCurPosition:I

    move-object/from16 v0, p0

    iput v14, v0, mStartCurPosition:I

    .line 13253
    move-object/from16 v0, p0

    iput v12, v0, mEndCurPosition:I

    .line 13255
    .end local v12    # "temp":I
    :cond_4e1
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsSelectableTextView:Z

    if-nez v14, :cond_54f

    move-object v14, v13

    .line 13256
    check-cast v14, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget v15, v0, mStartCurPosition:I

    move-object/from16 v0, p0

    iget v0, v0, mEndCurPosition:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 13257
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->showMultiSelectPopupWindow()V
    invoke-static {v14}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;)V

    .line 13261
    :try_start_4fe
    new-instance v6, Lcom/samsung/android/hermes/HermesServiceManager;

    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v6, v14}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .line 13262
    .local v6, "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, mEndCurPosition:I

    invoke-interface {v13, v14, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/samsung/android/hermes/HermesServiceManager;->training(Ljava/lang/String;)V
    :try_end_51e
    .catch Ljava/lang/IllegalStateException; {:try_start_4fe .. :try_end_51e} :catch_546

    .line 13266
    .end local v6    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :goto_51e
    const-string v14, "TextView"

    const-string v15, "Pen up with side button! : end text selection"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13269
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    .line 13271
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    const/4 v15, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    .line 13272
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    .line 13288
    .end local v13    # "text":Ljava/lang/CharSequence;
    :cond_538
    :goto_538
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13289
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mPressed:Z

    goto/16 :goto_18

    .line 13263
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :catch_546
    move-exception v7

    .line 13264
    .local v7, "ie":Ljava/lang/IllegalStateException;
    const-string v14, "TextView"

    const-string v15, "** skip HERMES Service by IllegalStateException **"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51e

    .line 13273
    .end local v7    # "ie":Ljava/lang/IllegalStateException;
    :cond_54f
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    if-ltz v14, :cond_538

    move-object/from16 v0, p0

    iget v14, v0, mEndCurPosition:I

    if-ltz v14, :cond_538

    .line 13274
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->isTextSelectionEnabled()Z
    invoke-static {v14}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v14

    if-nez v14, :cond_567

    if-eqz v8, :cond_538

    .line 13275
    :cond_567
    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    move-object/from16 v0, p0

    iget v15, v0, mEndCurPosition:I

    invoke-static {v13, v14, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 13276
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    if-eqz v14, :cond_595

    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    iget-boolean v14, v14, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v14, :cond_595

    .line 13277
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 13279
    :cond_595
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    if-eqz v14, :cond_538

    move-object/from16 v0, p0

    iget-object v14, v0, mThisView:Landroid/widget/TextView;

    instance-of v14, v14, Landroid/inputmethodservice/ExtractEditText;

    if-nez v14, :cond_538

    .line 13280
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v14

    if-eqz v14, :cond_5c0

    .line 13281
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Editor;->updateSelectionHandler()V

    .line 13283
    :cond_5c0
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;
    invoke-static {v14}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/Editor;->mCreatedWithASelection:Z

    goto/16 :goto_538

    .line 13295
    .end local v3    # "endX":F
    .end local v4    # "endY":F
    .end local v8    # "isSameLine":Z
    .end local v11    # "startPos":Landroid/graphics/Point;
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :sswitch_5cd
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13296
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, mPressed:Z

    .line 13298
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsSelectableTextView:Z

    if-nez v14, :cond_5fd

    .line 13299
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object v14, v13

    .line 13300
    check-cast v14, Landroid/text/Spannable;

    invoke-static {v14}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    .line 13301
    move-object/from16 v0, p0

    iget-object v15, v0, this$0:Landroid/widget/TextView;

    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v14

    if-lez v14, :cond_5fb

    const/4 v14, 0x1

    :goto_5f6
    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v15, v14}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    goto/16 :goto_18

    :cond_5fb
    const/4 v14, 0x0

    goto :goto_5f6

    .line 13303
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_5fd
    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Landroid/widget/TextView;

    const/4 v15, 0x0

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v14, v15}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    .line 13304
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    if-ltz v14, :cond_18

    .line 13305
    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v14, v0, mStartCurPosition:I

    invoke-static {v13, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_18

    .line 13058
    :sswitch_data_616
    .sparse-switch
        0x0 -> :sswitch_f6
        0x1 -> :sswitch_38f
        0x2 -> :sswitch_25b
        0x3 -> :sswitch_5cd
        0xd3 -> :sswitch_f6
        0xd4 -> :sswitch_38f
        0xd5 -> :sswitch_25b
        0xd6 -> :sswitch_5cd
    .end sparse-switch
.end method
