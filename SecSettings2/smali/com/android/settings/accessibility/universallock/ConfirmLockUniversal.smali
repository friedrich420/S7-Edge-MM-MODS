.class public Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
.super Landroid/app/Activity;
.source "ConfirmLockUniversal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;,
        Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;
    }
.end annotation


# instance fields
.field private ANIMATION_DURATION:I

.field private ARROW_STEPCIRCLE_THRESHOLD:I

.field private STEP_CIRCLE_LEFT_MARGIN:I

.field private STEP_CIRCLE_RIGHT_MARGIN:I

.field private STEP_CIRCLE_SIZE:I

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentPwd:Ljava/lang/String;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mEffectiveUserId:I

.field private mEmptyString:Ljava/lang/String;

.field private mFlagForEnabled:Z

.field private mFlgToChkConfChng:Z

.field private mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyListAnimator:Landroid/animation/ValueAnimator;

.field private mGreyStepCircleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderString:Ljava/lang/String;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mLeftBtnState:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewStepCircle:Landroid/widget/ImageView;

.field private mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

.field private mNumWrongAttempt:I

.field private mNumWrongConfirmAttempts:I

.field private mOldStepCircle:Landroid/widget/ImageView;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mRightBtnState:Z

.field private mRightButton:Landroid/widget/Button;

.field private mStepCircleDown:Landroid/graphics/Bitmap;

.field private mStepCircleLayout:Landroid/widget/LinearLayout;

.field private mStepCircleLeft:Landroid/graphics/Bitmap;

.field private mStepCircleRight:Landroid/graphics/Bitmap;

.field private mStepCircleUp:Landroid/graphics/Bitmap;

.field private mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

.field private playBeep:Z

.field private playVibration:Z

.field private playVoice:Z

.field private showArrow:Z

.field private stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 138
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    .line 139
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEmptyString:Ljava/lang/String;

    .line 161
    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlgToChkConfChng:Z

    .line 162
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCurrentPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderString:Ljava/lang/String;

    .line 163
    iput v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongAttempt:I

    .line 164
    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftBtnState:Z

    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightBtnState:Z

    .line 218
    new-instance v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 940
    new-instance v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$10;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$10;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->clearStepCircles()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->checkForCorrectPassword()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;ZLandroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->onDirectionChecking(ZLandroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
    .param p1, "x1"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleStepCircle(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private attachListeners()V
    .locals 2

    .prologue
    .line 551
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "attachListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$7;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$7;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 581
    return-void
.end method

.method private checkForCorrectPassword()V
    .locals 5

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "has_challenge"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 695
    .local v1, "verifyChallenge":Z
    const-string v2, "ConfirmLockUniversal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForCorrectPassword verifyChallenge:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 697
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 698
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V

    .line 707
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private clearStepCircles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 601
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "clearStepCircles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 614
    :cond_3
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    .line 615
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    .line 616
    return-void
.end method

.method private endOngoingAnimations()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 741
    :cond_1
    return-void
.end method

.method private freeUpMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1012
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "freeUpMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1016
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1021
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1025
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1026
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .line 1029
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1030
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1031
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    .line 1033
    :cond_3
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 970
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "handleAttemptLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    sget-object v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->LockedOut:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 973
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$11;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$11;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$11;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1009
    return-void
.end method

.method private handleStepCircle(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "curDirection"    # Ljava/lang/String;
    .param p2, "redrawUIMode"    # Z

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    .line 750
    const-string v1, "ConfirmLockUniversal"

    const-string v3, "handleStepCircle"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v0, 0x0

    .line 754
    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 755
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 758
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    .line 759
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 765
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    .line 767
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 806
    :goto_1
    return-void

    .line 767
    :sswitch_0
    const-string v3, "UP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v3, "LEFT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "RIGHT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "DOWN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 769
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 784
    :goto_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 785
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 787
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 788
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 790
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 793
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_4

    .line 794
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 798
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 799
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    if-nez p2, :cond_5

    .line 802
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->performAnimations()V

    goto :goto_1

    .line 772
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .line 773
    goto :goto_2

    .line 775
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    .line 776
    goto :goto_2

    .line 778
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    .line 779
    goto :goto_2

    .line 804
    :cond_5
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 767
    nop

    :sswitch_data_0
    .sparse-switch
        0xa9b -> :sswitch_0
        0x201ca2 -> :sswitch_3
        0x239807 -> :sswitch_1
        0x4a5c9fc -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeAnimations()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 371
    const-string v2, "ConfirmLockUniversal"

    const-string v3, "initializeAnimations"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 375
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 376
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 379
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 380
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 381
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 384
    new-array v2, v9, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    .line 385
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 387
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 389
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$2;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$2;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 398
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$3;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$3;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c030a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c030c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c030d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v0, v2

    .line 426
    .local v0, "stepCircleAnimationTolerance":D
    new-array v2, v9, [F

    const/4 v3, 0x0

    double-to-float v4, v0

    aput v4, v2, v3

    aput v6, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    .line 427
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 428
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 429
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$4;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$4;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 443
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 465
    return-void

    .line 384
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeDirectionView()V
    .locals 2

    .prologue
    .line 302
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "initializeDirectionView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget v1, v1, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    .line 306
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->setSettingsMode()V

    .line 309
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->reloadBitmap()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->showArrow:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVoice:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVibration:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playBeep:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    .line 318
    return-void
.end method

.method private initializing()V
    .locals 2

    .prologue
    .line 174
    const v1, 0x7f040068

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setContentView(I)V

    .line 175
    const v1, 0x7f0e0a88

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 176
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 177
    invoke-static {p0}, Lcom/android/settings/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEffectiveUserId:I

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializeIdentifiers()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->loadCustomSettings()V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializeDirectionView()V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->loadStepCircleVariables()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializeAnimations()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setInitialState()V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->attachListeners()V

    .line 187
    return-void
.end method

.method private isVibrationSupport()Z
    .locals 2

    .prologue
    .line 289
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 290
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-static {p0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    :cond_0
    const/4 v1, 0x0

    .line 293
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadCustomSettings()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 263
    const-string v0, "ConfirmLockUniversal"

    const-string v3, "loadCustomSettings"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "universal_lock_voice"

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVoice:Z

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "universal_lock_beep"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playBeep:Z

    .line 281
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->isVibrationSupport()Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVibration:Z

    .line 285
    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->showArrow:Z

    .line 286
    return-void

    :cond_1
    move v0, v1

    .line 276
    goto :goto_0

    :cond_2
    move v0, v1

    .line 279
    goto :goto_1

    .line 284
    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVibration:Z

    goto :goto_2
.end method

.method private loadStepCircleVariables()V
    .locals 5

    .prologue
    .line 327
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "loadStepCircleVariables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const v0, 0x7f0d010f

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c030a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c030d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    .line 339
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c8

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    .line 344
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cb

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 348
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c9

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .line 352
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ca

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 362
    return-void
.end method

.method private onDirectionChecking(ZLandroid/content/Intent;I)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I

    .prologue
    .line 717
    if-eqz p1, :cond_0

    .line 718
    const/4 v2, -0x1

    invoke-virtual {p0, v2, p2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setResult(ILandroid/content/Intent;)V

    .line 719
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->finish()V

    .line 733
    :goto_0
    return-void

    .line 720
    :cond_0
    iget v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 722
    if-lez p3, :cond_1

    .line 723
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 724
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleAttemptLockout(J)V

    goto :goto_0

    .line 726
    .end local v0    # "deadline":J
    :cond_1
    sget-object v2, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlockWrong:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    .line 727
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->postClearPatternRunnable()V

    goto :goto_0

    .line 730
    :cond_2
    sget-object v2, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlockWrong:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    .line 731
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->postClearPatternRunnable()V

    goto :goto_0
.end method

.method private performAnimations()V
    .locals 2

    .prologue
    .line 814
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "performAnimations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 826
    :cond_2
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 2

    .prologue
    .line 954
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "postClearPatternRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 957
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 958
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 959
    return-void
.end method

.method private setInitialState()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 474
    const-string v3, "ConfirmLockUniversal"

    const-string v4, "setInitialState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    sget-object v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlock:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    .line 478
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 479
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 481
    iget-boolean v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlgToChkConfChng:Z

    if-eqz v3, :cond_5

    .line 482
    iput-boolean v5, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlgToChkConfChng:Z

    .line 483
    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongAttempt:I

    iput v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    .line 484
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCurrentPwd:Ljava/lang/String;

    .line 487
    .local v2, "savedPassword":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 488
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 489
    iput-boolean v6, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    .line 494
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    const-string v0, ""

    .line 497
    .local v0, "curDirection":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/DirectionLockView;->setCurrentPassword(Ljava/lang/String;)V

    .line 499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 501
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 517
    :goto_2
    invoke-direct {p0, v0, v6}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleStepCircle(Ljava/lang/String;Z)V

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 491
    .end local v0    # "curDirection":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    goto :goto_0

    .line 503
    .restart local v0    # "curDirection":Ljava/lang/String;
    .restart local v1    # "i":I
    :sswitch_0
    const-string v0, "UP"

    .line 504
    goto :goto_2

    .line 506
    :sswitch_1
    const-string v0, "RIGHT"

    .line 507
    goto :goto_2

    .line 509
    :sswitch_2
    const-string v0, "DOWN"

    .line 510
    goto :goto_2

    .line 512
    :sswitch_3
    const-string v0, "LEFT"

    .line 513
    goto :goto_2

    .line 520
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftBtnState:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 521
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightBtnState:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 535
    .end local v0    # "curDirection":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "savedPassword":Ljava/lang/String;
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 539
    :cond_3
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTablet()Z

    move-result v3

    if-nez v3, :cond_4

    .line 540
    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setRequestedOrientation(I)V

    .line 542
    :cond_4
    return-void

    .line 529
    :cond_5
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 530
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setResult(I)V

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->finish()V

    goto :goto_3

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4c -> :sswitch_3
        0x52 -> :sswitch_1
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method private startCheckPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 4
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v2, "ConfirmLockUniversal"

    const-string v3, "startCheckPattern"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :try_start_0
    iget v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEffectiveUserId:I

    .line 667
    .local v1, "localEffectiveUserId":I
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Landroid/content/Intent;)V

    invoke-static {v2, p1, v1, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v1    # "localEffectiveUserId":I
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startVerifyPattern(Ljava/util/List;Landroid/content/Intent;)V
    .locals 8
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-wide/16 v6, 0x0

    .line 627
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "startVerifyPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mEffectiveUserId:I

    .line 629
    .local v4, "localEffectiveUserId":I
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 632
    .local v2, "challenge":J
    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    .line 633
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v2

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v5, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;

    invoke-direct {v5, p0, p2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Landroid/content/Intent;)V

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 654
    return-void
.end method

.method private updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V
    .locals 6
    .param p1, "stage"    # Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 894
    const-string v0, "ConfirmLockUniversal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStage to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->clearStepCircles()V

    .line 897
    sget-object v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$12;->$SwitchMap$com$android$settings$accessibility$universallock$ConfirmLockUniversal$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 937
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 938
    return-void

    .line 899
    :pswitch_0
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "NeedToUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0a7a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 901
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e15db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 908
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 910
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 911
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 912
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    goto :goto_0

    .line 916
    :pswitch_1
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "NeedToUnlockWrong"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0e0a73

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 918
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 919
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 920
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 921
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 922
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    goto/16 :goto_0

    .line 926
    :pswitch_2
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "LockedOut"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 928
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 929
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 930
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 931
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 897
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method initializeIdentifiers()V
    .locals 3

    .prologue
    .line 197
    const-string v1, "ConfirmLockUniversal"

    const-string v2, "initializeIdentifiers"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v1, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    .line 200
    const v1, 0x7f0d010c

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DirectionLockView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    .line 201
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 203
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 204
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DirectionLockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const v1, 0x7f0d0111

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    .line 207
    const v1, 0x7f0d0112

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    .line 208
    const v1, 0x7f0d0105

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 209
    const v1, 0x7f0d00f8

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    .line 212
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 831
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 832
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlgToChkConfChng:Z

    .line 834
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->endOngoingAnimations()V

    .line 835
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCurrentPwd:Ljava/lang/String;

    .line 836
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderString:Ljava/lang/String;

    .line 837
    iget v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongAttempt:I

    .line 838
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftBtnState:Z

    .line 839
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightBtnState:Z

    .line 840
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializing()V

    .line 841
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializing()V

    .line 112
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1037
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->freeUpMemory()V

    .line 1040
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1041
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 852
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 857
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 858
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 868
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 870
    const-string v2, "ConfirmLockUniversal"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 873
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 874
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 875
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleAttemptLockout(J)V

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 880
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    .line 881
    sget-object v2, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlock:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    goto :goto_0
.end method
