.class public Lcom/android/keyguard/status/KeyguardTextView;
.super Landroid/widget/TextView;
.source "KeyguardTextView.java"


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private mFontScale:F

.field private mOriginalFontSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/status/KeyguardTextView;->mFontScale:F

    .line 21
    sput-object p1, Lcom/android/keyguard/status/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/status/KeyguardTextView;->mFontScale:F

    .line 26
    sput-object p1, Lcom/android/keyguard/status/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/status/KeyguardTextView;->mFontScale:F

    .line 31
    sput-object p1, Lcom/android/keyguard/status/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/status/KeyguardTextView;->mFontScale:F

    .line 36
    sput-object p1, Lcom/android/keyguard/status/KeyguardTextView;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static getFontScaleInKeyguardBoundary(F)F
    .locals 3
    .param p0, "scale"    # F

    .prologue
    const v0, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/keyguard/status/KeyguardTextView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p0, v1

    .line 69
    .end local p0    # "scale":F
    :cond_1
    :goto_0
    return p0

    .line 64
    .restart local p0    # "scale":F
    :cond_2
    cmpl-float v2, p0, v0

    if-lez v2, :cond_3

    move p0, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    move p0, v1

    .line 67
    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 49
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/KeyguardTextView;->updateFontSizeInKeyguardBoundary(F)V

    .line 50
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 42
    invoke-virtual {p0}, Lcom/android/keyguard/status/KeyguardTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/status/KeyguardTextView;->mOriginalFontSize:F

    .line 43
    invoke-virtual {p0}, Lcom/android/keyguard/status/KeyguardTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/KeyguardTextView;->updateFontSizeInKeyguardBoundary(F)V

    .line 44
    return-void
.end method

.method protected updateFontSizeInKeyguardBoundary(F)V
    .locals 4
    .param p1, "newFontScale"    # F

    .prologue
    .line 53
    invoke-static {p1}, Lcom/android/keyguard/status/KeyguardTextView;->getFontScaleInKeyguardBoundary(F)F

    move-result v0

    .line 54
    .local v0, "newFontScaleInBoundary":F
    iget v1, p0, Lcom/android/keyguard/status/KeyguardTextView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iput v0, p0, Lcom/android/keyguard/status/KeyguardTextView;->mFontScale:F

    .line 56
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/status/KeyguardTextView;->mOriginalFontSize:F

    iget v3, p0, Lcom/android/keyguard/status/KeyguardTextView;->mFontScale:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/status/KeyguardTextView;->setTextSize(IF)V

    .line 58
    :cond_0
    return-void
.end method
