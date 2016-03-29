.class public Lcom/android/keyguard/status/KeyguardTextClock;
.super Landroid/widget/TextClock;
.source "KeyguardTextClock.java"


# instance fields
.field private mFontScale:F

.field private mIsAmPm:Z

.field private mLocale:Ljava/util/Locale;

.field private mOriginalFontSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/status/KeyguardTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/status/KeyguardTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/status/KeyguardTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mFontScale:F

    .line 16
    iput-boolean v2, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mIsAmPm:Z

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mLocale:Ljava/util/Locale;

    .line 33
    sget-object v1, Lcom/android/keyguard/R$styleable;->KeyguardTextClock:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/android/keyguard/R$styleable;->KeyguardTextClock_isAmPm:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mIsAmPm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void

    .line 37
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private updateFontSizeInKeyguardBoundary(F)V
    .locals 4
    .param p1, "newFontScale"    # F

    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/keyguard/status/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    .line 68
    .local v0, "newFontScaleInBoundary":F
    iget v1, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iput v0, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mFontScale:F

    .line 70
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mOriginalFontSize:F

    iget v3, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mFontScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/status/KeyguardTextClock;->setTextSize(IF)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/widget/TextClock;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 53
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mLocale:Ljava/util/Locale;

    .line 55
    iget-boolean v0, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mIsAmPm:Z

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/keyguard/status/KeyguardTextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/keyguard/status/KeyguardTextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/status/KeyguardTextClock;->updateFontSizeInKeyguardBoundary(F)V

    .line 64
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->status_view_12_hours_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$string;->status_view_24_hours_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/TextClock;->onFinishInflate()V

    .line 44
    invoke-virtual {p0}, Lcom/android/keyguard/status/KeyguardTextClock;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mOriginalFontSize:F

    .line 45
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/status/KeyguardTextClock;->mLocale:Ljava/util/Locale;

    .line 46
    invoke-virtual {p0}, Lcom/android/keyguard/status/KeyguardTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/status/KeyguardTextClock;->updateFontSizeInKeyguardBoundary(F)V

    .line 47
    return-void
.end method
