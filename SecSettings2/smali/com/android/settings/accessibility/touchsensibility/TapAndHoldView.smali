.class public Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;
.super Landroid/widget/ImageView;
.source "TapAndHoldView.java"


# static fields
.field private static touch_time:J


# instance fields
.field private blockLongPress:Z

.field private currentTapAndHoldState:I

.field private final_touch_time:J

.field private isLongPressDone:Z

.field private isStartCounting:Z

.field private mBitmapHoldConfirm:Landroid/graphics/Bitmap;

.field private mBitmapHoldStandBy:Landroid/graphics/Bitmap;

.field private mBitmapTapConfirm:Landroid/graphics/Bitmap;

.field private mBitmapTapStandBy:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private startX:F

.field private startY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 22
    iput v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 27
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 28
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 29
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 22
    iput v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 27
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 28
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 29
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 22
    iput v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 27
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 28
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 29
    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->initView()V

    .line 45
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ad

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ac

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 67
    return-void
.end method


# virtual methods
.method public checkAndSaveState()V
    .locals 6

    .prologue
    .line 165
    iget v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    if-eqz v2, :cond_1

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 167
    .local v0, "uptime":J
    sget-wide v2, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 168
    iget-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 169
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 170
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 172
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 174
    .end local v0    # "uptime":J
    :cond_1
    return-void
.end method

.method public checkLongPressStatus()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 73
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    iget v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    packed-switch v0, :pswitch_data_0

    .line 98
    const-string v0, "Tap and Hold Delay"

    const-string v1, "Unknown Tap and Hold State"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    .line 102
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 93
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 74
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTouchTime()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    return-wide v0
.end method

.method public isCountingLongPressTime()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 107
    .local v0, "uptime":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    .line 111
    iput v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 112
    iput-boolean v5, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 113
    iput-boolean v5, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 114
    iput-boolean v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 124
    :cond_0
    :goto_0
    sget-wide v2, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    if-nez v2, :cond_1

    .line 125
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    .line 128
    return v4

    .line 115
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 116
    sget-wide v2, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 117
    iget-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_3

    .line 118
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 119
    iput-boolean v4, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 121
    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    goto :goto_0
.end method

.method public refresh()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 153
    iput v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->currentTapAndHoldState:I

    .line 154
    iput v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startX:F

    .line 155
    iput v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->startY:F

    .line 156
    sput-wide v2, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->touch_time:J

    .line 157
    iput-wide v2, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->final_touch_time:J

    .line 158
    iput-boolean v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isLongPressDone:Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->blockLongPress:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->isStartCounting:Z

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldView;->invalidate()V

    .line 162
    return-void
.end method
