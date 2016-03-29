.class public Lcom/android/keyguard/status/SecKeyguardClockDualView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardClockDualView.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mClockTypeface:Landroid/graphics/Typeface;

.field private mDualClockHomeContainer:Landroid/view/View;

.field private mDualClockRoamingContainer:Landroid/view/View;

.field private mDualHomeAmpm:Landroid/widget/TextClock;

.field private mDualHomeDate:Lcom/android/keyguard/status/KeyguardDateView;

.field private mDualHomeLocale:Landroid/widget/TextView;

.field private mDualHomeTime:Landroid/widget/TextClock;

.field private mDualRoamingAmpm:Landroid/widget/TextClock;

.field private mDualRoamingDate:Lcom/android/keyguard/status/KeyguardDateView;

.field private mDualRoamingLocale:Landroid/widget/TextView;

.field private mDualRoamingTime:Landroid/widget/TextClock;

.field private mFontScale:F

.field private final mHandler:Landroid/os/Handler;

.field private mLocale:Ljava/util/Locale;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBlackTextOnWhiteCoverWallpaper:Z

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "SecKeyguardClockDualView"

    sput-object v0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mLocale:Ljava/util/Locale;

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mFontScale:F

    .line 65
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardClockDualView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardClockDualView$1;-><init>(Lcom/android/keyguard/status/SecKeyguardClockDualView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardClockDualView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardClockDualView$2;-><init>(Lcom/android/keyguard/status/SecKeyguardClockDualView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/status/SecKeyguardClockDualView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockDualView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->sendMsgUpdateClock(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/status/SecKeyguardClockDualView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockDualView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/status/SecKeyguardClockDualView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockDualView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/status/SecKeyguardClockDualView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockDualView;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/status/SecKeyguardClockDualView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockDualView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/status/SecKeyguardClockDualView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardClockDualView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->changeTextColorOnWhiteWallpaper()V

    return-void
.end method

.method private changeTextColorOnWhiteWallpaper()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 229
    .local v1, "whiteBG":Z
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    .line 231
    .local v0, "themeOn":Z
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeTime:Landroid/widget/TextClock;

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 233
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingTime:Landroid/widget/TextClock;

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 235
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeAmpm:Landroid/widget/TextClock;

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 237
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingAmpm:Landroid/widget/TextClock;

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 239
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/status/KeyguardDateView;

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 241
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/status/KeyguardDateView;

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 243
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 245
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingLocale:Landroid/widget/TextView;

    sget v5, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    invoke-static {v3, v4, v0, v1, v5}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 247
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v3, v2}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->setHomeIcon(FZ)V

    .line 248
    return-void

    .end local v0    # "themeOn":Z
    .end local v1    # "whiteBG":Z
    :cond_2
    move v1, v2

    .line 227
    goto :goto_0
.end method

.method private sendMsgUpdateClock(Z)V
    .locals 2
    .param p1, "direct"    # Z

    .prologue
    const/16 v1, 0x67

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->setClockStyle()V

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setHomeIcon(FZ)V
    .locals 11
    .param p1, "newScale"    # F
    .param p2, "isInBoundary"    # Z

    .prologue
    const/4 v7, 0x0

    .line 251
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteWallpaper:Z

    if-nez v8, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    if-eqz v8, :cond_3

    :cond_1
    const/4 v6, 0x1

    .line 253
    .local v6, "whiteBG":Z
    :goto_0
    iget-object v8, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/util/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v5

    .line 254
    .local v5, "themeOn":Z
    const/4 v1, 0x0

    .line 257
    .local v1, "dwHomeIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4

    .line 258
    iget-object v8, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/keyguard/R$drawable;->lock_ic_home_white_solution:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 259
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    const/4 v9, -0x1

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 267
    :goto_1
    if-eqz p2, :cond_6

    .end local p1    # "newScale":F
    :goto_2
    iput p1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mFontScale:F

    .line 269
    iget v8, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mFontScale:F

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_2

    .line 270
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "dwHomeIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 271
    .local v0, "btHomeIcon":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mFontScale:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 272
    .local v3, "sizeX":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mFontScale:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 273
    .local v4, "sizeY":I
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v0, v3, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v1, v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 278
    .end local v0    # "btHomeIcon":Landroid/graphics/Bitmap;
    .end local v3    # "sizeX":I
    .end local v4    # "sizeY":I
    .restart local v1    # "dwHomeIcon":Landroid/graphics/drawable/Drawable;
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_3
    return-void

    .end local v1    # "dwHomeIcon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "themeOn":Z
    .end local v6    # "whiteBG":Z
    .restart local p1    # "newScale":F
    :cond_3
    move v6, v7

    .line 251
    goto :goto_0

    .line 260
    .restart local v1    # "dwHomeIcon":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "themeOn":Z
    .restart local v6    # "whiteBG":Z
    :cond_4
    if-eqz v6, :cond_5

    .line 261
    iget-object v8, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/keyguard/R$drawable;->lock_ic_home_white_solution:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 263
    :cond_5
    iget-object v8, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/keyguard/R$drawable;->lock_ic_home:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 267
    :cond_6
    invoke-static {p1}, Lcom/android/keyguard/status/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result p1

    goto :goto_2

    .line 279
    .end local p1    # "newScale":F
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/keyguard/status/SecKeyguardClockDualView;->TAG:Ljava/lang/String;

    const-string v8, "Exception at adding home icon!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 152
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Lcom/android/keyguard/status/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    .line 84
    .local v0, "newScale":F
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mLocale:Ljava/util/Locale;

    .line 86
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->sendMsgUpdateClock(Z)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget v1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->setHomeIcon(FZ)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 157
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 158
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 122
    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_roaming_time_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualClockRoamingContainer:Landroid/view/View;

    .line 123
    sget v0, Lcom/android/keyguard/R$id;->roaming_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingLocale:Landroid/widget/TextView;

    .line 124
    sget v0, Lcom/android/keyguard/R$id;->roaming_time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingTime:Landroid/widget/TextClock;

    .line 125
    sget v0, Lcom/android/keyguard/R$id;->roaming_ampm:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingAmpm:Landroid/widget/TextClock;

    .line 126
    sget v0, Lcom/android/keyguard/R$id;->roaming_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/status/KeyguardDateView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingDate:Lcom/android/keyguard/status/KeyguardDateView;

    .line 127
    sget v0, Lcom/android/keyguard/R$id;->keyguard_dual_home_time_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualClockHomeContainer:Landroid/view/View;

    .line 128
    sget v0, Lcom/android/keyguard/R$id;->home_locale:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/android/keyguard/R$id;->home_time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeTime:Landroid/widget/TextClock;

    .line 130
    sget v0, Lcom/android/keyguard/R$id;->home_ampm:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeAmpm:Landroid/widget/TextClock;

    .line 131
    sget v0, Lcom/android/keyguard/R$id;->home_date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/status/KeyguardDateView;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/status/KeyguardDateView;

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteCoverWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mUseBlackTextOnWhiteCoverWallpaper:Z

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingTime:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeTime:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    .line 137
    const-string v0, "/system/fonts/Clock2016.ttf"

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mClockTypeface:Landroid/graphics/Typeface;

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mLocale:Ljava/util/Locale;

    .line 139
    invoke-direct {p0, v1}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->sendMsgUpdateClock(Z)V

    .line 142
    const-string v0, "iw"

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualClockRoamingContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualClockHomeContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 146
    :cond_0
    return-void
.end method

.method protected setClockStyle()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 172
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getOpenThemeClockFont()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "themeFont":Ljava/lang/String;
    const/4 v3, 0x0

    .line 174
    .local v3, "tf":Landroid/graphics/Typeface;
    if-eqz v4, :cond_2

    .line 175
    sget-object v5, Lcom/android/keyguard/status/SecKeyguardClockDualView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clockThemeFont: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {v4}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 180
    :goto_0
    if-eqz v3, :cond_0

    .line 181
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingTime:Landroid/widget/TextClock;

    invoke-virtual {v5, v3}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 182
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeTime:Landroid/widget/TextClock;

    invoke-virtual {v5, v3}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 186
    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingTime:Landroid/widget/TextClock;

    invoke-virtual {v5}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingAmpm:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 188
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeAmpm:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 195
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/KeyguardStatusUtils;->getHometimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 197
    .local v1, "homeCalendar":Ljava/util/Calendar;
    if-eqz v0, :cond_5

    .line 198
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 199
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeTime:Landroid/widget/TextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    .line 200
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeAmpm:Landroid/widget/TextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/status/KeyguardDateView;

    if-eqz v5, :cond_1

    .line 202
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeDate:Lcom/android/keyguard/status/KeyguardDateView;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/status/KeyguardDateView;->setTimeZone(Ljava/lang/String;)V

    .line 204
    :cond_1
    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardProperties;->shouldShowSeoulTextForHomeTime(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 205
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_home_Seoul:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 215
    .local v2, "roamingCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 216
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->shouldAddTimeTextForRoamingTime()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 217
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_roaming_Korea:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_3
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->changeTextColorOnWhiteWallpaper()V

    .line 224
    return-void

    .line 178
    .end local v0    # "autoHomeTimeZoneId":Ljava/lang/String;
    .end local v1    # "homeCalendar":Ljava/util/Calendar;
    .end local v2    # "roamingCalendar":Ljava/util/Calendar;
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mClockTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 190
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingAmpm:Landroid/widget/TextClock;

    invoke-virtual {v5, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 191
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeAmpm:Landroid/widget/TextClock;

    invoke-virtual {v5, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_1

    .line 207
    .restart local v0    # "autoHomeTimeZoneId":Ljava/lang/String;
    .restart local v1    # "homeCalendar":Ljava/util/Calendar;
    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_home:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 210
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 211
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_home:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 218
    .restart local v2    # "roamingCalendar":Ljava/util/Calendar;
    :cond_6
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isRoamingTextNotAllowedOnDualClock()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 219
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingLocale:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 221
    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/keyguard/R$string;->keyguard_dualclock_roaming:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
