.class public Lcom/android/systemui/statusbar/NotificationContentView;
.super Landroid/widget/FrameLayout;
.source "NotificationContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;
    }
.end annotation


# instance fields
.field public mActions:Landroid/view/ViewGroup;

.field private mAnimate:Z

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipTopAmount:I

.field private mContentHeight:I

.field private mContractedChild:Landroid/view/View;

.field private mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

.field private mDark:Z

.field private final mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mExpandedChild:Landroid/view/View;

.field private mExpandedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mHeadsUpChild:Landroid/view/View;

.field private final mHeadsUpHeight:I

.field private mHeadsUpWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

.field private mIsHeadsUp:Z

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private final mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private final mRoundRectClippingEnabled:Z

.field private final mRoundRectRadius:I

.field private mShowingLegacyBackground:Z

.field private final mSmallHeight:I

.field private mUnrestrictedContentHeight:I

.field private mVisibleType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/NotificationContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationContentView$1;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/NotificationContentView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationContentView$2;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRoundRectRadius:I

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRoundRectClippingEnabled:Z

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->reset(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 113
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->setContentResolver(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/NotificationContentView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationContentView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationContentView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRoundRectRadius:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationContentView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationContentView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    return-void
.end method

.method private calculateVisibleType()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 487
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v3, :cond_2

    move v0, v1

    .line 488
    .local v0, "noExpandedChild":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 489
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    const/4 v1, 0x2

    .line 498
    :cond_1
    :goto_1
    return v1

    .end local v0    # "noExpandedChild":Z
    :cond_2
    move v0, v2

    .line 487
    goto :goto_0

    .line 495
    .restart local v0    # "noExpandedChild":Z
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    if-le v3, v4, :cond_4

    if-eqz v0, :cond_1

    :cond_4
    move v1, v2

    .line 496
    goto :goto_1
.end method

.method private getViewForVisibleType(I)Landroid/view/View;
    .locals 1
    .param p1, "visibleType"    # I

    .prologue
    .line 473
    packed-switch p1, :pswitch_data_0

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    :goto_0
    return-object v0

    .line 475
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private needsRoundRectClipping()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 384
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mRoundRectClippingEnabled:Z

    if-nez v5, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v4

    .line 387
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->needsRoundRectClipping()Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 390
    .local v0, "needsForContracted":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->needsRoundRectClipping()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v3

    .line 393
    .local v1, "needsForExpanded":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->needsRoundRectClipping()Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    .line 396
    .local v2, "needsForHeadsUp":Z
    :goto_3
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    move v4, v3

    goto :goto_0

    .end local v0    # "needsForContracted":Z
    .end local v1    # "needsForExpanded":Z
    .end local v2    # "needsForHeadsUp":Z
    :cond_3
    move v0, v4

    .line 387
    goto :goto_1

    .restart local v0    # "needsForContracted":Z
    :cond_4
    move v1, v4

    .line 390
    goto :goto_2

    .restart local v1    # "needsForExpanded":Z
    :cond_5
    move v2, v4

    .line 393
    goto :goto_3
.end method

.method private runSwitchAnimation(I)V
    .locals 8
    .param p1, "visibleType"    # I

    .prologue
    const-wide/16 v6, 0xaa

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 443
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v1

    .line 444
    .local v1, "shownView":Landroid/view/View;
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v0

    .line 445
    .local v0, "hiddenView":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 446
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 447
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 448
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 449
    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 450
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 455
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/NotificationContentView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/NotificationContentView$3;-><init>(Lcom/android/systemui/statusbar/NotificationContentView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 466
    return-void
.end method

.method private selectLayout(ZZ)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->calculateVisibleType()I

    move-result v0

    .line 409
    .local v0, "visibleType":I
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_0

    .line 410
    :cond_2
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v1, :cond_5

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-nez v1, :cond_5

    :cond_4
    if-nez v0, :cond_6

    .line 413
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->runSwitchAnimation(I)V

    .line 417
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    goto :goto_0

    .line 415
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateViewVisibilities(I)V

    goto :goto_1
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 337
    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 346
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mEnableAnimationPredrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    goto :goto_0
.end method

.method private updateClipping()V
    .locals 5

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 402
    return-void
.end method

.method private updateRoundRectClipping()V
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->needsRoundRectClipping()Z

    move-result v0

    .line 380
    .local v0, "enabled":Z
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipToOutline(Z)V

    .line 381
    return-void
.end method

.method private updateViewVisibilities(I)V
    .locals 10
    .param p1, "visibleType"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 422
    if-nez p1, :cond_2

    move v0, v3

    .line 423
    .local v0, "contractedVisible":Z
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_3

    move v5, v4

    :goto_1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setAlpha(F)V

    .line 425
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v5, v4, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 426
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 427
    if-ne p1, v3, :cond_5

    move v1, v3

    .line 428
    .local v1, "expandedVisible":Z
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_6

    move v5, v4

    :goto_4
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v1, :cond_7

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/view/View;->setAlpha(F)V

    .line 430
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v5, v4, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 432
    .end local v1    # "expandedVisible":Z
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 433
    const/4 v5, 0x2

    if-ne p1, v5, :cond_8

    move v2, v3

    .line 434
    .local v2, "headsUpVisible":Z
    :goto_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v2, :cond_9

    move v3, v4

    :goto_7
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v2, :cond_a

    :goto_8
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 436
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v3, v4, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 438
    .end local v2    # "headsUpVisible":Z
    :cond_1
    invoke-virtual {p0, v4, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 440
    return-void

    .end local v0    # "contractedVisible":Z
    :cond_2
    move v0, v4

    .line 422
    goto :goto_0

    .line 423
    .restart local v0    # "contractedVisible":Z
    :cond_3
    const/4 v5, 0x4

    goto :goto_1

    :cond_4
    move v5, v7

    .line 424
    goto :goto_2

    :cond_5
    move v1, v4

    .line 427
    goto :goto_3

    .line 428
    .restart local v1    # "expandedVisible":Z
    :cond_6
    const/4 v5, 0x4

    goto :goto_4

    :cond_7
    move v5, v7

    .line 429
    goto :goto_5

    .end local v1    # "expandedVisible":Z
    :cond_8
    move v2, v4

    .line 433
    goto :goto_6

    .line 434
    .restart local v2    # "headsUpVisible":Z
    :cond_9
    const/4 v3, 0x4

    goto :goto_7

    :cond_a
    move v6, v7

    .line 435
    goto :goto_8
.end method

.method private updateVisibility()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->isShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisible(Z)V

    .line 334
    return-void
.end method


# virtual methods
.method public getContentHeight()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    return v0
.end method

.method public getContractedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    return-object v0
.end method

.method public getExpandedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    return-object v0
.end method

.method public getHeadsUpChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 366
    :goto_0
    return v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 366
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    goto :goto_0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyContentUpdated()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 504
    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->notifyContentUpdated()V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->notifyContentUpdated()V

    .line 512
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 514
    # getter for: Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mIsShowButtonBg:Z
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->access$300()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateButtonBackground(Z)V

    .line 515
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 174
    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->addView(Lcom/android/systemui/statusbar/NotificationContentView;)V

    .line 175
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 547
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 548
    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->removeView(Lcom/android/systemui/statusbar/NotificationContentView;)V

    .line 549
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 164
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 167
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 119
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 120
    .local v1, "heightMode":I
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v1, v10, :cond_7

    const/4 v0, 0x1

    .line 121
    .local v0, "hasFixedHeight":Z
    :goto_0
    const/high16 v10, -0x80000000

    if-ne v1, v10, :cond_8

    const/4 v2, 0x1

    .line 122
    .local v2, "isHeightLimited":Z
    :goto_1
    const v5, 0x7fffffff

    .line 123
    .local v5, "maxSize":I
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 126
    :cond_1
    const/4 v4, 0x0

    .line 127
    .local v4, "maxChildHeight":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v10, :cond_2

    .line 128
    iget v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 129
    .local v7, "size":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, p1, v11}, Landroid/view/View;->measure(II)V

    .line 131
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 133
    .end local v7    # "size":I
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v10, :cond_4

    .line 134
    move v7, v5

    .line 135
    .restart local v7    # "size":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 136
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v10, :cond_3

    .line 138
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 140
    :cond_3
    const v10, 0x7fffffff

    if-ne v7, v10, :cond_9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 143
    .local v8, "spec":I
    :goto_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v10, p1, v8}, Landroid/view/View;->measure(II)V

    .line 144
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 146
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "size":I
    .end local v8    # "spec":I
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v10, :cond_6

    .line 147
    iget v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpHeight:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 148
    .restart local v7    # "size":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 149
    .restart local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v10, :cond_5

    .line 151
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 153
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    const/high16 v11, -0x80000000

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, p1, v11}, Landroid/view/View;->measure(II)V

    .line 155
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 157
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "size":I
    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 158
    .local v6, "ownHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 159
    .local v9, "width":I
    invoke-virtual {p0, v9, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->setMeasuredDimension(II)V

    .line 160
    return-void

    .line 120
    .end local v0    # "hasFixedHeight":Z
    .end local v2    # "isHeightLimited":Z
    .end local v4    # "maxChildHeight":I
    .end local v5    # "maxSize":I
    .end local v6    # "ownHeight":I
    .end local v9    # "width":I
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 121
    .restart local v0    # "hasFixedHeight":Z
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 140
    .restart local v2    # "isHeightLimited":Z
    .restart local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "maxChildHeight":I
    .restart local v5    # "maxSize":I
    .restart local v7    # "size":I
    :cond_9
    const/high16 v10, -0x80000000

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_2
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 328
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateVisibility()V

    .line 330
    return-void
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "resetActualHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeAllViews()V

    .line 188
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 189
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 190
    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mVisibleType:I

    .line 192
    if-eqz p1, :cond_3

    .line 193
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mSmallHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 195
    :cond_3
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mClipTopAmount:I

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 376
    return-void
.end method

.method public setContentHeight(I)V
    .locals 2
    .param p1, "contentHeight"    # I

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContentHeight:I

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mUnrestrictedContentHeight:I

    .line 351
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mAnimate:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateClipping()V

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->invalidateOutline()V

    .line 354
    return-void
.end method

.method public setContractedChild(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 215
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 217
    # getter for: Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mIsShowButtonBg:Z
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->access$300()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateButtonBackground(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/statusbar/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    .line 219
    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 222
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-nez v0, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mDark:Z

    .line 524
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mShowingLegacyBackground:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->setDark(ZZJ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setExpandedChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 230
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 232
    # getter for: Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mIsShowButtonBg:Z
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->access$300()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateButtonBackground(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/statusbar/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    .line 234
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 236
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 2
    .param p1, "headsUp"    # Z

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mIsHeadsUp:Z

    .line 529
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 530
    return-void
.end method

.method public setHeadsUpChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->removeView(Landroid/view/View;)V

    .line 317
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->addView(Landroid/view/View;)V

    .line 318
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    .line 320
    # getter for: Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->mIsShowButtonBg:Z
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationContentView$SettingObserver;->access$300()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateButtonBackground(Z)V

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/statusbar/NotificationViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpWrapper:Lcom/android/systemui/statusbar/NotificationViewWrapper;

    .line 322
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->selectLayout(ZZ)V

    .line 323
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->updateRoundRectClipping()V

    .line 324
    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mShowingLegacyBackground:Z

    .line 542
    return-void
.end method

.method public updateButtonBackground(Z)V
    .locals 7
    .param p1, "mIsShowButtonBg"    # Z

    .prologue
    const v6, 0x10805e0

    const v5, 0x10805df

    const v4, 0x1020415

    .line 240
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 241
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mExpandedChild:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    .line 242
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 244
    if-eqz p1, :cond_1

    .line 245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 249
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 250
    .local v2, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 256
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 264
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 265
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mContractedChild:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    .line 266
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 267
    if-eqz p1, :cond_4

    .line 268
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 272
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 273
    .restart local v2    # "v":Landroid/view/View;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 274
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 278
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 279
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 287
    .end local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 288
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mHeadsUpChild:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    .line 289
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    .line 290
    if-eqz p1, :cond_7

    .line 291
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 295
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 296
    .restart local v2    # "v":Landroid/view/View;
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 297
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 291
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 301
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 302
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationContentView;->mActions:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 309
    .end local v1    # "i":I
    :cond_8
    return-void
.end method
