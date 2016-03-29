.class public Lcom/android/keyguard/status/KeyguardPINTextView;
.super Lcom/android/keyguard/status/KeyguardTextView;
.source "KeyguardPINTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/keyguard/status/KeyguardTextView;-><init>(Landroid/content/Context;)V

    .line 12
    sput-object p1, Lcom/android/keyguard/status/KeyguardPINTextView;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/status/KeyguardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    sput-object p1, Lcom/android/keyguard/status/KeyguardPINTextView;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/status/KeyguardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    sput-object p1, Lcom/android/keyguard/status/KeyguardPINTextView;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/status/KeyguardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    sput-object p1, Lcom/android/keyguard/status/KeyguardPINTextView;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private getFontScaleInKeyguardBoundaryForPIN(F)F
    .locals 3
    .param p1, "scale"    # F

    .prologue
    const v0, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/keyguard/status/KeyguardPINTextView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/keyguard/status/KeyguardPINTextView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 45
    .end local p1    # "scale":F
    :cond_1
    :goto_0
    return p1

    .line 40
    .restart local p1    # "scale":F
    :cond_2
    cmpl-float v2, p1, v0

    if-lez v2, :cond_3

    move p1, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    move p1, v1

    .line 43
    goto :goto_0
.end method


# virtual methods
.method protected updateFontSizeInKeyguardBoundary(F)V
    .locals 1
    .param p1, "newFontScale"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/keyguard/status/KeyguardPINTextView;->getFontScaleInKeyguardBoundaryForPIN(F)F

    move-result v0

    invoke-super {p0, v0}, Lcom/android/keyguard/status/KeyguardTextView;->updateFontSizeInKeyguardBoundary(F)V

    .line 33
    return-void
.end method
