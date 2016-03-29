.class public Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;
.super Ljava/lang/Object;
.source "ComplexAnimation.java"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFestivalSpriteView:Lcom/android/keyguard/opentheme/xmlparser/Frame;

.field private mLockscreenCallback:Lcom/android/keyguard/opentheme/common/LockscreenCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 10
    iput-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/opentheme/xmlparser/Frame;

    .line 11
    iput-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/opentheme/common/LockscreenCallback;

    return-void
.end method


# virtual methods
.method public addAnimation(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "element"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 16
    return-void
.end method

.method public addScene(Lcom/android/keyguard/opentheme/common/LockscreenCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/keyguard/opentheme/common/LockscreenCallback;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/opentheme/common/LockscreenCallback;

    .line 26
    return-void
.end method

.method public addSprite(Lcom/android/keyguard/opentheme/xmlparser/Frame;)V
    .locals 0
    .param p1, "view"    # Lcom/android/keyguard/opentheme/xmlparser/Frame;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/opentheme/xmlparser/Frame;

    .line 31
    return-void
.end method

.method public playAnimation()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/opentheme/xmlparser/Frame;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/opentheme/xmlparser/Frame;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/xmlparser/Frame;->screenTurnedOn()V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/opentheme/common/LockscreenCallback;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/opentheme/common/LockscreenCallback;

    invoke-interface {v0}, Lcom/android/keyguard/opentheme/common/LockscreenCallback;->screenTurnedOn()V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 41
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/opentheme/xmlparser/Frame;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mFestivalSpriteView:Lcom/android/keyguard/opentheme/xmlparser/Frame;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/xmlparser/Frame;->screenTurnedOff()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/opentheme/common/LockscreenCallback;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mLockscreenCallback:Lcom/android/keyguard/opentheme/common/LockscreenCallback;

    invoke-interface {v0}, Lcom/android/keyguard/opentheme/common/LockscreenCallback;->screenTurnedOff()V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/ComplexAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 69
    return-void
.end method
