.class public Lcom/android/systemui/egg/MLand;
.super Landroid/widget/FrameLayout;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/egg/MLand$Star;,
        Lcom/android/systemui/egg/MLand$Cloud;,
        Lcom/android/systemui/egg/MLand$Mountain;,
        Lcom/android/systemui/egg/MLand$Cactus;,
        Lcom/android/systemui/egg/MLand$Building;,
        Lcom/android/systemui/egg/MLand$Scenery;,
        Lcom/android/systemui/egg/MLand$Stem;,
        Lcom/android/systemui/egg/MLand$Pop;,
        Lcom/android/systemui/egg/MLand$Obstacle;,
        Lcom/android/systemui/egg/MLand$Player;,
        Lcom/android/systemui/egg/MLand$GameView;,
        Lcom/android/systemui/egg/MLand$Params;
    }
.end annotation


# static fields
.field static final ANTENNAE:[I

.field static final CACTI:[I

.field public static final DEBUG:Z

.field public static final DEBUG_IDDQD:Z

.field static final EYES:[I

.field static final MOUNTAINS:[I

.field static final MOUTHS:[I

.field private static PARAMS:Lcom/android/systemui/egg/MLand$Params;

.field private static final SKIES:[[I

.field private static dp:F

.field static final hsv:[F

.field static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private dt:F

.field private mAnim:Landroid/animation/TimeAnimator;

.field private mAnimating:Z

.field private final mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCountdown:I

.field private mCurrentPipeId:I

.field private mFlipped:Z

.field private mFrozen:Z

.field private mGameControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mLastPipeTime:F

.field private mObstaclesInPlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/egg/MLand$Obstacle;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerTracePaint:Landroid/graphics/Paint;

.field private mPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/egg/MLand$Player;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaying:Z

.field private mScene:I

.field private mScoreFields:Landroid/view/ViewGroup;

.field private mSplash:Landroid/view/View;

.field private mTaps:I

.field private mTimeOfDay:I

.field private mTouchPaint:Landroid/graphics/Paint;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWidth:I

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 61
    const-string v0, "MLand"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    .line 78
    const-string v0, "MLand.iddqd"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    .line 164
    new-array v0, v5, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    .line 177
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    .line 298
    new-array v0, v4, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/egg/MLand;->hsv:[F

    .line 1004
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/egg/MLand;->sTmpRect:Landroid/graphics/Rect;

    .line 1234
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/egg/MLand;->ANTENNAE:[I

    .line 1235
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/egg/MLand;->EYES:[I

    .line 1236
    new-array v0, v5, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/egg/MLand;->MOUTHS:[I

    .line 1401
    new-array v0, v4, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/systemui/egg/MLand;->CACTI:[I

    .line 1411
    new-array v0, v4, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui/egg/MLand;->MOUNTAINS:[I

    return-void

    .line 164
    nop

    :array_0
    .array-data 4
        -0x3f3f01
        -0x5f5f01
    .end array-data

    :array_1
    .array-data 4
        -0xfffff0
        -0x1000000
    .end array-data

    :array_2
    .array-data 4
        -0xffffc0
        -0xfffff0
    .end array-data

    :array_3
    .array-data 4
        -0x5f7fe0
        -0xdfbf80
    .end array-data

    .line 298
    :array_4
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 1234
    :array_5
    .array-data 4
        0x7f0202f3
        0x7f0202f4
    .end array-data

    .line 1235
    :array_6
    .array-data 4
        0x7f0202f5
        0x7f0202f6
    .end array-data

    .line 1236
    :array_7
    .array-data 4
        0x7f0202f8
        0x7f0202f9
        0x7f0202fa
        0x7f0202fb
    .end array-data

    .line 1401
    :array_8
    .array-data 4
        0x7f020031
        0x7f020032
        0x7f020033
    .end array-data

    .line 1411
    :array_9
    .array-data 4
        0x7f0202fd
        0x7f0202fe
        0x7f0202ff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/egg/MLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/egg/MLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v2, -0x7f000001

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    .line 157
    iput v4, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    .line 194
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mVibrator:Landroid/os/Vibrator;

    .line 195
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mAudioManager:Landroid/media/AudioManager;

    .line 196
    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLand;->setFocusable(Z)V

    .line 197
    new-instance v0, Lcom/android/systemui/egg/MLand$Params;

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/MLand$Params;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    .line 198
    sget-object v0, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    .line 199
    const/4 v0, 0x3

    invoke-static {v4, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    .line 201
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    .line 206
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    sget v2, Lcom/android/systemui/egg/MLand;->dp:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    invoke-virtual {p0, v4}, Lcom/android/systemui/egg/MLand;->setLayoutDirection(I)V

    .line 213
    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLand;->setupPlayers(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "egg_mland_create"

    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 216
    return-void
.end method

.method public static varargs L(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "MLand"

    array-length v1, p1

    if-nez v1, :cond_1

    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void

    .line 68
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/egg/MLand;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/egg/MLand;->step(JJ)V

    return-void
.end method

.method static synthetic access$1000()Lcom/android/systemui/egg/MLand$Params;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    return-object v0
.end method

.method static synthetic access$1100(I)F
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/systemui/egg/MLand;->luma(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/egg/MLand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/egg/MLand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/egg/MLand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/systemui/egg/MLand;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/egg/MLand;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/egg/MLand;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/egg/MLand;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    return p1
.end method

.method private addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I
    .locals 5
    .param p1, "p"    # Lcom/android/systemui/egg/MLand$Player;

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040044

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 315
    .local v0, "scoreField":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/egg/MLand$Player;->setScoreField(Landroid/widget/TextView;)V

    .line 322
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public static final clamp(F)F
    .locals 3
    .param p0, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 638
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .end local p0    # "f":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "f":F
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method private clearPlayers()V
    .locals 2

    .prologue
    .line 344
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V

    goto :goto_0

    .line 347
    :cond_0
    return-void
.end method

.method public static final frand()F
    .locals 2

    .prologue
    .line 642
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final frand(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 646
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/android/systemui/egg/MLand;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static final irand(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 650
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static isGamePad(Landroid/view/InputDevice;)Z
    .locals 4
    .param p0, "dev"    # Landroid/view/InputDevice;

    .prologue
    const v3, 0x1000010

    .line 259
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    .line 262
    .local v0, "sources":I
    and-int/lit16 v1, v0, 0x401

    const/16 v2, 0x401

    if-eq v1, v2, :cond_0

    and-int v1, v0, v3

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final lerp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 630
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private static luma(I)F
    .locals 3
    .param p0, "bgcolor"    # I

    .prologue
    .line 301
    const v0, 0x3e59b3d0    # 0.2126f

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4b7f0000    # 1.671168E7f

    div-float/2addr v0, v1

    const v1, 0x3f371759    # 0.7152f

    const v2, 0xff00

    and-int/2addr v2, p0

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x477f0000    # 65280.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3d93dd98    # 0.0722f

    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static pick([I)I
    .locals 2
    .param p0, "l"    # [I

    .prologue
    .line 654
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    aget v0, p0, v0

    return v0
.end method

.method private poke(I)V
    .locals 1
    .param p1, "playerIndex"    # I

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 904
    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/egg/MLand;->poke(IFF)V

    .line 905
    return-void
.end method

.method private poke(IFF)V
    .locals 6
    .param p1, "playerIndex"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x1

    .line 908
    const-string v1, "poke(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    if-eqz v1, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-nez v1, :cond_2

    .line 911
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    .line 913
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-nez v1, :cond_3

    .line 914
    invoke-virtual {p0, v5}, Lcom/android/systemui/egg/MLand;->start(Z)V

    goto :goto_0

    .line 916
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    .line 917
    .local v0, "p":Lcom/android/systemui/egg/MLand$Player;
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/egg/MLand$Player;->boost(FF)V

    .line 919
    iget v1, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    .line 920
    sget-boolean v1, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 921
    iget v1, v0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    .line 922
    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private realignPlayers()V
    .locals 7

    .prologue
    .line 334
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 335
    .local v0, "N":I
    iget v4, p0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/lit8 v5, v0, -0x1

    sget-object v6, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v6, v6, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v3, v4

    .line 336
    .local v3, "x":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 337
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/egg/MLand$Player;

    .line 338
    .local v2, "p":Lcom/android/systemui/egg/MLand$Player;
    invoke-virtual {v2, v3}, Lcom/android/systemui/egg/MLand$Player;->setX(F)V

    .line 339
    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_0
    return-void
.end method

.method private removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V
    .locals 2
    .param p1, "p"    # Lcom/android/systemui/egg/MLand$Player;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->removeView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/systemui/egg/MLand$Player;->access$000(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    .line 331
    :cond_0
    return-void
.end method

.method public static final rlerp(FFF)F
    .locals 2
    .param p0, "v"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 634
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private step(JJ)V
    .locals 31
    .param p1, "t_ms"    # J
    .param p3, "dt_ms"    # J

    .prologue
    .line 658
    move-wide/from16 v0, p1

    long-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    .line 659
    move-wide/from16 v0, p3

    long-to-float v3, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->dt:F

    .line 661
    sget-boolean v3, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 662
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    .line 663
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->dt:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->dt:F

    .line 667
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getChildCount()I

    move-result v2

    .line 668
    .local v2, "N":I
    const/4 v12, 0x0

    .line 669
    .local v12, "i":I
    :goto_0
    if-ge v12, v2, :cond_2

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 671
    .local v29, "v":Landroid/view/View;
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$GameView;

    if-eqz v3, :cond_1

    move-object/from16 v3, v29

    .line 672
    check-cast v3, Lcom/android/systemui/egg/MLand$GameView;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/egg/MLand;->dt:F

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v3 .. v9}, Lcom/android/systemui/egg/MLand$GameView;->step(JJFF)V

    .line 669
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 676
    .end local v29    # "v":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-eqz v3, :cond_f

    .line 677
    const/16 v17, 0x0

    .line 678
    .local v17, "livingPlayers":I
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v12, v3, :cond_a

    .line 679
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v21

    .line 681
    .local v21, "p":Lcom/android/systemui/egg/MLand$Player;
    # getter for: Lcom/android/systemui/egg/MLand$Player;->mAlive:Z
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->access$500(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 683
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Player;->below(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 684
    sget-boolean v3, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-eqz v3, :cond_5

    .line 685
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/egg/MLand;->poke(I)V

    .line 686
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    .line 695
    :cond_3
    :goto_2
    const/16 v18, 0x0

    .line 696
    .local v18, "maxPassedStem":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "j":I
    move/from16 v16, v15

    .end local v15    # "j":I
    .local v16, "j":I
    :goto_3
    add-int/lit8 v15, v16, -0x1

    .end local v16    # "j":I
    .restart local v15    # "j":I
    if-lez v16, :cond_7

    .line 697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/egg/MLand$Obstacle;

    .line 698
    .local v19, "ob":Lcom/android/systemui/egg/MLand$Obstacle;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Obstacle;->intersects(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-nez v3, :cond_6

    .line 699
    const-string v3, "player hit an obstacle"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    const-wide/16 v4, 0x50

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4, v5}, Lcom/android/systemui/egg/MLand;->thump(IJ)V

    .line 701
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->die()V

    .end local v19    # "ob":Lcom/android/systemui/egg/MLand$Obstacle;
    :cond_4
    :goto_4
    move/from16 v16, v15

    .line 707
    .end local v15    # "j":I
    .restart local v16    # "j":I
    goto :goto_3

    .line 688
    .end local v16    # "j":I
    .end local v18    # "maxPassedStem":I
    :cond_5
    const-string v3, "player %d hit the floor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    const-wide/16 v4, 0x50

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4, v5}, Lcom/android/systemui/egg/MLand;->thump(IJ)V

    .line 690
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_2

    .line 702
    .restart local v15    # "j":I
    .restart local v18    # "maxPassedStem":I
    .restart local v19    # "ob":Lcom/android/systemui/egg/MLand$Obstacle;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Obstacle;->cleared(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 703
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$Stem;

    if-eqz v3, :cond_4

    .line 704
    check-cast v19, Lcom/android/systemui/egg/MLand$Stem;

    .end local v19    # "ob":Lcom/android/systemui/egg/MLand$Obstacle;
    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/systemui/egg/MLand$Stem;->id:I

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    goto :goto_4

    .line 709
    :cond_7
    # getter for: Lcom/android/systemui/egg/MLand$Player;->mScore:I
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->access$600(Lcom/android/systemui/egg/MLand$Player;)I

    move-result v3

    move/from16 v0, v18

    if-le v0, v3, :cond_8

    .line 710
    const/4 v3, 0x1

    move-object/from16 v0, v21

    # invokes: Lcom/android/systemui/egg/MLand$Player;->addScore(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/egg/MLand$Player;->access$700(Lcom/android/systemui/egg/MLand$Player;I)V

    .line 714
    .end local v15    # "j":I
    .end local v18    # "maxPassedStem":I
    :cond_8
    # getter for: Lcom/android/systemui/egg/MLand$Player;->mAlive:Z
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->access$500(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v17, v17, 0x1

    .line 678
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 717
    .end local v21    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_a
    if-nez v17, :cond_f

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->stop()V

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "egg_mland_taps"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/egg/MLand;->mTaps:I

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 721
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->mTaps:I

    .line 722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 723
    .local v25, "playerCount":I
    const/16 v24, 0x0

    .local v24, "pi":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/egg/MLand$Player;

    .line 725
    .restart local v21    # "p":Lcom/android/systemui/egg/MLand$Player;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "egg_mland_score"

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/egg/MLand$Player;->getScore()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 723
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 732
    .end local v12    # "i":I
    .end local v17    # "livingPlayers":I
    .end local v21    # "p":Lcom/android/systemui/egg/MLand$Player;
    .end local v24    # "pi":I
    .end local v25    # "playerCount":I
    .local v13, "i":I
    :goto_6
    add-int/lit8 v12, v13, -0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    if-lez v13, :cond_d

    .line 733
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 734
    .restart local v29    # "v":Landroid/view/View;
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$Obstacle;

    if-eqz v3, :cond_c

    .line 735
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 736
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/egg/MLand;->removeViewAt(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    :goto_7
    move v13, v12

    .line 745
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_6

    .line 739
    .end local v13    # "i":I
    .restart local v12    # "i":I
    :cond_c
    move-object/from16 v0, v29

    instance-of v3, v0, Lcom/android/systemui/egg/MLand$Scenery;

    if-eqz v3, :cond_b

    move-object/from16 v26, v29

    .line 740
    check-cast v26, Lcom/android/systemui/egg/MLand$Scenery;

    .line 741
    .local v26, "s":Lcom/android/systemui/egg/MLand$Scenery;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTranslationX()F

    move-result v3

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_7

    .line 748
    .end local v26    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    .end local v29    # "v":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_e

    .line 749
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    .line 750
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    .line 751
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    add-int v20, v3, v4

    .line 755
    .local v20, "obstacley":I
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    sub-int/2addr v3, v4

    div-int/lit8 v14, v3, 0x2

    .line 756
    .local v14, "inset":I
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    div-int/lit8 v30, v3, 0x2

    .line 758
    .local v30, "yinset":I
    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v10

    .line 759
    .local v10, "d1":I
    new-instance v27, Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sub-int v4, v20, v30

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui/egg/MLand$Stem;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V

    .line 760
    .local v27, "s1":Lcom/android/systemui/egg/MLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    float-to-int v5, v5

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    .line 765
    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    neg-float v3, v3

    move/from16 v0, v30

    int-to-float v4, v0

    sub-float/2addr v3, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    .line 766
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    .line 767
    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v10

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    new-instance v22, Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    .line 774
    .local v22, "p1":Lcom/android/systemui/egg/MLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    .line 779
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    .line 780
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    .line 781
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleX(F)V

    .line 782
    const/high16 v3, -0x41800000    # -0.25f

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleY(F)V

    .line 783
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    int-to-float v5, v14

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v10

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v11

    .line 792
    .local v11, "d2":I
    new-instance v28, Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sub-int v4, v4, v20

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v5

    sub-int v4, v4, v30

    int-to-float v4, v4

    const/4 v5, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/systemui/egg/MLand$Stem;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V

    .line 795
    .local v28, "s2":Lcom/android/systemui/egg/MLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    float-to-int v5, v5

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    .line 800
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    add-int v3, v3, v30

    int-to-float v3, v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    .line 801
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    .line 802
    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v11

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    new-instance v23, Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    .line 809
    .local v23, "p2":Lcom/android/systemui/egg/MLand$Obstacle;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    const/16 v6, 0x33

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    .line 814
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    .line 815
    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    .line 816
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleX(F)V

    .line 817
    const/high16 v3, 0x3e800000    # 0.25f

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleY(F)V

    .line 818
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v4, v4

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    sub-float/2addr v4, v5

    move/from16 v0, v30

    int-to-float v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v11

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    .end local v10    # "d1":I
    .end local v11    # "d2":I
    .end local v14    # "inset":I
    .end local v20    # "obstacley":I
    .end local v22    # "p1":Lcom/android/systemui/egg/MLand$Obstacle;
    .end local v23    # "p2":Lcom/android/systemui/egg/MLand$Obstacle;
    .end local v27    # "s1":Lcom/android/systemui/egg/MLand$Obstacle;
    .end local v28    # "s2":Lcom/android/systemui/egg/MLand$Obstacle;
    .end local v30    # "yinset":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->invalidate()V

    .line 828
    return-void

    :cond_f
    move v13, v12

    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_6
.end method

.method private thump(IJ)V
    .locals 6
    .param p1, "playerIndex"    # I
    .param p2, "ms"    # J

    .prologue
    .line 371
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 386
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 377
    .local v0, "controllerId":I
    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 378
    .local v1, "dev":Landroid/view/InputDevice;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v2

    long-to-float v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-long v4, v3

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0

    .line 385
    .end local v0    # "controllerId":I
    .end local v1    # "dev":Landroid/view/InputDevice;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v2, p2, p3, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0
.end method

.method private unpoke(I)V
    .locals 5
    .param p1, "playerIndex"    # I

    .prologue
    .line 928
    const-string v1, "unboost(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-nez v1, :cond_1

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    .line 931
    .local v0, "p":Lcom/android/systemui/egg/MLand$Player;
    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->unboost()V

    goto :goto_0
.end method


# virtual methods
.method public addPlayer()V
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/egg/MLand$Player;->create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I

    goto :goto_0
.end method

.method public getControllerPlayer(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 282
    .local v0, "player":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 283
    .end local v0    # "player":I
    :cond_1
    return v0
.end method

.method public getGameControllers()Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 267
    iget-object v6, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 268
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    .line 269
    .local v3, "deviceIds":[I
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v2, v0, v4

    .line 270
    .local v2, "deviceId":I
    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 271
    .local v1, "dev":Landroid/view/InputDevice;
    invoke-static {v1}, Lcom/android/systemui/egg/MLand;->isGamePad(Landroid/view/InputDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 272
    iget-object v6, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 273
    iget-object v6, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "dev":Landroid/view/InputDevice;
    .end local v2    # "deviceId":I
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    return-object v6
.end method

.method public getGameTime()F
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/systemui/egg/MLand;->t:F

    return v0
.end method

.method public getNumPlayers()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPlayer(I)Lcom/android/systemui/egg/MLand$Player;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideSplash()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 558
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/egg/MLand$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/egg/MLand$3;-><init>(Lcom/android/systemui/egg/MLand;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 569
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->start(Z)V

    .line 227
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 937
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/egg/MLand$Player;

    .line 941
    .local v10, "p":Lcom/android/systemui/egg/MLand$Player;
    # getter for: Lcom/android/systemui/egg/MLand$Player;->mTouchX:F
    invoke-static {v10}, Lcom/android/systemui/egg/MLand$Player;->access$800(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v2

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_0

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    const v7, -0x7f000001

    iget v11, v10, Lcom/android/systemui/egg/MLand$Player;->color:I

    and-int/2addr v7, v11

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    const v7, -0x7f000001

    iget v11, v10, Lcom/android/systemui/egg/MLand$Player;->color:I

    and-int/2addr v7, v11

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 944
    # getter for: Lcom/android/systemui/egg/MLand$Player;->mTouchX:F
    invoke-static {v10}, Lcom/android/systemui/egg/MLand$Player;->access$800(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v3

    .line 945
    .local v3, "x1":F
    # getter for: Lcom/android/systemui/egg/MLand$Player;->mTouchY:F
    invoke-static {v10}, Lcom/android/systemui/egg/MLand$Player;->access$900(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v4

    .line 946
    .local v4, "y1":F
    const/high16 v2, 0x42c80000    # 100.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 947
    invoke-virtual {v10}, Lcom/android/systemui/egg/MLand$Player;->getX()F

    move-result v2

    invoke-virtual {v10}, Lcom/android/systemui/egg/MLand$Player;->getPivotX()F

    move-result v7

    add-float v5, v2, v7

    .line 948
    .local v5, "x2":F
    invoke-virtual {v10}, Lcom/android/systemui/egg/MLand$Player;->getY()F

    move-result v2

    invoke-virtual {v10}, Lcom/android/systemui/egg/MLand$Player;->getPivotY()F

    move-result v7

    add-float v6, v2, v7

    .line 949
    .local v6, "y2":F
    const v2, 0x3fc90fdb

    sub-float v7, v5, v3

    float-to-double v12, v7

    sub-float v7, v6, v4

    float-to-double v14, v7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    double-to-float v7, v12

    sub-float v8, v2, v7

    .line 950
    .local v8, "angle":F
    float-to-double v12, v3

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v3, v12

    .line 951
    float-to-double v12, v4

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    float-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v4, v12

    .line 952
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 957
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    .end local v5    # "x2":F
    .end local v6    # "y2":F
    .end local v8    # "angle":F
    .end local v10    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 899
    const-string v0, "generic: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 867
    const-string v3, "keyDown: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 878
    :goto_0
    return v1

    .line 874
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLand;->getControllerPlayer(I)I

    move-result v0

    .line 875
    .local v0, "player":I
    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->poke(I)V

    goto :goto_0

    .line 868
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 883
    const-string v3, "keyDown: %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 894
    :goto_0
    return v1

    .line 890
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLand;->getControllerPlayer(I)I

    move-result v0

    .line 891
    .local v0, "player":I
    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    goto :goto_0

    .line 884
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->stop()V

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->start(Z)V

    .line 296
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 832
    const-string v6, "touch: %s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v5

    invoke-static {v6, v7}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 834
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 835
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 836
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v2, v7

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 837
    .local v1, "playerIndex":I
    iget-boolean v6, p0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v1

    .line 838
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v4, v5

    .line 848
    :goto_0
    return v4

    .line 841
    :pswitch_1
    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/egg/MLand;->poke(IFF)V

    goto :goto_0

    .line 845
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    goto :goto_0

    .line 838
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 853
    const-string v2, "trackball: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 862
    :goto_0
    return v0

    .line 856
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/systemui/egg/MLand;->poke(I)V

    goto :goto_0

    .line 859
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    goto :goto_0

    .line 854
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removePlayer()V
    .locals 2

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 30

    .prologue
    .line 389
    const-string v25, "reset"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    new-instance v21, Landroid/graphics/drawable/GradientDrawable;

    sget-object v25, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v26, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 394
    .local v21, "sky":Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 395
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 397
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    const/high16 v26, 0x3f000000    # 0.5f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_1

    const/16 v25, 0x1

    :goto_0
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    .line 398
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    move/from16 v25, v0

    if-eqz v25, :cond_2

    const/high16 v25, -0x40800000    # -1.0f

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->setScaleX(F)V

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getChildCount()I

    move-result v10

    .local v10, "i":I
    move v11, v10

    .line 401
    .end local v10    # "i":I
    .local v11, "i":I
    :goto_2
    add-int/lit8 v10, v11, -0x1

    .end local v11    # "i":I
    .restart local v10    # "i":I
    if-lez v11, :cond_3

    .line 402
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 403
    .local v23, "v":Landroid/view/View;
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/systemui/egg/MLand$GameView;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 404
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/egg/MLand;->removeViewAt(I)V

    :cond_0
    move v11, v10

    .line 406
    .end local v10    # "i":I
    .restart local v11    # "i":I
    goto :goto_2

    .line 397
    .end local v11    # "i":I
    .end local v23    # "v":Landroid/view/View;
    :cond_1
    const/16 v25, 0x0

    goto :goto_0

    .line 398
    :cond_2
    const/high16 v25, 0x3f800000    # 1.0f

    goto :goto_1

    .line 408
    .restart local v10    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 409
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/MLand;->mWidth:I

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getHeight()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/egg/MLand;->mHeight:I

    .line 414
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    :cond_4
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fd0000000000000L    # 0.25

    cmpl-double v25, v26, v28

    if-lez v25, :cond_b

    const/16 v20, 0x1

    .line 415
    .local v20, "showingSun":Z
    :goto_3
    if-eqz v20, :cond_5

    .line 416
    new-instance v22, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 417
    .local v22, "sun":Lcom/android/systemui/egg/MLand$Star;
    const v25, 0x7f0205cb

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setBackgroundResource(I)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c0325

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 419
    .local v24, "w":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setTranslationX(F)V

    .line 420
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    if-nez v25, :cond_c

    .line 421
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x3f28f5c3    # 0.66f

    mul-float v26, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    .line 422
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 429
    :goto_4
    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    .end local v22    # "sun":Lcom/android/systemui/egg/MLand$Star;
    .end local v24    # "w":I
    :cond_5
    if-nez v20, :cond_9

    .line 432
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    :cond_6
    const/4 v8, 0x1

    .line 433
    .local v8, "dark":Z
    :goto_5
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v9

    .line 434
    .local v9, "ff":F
    if-eqz v8, :cond_7

    const/high16 v25, 0x3f400000    # 0.75f

    cmpg-float v25, v9, v25

    if-ltz v25, :cond_8

    :cond_7
    const/high16 v25, 0x3f000000    # 0.5f

    cmpg-float v25, v9, v25

    if-gez v25, :cond_9

    .line 435
    :cond_8
    new-instance v15, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 436
    .local v15, "moon":Lcom/android/systemui/egg/MLand$Star;
    const v25, 0x7f0202fc

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/systemui/egg/MLand$Star;->setBackgroundResource(I)V

    .line 437
    invoke-virtual {v15}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    if-eqz v8, :cond_e

    const/16 v25, 0xff

    :goto_6
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 438
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    cmpl-double v25, v26, v28

    if-lez v25, :cond_f

    const/high16 v25, -0x40800000    # -1.0f

    :goto_7
    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/systemui/egg/MLand$Star;->setScaleX(F)V

    .line 439
    invoke-virtual {v15}, Lcom/android/systemui/egg/MLand$Star;->getScaleX()F

    move-result v25

    const/high16 v26, 0x40a00000    # 5.0f

    const/high16 v27, 0x41f00000    # 30.0f

    invoke-static/range {v26 .. v27}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/systemui/egg/MLand$Star;->setRotation(F)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0c0325

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 441
    .restart local v24    # "w":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/systemui/egg/MLand$Star;->setTranslationX(F)V

    .line 442
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    .line 443
    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v15, v1}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    .end local v8    # "dark":Z
    .end local v9    # "ff":F
    .end local v15    # "moon":Lcom/android/systemui/egg/MLand$Star;
    .end local v24    # "w":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v25, v0

    div-int/lit8 v14, v25, 0x6

    .line 448
    .local v14, "mh":I
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fd0000000000000L    # 0.25

    cmpg-double v25, v26, v28

    if-gez v25, :cond_10

    const/4 v7, 0x1

    .line 449
    .local v7, "cloudless":Z
    :goto_8
    const/16 v4, 0x14

    .line 450
    .local v4, "N":I
    const/4 v10, 0x0

    :goto_9
    const/16 v25, 0x14

    move/from16 v0, v25

    if-ge v10, v0, :cond_16

    .line 451
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v18

    .line 453
    .local v18, "r1":F
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fd3333333333333L    # 0.3

    cmpg-double v25, v26, v28

    if-gez v25, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 454
    new-instance v19, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 482
    .local v19, "s":Lcom/android/systemui/egg/MLand$Scenery;
    :cond_a
    :goto_a
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v13, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 483
    .local v13, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/systemui/egg/MLand$Building;

    move/from16 v25, v0

    if-eqz v25, :cond_14

    .line 484
    const/16 v25, 0x50

    move/from16 v0, v25

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 496
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v25, v0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    move/from16 v26, v0

    iget v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Scenery;->setTranslationX(F)V

    .line 450
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 414
    .end local v4    # "N":I
    .end local v7    # "cloudless":Z
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v14    # "mh":I
    .end local v18    # "r1":F
    .end local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    .end local v20    # "showingSun":Z
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 424
    .restart local v20    # "showingSun":Z
    .restart local v22    # "sun":Lcom/android/systemui/egg/MLand$Star;
    .restart local v24    # "w":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x3f28f5c3    # 0.66f

    mul-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    sub-int v26, v26, v24

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    .line 425
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 426
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    const v26, -0x3f008000    # -7.984375f

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_4

    .line 432
    .end local v22    # "sun":Lcom/android/systemui/egg/MLand$Star;
    .end local v24    # "w":I
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 437
    .restart local v8    # "dark":Z
    .restart local v9    # "ff":F
    .restart local v15    # "moon":Lcom/android/systemui/egg/MLand$Star;
    :cond_e
    const/16 v25, 0x80

    goto/16 :goto_6

    .line 438
    :cond_f
    const/high16 v25, 0x3f800000    # 1.0f

    goto/16 :goto_7

    .line 448
    .end local v8    # "dark":Z
    .end local v9    # "ff":F
    .end local v15    # "moon":Lcom/android/systemui/egg/MLand$Star;
    .restart local v14    # "mh":I
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 455
    .restart local v4    # "N":I
    .restart local v7    # "cloudless":Z
    .restart local v18    # "r1":F
    :cond_11
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fe3333333333333L    # 0.6

    cmpg-double v25, v26, v28

    if-gez v25, :cond_12

    if-nez v7, :cond_12

    .line 456
    new-instance v19, Lcom/android/systemui/egg/MLand$Cloud;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Cloud;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .restart local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    goto/16 :goto_a

    .line 458
    .end local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mScene:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 467
    new-instance v19, Lcom/android/systemui/egg/MLand$Building;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Building;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 470
    .restart local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    :goto_c
    int-to-float v0, v10

    move/from16 v25, v0

    const/high16 v26, 0x41a00000    # 20.0f

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    .line 473
    const v25, 0x3f59999a    # 0.85f

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/egg/MLand$Scenery;->v:F

    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mScene:I

    move/from16 v25, v0

    if-nez v25, :cond_13

    .line 475
    const v25, -0x777778

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Scenery;->setBackgroundColor(I)V

    .line 476
    sget-object v25, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_HEIGHT_MIN:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-static {v0, v14}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    .line 478
    :cond_13
    const/high16 v25, 0x437f0000    # 255.0f

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v6, v0

    .line 479
    .local v6, "c":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/egg/MLand$Scenery;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 480
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_a

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v25

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_a

    .line 460
    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v6    # "c":I
    .end local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    :pswitch_0
    new-instance v19, Lcom/android/systemui/egg/MLand$Mountain;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Mountain;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 461
    .restart local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    goto :goto_c

    .line 463
    .end local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    :pswitch_1
    new-instance v19, Lcom/android/systemui/egg/MLand$Cactus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/egg/MLand$Cactus;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 464
    .restart local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    goto/16 :goto_c

    .line 486
    .restart local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_14
    const/16 v25, 0x30

    move/from16 v0, v25

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 487
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v17

    .line 488
    .local v17, "r":F
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/systemui/egg/MLand$Star;

    move/from16 v25, v0

    if-eqz v25, :cond_15

    .line 489
    mul-float v25, v17, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_b

    .line 491
    :cond_15
    const/high16 v25, 0x3f800000    # 1.0f

    mul-float v26, v17, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_b

    .line 500
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "r":F
    .end local v18    # "r1":F
    .end local v19    # "s":Lcom/android/systemui/egg/MLand$Scenery;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/egg/MLand$Player;

    .line 501
    .local v16, "p":Lcom/android/systemui/egg/MLand$Player;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;)V

    .line 502
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    goto :goto_d

    .line 505
    .end local v16    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v25, v0

    if-eqz v25, :cond_18

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/animation/TimeAnimator;->cancel()V

    .line 510
    :cond_18
    new-instance v25, Landroid/animation/TimeAnimator;

    invoke-direct/range {v25 .. v25}, Landroid/animation/TimeAnimator;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/egg/MLand$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/MLand$1;-><init>(Lcom/android/systemui/egg/MLand;)V

    invoke-virtual/range {v25 .. v26}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 517
    return-void

    .line 458
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScoreFieldHolder(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "vg"    # Landroid/view/ViewGroup;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    .line 241
    if-eqz p1, :cond_0

    .line 242
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 243
    .local v1, "lt":Landroid/animation/LayoutTransition;
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 244
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 246
    .end local v1    # "lt":Landroid/animation/LayoutTransition;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/egg/MLand$Player;

    .line 247
    .local v2, "p":Lcom/android/systemui/egg/MLand$Player;
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    # getter for: Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/egg/MLand$Player;->access$000(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 252
    .end local v2    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_1
    return-void
.end method

.method public setSplash(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    .line 256
    return-void
.end method

.method public setupPlayers(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->clearPlayers()V

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 352
    invoke-static {p0}, Lcom/android/systemui/egg/MLand$Player;->create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/egg/MLand;->addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    return-void
.end method

.method public showSplash()V
    .locals 8

    .prologue
    const v7, 0x7f0e016b

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 572
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 577
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v1, 0x7f0e016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 578
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v1, 0x7f0e016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 579
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 580
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 582
    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 9
    .param p1, "startPlaying"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 520
    const-string v5, "start(startPlaying=%s)"

    new-array v6, v8, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string v4, "true"

    :goto_0
    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    if-eqz p1, :cond_0

    iget v4, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    if-gtz v4, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->showSplash()V

    .line 524
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v5, 0x7f0e016b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 526
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v5, 0x7f0e016c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 527
    .local v2, "playImage":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v5, 0x7f0e016d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 529
    .local v3, "playText":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 530
    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 532
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    .line 533
    new-instance v4, Lcom/android/systemui/egg/MLand$2;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/egg/MLand$2;-><init>(Lcom/android/systemui/egg/MLand;Landroid/widget/TextView;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/egg/MLand;->post(Ljava/lang/Runnable;)Z

    .line 547
    .end local v2    # "playImage":Landroid/view/View;
    .end local v3    # "playText":Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/egg/MLand$Player;

    .line 548
    .local v1, "p":Lcom/android/systemui/egg/MLand$Player;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/android/systemui/egg/MLand$Player;->setVisibility(I)V

    goto :goto_1

    .line 520
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_1
    const-string v4, "false"

    goto :goto_0

    .line 551
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    if-eqz v4, :cond_3

    .line 552
    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v4}, Landroid/animation/TimeAnimator;->start()V

    .line 553
    iput-boolean v8, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    .line 555
    :cond_3
    return-void
.end method

.method public startPlaying()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    .line 585
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    .line 587
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/egg/MLand;->t:F

    .line 589
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getGameTime()F

    move-result v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    .line 591
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->hideSplash()V

    .line 593
    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    .line 594
    iput v6, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    .line 596
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 597
    .local v0, "N":I
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "egg_mland_players"

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 598
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 599
    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/egg/MLand$Player;

    .line 600
    .local v2, "p":Lcom/android/systemui/egg/MLand$Player;
    invoke-virtual {v2, v6}, Lcom/android/systemui/egg/MLand$Player;->setVisibility(I)V

    .line 601
    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    .line 602
    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Player;->start()V

    .line 603
    invoke-virtual {v2, v5, v5}, Lcom/android/systemui/egg/MLand$Player;->boost(FF)V

    .line 604
    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Player;->unboost()V

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    .end local v2    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 609
    iget-boolean v2, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-eqz v2, :cond_1

    .line 610
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v2}, Landroid/animation/TimeAnimator;->cancel()V

    .line 611
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    .line 612
    iput-boolean v3, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    .line 613
    iput-boolean v3, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    .line 614
    sget-object v2, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    .line 615
    const/4 v2, 0x3

    invoke-static {v3, v2}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    .line 616
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    .line 617
    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/egg/MLand$Player;

    .line 618
    .local v1, "p":Lcom/android/systemui/egg/MLand$Player;
    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_0

    .line 620
    .end local v1    # "p":Lcom/android/systemui/egg/MLand$Player;
    :cond_0
    new-instance v2, Lcom/android/systemui/egg/MLand$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/egg/MLand$4;-><init>(Lcom/android/systemui/egg/MLand;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/egg/MLand;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 627
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public willNotDraw()Z
    .locals 1

    .prologue
    .line 231
    sget-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
