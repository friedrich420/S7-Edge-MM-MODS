.class public Lcom/android/systemui/recents/views/DebugOverlayView;
.super Landroid/widget/FrameLayout;
.source "DebugOverlayView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;
    }
.end annotation


# instance fields
.field mCb:Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOutline:Landroid/graphics/Paint;

.field mEnabled:Z

.field mPrimarySeekBar:Landroid/widget/SeekBar;

.field mRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mSecondarySeekBar:Landroid/widget/SeekBar;

.field mText:Ljava/lang/String;

.field mTmpPaint:Landroid/graphics/Paint;

.field mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/DebugOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/DebugOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/DebugOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mRects:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mDebugOutline:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mTmpPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mTmpRect:Landroid/graphics/Rect;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mEnabled:Z

    .line 81
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mDebugOutline:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mDebugOutline:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mDebugOutline:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->setWillNotDraw(Z)V

    .line 87
    return-void
.end method


# virtual methods
.method addRect(Landroid/graphics/Rect;I)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "color"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mRects:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/DebugOverlayView;->invalidate()V

    .line 122
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mEnabled:Z

    .line 110
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->setVisibility(I)V

    .line 111
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mEnabled:Z

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->setVisibility(I)V

    .line 105
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/DebugOverlayView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/DebugOverlayView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mDebugOutline:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 163
    .local v7, "numRects":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 165
    .local v8, "r":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 170
    .end local v8    # "r":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mTmpPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mTmpPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mText:Ljava/lang/String;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/DebugOverlayView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 177
    .end local v6    # "i":I
    .end local v7    # "numRects":I
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f0e01e4

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mPrimarySeekBar:Landroid/widget/SeekBar;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mPrimarySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 97
    const v0, 0x7f0e01e5

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mSecondarySeekBar:Landroid/widget/SeekBar;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mSecondarySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 99
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v2, 0x32

    const/4 v1, 0x0

    const/high16 v5, -0x10000

    .line 149
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/recents/views/DebugOverlayView;->addRect(Landroid/graphics/Rect;I)V

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/DebugOverlayView;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x32

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/DebugOverlayView;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x32

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/DebugOverlayView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/DebugOverlayView;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/recents/views/DebugOverlayView;->addRect(Landroid/graphics/Rect;I)V

    .line 153
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mPrimarySeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mCb:Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mPrimarySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;->onPrimarySeekBarChanged(F)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mSecondarySeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mCb:Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mSecondarySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;->onSecondarySeekBarChanged(F)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 189
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 184
    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui/recents/views/DebugOverlayView;->mText:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/DebugOverlayView;->invalidate()V

    .line 145
    return-void
.end method
