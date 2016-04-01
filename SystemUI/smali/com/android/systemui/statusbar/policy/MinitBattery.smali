.class public Lcom/android/systemui/statusbar/policy/MinitBattery;
.super Landroid/widget/ImageView;
.source "MinitBattery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
    }
.end annotation


# instance fields
.field private mBatteryColor:I

.field private mBatteryIconsLoaction:Ljava/lang/String;

.field private mBatteryLowColor:I

.field private mBatteryMidColor:I

.field private mBatteryType:I

.field private mChargeAnim:I

.field private mDownloadBatteryIconsLoaction:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field private mIsColorable:Z

.field private mLastLevel:I

.field private mLevel:I

.field private mLowLevel:I

.field private mMidLevel:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatus:I

.field private mTextColor:I

.field private mTextSize:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mWorkingType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    .line 44
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    .line 45
    move-object v2, v0

    const/16 v3, 0x1e

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    .line 46
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    .line 47
    move-object v2, v0

    const/16 v3, -0x3c00

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    .line 48
    move-object v2, v0

    const v3, -0x21d6fc

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    .line 49
    move-object v2, v0

    const/16 v3, 0x32

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    move-object v2, v0

    const/16 v3, 0x14

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    .line 51
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    .line 52
    move-object v2, v0

    new-instance v3, Lcom/android/systemui/statusbar/policy/MinitBattery$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/MinitBattery$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;)V

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    .line 70
    move-object v2, v0

    const/16 v3, 0x8

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    .line 75
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    .line 44
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    .line 45
    move-object v3, v0

    const/16 v4, 0x1e

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    .line 46
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    .line 47
    move-object v3, v0

    const/16 v4, -0x3c00

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    .line 48
    move-object v3, v0

    const v4, -0x21d6fc

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    .line 49
    move-object v3, v0

    const/16 v4, 0x32

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    move-object v3, v0

    const/16 v4, 0x14

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    .line 51
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    .line 52
    move-object v3, v0

    new-instance v4, Lcom/android/systemui/statusbar/policy/MinitBattery$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;)V

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    .line 70
    move-object v3, v0

    const/16 v4, 0x8

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    .line 71
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    .line 80
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/MinitBattery;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyle":I
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    .line 44
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    .line 45
    move-object v4, v0

    const/16 v5, 0x1e

    iput v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    .line 46
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    .line 47
    move-object v4, v0

    const/16 v5, -0x3c00

    iput v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    .line 48
    move-object v4, v0

    const v5, -0x21d6fc

    iput v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    .line 49
    move-object v4, v0

    const/16 v5, 0x32

    iput v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    move-object v4, v0

    const/16 v5, 0x14

    iput v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    .line 51
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    .line 52
    move-object v4, v0

    new-instance v5, Lcom/android/systemui/statusbar/policy/MinitBattery$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery$1;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;)V

    iput-object v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    .line 70
    move-object v4, v0

    const/16 v5, 0x8

    iput v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    .line 71
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    .line 85
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/MinitBattery;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/MinitBattery;I)I
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "x0":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    move v0, v2

    .end local v0    # "x0":Lcom/android/systemui/statusbar/policy/MinitBattery;
    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/MinitBattery;I)I
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "x0":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mStatus:I

    move v0, v2

    .end local v0    # "x0":Lcom/android/systemui/statusbar/policy/MinitBattery;
    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/MinitBattery;I)I
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "x0":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    move v0, v2

    .end local v0    # "x0":Lcom/android/systemui/statusbar/policy/MinitBattery;
    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MinitBattery;)V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "x0":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v1, v0

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MinitBattery;)V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "x0":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v1, v0

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->updateImageView()V

    return-void
.end method

.method private applyColorFilter()V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    if-eqz v1, :cond_3

    .line 157
    move-object v1, v0

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    if-lt v1, v2, :cond_1

    move-object v1, v0

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    if-lt v1, v2, :cond_1

    .line 158
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    if-ge v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    if-le v1, v2, :cond_2

    .line 160
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 161
    :cond_2
    move-object v1, v0

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    if-ge v1, v2, :cond_0

    .line 162
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 165
    :cond_3
    move-object v1, v0

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private getChargingAnimation(I)Landroid/graphics/drawable/AnimationDrawable;
    .locals 9

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move v1, p1

    .local v1, "level":I
    new-instance v5, Landroid/graphics/drawable/AnimationDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    move-object v2, v5

    .line 272
    .local v2, "ad":Landroid/graphics/drawable/AnimationDrawable;
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    packed-switch v5, :pswitch_data_0

    .line 311
    :goto_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    return-object v0

    .line 274
    .restart local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    :pswitch_0
    move-object v5, v2

    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x5dc

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 275
    move-object v5, v2

    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 276
    goto :goto_0

    .line 278
    :pswitch_1
    const/4 v5, 0x1

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    const/16 v6, 0x64

    if-ge v5, v6, :cond_0

    .line 279
    move-object v5, v2

    move-object v6, v0

    move v7, v3

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 281
    :cond_0
    move-object v5, v2

    move-object v6, v0

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 282
    move-object v5, v2

    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x9c4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 283
    goto :goto_0

    .line 285
    .end local v3    # "i":I
    :pswitch_2
    move-object v5, v2

    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 286
    move v5, v1

    move v3, v5

    .restart local v3    # "i":I
    :goto_2
    move v5, v3

    const/16 v6, 0x65

    if-ge v5, v6, :cond_1

    .line 287
    move-object v5, v2

    move-object v6, v0

    move v7, v3

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x50

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 289
    :cond_1
    goto :goto_0

    .line 291
    .end local v3    # "i":I
    :pswitch_3
    move v5, v1

    move v3, v5

    .line 292
    .local v3, "l":I
    move v5, v3

    if-nez v5, :cond_2

    .line 293
    const/4 v5, 0x1

    move v3, v5

    .line 295
    :cond_2
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_3
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_3

    .line 296
    move-object v5, v2

    move-object v6, v0

    move v7, v4

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 298
    :cond_3
    move-object v5, v2

    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x9c4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 299
    goto/16 :goto_0

    .line 301
    .end local v3    # "l":I
    .end local v4    # "i":I
    :pswitch_4
    const/4 v5, 0x0

    move v4, v5

    .restart local v4    # "i":I
    :goto_4
    move v5, v4

    const/16 v6, 0x65

    if-ge v5, v6, :cond_4

    .line 302
    move-object v5, v2

    move-object v6, v0

    move v7, v4

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x14

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 304
    :cond_4
    move-object v5, v2

    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 305
    move-object v5, v2

    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 306
    move-object v5, v2

    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 307
    move-object v5, v2

    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 308
    move-object v5, v2

    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getChargingDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move v1, p1

    .local v1, "level":I
    const/4 v5, 0x0

    move-object v2, v5

    .line 233
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    packed-switch v5, :pswitch_data_0

    .line 266
    :goto_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    return-object v0

    .line 235
    .restart local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    :pswitch_0
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 236
    goto :goto_0

    .line 239
    :pswitch_1
    new-instance v5, Ljava/io/File;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "stat_sys_battery_charge_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 243
    .local v3, "f":Ljava/io/File;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 245
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 247
    :cond_0
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 249
    goto :goto_0

    .line 252
    .end local v3    # "f":Ljava/io/File;
    :pswitch_2
    new-instance v5, Ljava/io/File;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stat_sys_battery_charge_anim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 257
    .local v4, "fi":Ljava/io/File;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 259
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 261
    :cond_1
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    goto/16 :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move v1, p1

    .local v1, "level":I
    move v2, p2

    .local v2, "charge":Z
    const/4 v4, 0x0

    move-object v3, v4

    .line 176
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    move v4, v2

    if-eqz v4, :cond_0

    .line 177
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_charge_anim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 185
    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    .line 186
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    return-object v0

    .line 180
    .restart local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method private getNormalDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move v1, p1

    .local v1, "level":I
    const/4 v5, 0x0

    move-object v2, v5

    .line 195
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    packed-switch v5, :pswitch_data_0

    .line 225
    :goto_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    return-object v0

    .line 197
    .restart local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    :pswitch_0
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 198
    goto :goto_0

    .line 201
    :pswitch_1
    new-instance v5, Ljava/io/File;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "stat_sys_battery_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 204
    .local v3, "f":Ljava/io/File;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 206
    move-object v5, v0

    move-object v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 208
    :cond_0
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 210
    goto :goto_0

    .line 213
    .end local v3    # "f":Ljava/io/File;
    :pswitch_2
    new-instance v5, Ljava/io/File;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stat_sys_battery_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 216
    .local v4, "fi":Ljava/io/File;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 217
    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    .line 218
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 220
    :cond_1
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getDefaultBattery(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, v5

    goto/16 :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSaveLocation(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "save_loc"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 121
    .local v2, "t":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/3Minit Downloads/BatteryIcons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 124
    .end local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/3Minit Downloads/BatteryIcons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private getSettings()V
    .locals 6

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v1, v2

    .line 130
    .local v1, "cr":Landroid/content/ContentResolver;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSaveLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    .line 131
    move-object v2, v0

    move-object v3, v1

    const-string v4, "minit_anim_type"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mChargeAnim:I

    .line 132
    move-object v2, v0

    move-object v3, v1

    const-string v4, "minit_battery_type"

    const/16 v5, 0x8

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryType:I

    .line 133
    move-object v2, v0

    move-object v3, v1

    const-string v4, "minit_working_type"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mWorkingType:I

    .line 134
    move-object v2, v0

    move-object v3, v1

    const-string v4, "minit_colorable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    .line 135
    move-object v2, v0

    move-object v3, v1

    const-string v4, "minit_battery_color"

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryColor:I

    .line 136
    move-object v2, v0

    move-object v3, v1

    const-string v4, "minit_battery_mid_color"

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryMidColor:I

    .line 137
    move-object v2, v0

    move-object v3, v1

    const-string v4, "minit_battery_low_color"

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryLowColor:I

    .line 138
    move-object v2, v0

    move-object v3, v1

    const-string v4, "minit_mid_level"

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mMidLevel:I

    .line 139
    move-object v2, v0

    move-object v3, v1

    const-string v4, "minit_low_level"

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLowLevel:I

    .line 140
    move-object v2, v0

    move-object v3, v1

    const-string v4, "minit_battery_text_size"

    const/16 v5, 0x1e

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    .line 141
    move-object v2, v0

    move-object v3, v1

    const-string v4, "minit_battery_text_color"

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    .line 144
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 147
    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MinitBattery;->invalidate()V

    .line 149
    move-object v2, v1

    const-string v3, "minit_battery_visible"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 150
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setVisibility(I)V

    .line 153
    :goto_1
    return-void

    .line 134
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 152
    :cond_1
    move-object v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setVisibility(I)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    .line 90
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mStatus:I

    .line 95
    move-object v3, v0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3MinitBatteryIcons"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    .line 97
    move-object v3, v0

    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MinitBattery;->mBatteryIconsLoaction:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mFile:Ljava/io/File;

    .line 98
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 100
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSaveLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mDownloadBatteryIconsLoaction:Ljava/lang/String;

    .line 102
    move-object v3, v0

    new-instance v4, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;-><init>(Lcom/android/systemui/statusbar/policy/MinitBattery;Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mRM:Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;

    .line 104
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    .line 105
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 108
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 109
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    move-object v3, v0

    invoke-direct {v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 116
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setBatterySize(Ljava/io/File;Landroid/graphics/drawable/Drawable;)V
    .locals 13

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    move-object v2, p2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v3, v9

    .line 403
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    move-object v9, v3

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 406
    const/4 v9, 0x0

    move-object v4, v9

    .line 408
    .local v4, "b":Landroid/graphics/Bitmap;
    move-object v9, v1

    if-eqz v9, :cond_0

    .line 409
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v4, v9

    .line 413
    :cond_0
    move-object v9, v2

    if-eqz v9, :cond_1

    .line 414
    move-object v9, v2

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v4, v9

    .line 417
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move v5, v9

    .line 418
    .local v5, "width":I
    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move v6, v9

    .line 420
    .local v6, "height":I
    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "minit_battery_size"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    move v7, v9

    .line 422
    .local v7, "size":I
    const/4 v9, 0x0

    move v8, v9

    .line 424
    .local v8, "t":I
    move v9, v7

    if-gez v9, :cond_2

    .line 425
    move v9, v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move v8, v9

    .line 426
    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move v10, v6

    move v11, v8

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 427
    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move v10, v5

    move v11, v8

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 437
    :goto_0
    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    return-void

    .line 428
    :cond_2
    move v9, v7

    if-lez v9, :cond_3

    .line 429
    move v9, v7

    move v8, v9

    .line 430
    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move v10, v6

    move v11, v8

    add-int/2addr v10, v11

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 431
    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move v10, v5

    move v11, v8

    add-int/2addr v10, v11

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 433
    :cond_3
    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move v10, v6

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 434
    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move v10, v5

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private updateImageView()V
    .locals 5

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mStatus:I

    packed-switch v2, :pswitch_data_0

    .line 361
    :pswitch_0
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    .line 366
    :goto_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/android/systemui/statusbar/policy/MinitBattery;->applyColorFilter()V

    .line 368
    return-void

    .line 349
    :pswitch_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getChargingAnimation(I)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    move-object v1, v2

    .line 350
    .local v1, "ad":Landroid/graphics/drawable/AnimationDrawable;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 352
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 353
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    .line 355
    goto :goto_0

    .line 357
    .end local v1    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    :pswitch_2
    move-object v2, v0

    move-object v3, v0

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getNormalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MinitBattery;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLastLevel:I

    .line 359
    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 317
    new-instance v2, Landroid/content/IntentFilter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 318
    .local v1, "filter":Landroid/content/IntentFilter;
    move-object v2, v1

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    move-object v2, v1

    const-string v3, "com.three.minit.BATTERY_TYPE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    move-object v2, v1

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 321
    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 322
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 327
    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MinitBattery;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 328
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/android/systemui/statusbar/policy/MinitBattery;
    move-object v1, p1

    .local v1, "canvas":Landroid/graphics/Canvas;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 335
    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/MinitBattery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v5

    .line 337
    .local v2, "vlp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    move v3, v5

    .line 338
    .local v3, "xPos":I
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    move v4, v5

    .line 340
    .local v4, "yPos":I
    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery;->mIsColorable:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_0

    .line 341
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/statusbar/policy/MinitBattery;->mLevel:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move v7, v3

    int-to-float v7, v7

    move v8, v4

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/MinitBattery;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 343
    :cond_0
    return-void
.end method
