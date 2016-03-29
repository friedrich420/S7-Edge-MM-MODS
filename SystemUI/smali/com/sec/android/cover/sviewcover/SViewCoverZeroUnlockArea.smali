.class public Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;
.super Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
.source "SViewCoverZeroUnlockArea.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$3;
    }
.end annotation


# instance fields
.field private final MSG_THEME_UPDATE:I

.field private mChargingTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

.field private mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

.field private mPreviewRootView:Landroid/view/ViewGroup;

.field private mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

.field private mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 67
    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    .line 71
    const/16 v8, 0x3e8

    iput v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->MSG_THEME_UPDATE:I

    .line 73
    new-instance v8, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$1;

    invoke-direct {v8, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)V

    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateHandler:Landroid/os/Handler;

    .line 87
    new-instance v8, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$2;

    invoke-direct {v8, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$2;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)V

    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 103
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    .line 105
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    const-string v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 108
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 109
    .local v6, "screenWidth":I
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 111
    .local v5, "screenHeight":I
    if-ge v6, v5, :cond_0

    move v7, v6

    .line 112
    .local v7, "smallestWidth":I
    :goto_0
    int-to-float v8, v7

    const/high16 v9, 0x44870000    # 1080.0f

    div-float v4, v8, v9

    .line 114
    .local v4, "ratio":F
    const-string v8, "SViewCoverZeroUnlockArea"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "screenWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v8, "SViewCoverZeroUnlockArea"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "screenHeight : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v8, "SViewCoverZeroUnlockArea"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ratio : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_first_border:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 120
    .local v0, "circleUnlockMaxWidth":I
    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 121
    .local v3, "outerStrokeWidth":I
    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v4

    float-to-int v2, v8

    .line 123
    .local v2, "innerStrokeWidth":I
    return-void

    .end local v0    # "circleUnlockMaxWidth":I
    .end local v2    # "innerStrokeWidth":I
    .end local v3    # "outerStrokeWidth":I
    .end local v4    # "ratio":F
    .end local v7    # "smallestWidth":I
    :cond_0
    move v7, v5

    .line 111
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->refreshChildView()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private refreshChildView()V
    .locals 3

    .prologue
    .line 388
    const-string v0, "SViewCoverZeroUnlockArea"

    const-string v1, "refreshChildView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$color;->sview_cover_theme_charging_text_font_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    :cond_2
    return-void
.end method

.method private setCameraShortcutVisibility(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "tempCamera":Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCameraShortcut()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .line 269
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    .line 271
    .local v0, "isSimPinSecure":Z
    if-eqz p1, :cond_0

    .line 272
    const-string v2, "SViewCoverZeroUnlockArea"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCameraShortcutVisibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PinSecure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isUsimTop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isUsimDownloadTopActivity(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->isSetupWizardRunning(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->isUsimDownloadTopActivity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 278
    invoke-virtual {v1, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    .line 282
    .end local v0    # "isSimPinSecure":Z
    :cond_1
    :goto_1
    return-void

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isCameraShortcut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    goto :goto_0

    .line 280
    .restart local v0    # "isSimPinSecure":Z
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setContactShortcutVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "tempContacts":Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isContactsShortcut()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .line 299
    :goto_0
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setVisibility(I)V

    .line 300
    :cond_0
    return-void

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isContactsShortcut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    goto :goto_0
.end method

.method private updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V
    .locals 3
    .param p1, "isPressedButton"    # Z
    .param p2, "container"    # Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    .prologue
    .line 176
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 179
    .local v0, "alpha":F
    :goto_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$3;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverAbstractUnlockArea$Container:[I

    invoke-virtual {p2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 193
    :cond_0
    :goto_1
    return-void

    .line 176
    .end local v0    # "alpha":F
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 181
    .restart local v0    # "alpha":F
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAlpha(F)V

    goto :goto_1

    .line 187
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAlpha(F)V

    goto :goto_1

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleHide()V
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->resetPreviewView()V

    .line 173
    :cond_0
    return-void
.end method

.method public handleShow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setVisibility(I)V

    .line 162
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V

    .line 163
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V

    .line 164
    return-void
.end method

.method public initMultiTouched()V
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->updateViewVisibility(ZLcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;)V

    .line 242
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 309
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->onAttachedToWindow()V

    .line 310
    const-string v0, "SViewCoverZeroUnlockArea"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 313
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->onDetachedFromWindow()V

    .line 319
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cleanUp()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->cleanUp()V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 328
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    sget v0, Lcom/sec/android/sviewcover/R$id;->sec_cover_camera_circle:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .line 127
    sget v0, Lcom/sec/android/sviewcover/R$id;->sec_cover_contact_circle:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .line 128
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->init()V

    .line 129
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->init()V

    .line 131
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 132
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V

    .line 133
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;->onWindowFocusChanged(Z)V

    .line 334
    if-nez p1, :cond_1

    .line 335
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->reset()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->reset()V

    .line 343
    :cond_1
    return-void
.end method

.method public resetPreviewView()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->resetPreviewView()V

    .line 384
    :cond_0
    return-void
.end method

.method public setContainerVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
    .locals 2
    .param p1, "container"    # Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
    .param p2, "visibility"    # I

    .prologue
    .line 246
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$3;->$SwitchMap$com$sec$android$cover$sviewcover$SViewCoverAbstractUnlockArea$Container:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 248
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setCameraShortcutVisibility(I)V

    goto :goto_0

    .line 252
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->setContactShortcutVisibility(I)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 6
    .param p1, "view"    # Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    .line 199
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->battery_charging:I

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mSViewCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setSViewCoverView(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mChargingTextView:Landroid/widget/TextView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setAnimatingViews([Landroid/view/View;)V

    .line 214
    :cond_2
    return-void
.end method

.method public setPageButtonVisibility(Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;I)V
    .locals 0
    .param p1, "container"    # Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
    .param p2, "visibility"    # I

    .prologue
    .line 305
    return-void
.end method

.method public setPageNavigationVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 237
    return-void
.end method

.method public setPagerNavigation(Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;)V
    .locals 0
    .param p1, "sViewCoverPagerNavigation"    # Lcom/sec/android/cover/sviewcover/SViewCoverPagerNavigation;

    .prologue
    .line 146
    return-void
.end method

.method public setPreviewRootView(Landroid/widget/FrameLayout;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/FrameLayout;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    .line 220
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportPreviewShortcut()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 222
    const-string v0, "SViewCoverZeroUnlockArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviewContainer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mRightCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewViewGroup(Landroid/view/ViewGroup;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mLeftCircleView:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setPreviewViewGroup(Landroid/view/ViewGroup;)V

    .line 232
    :cond_1
    return-void
.end method

.method public setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V
    .locals 1
    .param p1, "type"    # Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V

    .line 376
    :cond_0
    return-void
.end method

.method public startPreviewAnimation(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "SViewCoverZeroUnlockArea"

    const-string v1, "startPreviewAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->startAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    .line 368
    :cond_0
    return-void
.end method

.method public updateNotiArea(II)V
    .locals 0
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    .line 156
    return-void
.end method

.method public updateNotiPageButton(II)V
    .locals 0
    .param p1, "missedCallCount"    # I
    .param p2, "unreadMessage"    # I

    .prologue
    .line 151
    return-void
.end method
