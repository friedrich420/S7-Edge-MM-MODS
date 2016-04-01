.class public Lcom/android/internal/widget/DirectionLockView;
.super Landroid/widget/RelativeLayout;
.source "DirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DirectionLockView$2;,
        Lcom/android/internal/widget/DirectionLockView$Direction;
    }
.end annotation


# static fields
.field public static DEFAULT_ARROW_SIZE:I

.field private static DIRECTION_TOLERANCE_ANGLE:D

.field public static FOUR_CONFIGURATION_MODE:Z


# instance fields
.field private ARROW_SIZE:I

.field private REFERENCE_SQUARE_DIMENSION:I

.field private SETTINGS_APP:Z

.field private TAG:Ljava/lang/String;

.field private final TTS_DEFAULT_RATE_STRING:Ljava/lang/String;

.field _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private currentErrorResId:I

.field private isParentArrowSize:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllow:Z

.field private mAllowDouble:Z

.field mBeepEast:Landroid/media/MediaPlayer;

.field mBeepNorth:Landroid/media/MediaPlayer;

.field mBeepSouth:Landroid/media/MediaPlayer;

.field mBeepWest:Landroid/media/MediaPlayer;

.field private mBlankBitmap:Landroid/graphics/Bitmap;

.field private mBottomY:D

.field private mCurBitmap:Landroid/graphics/Bitmap;

.field private mCurrentPassword:Ljava/lang/String;

.field private mCurrentPasswordNumbers:Ljava/lang/String;

.field private mDirectionBitmapDown:Landroid/graphics/Bitmap;

.field private mDirectionBitmapLeft:Landroid/graphics/Bitmap;

.field private mDirectionBitmapRight:Landroid/graphics/Bitmap;

.field private mDirectionBitmapUp:Landroid/graphics/Bitmap;

.field private mDirectionDetected:Z

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mDownAnnounce:Ljava/lang/String;

.field private final mDownChar:C

.field private final mDownNumber:I

.field private mErrorBitmap:Landroid/graphics/Bitmap;

.field private mForceRestart:Z

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInsideReferenceSquare:Z

.field private mLeftAnnounce:Ljava/lang/String;

.field private final mLeftChar:C

.field private final mLeftNumber:I

.field private mLeftX:D

.field private mParentArrowSize:I

.field private mPlayBeep:Z

.field private mPlayVibration:Z

.field private mPlayVoice:Z

.field private mRightAnnounce:Ljava/lang/String;

.field private final mRightChar:C

.field private final mRightNumber:I

.field private mRightX:D

.field private mScreenHeight:D

.field private mScreenWidth:D

.field private mShowArrow:Z

.field private mSquare_size:D

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTopY:D

.field private mTradeSpace:D

.field private mUpAnnounce:Ljava/lang/String;

.field private final mUpChar:C

.field private final mUpNumber:I

.field private mVibratePattern:I

.field private final mVibration_pattern_down:I

.field private final mVibration_pattern_left:I

.field private final mVibration_pattern_right:I

.field private final mVibration_pattern_up:I

.field private mVibrator:Landroid/os/Vibrator;

.field myContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 90
    const-wide v0, 0x4056800000000000L    # 90.0

    sput-wide v0, DIRECTION_TOLERANCE_ANGLE:D

    .line 94
    const/16 v0, 0xb6

    sput v0, DEFAULT_ARROW_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v4, 0xc36f

    const v3, 0xc36b

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const-string v0, "DirectionLockView"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 57
    iput-object v1, p0, mBlankBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iput-object v1, p0, mDirectionBitmapRight:Landroid/graphics/Bitmap;

    iput-object v1, p0, mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iput-object v1, p0, mDirectionBitmapDown:Landroid/graphics/Bitmap;

    iput-object v1, p0, mCurBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, mErrorBitmap:Landroid/graphics/Bitmap;

    .line 64
    iput-boolean v2, p0, SETTINGS_APP:Z

    iput-boolean v2, p0, isParentArrowSize:Z

    iput-boolean v2, p0, mAllowDouble:Z

    .line 72
    iput v2, p0, mParentArrowSize:I

    iput v2, p0, currentErrorResId:I

    .line 73
    const-string/jumbo v0, "tts_default_rate"

    iput-object v0, p0, TTS_DEFAULT_RATE_STRING:Ljava/lang/String;

    .line 76
    const/16 v0, 0x55

    iput-char v0, p0, mUpChar:C

    .line 77
    const/16 v0, 0x44

    iput-char v0, p0, mDownChar:C

    .line 78
    const/16 v0, 0x4c

    iput-char v0, p0, mLeftChar:C

    .line 79
    const/16 v0, 0x52

    iput-char v0, p0, mRightChar:C

    .line 80
    const/16 v0, 0x31

    iput v0, p0, mUpNumber:I

    .line 81
    const/16 v0, 0x39

    iput v0, p0, mLeftNumber:I

    .line 82
    const/16 v0, 0x33

    iput v0, p0, mRightNumber:I

    .line 83
    const/16 v0, 0x37

    iput v0, p0, mDownNumber:I

    .line 93
    const/16 v0, 0x64

    iput v0, p0, REFERENCE_SQUARE_DIMENSION:I

    .line 106
    iput v3, p0, mVibration_pattern_up:I

    iput v3, p0, mVibration_pattern_down:I

    iput v4, p0, mVibration_pattern_right:I

    iput v4, p0, mVibration_pattern_left:I

    .line 309
    new-instance v0, Lcom/android/internal/widget/DirectionLockView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DirectionLockView$1;-><init>(Lcom/android/internal/widget/DirectionLockView;)V

    iput-object v0, p0, _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 149
    iput-object p1, p0, myContext:Landroid/content/Context;

    .line 150
    invoke-direct {p0}, initDirectionLockView()V

    .line 151
    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 10
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 1160
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1161
    .local v2, "height":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1162
    .local v4, "width":I
    const/4 v3, 0x1

    .line 1164
    .local v3, "inSampleSize":I
    if-gt v2, p3, :cond_9

    if-le v4, p2, :cond_18

    .line 1166
    :cond_9
    div-int/lit8 v0, v2, 0x2

    .line 1167
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 1172
    .local v1, "halfWidth":I
    :goto_d
    div-int v5, v0, v3

    if-le v5, p3, :cond_18

    div-int v5, v1, v3

    if-le v5, p2, :cond_18

    .line 1173
    mul-int/lit8 v3, v3, 0x2

    goto :goto_d

    .line 1177
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_18
    return v3
.end method

.method private calculateTradeSpace(DD)D
    .registers 12
    .param p1, "sqaure_size"    # D
    .param p3, "toleranceAngle"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 702
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "in calculateTradeSpace()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v0, 0x0

    sput-boolean v0, FOUR_CONFIGURATION_MODE:Z

    .line 704
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_1b

    .line 705
    const/4 v0, 0x1

    sput-boolean v0, FOUR_CONFIGURATION_MODE:Z

    .line 706
    const-wide/16 v0, 0x0

    .line 708
    :goto_1a
    return-wide v0

    :cond_1b
    div-double v0, p1, v4

    div-double v2, p3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double v4, p1, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    goto :goto_1a
.end method

.method private createReferenceSquare(DDZ)V
    .registers 15
    .param p1, "eventX"    # D
    .param p3, "eventY"    # D
    .param p5, "doScreenCorrection"    # Z

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v6, 0x0

    .line 748
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "in createReferenceSquare()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-wide v0, p0, mSquare_size:D

    div-double/2addr v0, v2

    sub-double v0, p1, v0

    iput-wide v0, p0, mLeftX:D

    .line 750
    iget-wide v0, p0, mSquare_size:D

    div-double/2addr v0, v2

    sub-double v0, p3, v0

    iput-wide v0, p0, mTopY:D

    .line 751
    iget-wide v0, p0, mSquare_size:D

    div-double/2addr v0, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, mRightX:D

    .line 752
    iget-wide v0, p0, mSquare_size:D

    div-double/2addr v0, v2

    add-double/2addr v0, p3

    iput-wide v0, p0, mBottomY:D

    .line 754
    if-eqz p5, :cond_45

    .line 755
    iget-wide v0, p0, mLeftX:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_a6

    .line 756
    iget-wide v0, p0, mRightX:D

    iget-wide v2, p0, mLeftX:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, mRightX:D

    .line 757
    iput-wide v6, p0, mLeftX:D

    .line 763
    :cond_36
    :goto_36
    iget-wide v0, p0, mTopY:D

    cmpg-double v0, v0, v6

    if-gez v0, :cond_be

    .line 764
    iget-wide v0, p0, mBottomY:D

    iget-wide v2, p0, mTopY:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, mBottomY:D

    .line 765
    iput-wide v6, p0, mTopY:D

    .line 772
    :cond_45
    :goto_45
    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " eventY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLeftX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mLeftX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mRightX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mRightX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBottomY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mBottomY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTopY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mTopY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void

    .line 758
    :cond_a6
    iget-wide v0, p0, mRightX:D

    iget-wide v2, p0, mScreenWidth:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_36

    .line 759
    iget-wide v0, p0, mLeftX:D

    iget-wide v2, p0, mRightX:D

    iget-wide v4, p0, mScreenWidth:D

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, mLeftX:D

    .line 760
    iget-wide v0, p0, mScreenWidth:D

    iput-wide v0, p0, mRightX:D

    goto/16 :goto_36

    .line 766
    :cond_be
    iget-wide v0, p0, mBottomY:D

    iget-wide v2, p0, mScreenHeight:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_45

    .line 767
    iget-wide v0, p0, mTopY:D

    iget-wide v2, p0, mBottomY:D

    iget-wide v4, p0, mScreenHeight:D

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, mTopY:D

    .line 768
    iget-wide v0, p0, mScreenHeight:D

    iput-wide v0, p0, mBottomY:D

    goto/16 :goto_45
.end method

.method private dipToPixels(D)D
    .registers 8
    .param p1, "dipValue"    # D

    .prologue
    .line 227
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 228
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    double-to-float v2, p1

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v2, v1

    return-wide v2
.end method

.method private freeBitmapMemory()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1099
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "in freeBitmapMemory()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, mBlankBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 1102
    iget-object v0, p0, mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1103
    iput-object v2, p0, mBlankBitmap:Landroid/graphics/Bitmap;

    .line 1106
    :cond_13
    invoke-direct {p0}, releaseDirectionBitmaps()V

    .line 1108
    iget-object v0, p0, mCurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_21

    .line 1109
    iget-object v0, p0, mCurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1110
    iput-object v2, p0, mCurBitmap:Landroid/graphics/Bitmap;

    .line 1113
    :cond_21
    iget-object v0, p0, mErrorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2c

    .line 1114
    iget-object v0, p0, mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1115
    iput-object v2, p0, mErrorBitmap:Landroid/graphics/Bitmap;

    .line 1117
    :cond_2c
    return-void
.end method

.method private getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I

    .prologue
    const/4 v7, 0x1

    .line 1122
    iget-object v4, p0, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapFromResource start  reqWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reqHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  resid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1125
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1126
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1129
    invoke-direct {p0, v1, p3, p4}, calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1132
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1134
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1137
    .local v3, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 1138
    .local v2, "returnBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_5d

    .line 1140
    const/4 v4, 0x1

    :try_start_48
    invoke-static {v3, p3, p4, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_48 .. :try_end_4b} :catch_65
    .catchall {:try_start_48 .. :try_end_4b} :catchall_7b

    move-result-object v2

    .line 1146
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 1147
    iget-object v4, p0, TAG:Ljava/lang/String;

    const-string v5, "getBitmapFromResource recycle"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1149
    const/4 v3, 0x0

    .line 1153
    :cond_5d
    :goto_5d
    iget-object v4, p0, TAG:Ljava/lang/String;

    const-string v5, "getBitmapFromResource End"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-object v2

    .line 1142
    :catch_65
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_66
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_7b

    .line 1146
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 1147
    iget-object v4, p0, TAG:Ljava/lang/String;

    const-string v5, "getBitmapFromResource recycle"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1149
    const/4 v3, 0x0

    goto :goto_5d

    .line 1146
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_7b
    move-exception v4

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    .line 1147
    iget-object v5, p0, TAG:Ljava/lang/String;

    const-string v6, "getBitmapFromResource recycle"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1149
    const/4 v3, 0x0

    :cond_8d
    throw v4
.end method

.method private getDirectionImageView(IIZI)Landroid/widget/ImageView;
    .registers 9
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "useMargins"    # Z
    .param p4, "arrowSize"    # I

    .prologue
    const/4 v3, -0x2

    .line 666
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "in getDirectionImageView()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-boolean v1, p0, isParentArrowSize:Z

    if-eqz v1, :cond_e

    .line 668
    iput p4, p0, mParentArrowSize:I

    .line 670
    :cond_e
    iget-object v1, p0, mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1a

    .line 671
    iget-object v1, p0, mDirectionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, removeView(Landroid/view/View;)V

    .line 672
    const/4 v1, 0x0

    iput-object v1, p0, mDirectionImageView:Landroid/widget/ImageView;

    .line 675
    :cond_1a
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 677
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p3, :cond_3e

    .line 678
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 679
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 680
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 685
    :goto_2a
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, myContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mDirectionImageView:Landroid/widget/ImageView;

    .line 686
    iget-object v1, p0, mDirectionImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    invoke-virtual {p0}, invalidate()V

    .line 689
    iget-object v1, p0, mDirectionImageView:Landroid/widget/ImageView;

    return-object v1

    .line 682
    :cond_3e
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2a
.end method

.method private initDirectionLockView()V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 532
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "in initDirectinLockView()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mHashMap:Ljava/util/HashMap;

    .line 535
    iget-object v1, p0, mHashMap:Ljava/util/HashMap;

    const-string v2, "com.samsung.SMT.KEY_PARAM"

    const-string v3, "DISABLE_NOTICE_POPUP"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-direct {p0}, refreshScreenDimensions()V

    .line 538
    invoke-virtual {p0}, getDirectionImageView()Landroid/widget/ImageView;

    .line 540
    const-string v1, ""

    iput-object v1, p0, mCurrentPassword:Ljava/lang/String;

    .line 541
    const-string v1, ""

    iput-object v1, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    .line 547
    iput-boolean v6, p0, mInsideReferenceSquare:Z

    .line 553
    const/4 v1, 0x0

    iput-boolean v1, p0, mForceRestart:Z

    .line 556
    iput-boolean v6, p0, mAllow:Z

    .line 558
    iput-boolean v6, p0, mShowArrow:Z

    .line 559
    iput-boolean v6, p0, mPlayVoice:Z

    .line 560
    iput-boolean v6, p0, mPlayVibration:Z

    .line 561
    iput-boolean v6, p0, mPlayBeep:Z

    .line 564
    iget-object v1, p0, myContext:Landroid/content/Context;

    const v2, 0x11000a2

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, mBeepNorth:Landroid/media/MediaPlayer;

    .line 565
    iget-object v1, p0, myContext:Landroid/content/Context;

    const v2, 0x110009f

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, mBeepSouth:Landroid/media/MediaPlayer;

    .line 566
    iget-object v1, p0, myContext:Landroid/content/Context;

    const v2, 0x11000a1

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, mBeepEast:Landroid/media/MediaPlayer;

    .line 567
    iget-object v1, p0, myContext:Landroid/content/Context;

    const v2, 0x11000a0

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, mBeepWest:Landroid/media/MediaPlayer;

    .line 569
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, myContext:Landroid/content/Context;

    iget-object v3, p0, _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 572
    iget-object v1, p0, myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tts_default_rate"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 574
    .local v0, "mDefaultRate":I
    iget-object v1, p0, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTextToSpeech Rate - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, p0, mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 577
    iget-object v1, p0, myContext:Landroid/content/Context;

    const v2, 0x1040a43

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mUpAnnounce:Ljava/lang/String;

    .line 578
    iget-object v1, p0, myContext:Landroid/content/Context;

    const v2, 0x1040a46

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mDownAnnounce:Ljava/lang/String;

    .line 579
    iget-object v1, p0, myContext:Landroid/content/Context;

    const v2, 0x1040a45

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mLeftAnnounce:Ljava/lang/String;

    .line 580
    iget-object v1, p0, myContext:Landroid/content/Context;

    const v2, 0x1040a44

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mRightAnnounce:Ljava/lang/String;

    .line 582
    iget v1, p0, REFERENCE_SQUARE_DIMENSION:I

    int-to-double v2, v1

    invoke-direct {p0, v2, v3}, dipToPixels(D)D

    move-result-wide v2

    iput-wide v2, p0, mSquare_size:D

    .line 583
    iput-wide v4, p0, mLeftX:D

    .line 584
    iput-wide v4, p0, mRightX:D

    .line 585
    iput-wide v4, p0, mBottomY:D

    .line 586
    iput-wide v4, p0, mTopY:D

    .line 589
    iget-wide v2, p0, mSquare_size:D

    sget-wide v4, DIRECTION_TOLERANCE_ANGLE:D

    invoke-direct {p0, v2, v3, v4, v5}, calculateTradeSpace(DD)D

    move-result-wide v2

    iput-wide v2, p0, mTradeSpace:D

    .line 591
    iget-object v1, p0, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tradeSpace ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, mTradeSpace:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, myContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, mVibrator:Landroid/os/Vibrator;

    .line 596
    iget-object v1, p0, myContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 599
    invoke-virtual {p0, v6}, setImportantForAccessibility(I)V

    .line 600
    iget-object v1, p0, myContext:Landroid/content/Context;

    const v2, 0x1040a48

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, setContentDescription(Ljava/lang/CharSequence;)V

    .line 602
    return-void
.end method

.method private loadDirectionBitmaps(I)V
    .registers 9
    .param p1, "arrowSize"    # I

    .prologue
    .line 1065
    iget-object v4, p0, TAG:Ljava/lang/String;

    const-string v5, "in loadDirectionBitmaps()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const/4 v1, 0x0

    .local v1, "resIDLeft":I
    const/4 v0, 0x0

    .local v0, "resIDDown":I
    const/4 v3, 0x0

    .local v3, "resIDUp":I
    const/4 v2, 0x0

    .line 1068
    .local v2, "resIDRight":I
    iget-boolean v4, p0, isParentArrowSize:Z

    if-eqz v4, :cond_62

    .end local p1    # "arrowSize":I
    :goto_f
    iput p1, p0, ARROW_SIZE:I

    .line 1070
    iget-boolean v4, p0, SETTINGS_APP:Z

    if-nez v4, :cond_69

    .line 1072
    const v1, 0x10802d6

    .line 1073
    const v2, 0x10802d7

    .line 1074
    const v3, 0x10802d8

    .line 1075
    const v0, 0x10802d5

    .line 1084
    :goto_21
    iget-object v4, p0, myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, ARROW_SIZE:I

    iget v6, p0, ARROW_SIZE:I

    invoke-direct {p0, v4, v1, v5, v6}, getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    .line 1086
    iget-object v4, p0, myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, ARROW_SIZE:I

    iget v6, p0, ARROW_SIZE:I

    invoke-direct {p0, v4, v2, v5, v6}, getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, mDirectionBitmapRight:Landroid/graphics/Bitmap;

    .line 1088
    iget-object v4, p0, myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, ARROW_SIZE:I

    iget v6, p0, ARROW_SIZE:I

    invoke-direct {p0, v4, v3, v5, v6}, getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, mDirectionBitmapUp:Landroid/graphics/Bitmap;

    .line 1090
    iget-object v4, p0, myContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, ARROW_SIZE:I

    iget v6, p0, ARROW_SIZE:I

    invoke-direct {p0, v4, v0, v5, v6}, getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, mDirectionBitmapDown:Landroid/graphics/Bitmap;

    .line 1092
    return-void

    .line 1068
    .restart local p1    # "arrowSize":I
    :cond_62
    int-to-double v4, p1

    invoke-direct {p0, v4, v5}, dipToPixels(D)D

    move-result-wide v4

    double-to-int p1, v4

    goto :goto_f

    .line 1078
    .end local p1    # "arrowSize":I
    :cond_69
    const v1, 0x10802db

    .line 1079
    const v2, 0x10802dd

    .line 1080
    const v3, 0x10802df

    .line 1081
    const v0, 0x10802d9

    goto :goto_21
.end method

.method private refreshScreenDimensions()V
    .registers 7

    .prologue
    .line 717
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "in refreshScreenDimensions()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 719
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 721
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, p0, mScreenHeight:D

    .line 722
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, p0, mScreenWidth:D

    .line 723
    iget-object v1, p0, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in refreshScreenDimensions() mScreenWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, mScreenWidth:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, mScreenHeight:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void
.end method

.method private releaseDirectionBitmaps()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1182
    iget-object v0, p0, mDirectionBitmapUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1183
    iget-object v0, p0, mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1184
    iput-object v1, p0, mDirectionBitmapUp:Landroid/graphics/Bitmap;

    .line 1187
    :cond_c
    iget-object v0, p0, mDirectionBitmapRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 1188
    iget-object v0, p0, mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1189
    iput-object v1, p0, mDirectionBitmapRight:Landroid/graphics/Bitmap;

    .line 1192
    :cond_17
    iget-object v0, p0, mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    .line 1193
    iget-object v0, p0, mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1194
    iput-object v1, p0, mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    .line 1197
    :cond_22
    iget-object v0, p0, mDirectionBitmapDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2d

    .line 1198
    iget-object v0, p0, mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1199
    iput-object v1, p0, mDirectionBitmapDown:Landroid/graphics/Bitmap;

    .line 1201
    :cond_2d
    return-void
.end method


# virtual methods
.method public clearScreen()V
    .registers 5

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, mBlankBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_12

    .line 163
    iget-wide v2, p0, mScreenWidth:D

    double-to-int v1, v2

    iget-wide v2, p0, mScreenHeight:D

    double-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, mBlankBitmap:Landroid/graphics/Bitmap;

    .line 167
    :cond_12
    iget-object v1, p0, mDirectionImageView:Landroid/widget/ImageView;

    iget-object v2, p0, mBlankBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    invoke-virtual {p0}, invalidate()V
    :try_end_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 172
    :goto_1c
    return-void

    .line 169
    :catch_1d
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1c
.end method

.method public getCurrentPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, mCurrentPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPasswordNumbers()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    return-object v0
.end method

.method getDirection(DDDDDD)Lcom/android/internal/widget/DirectionLockView$Direction;
    .registers 20
    .param p1, "curX"    # D
    .param p3, "curY"    # D
    .param p5, "leftX"    # D
    .param p7, "rightX"    # D
    .param p9, "topY"    # D
    .param p11, "bottomY"    # D

    .prologue
    .line 794
    iget-object v3, p0, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDirection() curX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " curY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " leftX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rightX ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " topY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bottomY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p11

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    .line 799
    .local v2, "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    sget-boolean v3, FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_66

    cmpl-double v3, p1, p7

    if-ltz v3, :cond_66

    cmpg-double v3, p3, p9

    if-gtz v3, :cond_66

    .line 800
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    .line 827
    :cond_5e
    :goto_5e
    sget-object v3, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    if-eq v2, v3, :cond_65

    .line 828
    const/4 v3, 0x1

    iput-boolean v3, p0, mDirectionDetected:Z

    .line 830
    :cond_65
    return-object v2

    .line 802
    :cond_66
    sget-boolean v3, FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_75

    cmpg-double v3, p1, p5

    if-gtz v3, :cond_75

    cmpg-double v3, p3, p9

    if-gtz v3, :cond_75

    .line 803
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_5e

    .line 805
    :cond_75
    sget-boolean v3, FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_84

    cmpl-double v3, p1, p7

    if-ltz v3, :cond_84

    cmpl-double v3, p3, p11

    if-ltz v3, :cond_84

    .line 806
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_5e

    .line 808
    :cond_84
    sget-boolean v3, FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_93

    cmpg-double v3, p1, p5

    if-gtz v3, :cond_93

    cmpl-double v3, p3, p11

    if-ltz v3, :cond_93

    .line 809
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_5e

    .line 811
    :cond_93
    sget-boolean v3, FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_9f

    cmpg-double v3, p1, p7

    if-gtz v3, :cond_a6

    cmpl-double v3, p1, p5

    if-ltz v3, :cond_a6

    :cond_9f
    cmpg-double v3, p3, p9

    if-gez v3, :cond_a6

    .line 813
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->UP:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_5e

    .line 815
    :cond_a6
    sget-boolean v3, FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_b2

    cmpg-double v3, p1, p7

    if-gtz v3, :cond_b9

    cmpl-double v3, p1, p5

    if-ltz v3, :cond_b9

    :cond_b2
    cmpl-double v3, p3, p11

    if-lez v3, :cond_b9

    .line 817
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_5e

    .line 819
    :cond_b9
    sget-boolean v3, FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_c5

    cmpg-double v3, p3, p11

    if-gtz v3, :cond_cc

    cmpl-double v3, p3, p9

    if-ltz v3, :cond_cc

    :cond_c5
    cmpl-double v3, p1, p7

    if-lez v3, :cond_cc

    .line 821
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_5e

    .line 823
    :cond_cc
    sget-boolean v3, FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_d8

    cmpg-double v3, p3, p11

    if-gtz v3, :cond_5e

    cmpl-double v3, p3, p9

    if-ltz v3, :cond_5e

    :cond_d8
    cmpg-double v3, p1, p5

    if-gez v3, :cond_5e

    .line 825
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    goto :goto_5e
.end method

.method public getDirectionImageView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 616
    iput-boolean v0, p0, isParentArrowSize:Z

    .line 617
    invoke-direct {p0, v0, v0, v0, v0}, getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(I)Landroid/widget/ImageView;
    .registers 4
    .param p1, "arrowSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, isParentArrowSize:Z

    .line 629
    invoke-direct {p0, v1, v1, v1, p1}, getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(II)Landroid/widget/ImageView;
    .registers 5
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I

    .prologue
    const/4 v1, 0x0

    .line 642
    iput-boolean v1, p0, isParentArrowSize:Z

    .line 643
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionImageView(III)Landroid/widget/ImageView;
    .registers 5
    .param p1, "topMargin"    # I
    .param p2, "bottomMargin"    # I
    .param p3, "arrowSize"    # I

    .prologue
    const/4 v0, 0x1

    .line 656
    iput-boolean v0, p0, isParentArrowSize:Z

    .line 657
    invoke-direct {p0, p1, p2, v0, p3}, getDirectionImageView(IIZI)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method handleDirectionEvent(Lcom/android/internal/widget/DirectionLockView$Direction;Z)V
    .registers 15
    .param p1, "direction"    # Lcom/android/internal/widget/DirectionLockView$Direction;
    .param p2, "allowDouble"    # Z

    .prologue
    const v11, 0xc36f

    const v10, 0xc36b

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 854
    iget-object v6, p0, TAG:Ljava/lang/String;

    const-string v7, "in handleDirectionEvent()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iput-boolean v4, p0, mInsideReferenceSquare:Z

    .line 862
    iget-object v6, p0, mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7f

    move v2, v5

    .line 869
    .local v2, "lengthCondition":Z
    :goto_1b
    const/4 v1, 0x0

    .line 876
    .local v1, "lastDirectionCondition":Z
    if-eqz v2, :cond_81

    move v0, v4

    .line 879
    .local v0, "lastDirectionChar":C
    :goto_1f
    iget-object v6, p0, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " detected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v6, 0x0

    iput-object v6, p0, mCurBitmap:Landroid/graphics/Bitmap;

    .line 881
    iput v9, p0, mVibratePattern:I

    .line 882
    const-string v3, ""

    .line 883
    .local v3, "mCurrentDirection":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/widget/DirectionLockView$2;->$SwitchMap$com$android$internal$widget$DirectionLockView$Direction:[I

    invoke-virtual {p1}, Lcom/android/internal/widget/DirectionLockView$Direction;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_236

    .line 997
    iget-object v4, p0, TAG:Ljava/lang/String;

    const-string v5, "Invalid Direction !"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_50
    :goto_50
    if-nez v2, :cond_56

    if-nez p2, :cond_56

    if-eqz v1, :cond_21c

    .line 1003
    :cond_56
    iget-boolean v4, p0, mShowArrow:Z

    if-eqz v4, :cond_61

    .line 1004
    iget-object v4, p0, mDirectionImageView:Landroid/widget/ImageView;

    iget-object v5, p0, mCurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1007
    :cond_61
    iget-boolean v4, p0, mPlayVibration:Z

    if-eqz v4, :cond_73

    iget v4, p0, mVibratePattern:I

    if-lez v4, :cond_73

    .line 1008
    iget-object v4, p0, mVibrator:Landroid/os/Vibrator;

    iget v5, p0, mVibratePattern:I

    const/4 v6, 0x0

    sget-object v7, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v4, v5, v9, v6, v7}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 1011
    :cond_73
    iget-object v4, p0, mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v4, :cond_7e

    .line 1012
    iget-object v4, p0, mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    iget-boolean v5, p0, mDirectionDetected:Z

    invoke-interface {v4, v3, v5}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    .line 1017
    :cond_7e
    :goto_7e
    return-void

    .end local v0    # "lastDirectionChar":C
    .end local v1    # "lastDirectionCondition":Z
    .end local v2    # "lengthCondition":Z
    .end local v3    # "mCurrentDirection":Ljava/lang/String;
    :cond_7f
    move v2, v4

    .line 862
    goto :goto_1b

    .line 876
    .restart local v1    # "lastDirectionCondition":Z
    .restart local v2    # "lengthCondition":Z
    :cond_81
    iget-object v6, p0, mCurrentPassword:Ljava/lang/String;

    iget-object v7, p0, mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1f

    .line 885
    .restart local v0    # "lastDirectionChar":C
    .restart local v3    # "mCurrentDirection":Ljava/lang/String;
    :pswitch_90
    const/16 v6, 0x55

    if-eq v6, v0, :cond_f1

    move v1, v5

    .line 886
    :goto_95
    if-nez v2, :cond_9b

    if-nez p2, :cond_9b

    if-eqz v1, :cond_50

    .line 888
    :cond_9b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mCurrentPassword:Ljava/lang/String;

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    .line 891
    iget-boolean v5, p0, mPlayVoice:Z

    if-eqz v5, :cond_d6

    .line 892
    iget-object v5, p0, mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, mUpAnnounce:Ljava/lang/String;

    iget-object v7, p0, mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 896
    :cond_d6
    iget-boolean v4, p0, mPlayBeep:Z

    if-eqz v4, :cond_df

    .line 897
    iget-object v4, p0, mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 900
    :cond_df
    iget-boolean v4, p0, mPlayVibration:Z

    if-eqz v4, :cond_e5

    .line 901
    iput v10, p0, mVibratePattern:I

    .line 904
    :cond_e5
    iget-boolean v4, p0, mShowArrow:Z

    if-eqz v4, :cond_ed

    .line 905
    iget-object v4, p0, mDirectionBitmapUp:Landroid/graphics/Bitmap;

    iput-object v4, p0, mCurBitmap:Landroid/graphics/Bitmap;

    .line 908
    :cond_ed
    const-string v3, "UP"

    goto/16 :goto_50

    :cond_f1
    move v1, v4

    .line 885
    goto :goto_95

    .line 913
    :pswitch_f3
    const/16 v6, 0x52

    if-eq v6, v0, :cond_154

    move v1, v5

    .line 914
    :goto_f8
    if-nez v2, :cond_fe

    if-nez p2, :cond_fe

    if-eqz v1, :cond_50

    .line 916
    :cond_fe
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "R"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mCurrentPassword:Ljava/lang/String;

    .line 917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    .line 919
    iget-boolean v5, p0, mPlayVoice:Z

    if-eqz v5, :cond_139

    .line 920
    iget-object v5, p0, mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, mRightAnnounce:Ljava/lang/String;

    iget-object v7, p0, mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 924
    :cond_139
    iget-boolean v4, p0, mPlayBeep:Z

    if-eqz v4, :cond_142

    .line 925
    iget-object v4, p0, mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 928
    :cond_142
    iget-boolean v4, p0, mPlayVibration:Z

    if-eqz v4, :cond_148

    .line 929
    iput v11, p0, mVibratePattern:I

    .line 932
    :cond_148
    iget-boolean v4, p0, mShowArrow:Z

    if-eqz v4, :cond_150

    .line 933
    iget-object v4, p0, mDirectionBitmapRight:Landroid/graphics/Bitmap;

    iput-object v4, p0, mCurBitmap:Landroid/graphics/Bitmap;

    .line 936
    :cond_150
    const-string v3, "RIGHT"

    goto/16 :goto_50

    :cond_154
    move v1, v4

    .line 913
    goto :goto_f8

    .line 941
    :pswitch_156
    const/16 v6, 0x44

    if-eq v6, v0, :cond_1b7

    move v1, v5

    .line 942
    :goto_15b
    if-nez v2, :cond_161

    if-nez p2, :cond_161

    if-eqz v1, :cond_50

    .line 944
    :cond_161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mCurrentPassword:Ljava/lang/String;

    .line 945
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    .line 947
    iget-boolean v5, p0, mPlayVoice:Z

    if-eqz v5, :cond_19c

    .line 948
    iget-object v5, p0, mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, mDownAnnounce:Ljava/lang/String;

    iget-object v7, p0, mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 952
    :cond_19c
    iget-boolean v4, p0, mPlayBeep:Z

    if-eqz v4, :cond_1a5

    .line 953
    iget-object v4, p0, mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 956
    :cond_1a5
    iget-boolean v4, p0, mPlayVibration:Z

    if-eqz v4, :cond_1ab

    .line 957
    iput v10, p0, mVibratePattern:I

    .line 960
    :cond_1ab
    iget-boolean v4, p0, mShowArrow:Z

    if-eqz v4, :cond_1b3

    .line 961
    iget-object v4, p0, mDirectionBitmapDown:Landroid/graphics/Bitmap;

    iput-object v4, p0, mCurBitmap:Landroid/graphics/Bitmap;

    .line 964
    :cond_1b3
    const-string v3, "DOWN"

    goto/16 :goto_50

    :cond_1b7
    move v1, v4

    .line 941
    goto :goto_15b

    .line 969
    :pswitch_1b9
    const/16 v6, 0x4c

    if-eq v6, v0, :cond_21a

    move v1, v5

    .line 970
    :goto_1be
    if-nez v2, :cond_1c4

    if-nez p2, :cond_1c4

    if-eqz v1, :cond_50

    .line 972
    :cond_1c4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mCurrentPassword:Ljava/lang/String;

    .line 973
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "9"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    .line 975
    iget-boolean v5, p0, mPlayVoice:Z

    if-eqz v5, :cond_1ff

    .line 976
    iget-object v5, p0, mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, mLeftAnnounce:Ljava/lang/String;

    iget-object v7, p0, mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 980
    :cond_1ff
    iget-boolean v4, p0, mPlayBeep:Z

    if-eqz v4, :cond_208

    .line 981
    iget-object v4, p0, mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V

    .line 984
    :cond_208
    iget-boolean v4, p0, mPlayVibration:Z

    if-eqz v4, :cond_20e

    .line 985
    iput v11, p0, mVibratePattern:I

    .line 988
    :cond_20e
    iget-boolean v4, p0, mShowArrow:Z

    if-eqz v4, :cond_216

    .line 989
    iget-object v4, p0, mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    iput-object v4, p0, mCurBitmap:Landroid/graphics/Bitmap;

    .line 992
    :cond_216
    const-string v3, "LEFT"

    goto/16 :goto_50

    :cond_21a
    move v1, v4

    .line 969
    goto :goto_1be

    .line 1015
    :cond_21c
    iget-object v4, p0, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ignored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e

    .line 883
    :pswitch_data_236
    .packed-switch 0x5
        :pswitch_90
        :pswitch_f3
        :pswitch_156
        :pswitch_1b9
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    .line 1228
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1229
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "in onAttached()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-boolean v1, p0, mShowArrow:Z

    if-eqz v1, :cond_17

    .line 1231
    iget-boolean v1, p0, isParentArrowSize:Z

    if-eqz v1, :cond_24

    iget v0, p0, mParentArrowSize:I

    .line 1232
    .local v0, "arrowSize":I
    :goto_14
    invoke-direct {p0, v0}, loadDirectionBitmaps(I)V

    .line 1234
    .end local v0    # "arrowSize":I
    :cond_17
    iget-object v1, p0, myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "direction_lock_set"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1236
    return-void

    .line 1231
    :cond_24
    sget v0, DEFAULT_ARROW_SIZE:I

    goto :goto_14
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 835
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "in onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-direct {p0}, refreshScreenDimensions()V

    .line 840
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 841
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1246
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1247
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "in onDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-direct {p0}, freeBitmapMemory()V

    .line 1249
    iget-object v0, p0, myContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direction_lock_set"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1253
    iget-object v0, p0, mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_25

    .line 1254
    iget-object v0, p0, mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1255
    iput-object v3, p0, mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 1258
    :cond_25
    iget-object v0, p0, mBeepNorth:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3d

    .line 1259
    iget-object v0, p0, mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1260
    iget-object v0, p0, mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1262
    :cond_36
    iget-object v0, p0, mBeepNorth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1263
    iput-object v3, p0, mBeepNorth:Landroid/media/MediaPlayer;

    .line 1266
    :cond_3d
    iget-object v0, p0, mBeepSouth:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_55

    .line 1267
    iget-object v0, p0, mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1268
    iget-object v0, p0, mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1270
    :cond_4e
    iget-object v0, p0, mBeepSouth:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1271
    iput-object v3, p0, mBeepSouth:Landroid/media/MediaPlayer;

    .line 1274
    :cond_55
    iget-object v0, p0, mBeepEast:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6d

    .line 1275
    iget-object v0, p0, mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1276
    iget-object v0, p0, mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1278
    :cond_66
    iget-object v0, p0, mBeepEast:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1279
    iput-object v3, p0, mBeepEast:Landroid/media/MediaPlayer;

    .line 1282
    :cond_6d
    iget-object v0, p0, mBeepWest:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_85

    .line 1283
    iget-object v0, p0, mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1284
    iget-object v0, p0, mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1286
    :cond_7e
    iget-object v0, p0, mBeepWest:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1287
    iput-object v3, p0, mBeepWest:Landroid/media/MediaPlayer;

    .line 1289
    :cond_85
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 27
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent()"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual/range {p0 .. p0}, isEnabled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 327
    const/4 v3, 0x0

    .line 520
    :goto_10
    return v3

    .line 329
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v8, 0x3

    if-eq v3, v8, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v8, 0x1

    if-ne v3, v8, :cond_46

    .line 332
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent() ACTION_UP or ACTION_CANCEL called"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_3f

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    const-string v8, "FINGER_LIFT"

    move-object/from16 v0, p0

    iget-boolean v9, v0, mDirectionDetected:Z

    invoke-interface {v3, v8, v9}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    .line 336
    :cond_3f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mDirectionDetected:Z

    .line 337
    const/4 v3, 0x1

    goto :goto_10

    .line 340
    :cond_46
    move-object/from16 v0, p0

    iget-object v3, v0, mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_53

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-interface {v3}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionStarted()V

    .line 343
    :cond_53
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_78

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_78

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-double v4, v3

    .local v4, "curX":D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-double v6, v3

    .line 347
    .local v6, "curY":D
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_2dc

    .line 520
    .end local v4    # "curX":D
    .end local v6    # "curY":D
    :cond_78
    :goto_78
    :pswitch_78
    const/4 v3, 0x1

    goto :goto_10

    .line 356
    .restart local v4    # "curX":D
    .restart local v6    # "curY":D
    :pswitch_7a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mAllowDouble:Z

    .line 363
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mForceRestart:Z

    .line 369
    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, createReferenceSquare(DDZ)V

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent() ACTION_DOWN called"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mInsideReferenceSquare:Z

    .line 373
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mDirectionDetected:Z

    goto :goto_78

    .line 382
    :pswitch_9e
    move-object/from16 v0, p0

    iget-boolean v3, v0, mForceRestart:Z

    if-nez v3, :cond_78

    .line 383
    move-object/from16 v0, p0

    iget-boolean v3, v0, mInsideReferenceSquare:Z

    if-eqz v3, :cond_2d5

    .line 389
    move-object/from16 v0, p0

    iget-boolean v3, v0, mAllow:Z

    if-eqz v3, :cond_78

    .line 391
    const/16 v16, 0x0

    .line 392
    .local v16, "insideTradeArea":Z
    sget-boolean v3, FOUR_CONFIGURATION_MODE:Z

    if-nez v3, :cond_228

    .line 393
    move-object/from16 v0, p0

    iget-wide v8, v0, mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_29f

    move-object/from16 v0, p0

    iget-wide v8, v0, mRightX:D

    cmpg-double v3, v4, v8

    if-gez v3, :cond_29f

    move-object/from16 v0, p0

    iget-wide v8, v0, mTopY:D

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_29f

    move-object/from16 v0, p0

    iget-wide v8, v0, mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_29f

    const/16 v19, 0x1

    .line 397
    .local v19, "isTradeNorthEast":Z
    :goto_e2
    move-object/from16 v0, p0

    iget-wide v8, v0, mTopY:D

    cmpl-double v3, v6, v8

    if-lez v3, :cond_2a3

    move-object/from16 v0, p0

    iget-wide v8, v0, mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_2a3

    move-object/from16 v0, p0

    iget-wide v8, v0, mRightX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_2a3

    move-object/from16 v0, p0

    iget-wide v8, v0, mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_2a3

    const/16 v17, 0x1

    .line 401
    .local v17, "isTradeEastNorth":Z
    :goto_10e
    move-object/from16 v0, p0

    iget-wide v8, v0, mBottomY:D

    cmpg-double v3, v6, v8

    if-gez v3, :cond_2a7

    move-object/from16 v0, p0

    iget-wide v8, v0, mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_2a7

    move-object/from16 v0, p0

    iget-wide v8, v0, mRightX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_2a7

    move-object/from16 v0, p0

    iget-wide v8, v0, mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_2a7

    const/16 v18, 0x1

    .line 405
    .local v18, "isTradeEastSouth":Z
    :goto_13a
    move-object/from16 v0, p0

    iget-wide v8, v0, mRightX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_2ab

    move-object/from16 v0, p0

    iget-wide v8, v0, mRightX:D

    cmpg-double v3, v4, v8

    if-gez v3, :cond_2ab

    move-object/from16 v0, p0

    iget-wide v8, v0, mBottomY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_2ab

    move-object/from16 v0, p0

    iget-wide v8, v0, mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_2ab

    const/16 v21, 0x1

    .line 409
    .local v21, "isTradeSouthEast":Z
    :goto_166
    move-object/from16 v0, p0

    iget-wide v8, v0, mLeftX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_2af

    move-object/from16 v0, p0

    iget-wide v8, v0, mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_2af

    move-object/from16 v0, p0

    iget-wide v8, v0, mBottomY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_2af

    move-object/from16 v0, p0

    iget-wide v8, v0, mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_2af

    const/16 v22, 0x1

    .line 413
    .local v22, "isTradeSouthWest":Z
    :goto_192
    move-object/from16 v0, p0

    iget-wide v8, v0, mLeftX:D

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_2b3

    move-object/from16 v0, p0

    iget-wide v8, v0, mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_2b3

    move-object/from16 v0, p0

    iget-wide v8, v0, mBottomY:D

    cmpg-double v3, v6, v8

    if-gez v3, :cond_2b3

    move-object/from16 v0, p0

    iget-wide v8, v0, mBottomY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_2b3

    const/16 v24, 0x1

    .line 417
    .local v24, "isTradeWestSouth":Z
    :goto_1be
    move-object/from16 v0, p0

    iget-wide v8, v0, mLeftX:D

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_2b7

    move-object/from16 v0, p0

    iget-wide v8, v0, mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_2b7

    move-object/from16 v0, p0

    iget-wide v8, v0, mTopY:D

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_2b7

    move-object/from16 v0, p0

    iget-wide v8, v0, mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_2b7

    const/16 v23, 0x1

    .line 421
    .local v23, "isTradeWestNorth":Z
    :goto_1ea
    move-object/from16 v0, p0

    iget-wide v8, v0, mLeftX:D

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_2bb

    move-object/from16 v0, p0

    iget-wide v8, v0, mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    add-double/2addr v8, v10

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_2bb

    move-object/from16 v0, p0

    iget-wide v8, v0, mTopY:D

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_2bb

    move-object/from16 v0, p0

    iget-wide v8, v0, mTopY:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mTradeSpace:D

    sub-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_2bb

    const/16 v20, 0x1

    .line 431
    .local v20, "isTradeNorthWest":Z
    :goto_216
    if-nez v19, :cond_226

    if-nez v17, :cond_226

    if-nez v18, :cond_226

    if-nez v21, :cond_226

    if-nez v22, :cond_226

    if-nez v24, :cond_226

    if-nez v23, :cond_226

    if-eqz v20, :cond_228

    .line 435
    :cond_226
    const/16 v16, 0x1

    .line 443
    .end local v17    # "isTradeEastNorth":Z
    .end local v18    # "isTradeEastSouth":Z
    .end local v19    # "isTradeNorthEast":Z
    .end local v20    # "isTradeNorthWest":Z
    .end local v21    # "isTradeSouthEast":Z
    .end local v22    # "isTradeSouthWest":Z
    .end local v23    # "isTradeWestNorth":Z
    .end local v24    # "isTradeWestSouth":Z
    :cond_228
    sget-object v2, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    .line 444
    .local v2, "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    if-nez v16, :cond_242

    .line 445
    move-object/from16 v0, p0

    iget-wide v8, v0, mLeftX:D

    move-object/from16 v0, p0

    iget-wide v10, v0, mRightX:D

    move-object/from16 v0, p0

    iget-wide v12, v0, mTopY:D

    move-object/from16 v0, p0

    iget-wide v14, v0, mBottomY:D

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v15}, getDirection(DDDDDD)Lcom/android/internal/widget/DirectionLockView$Direction;

    move-result-object v2

    .line 448
    :cond_242
    sget-object v3, Lcom/android/internal/widget/DirectionLockView$2;->$SwitchMap$com$android$internal$widget$DirectionLockView$Direction:[I

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView$Direction;->ordinal()I

    move-result v8

    aget v3, v3, v8

    packed-switch v3, :pswitch_data_2e6

    goto/16 :goto_78

    .line 456
    :pswitch_24f
    move-object/from16 v0, p0

    iget-object v3, v0, TAG:Ljava/lang/String;

    const-string v8, "in onTouchEvent() Diagonal Detected"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mForceRestart:Z

    .line 465
    invoke-virtual/range {p0 .. p0}, clearScreen()V

    .line 467
    move-object/from16 v0, p0

    iget-boolean v3, v0, mPlayVoice:Z

    if-nez v3, :cond_270

    move-object/from16 v0, p0

    iget-object v3, v0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_287

    .line 468
    :cond_270
    move-object/from16 v0, p0

    iget-object v3, v0, mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    iget-object v8, v0, myContext:Landroid/content/Context;

    const v9, 0x1040a47

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8, v9, v10}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 474
    :cond_287
    invoke-virtual/range {p0 .. p0}, resetPassword()V

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    if-eqz v3, :cond_78

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    const-string v8, "DIAGONAL"

    move-object/from16 v0, p0

    iget-boolean v9, v0, mDirectionDetected:Z

    invoke-interface {v3, v8, v9}, Lcom/android/internal/widget/DirectionLockTouchListener;->onDirectionDetected(Ljava/lang/String;Z)V

    goto/16 :goto_78

    .line 393
    .end local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    :cond_29f
    const/16 v19, 0x0

    goto/16 :goto_e2

    .line 397
    .restart local v19    # "isTradeNorthEast":Z
    :cond_2a3
    const/16 v17, 0x0

    goto/16 :goto_10e

    .line 401
    .restart local v17    # "isTradeEastNorth":Z
    :cond_2a7
    const/16 v18, 0x0

    goto/16 :goto_13a

    .line 405
    .restart local v18    # "isTradeEastSouth":Z
    :cond_2ab
    const/16 v21, 0x0

    goto/16 :goto_166

    .line 409
    .restart local v21    # "isTradeSouthEast":Z
    :cond_2af
    const/16 v22, 0x0

    goto/16 :goto_192

    .line 413
    .restart local v22    # "isTradeSouthWest":Z
    :cond_2b3
    const/16 v24, 0x0

    goto/16 :goto_1be

    .line 417
    .restart local v24    # "isTradeWestSouth":Z
    :cond_2b7
    const/16 v23, 0x0

    goto/16 :goto_1ea

    .line 421
    .restart local v23    # "isTradeWestNorth":Z
    :cond_2bb
    const/16 v20, 0x0

    goto/16 :goto_216

    .line 485
    .end local v17    # "isTradeEastNorth":Z
    .end local v18    # "isTradeEastSouth":Z
    .end local v19    # "isTradeNorthEast":Z
    .end local v21    # "isTradeSouthEast":Z
    .end local v22    # "isTradeSouthWest":Z
    .end local v23    # "isTradeWestNorth":Z
    .end local v24    # "isTradeWestSouth":Z
    .restart local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    :pswitch_2bf
    move-object/from16 v0, p0

    iget-boolean v3, v0, mAllowDouble:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, handleDirectionEvent(Lcom/android/internal/widget/DirectionLockView$Direction;Z)V

    .line 491
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, createReferenceSquare(DDZ)V

    .line 501
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mAllowDouble:Z

    goto/16 :goto_78

    .line 514
    .end local v2    # "curDirection":Lcom/android/internal/widget/DirectionLockView$Direction;
    .end local v16    # "insideTradeArea":Z
    :cond_2d5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mInsideReferenceSquare:Z

    goto/16 :goto_78

    .line 347
    :pswitch_data_2dc
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_78
        :pswitch_9e
    .end packed-switch

    .line 448
    :pswitch_data_2e6
    .packed-switch 0x1
        :pswitch_24f
        :pswitch_24f
        :pswitch_24f
        :pswitch_24f
        :pswitch_2bf
        :pswitch_2bf
        :pswitch_2bf
        :pswitch_2bf
    .end packed-switch
.end method

.method public reloadBitmap()V
    .registers 4

    .prologue
    .line 1210
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "in reloadBitmap()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-direct {p0}, releaseDirectionBitmaps()V

    .line 1214
    iget-boolean v1, p0, mShowArrow:Z

    if-eqz v1, :cond_17

    .line 1215
    iget-boolean v1, p0, isParentArrowSize:Z

    if-eqz v1, :cond_18

    iget v0, p0, mParentArrowSize:I

    .line 1216
    .local v0, "arrowSize":I
    :goto_14
    invoke-direct {p0, v0}, loadDirectionBitmaps(I)V

    .line 1218
    .end local v0    # "arrowSize":I
    :cond_17
    return-void

    .line 1215
    :cond_18
    sget v0, DEFAULT_ARROW_SIZE:I

    goto :goto_14
.end method

.method public resetPassword()V
    .registers 2

    .prologue
    .line 239
    const-string v0, ""

    iput-object v0, p0, mCurrentPassword:Ljava/lang/String;

    .line 240
    const-string v0, ""

    iput-object v0, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setAllow(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 733
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "in setAllow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iput-boolean p1, p0, mAllow:Z

    .line 735
    return-void
.end method

.method public setCurrentPassword(Ljava/lang/String;)V
    .registers 5
    .param p1, "givenPassword"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, mCurrentPassword:Ljava/lang/String;

    .line 274
    const-string v1, ""

    iput-object v1, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .local v0, "counter":I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_77

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_78

    .line 276
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 279
    :sswitch_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_14

    .line 282
    :sswitch_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_14

    .line 285
    :sswitch_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x39

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_14

    .line 288
    :sswitch_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mCurrentPasswordNumbers:Ljava/lang/String;

    goto :goto_14

    .line 294
    :cond_77
    return-void

    .line 277
    :sswitch_data_78
    .sparse-switch
        0x44 -> :sswitch_2f
        0x4c -> :sswitch_47
        0x52 -> :sswitch_5f
        0x55 -> :sswitch_17
    .end sparse-switch
.end method

.method public setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/internal/widget/DirectionLockTouchListener;

    .prologue
    .line 305
    iput-object p1, p0, mDirectionLockTouchListener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 306
    return-void
.end method

.method public setPlayBeep(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, mPlayBeep:Z

    .line 216
    return-void
.end method

.method public setPlayVibration(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, mPlayVibration:Z

    .line 194
    return-void
.end method

.method public setPlayVoice(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, mPlayVoice:Z

    .line 205
    return-void
.end method

.method public setSettingsMode()V
    .registers 2

    .prologue
    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, SETTINGS_APP:Z

    .line 606
    return-void
.end method

.method public setShowArrow(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, mShowArrow:Z

    .line 183
    return-void
.end method

.method public showErrorImage()V
    .registers 5

    .prologue
    .line 1027
    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "in showErrorImage()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v1, 0x1

    iput-boolean v1, p0, mForceRestart:Z

    .line 1029
    const/4 v0, 0x0

    .line 1031
    .local v0, "resIDError":I
    iget-object v1, p0, mCurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4d

    iget-boolean v1, p0, mShowArrow:Z

    if-eqz v1, :cond_4d

    .line 1033
    iget-object v1, p0, mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, mDirectionBitmapLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1034
    const v0, 0x10802dc

    .line 1043
    :cond_20
    :goto_20
    iget v1, p0, currentErrorResId:I

    if-ne v1, v0, :cond_28

    iget-object v1, p0, mErrorBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_46

    .line 1044
    :cond_28
    iget-object v1, p0, mErrorBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_34

    .line 1045
    iget-object v1, p0, mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1046
    const/4 v1, 0x0

    iput-object v1, p0, mErrorBitmap:Landroid/graphics/Bitmap;

    .line 1049
    :cond_34
    iget-object v1, p0, myContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, ARROW_SIZE:I

    iget v3, p0, ARROW_SIZE:I

    invoke-direct {p0, v1, v0, v2, v3}, getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, mErrorBitmap:Landroid/graphics/Bitmap;

    .line 1052
    iput v0, p0, currentErrorResId:I

    .line 1056
    :cond_46
    iget-object v1, p0, mDirectionImageView:Landroid/widget/ImageView;

    iget-object v2, p0, mErrorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1058
    :cond_4d
    return-void

    .line 1035
    :cond_4e
    iget-object v1, p0, mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, mDirectionBitmapRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1036
    const v0, 0x10802de

    goto :goto_20

    .line 1037
    :cond_5c
    iget-object v1, p0, mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, mDirectionBitmapUp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1038
    const v0, 0x10802e0

    goto :goto_20

    .line 1039
    :cond_6a
    iget-object v1, p0, mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, mDirectionBitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1040
    const v0, 0x10802da

    goto :goto_20
.end method
