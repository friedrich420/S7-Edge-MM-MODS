.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field static final HANDLE_TYPE_END:I = 0x2

.field static final HANDLE_TYPE_INSERT:I = 0x3

.field static final HANDLE_TYPE_NONE:I = 0x0

.field static final HANDLE_TYPE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field public mHandleType:I

.field private mHandlerHasMoved:Z

.field private mHighlightRect:[I

.field protected mHorizontalGravity:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field protected mPrevLine:I

.field private mPreviousHighlightRect:[I

.field protected mPreviousLineTouched:I

.field protected mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field protected mbSwitchCursor:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 12
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 3971
    iput-object p1, p0, this$0:Landroid/widget/Editor;

    .line 3972
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3948
    iput v2, p0, mPreviousOffset:I

    .line 3950
    iput-boolean v7, p0, mPositionHasChanged:Z

    .line 3954
    iput v2, p0, mPrevLine:I

    .line 3958
    iput v2, p0, mPreviousLineTouched:I

    .line 3964
    iput v5, p0, mHandleType:I

    .line 3966
    iput-boolean v5, p0, mHandlerHasMoved:Z

    .line 3968
    new-array v1, v3, [I

    iput-object v1, p0, mHighlightRect:[I

    .line 3969
    new-array v1, v3, [I

    iput-object v1, p0, mPreviousHighlightRect:[I

    .line 4048
    const/4 v1, 0x5

    new-array v1, v1, [J

    iput-object v1, p0, mPreviousOffsetsTimes:[J

    .line 4049
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, mPreviousOffsets:[I

    .line 4050
    iput v5, p0, mPreviousOffsetIndex:I

    .line 4051
    iput v5, p0, mNumberPreviousOffsets:I

    .line 3973
    new-instance v1, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, mContainer:Landroid/widget/PopupWindow;

    .line 3975
    iget-object v1, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 3976
    iget-object v1, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3977
    iget-object v1, p0, mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3978
    iget-object v1, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3979
    iget-object v1, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3980
    iget-object v1, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3982
    iput-object p2, p0, mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 3983
    iput-object p3, p0, mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 3984
    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/widget/Editor;->access$1600(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 3985
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105024f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mMinSize:I

    .line 3991
    :goto_86
    invoke-virtual {p0}, updateDrawable()V

    .line 3993
    invoke-direct {p0}, getPreferredHeight()I

    move-result v0

    .line 3994
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, mTouchOffsetY:F

    .line 3995
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, mIdealVerticalOffset:F

    .line 3996
    return-void

    .line 3988
    .end local v0    # "handleHeight":I
    :cond_9c
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mMinSize:I

    goto :goto_86
.end method

.method private addPositionToTouchUpFilter(I)V
    .registers 6
    .param p1, "offset"    # I

    .prologue
    .line 4059
    iget v0, p0, mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, mPreviousOffsetIndex:I

    .line 4060
    iget-object v0, p0, mPreviousOffsets:[I

    iget v1, p0, mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 4061
    iget-object v0, p0, mPreviousOffsetsTimes:[J

    iget v1, p0, mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4062
    iget v0, p0, mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mNumberPreviousOffsets:I

    .line 4063
    return-void
.end method

.method private filterOnTouchUp()V
    .registers 11

    .prologue
    .line 4066
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4067
    .local v4, "now":J
    const/4 v0, 0x0

    .line 4068
    .local v0, "i":I
    iget v2, p0, mPreviousOffsetIndex:I

    .line 4069
    .local v2, "index":I
    iget v3, p0, mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4070
    .local v1, "iMax":I
    :goto_e
    if-ge v0, v1, :cond_26

    iget-object v3, p0, mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_26

    .line 4071
    add-int/lit8 v0, v0, 0x1

    .line 4072
    iget v3, p0, mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_e

    .line 4075
    :cond_26
    if-lez v0, :cond_3e

    if-ge v0, v1, :cond_3e

    iget-object v3, p0, mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_3e

    .line 4077
    iget-object v3, p0, mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, positionAtCursorOffset(IZ)V

    .line 4079
    :cond_3e
    return-void
.end method

.method private getPreferredHeight()I
    .registers 3

    .prologue
    .line 4095
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .registers 5

    .prologue
    .line 4127
    iget-boolean v1, p0, mIsDragging:Z

    if-eqz v1, :cond_6

    .line 4128
    const/4 v1, 0x1

    .line 4142
    :goto_5
    return v1

    .line 4131
    :cond_6
    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4132
    const/4 v1, 0x0

    goto :goto_5

    .line 4137
    :cond_14
    iget v0, p0, mPositionY:I

    .line 4138
    .local v0, "mCalculatePositionY":I
    iget v1, p0, mHandleType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_22

    .line 4139
    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertActionHandleTopMargin:I
    invoke-static {v1}, Landroid/widget/Editor;->access$4000(Landroid/widget/Editor;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 4142
    :cond_22
    iget-object v1, p0, this$0:Landroid/widget/Editor;

    iget v2, p0, mPositionX:I

    iget v3, p0, mHotspotX:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    # invokes: Landroid/widget/Editor;->isPositionVisible(FF)Z
    invoke-static {v1, v2, v3}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;FF)Z

    move-result v1

    goto :goto_5
.end method

.method private startTouchUpFilter(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 4054
    const/4 v0, 0x0

    iput v0, p0, mNumberPreviousOffsets:I

    .line 4055
    invoke-direct {p0, p1}, addPositionToTouchUpFilter(I)V

    .line 4056
    return-void
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .registers 2

    .prologue
    .line 4005
    const/4 v0, 0x1

    return v0
.end method

.method protected dismiss()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 4109
    iput-boolean v0, p0, mIsDragging:Z

    .line 4110
    iput-boolean v0, p0, mHandlerHasMoved:Z

    .line 4111
    iget-object v0, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4112
    invoke-virtual {p0}, onDetached()V

    .line 4113
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected getCursorOffset()I
    .registers 2

    .prologue
    .line 4300
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected getHorizontalOffset()I
    .registers 5

    .prologue
    .line 4281
    invoke-virtual {p0}, getPreferredWidth()I

    move-result v2

    .line 4282
    .local v2, "width":I
    iget-object v3, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4284
    .local v0, "drawWidth":I
    iget v3, p0, mHorizontalGravity:I

    packed-switch v3, :pswitch_data_1a

    .line 4290
    :pswitch_f
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 4296
    .local v1, "left":I
    :goto_13
    return v1

    .line 4286
    .end local v1    # "left":I
    :pswitch_14
    const/4 v1, 0x0

    .line 4287
    .restart local v1    # "left":I
    goto :goto_13

    .line 4293
    .end local v1    # "left":I
    :pswitch_16
    sub-int v1, v2, v0

    .restart local v1    # "left":I
    goto :goto_13

    .line 4284
    nop

    :pswitch_data_1a
    .packed-switch 0x3
        :pswitch_14
        :pswitch_f
        :pswitch_16
    .end packed-switch
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public getIdealVerticalOffset()F
    .registers 2

    .prologue
    .line 3999
    iget v0, p0, mIdealVerticalOffset:F

    return v0
.end method

.method protected getPreferredWidth()I
    .registers 3

    .prologue
    .line 4091
    iget-object v0, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 4116
    invoke-virtual {p0}, dismiss()V

    .line 4117
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeMessage()V

    .line 4118
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4119
    return-void
.end method

.method public isDragging()Z
    .registers 2

    .prologue
    .line 4374
    iget-boolean v0, p0, mIsDragging:Z

    return v0
.end method

.method public isMoved()Z
    .registers 2

    .prologue
    .line 4378
    iget-boolean v0, p0, mHandlerHasMoved:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 4122
    iget-object v0, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4082
    iget v1, p0, mNumberPreviousOffsets:I

    if-le v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onDetached()V
    .registers 1

    .prologue
    .line 4385
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 4273
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4274
    .local v0, "drawWidth":I
    invoke-virtual {p0}, getHorizontalOffset()I

    move-result v1

    .line 4276
    .local v1, "left":I
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int v4, v1, v0

    iget-object v5, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4277
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4278
    return-void
.end method

.method onHandleMoved()V
    .registers 2

    .prologue
    .line 4382
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeMessage()V

    .line 4383
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 4087
    invoke-virtual {p0}, getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, setMeasuredDimension(II)V

    .line 4088
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 4305
    iget-object v8, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    invoke-static {v8, p1}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    .line 4307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_fe

    .line 4370
    :cond_e
    :goto_e
    return v12

    .line 4309
    :pswitch_f
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v8

    invoke-direct {p0, v8}, startTouchUpFilter(I)V

    .line 4310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, mPositionX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, mTouchToWindowOffsetX:F

    .line 4311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, mPositionY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, mTouchToWindowOffsetY:F

    .line 4313
    iget-object v8, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v8}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    .line 4314
    .local v4, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v8

    iput v8, p0, mLastParentX:I

    .line 4315
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v8

    iput v8, p0, mLastParentY:I

    .line 4316
    iput-boolean v12, p0, mIsDragging:Z

    .line 4317
    const/4 v8, -0x1

    iput v8, p0, mPreviousLineTouched:I

    goto :goto_e

    .line 4322
    .end local v4    # "positionListener":Landroid/widget/Editor$PositionListener;
    :pswitch_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 4323
    .local v6, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 4326
    .local v7, "rawY":F
    iget v8, p0, mTouchToWindowOffsetY:F

    iget v9, p0, mLastParentY:I

    int-to-float v9, v9

    sub-float v5, v8, v9

    .line 4327
    .local v5, "previousVerticalOffset":F
    iget v8, p0, mPositionY:I

    int-to-float v8, v8

    sub-float v8, v7, v8

    iget v9, p0, mLastParentY:I

    int-to-float v9, v9

    sub-float v0, v8, v9

    .line 4329
    .local v0, "currentVerticalOffset":F
    iget v8, p0, mIdealVerticalOffset:F

    cmpg-float v8, v5, v8

    if-gez v8, :cond_8c

    .line 4330
    iget v8, p0, mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 4331
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4336
    :goto_6b
    iget v8, p0, mLastParentY:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    iput v8, p0, mTouchToWindowOffsetY:F

    .line 4338
    iget v8, p0, mTouchToWindowOffsetX:F

    sub-float v8, v6, v8

    iget v9, p0, mHotspotX:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {p0}, getHorizontalOffset()I

    move-result v9

    int-to-float v9, v9

    add-float v1, v8, v9

    .line 4340
    .local v1, "newPosX":F
    iget v8, p0, mTouchToWindowOffsetY:F

    sub-float v8, v7, v8

    iget v9, p0, mTouchOffsetY:F

    add-float v2, v8, v9

    .line 4342
    .local v2, "newPosY":F
    invoke-virtual {p0, v1, v2}, updatePosition(FF)V

    goto :goto_e

    .line 4333
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    :cond_8c
    iget v8, p0, mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4334
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_6b

    .line 4347
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v5    # "previousVerticalOffset":F
    .end local v6    # "rawX":F
    .end local v7    # "rawY":F
    :pswitch_97
    invoke-direct {p0}, filterOnTouchUp()V

    .line 4348
    iput-boolean v11, p0, mIsDragging:Z

    .line 4349
    iget-object v8, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v8}, Landroid/widget/Editor;->access$1600(Landroid/widget/Editor;)Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 4350
    invoke-virtual {p0}, refreshForSwitchingCursor()Z

    .line 4351
    iget-object v8, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    iget-object v9, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    if-le v8, v9, :cond_e0

    .line 4352
    iget-object v8, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    iget-object v9, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    iget-object v10, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4357
    :cond_e0
    invoke-virtual {p0}, updateDrawable()V

    .line 4358
    iput-boolean v11, p0, mHandlerHasMoved:Z

    .line 4359
    iget-object v8, p0, this$0:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v8, :cond_e

    .line 4360
    iget-object v8, p0, this$0:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    # invokes: Landroid/widget/Editor$SelectionModifierCursorController;->setDragAcceleratorActive(Z)V
    invoke-static {v8, v11}, Landroid/widget/Editor$SelectionModifierCursorController;->access$4300(Landroid/widget/Editor$SelectionModifierCursorController;Z)V

    goto/16 :goto_e

    .line 4365
    :pswitch_f4
    iput-boolean v11, p0, mIsDragging:Z

    .line 4366
    invoke-virtual {p0}, updateDrawable()V

    .line 4367
    iput-boolean v11, p0, mHandlerHasMoved:Z

    goto/16 :goto_e

    .line 4307
    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_f
        :pswitch_97
        :pswitch_42
        :pswitch_f4
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .registers 11
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4153
    iget-object v5, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4154
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_16

    .line 4156
    iget-object v3, p0, this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4204
    :cond_15
    :goto_15
    return-void

    .line 4159
    :cond_16
    iget-object v5, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getActiveLayout()Landroid/text/Layout;
    invoke-static {v5}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    .line 4161
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4162
    .local v1, "line":I
    iget v5, p0, mPreviousOffset:I

    if-eq p1, v5, :cond_fb

    move v2, v3

    .line 4164
    .local v2, "offsetChanged":Z
    :goto_25
    if-nez v2, :cond_9b

    .line 4165
    iget-object v5, p0, mHighlightRect:[I

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v4

    .line 4166
    iget-object v5, p0, mHighlightRect:[I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    aput v6, v5, v3

    .line 4168
    iget-object v5, p0, mHighlightRect:[I

    aget v5, v5, v4

    iget-object v6, p0, mPreviousHighlightRect:[I

    aget v6, v6, v4

    if-ne v5, v6, :cond_4c

    iget-object v5, p0, mHighlightRect:[I

    aget v5, v5, v3

    iget-object v6, p0, mPreviousHighlightRect:[I

    aget v6, v6, v3

    if-eq v5, v6, :cond_89

    .line 4169
    :cond_4c
    iget-object v5, p0, mHighlightRect:[I

    aget v5, v5, v4

    int-to-float v5, v5

    sub-float/2addr v5, v7

    iget v6, p0, mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, getCursorOffset()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, mPositionX:I

    .line 4170
    iget-object v5, p0, mHighlightRect:[I

    aget v5, v5, v3

    iput v5, p0, mPositionY:I

    .line 4173
    iget v5, p0, mPositionX:I

    iget-object v6, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, mPositionX:I

    .line 4174
    iget v5, p0, mPositionY:I

    iget-object v6, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, mPositionY:I

    .line 4176
    :cond_89
    iget-object v5, p0, mPreviousHighlightRect:[I

    iget-object v6, p0, mHighlightRect:[I

    aget v6, v6, v4

    aput v6, v5, v4

    .line 4177
    iget-object v4, p0, mPreviousHighlightRect:[I

    iget-object v5, p0, mHighlightRect:[I

    aget v5, v5, v3

    aput v5, v4, v3

    .line 4179
    iput-boolean v3, p0, mPositionHasChanged:Z

    .line 4182
    :cond_9b
    if-nez v2, :cond_9f

    if-eqz p2, :cond_15

    .line 4183
    :cond_9f
    if-eqz v2, :cond_a7

    .line 4184
    invoke-virtual {p0, p1}, updateSelection(I)V

    .line 4185
    invoke-direct {p0, p1}, addPositionToTouchUpFilter(I)V

    .line 4187
    :cond_a7
    iput v1, p0, mPrevLine:I

    .line 4189
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    sub-float/2addr v4, v7

    iget v5, p0, mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, getHorizontalOffset()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, getCursorOffset()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, mPositionX:I

    .line 4191
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, mPositionY:I

    .line 4194
    iget v4, p0, mPositionX:I

    iget-object v5, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, mPositionX:I

    .line 4195
    iget v4, p0, mPositionY:I

    iget-object v5, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, mPositionY:I

    .line 4197
    iget v4, p0, mHandleType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_f5

    .line 4198
    iget v4, p0, mPositionY:I

    iget-object v5, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mInsertActionHandleTopMargin:I
    invoke-static {v5}, Landroid/widget/Editor;->access$4000(Landroid/widget/Editor;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, mPositionY:I

    .line 4201
    :cond_f5
    iput p1, p0, mPreviousOffset:I

    .line 4202
    iput-boolean v3, p0, mPositionHasChanged:Z

    goto/16 :goto_15

    .end local v2    # "offsetChanged":Z
    :cond_fb
    move v2, v4

    .line 4162
    goto/16 :goto_25
.end method

.method public refreshForSwitchingCursor()Z
    .registers 2

    .prologue
    .line 4008
    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .registers 3

    .prologue
    .line 4099
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4106
    :goto_6
    return-void

    .line 4101
    :cond_7
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4104
    const/4 v0, -0x1

    iput v0, p0, mPreviousOffset:I

    .line 4105
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, positionAtCursorOffset(IZ)V

    goto :goto_6
.end method

.method public showAtLocation(I)V
    .registers 14
    .param p1, "offset"    # I

    .prologue
    const/4 v11, 0x0

    .line 4250
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 4251
    .local v6, "tmpCords":[I
    iget-object v7, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 4253
    iget-object v7, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4254
    .local v0, "layout":Landroid/text/Layout;
    aget v2, v6, v11

    .line 4255
    .local v2, "posX":I
    const/4 v7, 0x1

    aget v3, v6, v7

    .line 4257
    .local v3, "posY":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4259
    .local v1, "line":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v7, v8

    iget v8, p0, mHotspotX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, getHorizontalOffset()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, getCursorOffset()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v4, v7

    .line 4261
    .local v4, "startX":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 4264
    .local v5, "startY":I
    iget-object v7, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    add-int/2addr v4, v7

    .line 4265
    iget-object v7, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr v5, v7

    .line 4267
    iget-object v7, p0, mContainer:Landroid/widget/PopupWindow;

    iget-object v8, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    add-int v9, v4, v2

    add-int v10, v5, v3

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4269
    return-void
.end method

.method protected updateDrawable()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4013
    iget-boolean v6, p0, mIsDragging:Z

    if-eqz v6, :cond_7

    .line 4039
    :cond_6
    :goto_6
    return-void

    .line 4018
    :cond_7
    iget-object v6, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4019
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_6

    .line 4020
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v2

    .line 4021
    .local v2, "offset":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 4022
    .local v0, "isRtlCharAtOffset":Z
    iget-object v3, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4023
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v6, p0, mbSwitchCursor:Z

    if-eqz v6, :cond_24

    .line 4024
    if-nez v0, :cond_78

    move v0, v4

    .line 4026
    :cond_24
    :goto_24
    if-eqz v0, :cond_7a

    iget-object v6, p0, mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_28
    iput-object v6, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4027
    iget-object v6, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v6, v0}, getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v6

    iput v6, p0, mHotspotX:I

    .line 4028
    invoke-virtual {p0, v0}, getHorizontalGravity(Z)I

    move-result v6

    iput v6, p0, mHorizontalGravity:I

    .line 4029
    iget-object v6, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v6, :cond_6

    invoke-virtual {p0}, isShowing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4031
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    iget v7, p0, mHotspotX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p0}, getHorizontalOffset()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p0}, getCursorOffset()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, mPositionX:I

    .line 4033
    iget v6, p0, mPositionX:I

    iget-object v7, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, mPositionX:I

    .line 4034
    iput-boolean v4, p0, mPositionHasChanged:Z

    .line 4035
    iget v4, p0, mLastParentX:I

    iget v6, p0, mLastParentY:I

    invoke-virtual {p0, v4, v6, v5, v5}, updatePosition(IIZZ)V

    .line 4036
    invoke-virtual {p0}, postInvalidate()V

    goto :goto_6

    :cond_78
    move v0, v5

    .line 4024
    goto :goto_24

    .line 4026
    :cond_7a
    iget-object v6, p0, mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_28
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .registers 11
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4208
    invoke-virtual {p0}, getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, positionAtCursorOffset(IZ)V

    .line 4209
    if-nez p3, :cond_f

    iget-boolean v2, p0, mPositionHasChanged:Z

    if-eqz v2, :cond_54

    .line 4210
    :cond_f
    iget-boolean v2, p0, mIsDragging:Z

    if-eqz v2, :cond_55

    .line 4212
    iget v2, p0, mLastParentX:I

    if-ne p1, v2, :cond_1b

    iget v2, p0, mLastParentY:I

    if-eq p2, v2, :cond_33

    .line 4213
    :cond_1b
    iget v2, p0, mTouchToWindowOffsetX:F

    iget v3, p0, mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, mTouchToWindowOffsetX:F

    .line 4214
    iget v2, p0, mTouchToWindowOffsetY:F

    iget v3, p0, mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, mTouchToWindowOffsetY:F

    .line 4215
    iput p1, p0, mLastParentX:I

    .line 4216
    iput p2, p0, mLastParentY:I

    .line 4219
    :cond_33
    invoke-virtual {p0}, onHandleMoved()V

    .line 4220
    const/4 v2, 0x1

    iput-boolean v2, p0, mHandlerHasMoved:Z

    .line 4228
    :cond_39
    :goto_39
    invoke-direct {p0}, isVisible()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 4229
    iget v2, p0, mPositionX:I

    add-int v0, p1, v2

    .line 4230
    .local v0, "positionX":I
    iget v2, p0, mPositionY:I

    add-int v1, p2, v2

    .line 4231
    .local v1, "positionY":I
    invoke-virtual {p0}, isShowing()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 4232
    iget-object v2, p0, mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4243
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_52
    :goto_52
    iput-boolean v5, p0, mPositionHasChanged:Z

    .line 4245
    :cond_54
    return-void

    .line 4222
    :cond_55
    iget v2, p0, mLastParentX:I

    if-ne p1, v2, :cond_5d

    iget v2, p0, mLastParentY:I

    if-eq p2, v2, :cond_39

    .line 4223
    :cond_5d
    iput p1, p0, mLastParentX:I

    .line 4224
    iput p2, p0, mLastParentY:I

    goto :goto_39

    .line 4234
    .restart local v0    # "positionX":I
    .restart local v1    # "positionY":I
    :cond_62
    iget-object v2, p0, mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_52

    .line 4238
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_6e
    invoke-virtual {p0}, isShowing()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 4239
    invoke-virtual {p0}, dismiss()V

    goto :goto_52
.end method

.method protected abstract updateSelection(I)V
.end method
