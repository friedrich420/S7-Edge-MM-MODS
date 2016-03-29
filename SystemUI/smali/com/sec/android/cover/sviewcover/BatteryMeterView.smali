.class public Lcom/sec/android/cover/sviewcover/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mBatteryPaint:Landroid/graphics/Paint;

.field private mBlinkingNeeded:Z

.field private final mBoltFrame:Landroid/graphics/RectF;

.field mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field mButtonHeight:I

.field private mButtonPadding:F

.field private final mClipFrame:Landroid/graphics/RectF;

.field mColors:[I

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mInvalidString:Ljava/lang/String;

.field mInvalidTextPaint:Landroid/graphics/Paint;

.field private mIsShowBatteryIcon:Z

.field private mPostInvalidateHandler:Landroid/os/Handler;

.field mShowPercent:Z

.field private mTextHeight:F

.field mTextPaint:Landroid/graphics/Paint;

.field mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 228
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mShowPercent:Z

    .line 79
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 81
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    .line 82
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    .line 83
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    .line 84
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    .line 89
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mIsShowBatteryIcon:Z

    .line 196
    new-instance v6, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;-><init>(Lcom/sec/android/cover/sviewcover/BatteryMeterView;Lcom/sec/android/cover/sviewcover/BatteryMeterView$1;)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    .line 478
    new-instance v6, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;-><init>(Lcom/sec/android/cover/sviewcover/BatteryMeterView;Lcom/sec/android/cover/sviewcover/BatteryMeterView$1;)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    .line 501
    new-instance v6, Lcom/sec/android/cover/sviewcover/BatteryMeterView$1;

    invoke-direct {v6, p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView$1;-><init>(Lcom/sec/android/cover/sviewcover/BatteryMeterView;)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    .line 229
    sget-object v6, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v7, "BatteryMeterView"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 233
    .local v5, "res":Landroid/content/res/Resources;
    const/4 v6, 0x2

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    .line 237
    .local v4, "levels":[I
    const/4 v6, 0x2

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    .line 246
    .local v1, "colors":[I
    array-length v0, v4

    .line 247
    .local v0, "N":I
    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    .line 248
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 249
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    aget v8, v4, v3

    aput v8, v6, v7

    .line 250
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v8, v1, v3

    aput v8, v6, v7

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v6

    const-string v7, "status_bar_show_battery_percent"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mShowPercent:Z

    .line 257
    const-string v6, "!"

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningString:Ljava/lang/String;

    .line 258
    const-string v6, "X"

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    .line 260
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    .line 261
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget v7, Lcom/sec/android/sviewcover/R$color;->batterymeter_frame_color:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 263
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 264
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 267
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 268
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 269
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 270
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 272
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    .line 273
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    const-string v6, "sans-serif-condensed"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 275
    .local v2, "font":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 276
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 278
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 279
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    const-string v6, "sans-serif"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 281
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 282
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 284
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    .line 285
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v7, -0x17cbf7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    const-string v6, "sans-serif"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 287
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 288
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 290
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    .line 291
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 293
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    sget v7, Lcom/sec/android/sviewcover/R$color;->batterymeter_bolt_color:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    .line 295
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 296
    return-void

    .line 253
    .end local v2    # "font":Landroid/graphics/Typeface;
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 233
    :array_0
    .array-data 4
        0x4
        0x64
    .end array-data

    .line 237
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/BatteryMeterView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/BatteryMeterView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getColorForLevel(I)I
    .locals 6
    .param p1, "percent"    # I

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "color":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 331
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    aget v3, v4, v2

    .line 332
    .local v3, "thresh":I
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mColors:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v4, v5

    .line 333
    if-gt p1, v3, :cond_0

    move v1, v0

    .line 336
    .end local v0    # "color":I
    .end local v3    # "thresh":I
    .local v1, "color":I
    :goto_1
    return v1

    .line 330
    .end local v1    # "color":I
    .restart local v0    # "color":I
    .restart local v3    # "thresh":I
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .end local v3    # "thresh":I
    :cond_1
    move v1, v0

    .line 336
    .end local v0    # "color":I
    .restart local v1    # "color":I
    goto :goto_1
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 299
    sget v5, Lcom/sec/android/sviewcover/R$array;->batterymeter_bolt_points:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 300
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 301
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 302
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 303
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 301
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 305
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 306
    .local v4, "ptsF":[F
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 307
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 308
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 309
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 307
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 312
    :cond_1
    sget-object v5, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadBoltPoints : maxX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([FF)V

    .line 316
    :cond_2
    return-object v4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mDemoTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    move-object/from16 v20, v0

    .line 343
    .local v20, "tracker":Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;
    :goto_0
    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->health:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 347
    :cond_0
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBlinkingNeeded:Z

    .line 349
    sget-object v24, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v25, "battery icon blink..."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mPostInvalidateHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const-wide/16 v26, 0x3e8

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 355
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mIsShowBatteryIcon:Z

    move/from16 v24, v0

    if-nez v24, :cond_4

    const/16 v24, 0x1

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mIsShowBatteryIcon:Z

    .line 357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mIsShowBatteryIcon:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    .line 475
    :cond_2
    :goto_2
    return-void

    .line 341
    .end local v20    # "tracker":Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    move-object/from16 v20, v0

    goto/16 :goto_0

    .line 355
    .restart local v20    # "tracker":Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;
    :cond_4
    const/16 v24, 0x0

    goto :goto_1

    .line 361
    :cond_5
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBlinkingNeeded:Z

    .line 365
    :cond_6
    move-object/from16 v0, v20

    iget v14, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    .line 366
    .local v14, "level":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v14, v0, :cond_2

    .line 368
    int-to-float v0, v14

    move/from16 v24, v0

    const/high16 v25, 0x42c80000    # 100.0f

    div-float v11, v24, v25

    .line 369
    .local v11, "drawFrac":F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getPaddingTop()I

    move-result v18

    .line 370
    .local v18, "pt":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getPaddingLeft()I

    move-result v16

    .line 371
    .local v16, "pl":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getPaddingRight()I

    move-result v17

    .line 372
    .local v17, "pr":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getPaddingBottom()I

    move-result v15

    .line 373
    .local v15, "pb":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    sub-int v24, v24, v18

    sub-int v12, v24, v15

    .line 374
    .local v12, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    sub-int v24, v24, v16

    sub-int v21, v24, v17

    .line 376
    .local v21, "width":I
    int-to-float v0, v12

    move/from16 v24, v0

    const v25, 0x3df5c28f    # 0.12f

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonHeight:I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v12

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/RectF;->set(FFFF)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/RectF;->offset(FF)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    sget v25, Lcom/sec/android/sviewcover/R$integer;->battery_button_padding:I

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonPadding:F

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3e800000    # 0.25f

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonPadding:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3e800000    # 0.25f

    mul-float v28, v28, v29

    sub-float v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonPadding:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    const/high16 v29, 0x40a00000    # 5.0f

    add-float v28, v28, v29

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/RectF;->set(FFFF)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    const/16 v26, 0x0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    const/16 v26, 0x0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    const/16 v26, 0x0

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    const/16 v26, 0x0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    const/16 v26, 0x0

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    const/16 v26, 0x0

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    const/16 v26, 0x0

    sub-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getColorForLevel(I)I

    move-result v10

    .line 404
    .local v10, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    sget-object v24, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onDraw batteryColor : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/16 v24, 0x60

    move/from16 v0, v24

    if-lt v14, v0, :cond_9

    .line 408
    const/high16 v11, 0x3f800000    # 1.0f

    .line 413
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v24, v11, v24

    if-nez v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v26

    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v27, v27, v11

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 418
    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 423
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->plugged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->width()F

    move-result v25

    const/high16 v26, 0x40900000    # 4.5f

    div-float v25, v25, v26

    add-float v7, v24, v25

    .line 426
    .local v7, "bl":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/high16 v26, 0x40c00000    # 6.0f

    div-float v25, v25, v26

    add-float v9, v24, v25

    .line 427
    .local v9, "bt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->width()F

    move-result v25

    const/high16 v26, 0x40e00000    # 7.0f

    div-float v25, v25, v26

    sub-float v8, v24, v25

    .line 428
    .local v8, "br":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/high16 v26, 0x41200000    # 10.0f

    div-float v25, v25, v26

    sub-float v6, v24, v25

    .line 429
    .local v6, "bb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v24

    if-eqz v24, :cond_c

    .line 432
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v9, v8, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Path;->reset()V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->height()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->moveTo(FF)V

    .line 436
    const/4 v13, 0x2

    .local v13, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v13, v0, :cond_b

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v27, v0

    add-int/lit8 v28, v13, 0x1

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->height()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->lineTo(FF)V

    .line 436
    add-int/lit8 v13, v13, 0x2

    goto :goto_5

    .line 409
    .end local v6    # "bb":F
    .end local v7    # "bl":F
    .end local v8    # "br":F
    .end local v9    # "bt":F
    .end local v13    # "i":I
    :cond_9
    const/16 v24, 0x4

    move/from16 v0, v24

    if-gt v14, v0, :cond_7

    .line 410
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 413
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    goto/16 :goto_4

    .line 440
    .restart local v6    # "bb":F
    .restart local v7    # "bl":F
    .restart local v8    # "br":F
    .restart local v9    # "bt":F
    .restart local v13    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->height()F

    move-result v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->lineTo(FF)V

    .line 449
    .end local v13    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBlinkingNeeded:Z

    move/from16 v24, v0

    if-nez v24, :cond_d

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 454
    :cond_d
    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->status:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->plugType:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v22, v24, v25

    .line 457
    .local v22, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const v25, 0x3ef5c28f    # 0.48f

    mul-float v23, v24, v25

    .line 458
    .local v23, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidString:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 461
    .end local v6    # "bb":F
    .end local v7    # "bl":F
    .end local v8    # "br":F
    .end local v9    # "bt":F
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_e
    const/16 v24, 0x4

    move/from16 v0, v24

    if-gt v14, v0, :cond_f

    .line 462
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v22, v24, v25

    .line 463
    .restart local v22    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const v25, 0x3ef5c28f    # 0.48f

    mul-float v23, v24, v25

    .line 464
    .restart local v23    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningString:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 465
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mShowPercent:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v24, v0

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    int-to-float v0, v12

    move/from16 v26, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v24, v0

    const/16 v27, 0x64

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    const v24, 0x3ec28f5c    # 0.38f

    :goto_6
    mul-float v24, v24, v26

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v24, v0

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextHeight:F

    .line 470
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 471
    .local v19, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f000000    # 0.5f

    mul-float v22, v24, v25

    .line 472
    .restart local v22    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextHeight:F

    move/from16 v25, v0

    add-float v24, v24, v25

    const v25, 0x3ef0a3d7    # 0.47f

    mul-float v23, v24, v25

    .line 473
    .restart local v23    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 466
    .end local v19    # "str":Ljava/lang/String;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_10
    const/high16 v24, 0x3f000000    # 0.5f

    goto :goto_6
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 200
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 201
    sget-object v2, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v3, "onAttachedToWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 206
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 210
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 215
    sget-object v0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mTracker:Lcom/sec/android/cover/sviewcover/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v2, 0x3f400000    # 0.75f

    .line 321
    iput p2, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mHeight:I

    .line 322
    iput p1, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWidth:I

    .line 323
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 324
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mInvalidTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 325
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/BatteryMeterView;->mWarningTextHeight:F

    .line 326
    return-void
.end method
