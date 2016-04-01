.class public Lin/panic/xperience/CircleRamView;
.super Landroid/widget/ImageView;
.source "CircleRamView.java"


# instance fields
.field private mArcOffset:F

.field private mAttached:Z

.field private mAvailableMemory:Ljava/lang/String;

.field private mCircleSize:I

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHighLevel:J

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mLevel:J

.field private mLowLevel:J

.field private mMediumLevel:J

.field private final mPaintBackground:Landroid/graphics/Paint;

.field private final mPaintGreen:Landroid/graphics/Paint;

.field private final mPaintOrange:Landroid/graphics/Paint;

.field private final mPaintRed:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mRectLeft:Landroid/graphics/RectF;

.field private mTextArc:Landroid/graphics/Path;

.field private mTotalMemory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lin/panic/xperience/CircleRamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lin/panic/xperience/CircleRamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v7, 0x44

    const/16 v6, 0xaa

    const/4 v5, 0x1

    const/16 v4, 0xff

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Lin/panic/xperience/CircleRamView$1;

    invoke-direct {v0, p0}, Lin/panic/xperience/CircleRamView$1;-><init>(Lin/panic/xperience/CircleRamView;)V

    iput-object v0, p0, Lin/panic/xperience/CircleRamView;->mInvalidate:Ljava/lang/Runnable;

    .line 84
    iput-object p1, p0, Lin/panic/xperience/CircleRamView;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lin/panic/xperience/CircleRamView;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 93
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintBackground:Landroid/graphics/Paint;

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintGreen:Landroid/graphics/Paint;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintOrange:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintRed:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintBackground:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 101
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintGreen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 102
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintOrange:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 103
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintRed:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 105
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintBackground:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintGreen:Landroid/graphics/Paint;

    const/16 v1, 0xa6

    const/16 v2, 0xc6

    const/16 v3, 0x3d

    invoke-static {v6, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintOrange:Landroid/graphics/Paint;

    const/16 v1, 0xbb

    const/16 v2, 0x33

    invoke-static {v6, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintRed:Landroid/graphics/Paint;

    invoke-static {v6, v4, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 112
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 114
    return-void
.end method

.method static synthetic access$0(Lin/panic/xperience/CircleRamView;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lin/panic/xperience/CircleRamView;->mAttached:Z

    return v0
.end method

.method static synthetic access$1(Lin/panic/xperience/CircleRamView;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lin/panic/xperience/CircleRamView;->update()V

    return-void
.end method

.method static synthetic access$2(Lin/panic/xperience/CircleRamView;)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lin/panic/xperience/CircleRamView;->updateMemoryInfo()V

    return-void
.end method

.method private getLevel()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lin/panic/xperience/CircleRamView;->mLevel:J

    return-wide v0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x43340000    # 180.0f

    const/high16 v8, 0x40000000    # 2.0f

    .line 223
    iget v3, p0, Lin/panic/xperience/CircleRamView;->mCircleSize:I

    if-nez v3, :cond_0

    .line 224
    invoke-direct {p0}, Lin/panic/xperience/CircleRamView;->initSizeMeasureIconHeight()V

    .line 227
    :cond_0
    iget v3, p0, Lin/panic/xperience/CircleRamView;->mCircleSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40d00000    # 6.5f

    div-float v2, v3, v4

    .line 228
    .local v2, "strokeWidth":F
    const/high16 v3, 0x3fc00000    # 1.5f

    div-float v0, v2, v3

    .line 229
    .local v0, "levelStrokeWidth":F
    iget-object v3, p0, Lin/panic/xperience/CircleRamView;->mPaintRed:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 230
    iget-object v3, p0, Lin/panic/xperience/CircleRamView;->mPaintGreen:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 231
    iget-object v3, p0, Lin/panic/xperience/CircleRamView;->mPaintOrange:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget-object v3, p0, Lin/panic/xperience/CircleRamView;->mPaintBackground:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 235
    invoke-virtual {p0}, Lin/panic/xperience/CircleRamView;->getPaddingLeft()I

    move-result v1

    .line 236
    .local v1, "pLeft":I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    div-float v5, v2, v8

    add-float/2addr v4, v5

    const/4 v5, 0x0

    div-float v6, v2, v8

    add-float/2addr v5, v6

    iget v6, p0, Lin/panic/xperience/CircleRamView;->mCircleSize:I

    int-to-float v6, v6

    .line 237
    div-float v7, v2, v8

    sub-float/2addr v6, v7

    int-to-float v7, v1

    add-float/2addr v6, v7

    iget v7, p0, Lin/panic/xperience/CircleRamView;->mCircleSize:I

    int-to-float v7, v7

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 236
    iput-object v3, p0, Lin/panic/xperience/CircleRamView;->mRectLeft:Landroid/graphics/RectF;

    .line 239
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lin/panic/xperience/CircleRamView;->mTextArc:Landroid/graphics/Path;

    .line 240
    iget-object v3, p0, Lin/panic/xperience/CircleRamView;->mTextArc:Landroid/graphics/Path;

    iget-object v4, p0, Lin/panic/xperience/CircleRamView;->mRectLeft:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v9, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 241
    iget-object v3, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 242
    sub-float v3, v2, v0

    iput v3, p0, Lin/panic/xperience/CircleRamView;->mArcOffset:F

    .line 245
    invoke-virtual {p0, v10, v10}, Lin/panic/xperience/CircleRamView;->onMeasure(II)V

    .line 246
    return-void
.end method

.method private initSizeMeasureIconHeight()V
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lin/panic/xperience/CircleRamView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lin/panic/xperience/CircleRamView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lin/panic/xperience/CircleRamView;->mCircleSize:I

    .line 250
    return-void
.end method

.method private setCurrentLevel(J)V
    .locals 3
    .param p1, "level"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lin/panic/xperience/CircleRamView;->mLevel:J

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v1, 0x100000

    div-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/panic/xperience/CircleRamView;->mAvailableMemory:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private setLevels(JJJ)V
    .locals 0
    .param p1, "lowLevel"    # J
    .param p3, "mediumLevel"    # J
    .param p5, "highLevel"    # J

    .prologue
    .line 117
    iput-wide p1, p0, Lin/panic/xperience/CircleRamView;->mLowLevel:J

    .line 118
    iput-wide p3, p0, Lin/panic/xperience/CircleRamView;->mMediumLevel:J

    .line 119
    iput-wide p5, p0, Lin/panic/xperience/CircleRamView;->mHighLevel:J

    .line 120
    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lin/panic/xperience/CircleRamView$2;

    invoke-direct {v0, p0}, Lin/panic/xperience/CircleRamView$2;-><init>(Lin/panic/xperience/CircleRamView;)V

    .line 175
    const-wide/16 v1, 0x1f4

    .line 170
    invoke-virtual {p0, v0, v1, v2}, Lin/panic/xperience/CircleRamView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    return-void
.end method

.method private updateMemoryInfo()V
    .locals 8

    .prologue
    .line 179
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 180
    .local v3, "mi":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v4, p0, Lin/panic/xperience/CircleRamView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 181
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 182
    iget-wide v1, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 183
    .local v1, "free":J
    invoke-direct {p0, v1, v2}, Lin/panic/xperience/CircleRamView;->setCurrentLevel(J)V

    .line 184
    iget-object v4, p0, Lin/panic/xperience/CircleRamView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lin/panic/xperience/CircleRamView;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v4, p0, Lin/panic/xperience/CircleRamView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lin/panic/xperience/CircleRamView;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    return-void
.end method


# virtual methods
.method drawCircle(Landroid/graphics/Canvas;JLandroid/graphics/RectF;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "level"    # J
    .param p4, "drawRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v4, 0x0

    .line 191
    iget-wide v0, p0, Lin/panic/xperience/CircleRamView;->mLowLevel:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 192
    iget-object v7, p0, Lin/panic/xperience/CircleRamView;->mPaintRed:Landroid/graphics/Paint;

    .line 198
    .local v7, "usePaint":Landroid/graphics/Paint;
    :goto_0
    long-to-float v0, p2

    iget-wide v1, p0, Lin/panic/xperience/CircleRamView;->mHighLevel:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 201
    .local v6, "normalizedLevel":I
    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lin/panic/xperience/CircleRamView;->mPaintBackground:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 203
    const/high16 v2, 0x43340000    # 180.0f

    const v0, 0x40666666    # 3.6f

    int-to-float v1, v6

    mul-float v3, v0, v1

    move-object v0, p1

    move-object v1, p4

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lin/panic/xperience/CircleRamView;->mAvailableMemory:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lin/panic/xperience/CircleRamView;->mTotalMemory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lin/panic/xperience/CircleRamView;->mTextArc:Landroid/graphics/Path;

    const/4 v3, 0x0

    iget v4, p0, Lin/panic/xperience/CircleRamView;->mArcOffset:F

    iget-object v5, p0, Lin/panic/xperience/CircleRamView;->mPaintText:Landroid/graphics/Paint;

    move-object v0, p1

    .line 204
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 206
    return-void

    .line 193
    .end local v6    # "normalizedLevel":I
    .end local v7    # "usePaint":Landroid/graphics/Paint;
    :cond_0
    iget-wide v0, p0, Lin/panic/xperience/CircleRamView;->mMediumLevel:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 194
    iget-object v7, p0, Lin/panic/xperience/CircleRamView;->mPaintOrange:Landroid/graphics/Paint;

    .restart local v7    # "usePaint":Landroid/graphics/Paint;
    goto :goto_0

    .line 196
    .end local v7    # "usePaint":Landroid/graphics/Paint;
    :cond_1
    iget-object v7, p0, Lin/panic/xperience/CircleRamView;->mPaintGreen:Landroid/graphics/Paint;

    .restart local v7    # "usePaint":Landroid/graphics/Paint;
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 134
    iget-boolean v0, p0, Lin/panic/xperience/CircleRamView;->mAttached:Z

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/panic/xperience/CircleRamView;->mAttached:Z

    .line 136
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lin/panic/xperience/CircleRamView;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 143
    iget-boolean v0, p0, Lin/panic/xperience/CircleRamView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 144
    iput-boolean v1, p0, Lin/panic/xperience/CircleRamView;->mAttached:Z

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lin/panic/xperience/CircleRamView;->mRectLeft:Landroid/graphics/RectF;

    .line 147
    iput v1, p0, Lin/panic/xperience/CircleRamView;->mCircleSize:I

    .line 150
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 210
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mRectLeft:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0}, Lin/panic/xperience/CircleRamView;->init()V

    .line 214
    :cond_0
    invoke-direct {p0}, Lin/panic/xperience/CircleRamView;->updateMemoryInfo()V

    .line 215
    invoke-direct {p0}, Lin/panic/xperience/CircleRamView;->getLevel()J

    move-result-wide v0

    iget-object v2, p0, Lin/panic/xperience/CircleRamView;->mRectLeft:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0, v1, v2}, Lin/panic/xperience/CircleRamView;->drawCircle(Landroid/graphics/Canvas;JLandroid/graphics/RectF;)V

    .line 216
    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 156
    new-instance v10, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v10}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 157
    .local v10, "mi":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v0, p0, Lin/panic/xperience/CircleRamView;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 158
    .local v7, "am":Landroid/app/ActivityManager;
    invoke-virtual {v7, v10}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 159
    iget-wide v8, v10, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 163
    .local v8, "free":J
    iget-wide v5, v10, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 164
    .local v5, "total":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v1, 0x100000

    div-long v1, v5, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/panic/xperience/CircleRamView;->mTotalMemory:Ljava/lang/String;

    .line 165
    long-to-float v0, v5

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-long v1, v0

    long-to-float v0, v5

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    float-to-long v3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lin/panic/xperience/CircleRamView;->setLevels(JJJ)V

    .line 166
    invoke-direct {p0, v8, v9}, Lin/panic/xperience/CircleRamView;->setCurrentLevel(J)V

    .line 167
    return-void
.end method
