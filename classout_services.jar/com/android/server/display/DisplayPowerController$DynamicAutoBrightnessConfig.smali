.class public final Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DynamicAutoBrightnessConfig"
.end annotation


# instance fields
.field protected mAutoBrightnessLevelStepRatio:F

.field protected mAutoBrightnessLevelStepRatioAt0Lux:F

.field protected mAutoBrightnessLevelStepRatioForEbook:F

.field protected mBrightnessLevels:[I

.field protected mBrightnessLevelsForEbookOnly:[I

.field protected mBrightnessValueSlope:[D

.field protected mBrightnessValueSlopeForEbookOnly:[D

.field protected mBrightnessValues:[I

.field protected mBrightnessValuesForEbookOnly:[I

.field protected mHighHysteresisLevels:[I

.field protected mHighHysteresisLevelsForEbookOnly:[I

.field protected mHighHysteresisSlope:[D

.field protected mHighHysteresisSlopeForEbookOnly:[D

.field protected mHighHysteresisValues:[I

.field protected mHighHysteresisValuesForEbookOnly:[I

.field private mIsTablet:Z

.field protected mLowHysteresisLevels:[I

.field protected mLowHysteresisLevelsForEbookOnly:[I

.field protected mLowHysteresisSlope:[D

.field protected mLowHysteresisSlopeForEbookOnly:[D

.field protected mLowHysteresisValues:[I

.field protected mLowHysteresisValuesForEbookOnly:[I

.field protected mLowLimitAtHighestAutoBrightnessLevel:I

.field protected mMinimumBrightnessStepValue:I

.field protected mMinimumExpressiveBrightnessValues:[I

.field protected mValueOfVirtualZeroCandela:I

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method protected constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2866
    iput-object p1, p0, this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2867
    const/16 v0, 0xff

    iput v0, p0, mLowLimitAtHighestAutoBrightnessLevel:I

    .line 2895
    iput v1, p0, mAutoBrightnessLevelStepRatio:F

    .line 2896
    iput v1, p0, mAutoBrightnessLevelStepRatioAt0Lux:F

    .line 2897
    iput v1, p0, mAutoBrightnessLevelStepRatioForEbook:F

    .line 3168
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsTablet:Z

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 2866
    invoke-direct {p0, p1}, dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3307
    :try_start_0
    iget-object v6, p0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerController;->access$1900(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v6

    if-eqz v6, :cond_1ce

    .line 3308
    const-string v4, ""

    .line 3309
    .local v4, "mStrLowHysteresisPoints":Ljava/lang/String;
    const-string v2, ""

    .line 3310
    .local v2, "mStrBrightnessValuePoints":Ljava/lang/String;
    const-string v3, ""

    .line 3311
    .local v3, "mStrHighHysteresisPoints":Ljava/lang/String;
    const-string v5, ""

    .line 3313
    .local v5, "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    const-string v6, "[DAB] Dynamic Auto Brightness Tables :"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mValueOfVirtualZeroCandela = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mValueOfVirtualZeroCandela:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mLowLimitAtHighestAutoBrightnessLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mMinimumBrightnessStepValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mMinimumBrightnessStepValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3317
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5e
    iget-object v6, p0, mLowHysteresisLevels:[I

    array-length v6, v6

    if-ge v1, v6, :cond_95

    .line 3318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mLowHysteresisLevels:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mLowHysteresisValues:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3317
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 3320
    :cond_95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mStrLowHysteresisPoints = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3321
    const/4 v1, 0x0

    :goto_ac
    iget-object v6, p0, mBrightnessLevels:[I

    array-length v6, v6

    if-ge v1, v6, :cond_e3

    .line 3322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBrightnessLevels:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mBrightnessValues:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3321
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    .line 3324
    :cond_e3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mStrBrightnessValuePoints = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3325
    const/4 v1, 0x0

    :goto_fa
    iget-object v6, p0, mHighHysteresisLevels:[I

    array-length v6, v6

    if-ge v1, v6, :cond_131

    .line 3326
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mHighHysteresisLevels:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mHighHysteresisValues:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3325
    add-int/lit8 v1, v1, 0x1

    goto :goto_fa

    .line 3328
    :cond_131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mStrHighHysteresisPoints = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3329
    const/4 v1, 0x0

    :goto_148
    iget-object v6, p0, mMinimumExpressiveBrightnessValues:[I

    array-length v6, v6

    if-ge v1, v6, :cond_16b

    .line 3330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mMinimumExpressiveBrightnessValues:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3329
    add-int/lit8 v1, v1, 0x1

    goto :goto_148

    .line 3332
    :cond_16b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DAB]   mStrMinimumExpressiveBrightnessValues = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3354
    const-string v6, "[DAB] USE_EBOOK_AUTO_BRIGHTNESS_TABLE = false"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAutoBrightnessLevelStepRatio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mAutoBrightnessLevelStepRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAutoBrightnessLevelStepRatioAt0Lux="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mAutoBrightnessLevelStepRatioAt0Lux:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAutoBrightnessLevelStepRatioForEbook="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mAutoBrightnessLevelStepRatioForEbook:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1ce} :catch_1cf

    .line 3367
    .end local v1    # "i":I
    .end local v2    # "mStrBrightnessValuePoints":Ljava/lang/String;
    .end local v3    # "mStrHighHysteresisPoints":Ljava/lang/String;
    .end local v4    # "mStrLowHysteresisPoints":Ljava/lang/String;
    .end local v5    # "mStrMinimumExpressiveBrightnessValues":Ljava/lang/String;
    :cond_1ce
    :goto_1ce
    return-void

    .line 3364
    :catch_1cf
    move-exception v0

    .line 3365
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "DisplayPowerController"

    const-string v7, "[DAB] dumpAutoBrightnessTables"

    invoke-static {v6, v7, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ce
.end method

.method private getAutoBrightnessTablePacket()[B
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 3009
    const/4 v4, 0x0

    .line 3010
    .local v4, "listSize":I
    iget-object v9, p0, mLowHysteresisLevels:[I

    array-length v9, v9

    iget-object v10, p0, mLowHysteresisValues:[I

    array-length v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, mBrightnessLevels:[I

    array-length v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, mBrightnessValues:[I

    array-length v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, mHighHysteresisLevels:[I

    array-length v10, v10

    add-int/2addr v9, v10

    iget-object v10, p0, mHighHysteresisValues:[I

    array-length v10, v10

    add-int v5, v9, v10

    .line 3019
    .local v5, "nomalTableSize":I
    move v4, v5

    .line 3021
    new-array v1, v4, [I

    .line 3022
    .local v1, "dataArray":[I
    const/4 v7, 0x0

    .line 3023
    .local v7, "pos":I
    const/4 v0, 0x6

    .line 3024
    .local v0, "arraySize":I
    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v9, v9, 0x7

    new-array v6, v9, [B

    .line 3026
    .local v6, "packet":[B
    iget-object v9, p0, mLowHysteresisLevels:[I

    iget-object v10, p0, mLowHysteresisLevels:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3027
    iget-object v9, p0, mLowHysteresisLevels:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3028
    iget-object v9, p0, mLowHysteresisValues:[I

    iget-object v10, p0, mLowHysteresisValues:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3029
    iget-object v9, p0, mLowHysteresisValues:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3030
    iget-object v9, p0, mBrightnessLevels:[I

    iget-object v10, p0, mBrightnessLevels:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3031
    iget-object v9, p0, mBrightnessLevels:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3032
    iget-object v9, p0, mBrightnessValues:[I

    iget-object v10, p0, mBrightnessValues:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3033
    iget-object v9, p0, mBrightnessValues:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3034
    iget-object v9, p0, mHighHysteresisLevels:[I

    iget-object v10, p0, mHighHysteresisLevels:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3035
    iget-object v9, p0, mHighHysteresisLevels:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3036
    iget-object v9, p0, mHighHysteresisValues:[I

    iget-object v10, p0, mHighHysteresisValues:[I

    array-length v10, v10

    invoke-static {v9, v12, v1, v7, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3037
    iget-object v9, p0, mHighHysteresisValues:[I

    array-length v9, v9

    add-int/2addr v7, v9

    .line 3052
    # getter for: Lcom/android/server/display/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$1500()Z

    move-result v9

    if-eqz v9, :cond_ad

    .line 3053
    const-string v8, ""

    .line 3054
    .local v8, "strData":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_76
    array-length v9, v1

    if-ge v3, v9, :cond_95

    .line 3055
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v1, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3054
    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    .line 3057
    :cond_95
    const-string v9, "DisplayPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[DAB] data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    .end local v3    # "i":I
    .end local v8    # "strData":Ljava/lang/String;
    :cond_ad
    int-to-byte v9, v0

    aput-byte v9, v6, v12

    .line 3061
    const/4 v9, 0x1

    iget-object v10, p0, mLowHysteresisLevels:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3062
    const/4 v9, 0x2

    iget-object v10, p0, mLowHysteresisValues:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3063
    const/4 v9, 0x3

    iget-object v10, p0, mBrightnessLevels:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3064
    const/4 v9, 0x4

    iget-object v10, p0, mBrightnessValues:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3065
    const/4 v9, 0x5

    iget-object v10, p0, mHighHysteresisLevels:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3066
    const/4 v9, 0x6

    iget-object v10, p0, mHighHysteresisValues:[I

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3076
    const/4 v2, 0x7

    .line 3077
    .local v2, "dataArrayStartPos":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_dc
    array-length v9, v1

    if-ge v3, v9, :cond_11a

    .line 3078
    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x0

    aget v10, v1, v3

    shr-int/lit8 v10, v10, 0x0

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3079
    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x1

    aget v10, v1, v3

    shr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3080
    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x2

    aget v10, v1, v3

    shr-int/lit8 v10, v10, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3081
    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x3

    aget v10, v1, v3

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 3077
    add-int/lit8 v3, v3, 0x1

    goto :goto_dc

    .line 3084
    :cond_11a
    return-object v6
.end method

.method private getSlope(IIIIZ)D
    .registers 16
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "bx"    # I
    .param p4, "by"    # I
    .param p5, "bReverse"    # Z

    .prologue
    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    .line 3155
    const-wide/16 v0, 0x0

    .line 3156
    .local v0, "slope":D
    if-eq p1, p3, :cond_b

    if-ne p2, p4, :cond_e

    .line 3157
    :cond_b
    const-wide/16 v0, 0x0

    .line 3165
    :goto_d
    return-wide v0

    .line 3159
    :cond_e
    if-eqz p5, :cond_23

    .line 3160
    int-to-double v2, p3

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p1

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sub-int v4, p4, p2

    int-to-double v4, v4

    div-double v0, v2, v4

    goto :goto_d

    .line 3162
    :cond_23
    sub-int v2, p4, p2

    int-to-double v2, v2

    int-to-double v4, p3

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    int-to-double v6, p1

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double v0, v2, v4

    goto :goto_d
.end method

.method private isTablet()Z
    .registers 3

    .prologue
    .line 3170
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3171
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private sendAutoBrightnessTablePacket([B)V
    .registers 8
    .param p1, "packet"    # [B

    .prologue
    .line 3088
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>([B)V

    .line 3089
    .local v0, "attr":Landroid/hardware/scontext/SContextAutoBrightnessAttribute;
    iget-object v3, p0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mSContextManager:Landroid/hardware/scontext/SContextManager;
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1600(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/scontext/SContextManager;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4, v0}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    .line 3092
    const-string v2, ""

    .line 3093
    .local v2, "strPacket":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v3, p1

    if-ge v1, v3, :cond_32

    .line 3094
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3093
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 3096
    :cond_32
    iget-object v3, p0, this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mStrAutoBrightnessTablePacket:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/server/display/DisplayPowerController;->access$1702(Lcom/android/server/display/DisplayPowerController;Ljava/lang/String;)Ljava/lang/String;

    .line 3097
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DAB] packet : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    return-void
.end method


# virtual methods
.method protected getDynamicAutoBrightnessHighHysteresis(F)F
    .registers 20
    .param p1, "cd"    # F

    .prologue
    .line 3270
    const/4 v6, 0x0

    .line 3271
    .local v6, "lux":F
    const/4 v3, 0x0

    .line 3272
    .local v3, "i":I
    const/4 v4, 0x1

    .line 3273
    .local v4, "isNormalMode":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    if-eqz v9, :cond_1a

    .line 3274
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v9, :cond_41

    const/4 v4, 0x1

    .line 3276
    :cond_1a
    :goto_1a
    if-eqz v4, :cond_43

    move-object/from16 v0, p0

    iget-object v5, v0, mHighHysteresisLevels:[I

    .line 3277
    .local v5, "levels":[I
    :goto_20
    if-eqz v4, :cond_48

    move-object/from16 v0, p0

    iget-object v8, v0, mHighHysteresisValues:[I

    .line 3278
    .local v8, "values":[I
    :goto_26
    if-eqz v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v7, v0, mHighHysteresisSlope:[D

    .line 3280
    .local v7, "slopes":[D
    :goto_2c
    const/4 v3, 0x1

    :goto_2d
    array-length v9, v8

    if-ge v3, v9, :cond_37

    .line 3281
    aget v9, v8, v3

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gez v9, :cond_52

    .line 3285
    :cond_37
    array-length v9, v5

    if-lt v3, v9, :cond_55

    .line 3286
    array-length v9, v5

    add-int/lit8 v3, v9, -0x1

    .line 3287
    aget v9, v5, v3

    int-to-float v6, v9

    .line 3300
    .end local v5    # "levels":[I
    .end local v6    # "lux":F
    .end local v7    # "slopes":[D
    .end local v8    # "values":[I
    :goto_40
    return v6

    .line 3274
    .restart local v6    # "lux":F
    :cond_41
    const/4 v4, 0x0

    goto :goto_1a

    .line 3276
    :cond_43
    move-object/from16 v0, p0

    iget-object v5, v0, mHighHysteresisLevelsForEbookOnly:[I

    goto :goto_20

    .line 3277
    .restart local v5    # "levels":[I
    :cond_48
    move-object/from16 v0, p0

    iget-object v8, v0, mHighHysteresisValuesForEbookOnly:[I

    goto :goto_26

    .line 3278
    .restart local v8    # "values":[I
    :cond_4d
    move-object/from16 v0, p0

    iget-object v7, v0, mHighHysteresisSlopeForEbookOnly:[D

    goto :goto_2c

    .line 3280
    .restart local v7    # "slopes":[D
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 3289
    :cond_55
    add-int/lit8 v9, v3, -0x1

    aget-wide v10, v7, v9

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_86

    .line 3290
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    add-int/lit8 v9, v3, -0x1

    aget-wide v12, v7, v9

    add-int/lit8 v9, v3, -0x1

    aget v9, v8, v9

    int-to-float v9, v9

    sub-float v9, p1, v9

    float-to-double v14, v9

    mul-double/2addr v12, v14

    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9

    int-to-double v14, v9

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v9, v10

    int-to-float v6, v9

    goto :goto_40

    .line 3293
    :cond_86
    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8a} :catch_8c

    int-to-float v6, v9

    goto :goto_40

    .line 3297
    .end local v5    # "levels":[I
    .end local v7    # "slopes":[D
    .end local v8    # "values":[I
    :catch_8c
    move-exception v2

    .line 3299
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] getDynamicAutoBrightnessHighHysteresis"

    invoke-static {v9, v10, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3300
    const v6, 0x459c4000    # 5000.0f

    goto :goto_40
.end method

.method protected getDynamicAutoBrightnessLevelStepRatio(FZ)F
    .registers 25
    .param p1, "lux"    # F
    .param p2, "isNormalMode"    # Z

    .prologue
    .line 2966
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "power"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 2967
    .local v6, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x0

    .line 2968
    .local v4, "i":I
    const/4 v8, 0x0

    .line 2969
    .local v8, "screenBrightnessSettingDefault":F
    if-eqz p2, :cond_61

    move-object/from16 v0, p0

    iget-object v5, v0, mBrightnessLevels:[I

    .line 2970
    .local v5, "levels":[I
    :goto_19
    if-eqz p2, :cond_66

    move-object/from16 v0, p0

    iget-object v12, v0, mBrightnessValues:[I

    .line 2971
    .local v12, "values":[I
    :goto_1f
    if-eqz p2, :cond_6b

    move-object/from16 v0, p0

    iget-object v11, v0, mBrightnessValueSlope:[D

    .line 2974
    .local v11, "slopes":[D
    :goto_25
    const/4 v4, 0x0

    :goto_26
    :try_start_26
    array-length v13, v5

    if-ge v4, v13, :cond_30

    .line 2975
    aget v13, v5, v4

    int-to-float v13, v13

    cmpg-float v13, p1, v13

    if-gtz v13, :cond_70

    .line 2979
    :cond_30
    array-length v13, v12

    if-lt v4, v13, :cond_73

    .line 2980
    array-length v13, v12

    add-int/lit8 v13, v13, -0x1

    aget v13, v12, v13
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_38} :catch_b7

    int-to-float v8, v13

    .line 2994
    :goto_39
    const/4 v7, 0x0

    .line 2995
    .local v7, "ratio":F
    const/4 v13, 0x0

    cmpl-float v13, p1, v13

    if-nez v13, :cond_c6

    .line 2996
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v10

    .line 2997
    .local v10, "screenBrightnessSettingMinimum":I
    int-to-float v13, v10

    div-float/2addr v13, v8

    const v14, 0x3e4ccccd    # 0.2f

    invoke-static {v13, v14}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    .line 3002
    .end local v10    # "screenBrightnessSettingMinimum":I
    :goto_4c
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v13, v7, v13

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3004
    .local v2, "autoBrightnessLevelStepRatio":F
    return v2

    .line 2969
    .end local v2    # "autoBrightnessLevelStepRatio":F
    .end local v5    # "levels":[I
    .end local v7    # "ratio":F
    .end local v11    # "slopes":[D
    .end local v12    # "values":[I
    :cond_61
    move-object/from16 v0, p0

    iget-object v5, v0, mBrightnessLevelsForEbookOnly:[I

    goto :goto_19

    .line 2970
    .restart local v5    # "levels":[I
    :cond_66
    move-object/from16 v0, p0

    iget-object v12, v0, mBrightnessValuesForEbookOnly:[I

    goto :goto_1f

    .line 2971
    .restart local v12    # "values":[I
    :cond_6b
    move-object/from16 v0, p0

    iget-object v11, v0, mBrightnessValueSlopeForEbookOnly:[D

    goto :goto_25

    .line 2974
    .restart local v11    # "slopes":[D
    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 2982
    :cond_73
    add-int/lit8 v13, v4, -0x1

    :try_start_75
    aget-wide v14, v11, v13

    const-wide/16 v16, 0x0

    cmpl-double v13, v14, v16

    if-lez v13, :cond_b3

    .line 2983
    add-int/lit8 v13, v4, -0x1

    aget-wide v14, v11, v13

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log10(D)D

    move-result-wide v16

    add-int/lit8 v13, v4, -0x1

    aget v13, v5, v13

    int-to-double v0, v13

    move-wide/from16 v18, v0

    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->log10(D)D

    move-result-wide v18

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-int/lit8 v13, v4, -0x1

    aget v13, v12, v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-int v13, v14

    int-to-float v8, v13

    goto :goto_39

    .line 2986
    :cond_b3
    aget v13, v12, v4
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_b5} :catch_b7

    int-to-float v8, v13

    goto :goto_39

    .line 2989
    :catch_b7
    move-exception v3

    .line 2990
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "DisplayPowerController"

    const-string v14, "[DAB] Failed to get the Auto Brightness Setting Default value."

    invoke-static {v13, v14, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2991
    invoke-virtual {v6}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v13

    int-to-float v8, v13

    goto/16 :goto_39

    .line 2999
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "ratio":F
    :cond_c6
    invoke-virtual {v6}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v9

    .line 3000
    .local v9, "screenBrightnessSettingMaximum":I
    int-to-float v13, v9

    div-float/2addr v13, v8

    const v14, 0x3e4ccccd    # 0.2f

    invoke-static {v13, v14}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    goto/16 :goto_4c
.end method

.method protected getDynamicAutoBrightnessLowHysteresis(F)F
    .registers 20
    .param p1, "cd"    # F

    .prologue
    .line 3234
    const/4 v6, 0x0

    .line 3235
    .local v6, "lux":F
    const/4 v3, 0x0

    .line 3236
    .local v3, "i":I
    const/4 v4, 0x1

    .line 3237
    .local v4, "isNormalMode":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    if-eqz v9, :cond_1a

    .line 3238
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v9, :cond_41

    const/4 v4, 0x1

    .line 3240
    :cond_1a
    :goto_1a
    if-eqz v4, :cond_43

    move-object/from16 v0, p0

    iget-object v5, v0, mLowHysteresisLevels:[I

    .line 3241
    .local v5, "levels":[I
    :goto_20
    if-eqz v4, :cond_48

    move-object/from16 v0, p0

    iget-object v8, v0, mLowHysteresisValues:[I

    .line 3242
    .local v8, "values":[I
    :goto_26
    if-eqz v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v7, v0, mLowHysteresisSlope:[D

    .line 3244
    .local v7, "slopes":[D
    :goto_2c
    const/4 v3, 0x1

    :goto_2d
    array-length v9, v8

    if-ge v3, v9, :cond_37

    .line 3245
    aget v9, v8, v3

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_52

    .line 3249
    :cond_37
    array-length v9, v5

    if-lt v3, v9, :cond_55

    .line 3250
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget v9, v5, v9

    int-to-float v6, v9

    .line 3263
    .end local v5    # "levels":[I
    .end local v6    # "lux":F
    .end local v7    # "slopes":[D
    .end local v8    # "values":[I
    :goto_40
    return v6

    .line 3238
    .restart local v6    # "lux":F
    :cond_41
    const/4 v4, 0x0

    goto :goto_1a

    .line 3240
    :cond_43
    move-object/from16 v0, p0

    iget-object v5, v0, mLowHysteresisLevelsForEbookOnly:[I

    goto :goto_20

    .line 3241
    .restart local v5    # "levels":[I
    :cond_48
    move-object/from16 v0, p0

    iget-object v8, v0, mLowHysteresisValuesForEbookOnly:[I

    goto :goto_26

    .line 3242
    .restart local v8    # "values":[I
    :cond_4d
    move-object/from16 v0, p0

    iget-object v7, v0, mLowHysteresisSlopeForEbookOnly:[D

    goto :goto_2c

    .line 3244
    .restart local v7    # "slopes":[D
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 3252
    :cond_55
    add-int/lit8 v9, v3, -0x1

    aget-wide v10, v7, v9

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_86

    .line 3253
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    add-int/lit8 v9, v3, -0x1

    aget-wide v12, v7, v9

    add-int/lit8 v9, v3, -0x1

    aget v9, v8, v9

    int-to-float v9, v9

    sub-float v9, p1, v9

    float-to-double v14, v9

    mul-double/2addr v12, v14

    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9

    int-to-double v14, v9

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v9, v10

    int-to-float v6, v9

    goto :goto_40

    .line 3256
    :cond_86
    add-int/lit8 v9, v3, -0x1

    aget v9, v5, v9
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8a} :catch_8c

    int-to-float v6, v9

    goto :goto_40

    .line 3260
    .end local v5    # "levels":[I
    .end local v7    # "slopes":[D
    .end local v8    # "values":[I
    :catch_8c
    move-exception v2

    .line 3262
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] getDynamicAutoBrightnessLowHysteresis"

    invoke-static {v9, v10, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3263
    const v6, 0x459c4000    # 5000.0f

    goto :goto_40
.end method

.method protected getDynamicAutoBrightnessValue(F)F
    .registers 20
    .param p1, "lux"    # F

    .prologue
    .line 3198
    const/4 v2, 0x0

    .line 3199
    .local v2, "cd":F
    const/4 v4, 0x0

    .line 3200
    .local v4, "i":I
    const/4 v5, 0x1

    .line 3201
    .local v5, "isNormalMode":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    if-eqz v9, :cond_1a

    .line 3202
    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v9

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-nez v9, :cond_41

    const/4 v5, 0x1

    .line 3204
    :cond_1a
    :goto_1a
    if-eqz v5, :cond_43

    move-object/from16 v0, p0

    iget-object v6, v0, mBrightnessLevels:[I

    .line 3205
    .local v6, "levels":[I
    :goto_20
    if-eqz v5, :cond_48

    move-object/from16 v0, p0

    iget-object v8, v0, mBrightnessValues:[I

    .line 3206
    .local v8, "values":[I
    :goto_26
    if-eqz v5, :cond_4d

    move-object/from16 v0, p0

    iget-object v7, v0, mBrightnessValueSlope:[D

    .line 3208
    .local v7, "slopes":[D
    :goto_2c
    const/4 v4, 0x1

    :goto_2d
    array-length v9, v6

    if-ge v4, v9, :cond_37

    .line 3209
    aget v9, v6, v4

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_52

    .line 3213
    :cond_37
    array-length v9, v8

    if-lt v4, v9, :cond_55

    .line 3214
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget v9, v8, v9

    int-to-float v2, v9

    .line 3227
    .end local v2    # "cd":F
    .end local v6    # "levels":[I
    .end local v7    # "slopes":[D
    .end local v8    # "values":[I
    :goto_40
    return v2

    .line 3202
    .restart local v2    # "cd":F
    :cond_41
    const/4 v5, 0x0

    goto :goto_1a

    .line 3204
    :cond_43
    move-object/from16 v0, p0

    iget-object v6, v0, mBrightnessLevelsForEbookOnly:[I

    goto :goto_20

    .line 3205
    .restart local v6    # "levels":[I
    :cond_48
    move-object/from16 v0, p0

    iget-object v8, v0, mBrightnessValuesForEbookOnly:[I

    goto :goto_26

    .line 3206
    .restart local v8    # "values":[I
    :cond_4d
    move-object/from16 v0, p0

    iget-object v7, v0, mBrightnessValueSlopeForEbookOnly:[D

    goto :goto_2c

    .line 3208
    .restart local v7    # "slopes":[D
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 3216
    :cond_55
    add-int/lit8 v9, v4, -0x1

    aget-wide v10, v7, v9

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_8b

    .line 3217
    add-int/lit8 v9, v4, -0x1

    aget-wide v10, v7, v9

    move/from16 v0, p1

    float-to-double v12, v0

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    add-int/lit8 v9, v4, -0x1

    aget v9, v6, v9

    int-to-double v14, v9

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-int/lit8 v9, v4, -0x1

    aget v9, v8, v9

    int-to-double v12, v9

    add-double/2addr v10, v12

    double-to-int v9, v10

    int-to-float v2, v9

    goto :goto_40

    .line 3220
    :cond_8b
    add-int/lit8 v9, v4, -0x1

    aget v9, v8, v9
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8f} :catch_91

    int-to-float v2, v9

    goto :goto_40

    .line 3224
    .end local v6    # "levels":[I
    .end local v7    # "slopes":[D
    .end local v8    # "values":[I
    :catch_91
    move-exception v3

    .line 3226
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "DisplayPowerController"

    const-string v10, "[DAB] getDynamicAutoBrightnessValue"

    invoke-static {v9, v10, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3227
    const/high16 v2, 0x437f0000    # 255.0f

    goto :goto_40
.end method

.method protected getFinalDynamicAutoBrightnessValue(FF)I
    .registers 11
    .param p1, "lux"    # F
    .param p2, "origDynamicBrightness"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 3175
    float-to-int v1, p2

    .line 3177
    .local v1, "finalBrightness":I
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v2

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 3179
    .local v0, "autoBrightnessAdj":F
    const v2, 0x459c4000    # 5000.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3c

    iget v2, p0, mLowLimitAtHighestAutoBrightnessLevel:I

    if-ge v1, v2, :cond_3c

    .line 3180
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DAB] finalBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    iget v1, p0, mLowLimitAtHighestAutoBrightnessLevel:I

    .line 3184
    :cond_3c
    iget-boolean v2, p0, mIsTablet:Z

    if-eqz v2, :cond_59

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_59

    .line 3185
    float-to-double v2, v0

    const-wide v4, -0x4026666666666666L    # -0.4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_5a

    iget-object v2, p0, mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v6

    if-le v1, v2, :cond_5a

    .line 3186
    iget-object v2, p0, mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v6

    .line 3192
    :cond_59
    :goto_59
    return v1

    .line 3187
    :cond_5a
    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_59

    iget-object v2, p0, mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v7

    if-ge v1, v2, :cond_59

    .line 3188
    iget-object v2, p0, mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v7

    goto :goto_59
.end method

.method protected initDynamicAutoBrightnessSlopeTables()V
    .registers 13

    .prologue
    .line 3104
    :try_start_0
    iget-object v0, p0, mLowHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    .line 3105
    .local v10, "lengthOfLowHysteresisSlope":I
    iget-object v0, p0, mBrightnessValues:[I

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    .line 3106
    .local v8, "lengthOfBrightnessValueSlope":I
    iget-object v0, p0, mHighHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 3108
    .local v9, "lengthOfHighHysteresisSlope":I
    new-array v0, v10, [D

    iput-object v0, p0, mLowHysteresisSlope:[D

    .line 3109
    new-array v0, v8, [D

    iput-object v0, p0, mBrightnessValueSlope:[D

    .line 3110
    new-array v0, v9, [D

    iput-object v0, p0, mHighHysteresisSlope:[D

    .line 3111
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1c
    if-ge v7, v10, :cond_3f

    .line 3112
    iget-object v11, p0, mLowHysteresisSlope:[D

    iget-object v0, p0, mLowHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, mLowHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, mLowHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, mLowHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v11, v7

    .line 3111
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 3115
    :cond_3f
    const/4 v7, 0x0

    :goto_40
    if-ge v7, v8, :cond_63

    .line 3116
    iget-object v11, p0, mBrightnessValueSlope:[D

    iget-object v0, p0, mBrightnessLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, mBrightnessValues:[I

    aget v2, v0, v7

    iget-object v0, p0, mBrightnessLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, mBrightnessValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v11, v7

    .line 3115
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 3119
    :cond_63
    const/4 v7, 0x0

    :goto_64
    if-ge v7, v9, :cond_8f

    .line 3120
    iget-object v11, p0, mHighHysteresisSlope:[D

    iget-object v0, p0, mHighHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, mHighHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, mHighHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, mHighHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v11, v7
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_84} :catch_87

    .line 3119
    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    .line 3149
    .end local v7    # "i":I
    .end local v8    # "lengthOfBrightnessValueSlope":I
    .end local v9    # "lengthOfHighHysteresisSlope":I
    .end local v10    # "lengthOfLowHysteresisSlope":I
    :catch_87
    move-exception v6

    .line 3150
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] initDynamicAutoBrightnessSlopeTables"

    invoke-static {v0, v1, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3152
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_8f
    return-void
.end method

.method protected initializeProperties()V
    .registers 5

    .prologue
    .line 2900
    const-string v2, "DisplayPowerController"

    const-string v3, "[DAB] Load SEC Auto-brightness setting"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2907
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x10e0100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, mValueOfVirtualZeroCandela:I

    .line 2910
    const v2, 0x1070060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, mLowHysteresisLevels:[I

    .line 2912
    const v2, 0x1070061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, mLowHysteresisValues:[I

    .line 2914
    const v2, 0x1070062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, mBrightnessLevels:[I

    .line 2916
    const v2, 0x1070063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, mBrightnessValues:[I

    .line 2918
    const v2, 0x1070064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, mHighHysteresisLevels:[I

    .line 2920
    const v2, 0x1070065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, mHighHysteresisValues:[I

    .line 2940
    const v2, 0x107005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, mMinimumExpressiveBrightnessValues:[I

    .line 2942
    const v2, 0x10e00fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, mMinimumBrightnessStepValue:I

    .line 2944
    invoke-virtual {p0}, initDynamicAutoBrightnessSlopeTables()V

    .line 2947
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-eqz v2, :cond_87

    .line 2948
    const v2, 0x3e6b8520    # 0.23000002f

    iput v2, p0, mAutoBrightnessLevelStepRatioAt0Lux:F

    .line 2952
    :cond_6e
    :goto_6e
    const/high16 v2, 0x43fa0000    # 500.0f

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, getDynamicAutoBrightnessLevelStepRatio(FZ)F

    move-result v2

    iput v2, p0, mAutoBrightnessLevelStepRatio:F

    .line 2958
    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mIsSupportedSensorhubAutoBrightness:Z
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 2959
    invoke-direct {p0}, getAutoBrightnessTablePacket()[B

    move-result-object v0

    .line 2960
    .local v0, "packet":[B
    invoke-direct {p0, v0}, sendAutoBrightnessTablePacket([B)V

    .line 2963
    .end local v0    # "packet":[B
    :cond_86
    return-void

    .line 2949
    :cond_87
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->NOBLE_PROJECT:Z

    if-nez v2, :cond_93

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->ZERO2_PROJECT:Z

    if-nez v2, :cond_93

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->AX_PROJECT:Z

    if-eqz v2, :cond_6e

    .line 2950
    :cond_93
    const v2, 0x3eda1cac    # 0.426f

    iput v2, p0, mAutoBrightnessLevelStepRatioAt0Lux:F

    goto :goto_6e
.end method
