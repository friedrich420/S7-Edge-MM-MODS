.class public Lcom/android/settings/fingerprint/FingerprintProgressEffectView;
.super Landroid/widget/FrameLayout;
.source "FingerprintProgressEffectView.java"


# static fields
.field private static strokeWidth:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bShowError:Z

.field private mContext:Landroid/content/Context;

.field private mEffectHeight:I

.field private mEffectWidth:I

.field private mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

.field private mPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const-string v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 20
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 21
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 22
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const-string v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 20
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 21
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 22
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const-string v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 20
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 21
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 22
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 105
    const-string v1, "FpstFingerprintProgressEffectView"

    const-string v2, "[init]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    .line 109
    if-nez p2, :cond_0

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attrs is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    sget-object v1, Lcom/android/settings/R$styleable;->FingerprintEffectView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    .line 122
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->reset()V

    .line 127
    return-void
.end method


# virtual methods
.method public removeFingerMark()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    const-string v1, "FpstFingerprintProgressEffectView"

    const-string v2, "[removeFingerMark]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-ne v1, v5, :cond_0

    .line 92
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 94
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 95
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 96
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    .line 100
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v1, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setFingerStatus(I)V

    .line 102
    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 130
    const-string v0, "FpstFingerprintProgressEffectView"

    const-string v1, "[reset]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    .line 133
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 135
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    .line 140
    :cond_0
    new-instance v0, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    const v4, -0xfc4d15

    const v5, -0xff541d

    const v6, -0x1b1b1c

    const v7, -0xff2d5d

    sget v8, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    const v9, 0x7f0200dd

    const v10, 0x7f0200da

    const v11, 0x7f0200db

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;-><init>(Landroid/content/Context;IIIIIIIIII)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    .line 143
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    .line 144
    return-void
.end method

.method public setFingerStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 48
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setFingerStatus(I)V

    .line 51
    :cond_0
    return-void
.end method

.method public setPercent(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 54
    const-string v0, "FpstFingerprintProgressEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPercent] percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    if-le v0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setPercent(F)V

    .line 65
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-nez v0, :cond_0

    .line 66
    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    goto :goto_0
.end method

.method public showErrorEffect()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 71
    const-string v2, "FpstFingerprintProgressEffectView"

    const-string v3, "[showErrorEffect]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    add-int/lit8 v1, v2, 0x5

    .line 74
    .local v1, "tmp_percent":I
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 75
    const/16 v1, 0x62

    .line 77
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 78
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 79
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 81
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-nez v2, :cond_1

    .line 82
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    .line 83
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingereffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v2, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    .line 86
    :cond_1
    return-void
.end method
