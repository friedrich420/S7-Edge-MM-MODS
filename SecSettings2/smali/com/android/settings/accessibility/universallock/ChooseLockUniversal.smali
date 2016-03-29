.class public Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;
.super Landroid/app/Activity;
.source "ChooseLockUniversal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    }
.end annotation


# instance fields
.field private ANIMATION_DURATION:I

.field private ARROW_STEPCIRCLE_THRESHOLD:I

.field private STEP_CIRCLE_LEFT_MARGIN:I

.field private STEP_CIRCLE_RIGHT_MARGIN:I

.field private STEP_CIRCLE_SIZE:I

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCurScreenState:I

.field private mCurrentPwd:Ljava/lang/String;

.field private mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mEmptyString:Ljava/lang/String;

.field private mFirstPassword:Ljava/lang/String;

.field private mFirstPwd:Ljava/lang/String;

.field private mFlgToChkConfChng:Z

.field private mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyListAnimator:Landroid/animation/ValueAnimator;

.field private mGreyListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

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

.field private mHelpBitmap:Landroid/graphics/Bitmap;

.field private mHelpBitmapHeight:I

.field private mHelpBitmapWidth:I

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mLeftBtnState:Z

.field private mLeftButton:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewStepCircle:Landroid/widget/ImageView;

.field private mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

.field private mOldStepCircle:Landroid/widget/ImageView;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    .line 92
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mChosenPattern:Ljava/util/List;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mEmptyString:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFlgToChkConfChng:Z

    .line 120
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentPwd:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mEmptyString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPwd:Ljava/lang/String;

    .line 121
    iput v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurScreenState:I

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftBtnState:Z

    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightBtnState:Z

    .line 790
    new-instance v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$7;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$7;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->clearStepCircles()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->handleConfirmScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->handleStepCircle(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;)Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;
    .param p1, "x1"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method private attachListeners()V
    .locals 2

    .prologue
    .line 546
    const-string v0, "ChooseLockUniversal"

    const-string v1, "attachListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$6;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$6;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    return-void
.end method

.method private clearStepCircles()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 706
    const-string v1, "ChooseLockUniversal"

    const-string v2, "clearStepCircles"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 714
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v2, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v1, v2, :cond_2

    .line 716
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListIterator:Ljava/util/Iterator;

    .line 717
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 718
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 719
    .local v0, "temp":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 720
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 721
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 724
    .end local v0    # "temp":Landroid/widget/ImageView;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 725
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 726
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 727
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 729
    :cond_4
    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    .line 730
    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    .line 732
    :cond_5
    return-void
.end method

.method private endOngoingAnimations()V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 992
    :cond_1
    return-void
.end method

.method private freeUpMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1090
    const-string v0, "ChooseLockUniversal"

    const-string v1, "freeUpMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1094
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1099
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 1102
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1104
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .line 1107
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1108
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1109
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    .line 1112
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1113
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1114
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    .line 1116
    :cond_4
    return-void
.end method

.method private handleConfirmScreen()Z
    .locals 4

    .prologue
    .line 962
    const-string v0, "ChooseLockUniversal"

    const-string v1, "handle Confirm Screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->partialInputCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0a73

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    const-string v0, "ChooseLockUniversal"

    const-string v1, "handle Confirm Screen - return false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const/4 v0, 0x0

    .line 983
    :goto_0
    return v0

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0a7a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

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

    .line 981
    :cond_1
    const-string v0, "ChooseLockUniversal"

    const-string v1, "handle Confirm Screen - return true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleStepCircle(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "curDirection"    # Ljava/lang/String;
    .param p2, "redrawUIMode"    # Z

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    .line 1001
    const-string v1, "ChooseLockUniversal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStepCircle with Direction - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v0, 0x0

    .line 1005
    .local v0, "mNewStepCircleBitmap":Landroid/graphics/Bitmap;
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v1, v3, :cond_4

    .line 1006
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1007
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1008
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1010
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    .line 1011
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1014
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1016
    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    .line 1022
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1066
    :goto_2
    return-void

    .line 1018
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    goto :goto_0

    .line 1022
    :sswitch_0
    const-string v3, "UP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v3, "LEFT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "RIGHT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "DOWN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    .line 1024
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 1039
    :goto_3
    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v1, v3, :cond_5

    .line 1041
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1043
    :cond_5
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1044
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1046
    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v1, v3, :cond_8

    .line 1047
    :cond_6
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 1050
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_7

    .line 1051
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 1056
    :cond_7
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1058
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1061
    :cond_8
    if-nez p2, :cond_9

    .line 1062
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->performAnimations()V

    goto/16 :goto_2

    .line 1027
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .line 1028
    goto :goto_3

    .line 1030
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    .line 1031
    goto :goto_3

    .line 1033
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    .line 1034
    goto :goto_3

    .line 1064
    :cond_9
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1022
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

    .line 314
    const-string v2, "ChooseLockUniversal"

    const-string v3, "initializeAnimations"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 318
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 319
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 322
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 323
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 324
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 327
    new-array v2, v9, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    .line 328
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 330
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 332
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$1;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$1;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 341
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$2;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$2;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c030a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c030c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c030d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v0, v2

    .line 369
    .local v0, "stepCircleAnimationTolerance":D
    new-array v2, v9, [F

    const/4 v3, 0x0

    double-to-float v4, v0

    aput v4, v2, v3

    aput v6, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    .line 370
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 371
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 372
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$3;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$3;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 386
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    return-void

    .line 327
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
    .line 229
    const-string v0, "ChooseLockUniversal"

    const-string v1, "initializeDirectionView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget v1, v1, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    .line 233
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->setSettingsMode()V

    .line 236
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->reloadBitmap()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->showArrow:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playVoice:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playVibration:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playBeep:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    .line 245
    return-void
.end method

.method private initializing()V
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f04005a

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setContentView(I)V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->freeUpMemory()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->initializeIdentifiers()V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->loadCustomSettings()V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->initializeDirectionView()V

    .line 153
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->loadDimensAndBitmap()V

    .line 154
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->initializeAnimations()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setInitialState()V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->attachListeners()V

    .line 158
    const v0, 0x7f0e0a7f

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setTitle(I)V

    .line 159
    return-void
.end method

.method private isVibrationSupport()Z
    .locals 2

    .prologue
    .line 216
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 217
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-static {p0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    :cond_0
    const/4 v1, 0x0

    .line 220
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

    .line 201
    const-string v0, "ChooseLockUniversal"

    const-string v3, "loadCustomSettings"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

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
    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playVoice:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "universal_lock_beep"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playBeep:Z

    .line 208
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->isVibrationSupport()Z

    move-result v0

    if-nez v0, :cond_3

    .line 209
    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playVibration:Z

    .line 212
    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->showArrow:Z

    .line 213
    return-void

    :cond_1
    move v0, v1

    .line 203
    goto :goto_0

    :cond_2
    move v0, v1

    .line 206
    goto :goto_1

    .line 211
    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playVibration:Z

    goto :goto_2
.end method

.method private loadDimensAndBitmap()V
    .locals 5

    .prologue
    const v3, 0x7f0c0317

    const v2, 0x7f0c0315

    .line 254
    const-string v0, "ChooseLockUniversal"

    const-string v1, "loadDimensAndBitmap()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const v0, 0x7f0d010f

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c030a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c030d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    .line 265
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapWidth:I

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapHeight:I

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c7

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapWidth:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    .line 283
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c8

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    .line 287
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cb

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    .line 291
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c9

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    .line 295
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ca

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 305
    return-void

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapWidth:I

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapHeight:I

    goto/16 :goto_0
.end method

.method private partialInputCheck()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 743
    const-string v2, "ChooseLockUniversal"

    const-string v3, "partialInputCheck"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v1, 0x0

    .line 747
    .local v1, "returnValue":Z
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "passwordEnteredSoFar":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    const/4 v1, 0x1

    .line 753
    :cond_0
    if-nez v1, :cond_2

    .line 759
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->clearStepCircles()V

    .line 761
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->showErrorImage()V

    .line 762
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 763
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 766
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 767
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 768
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 771
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_3

    .line 772
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 774
    :cond_3
    return v1
.end method

.method private performAnimations()V
    .locals 2

    .prologue
    .line 1074
    const-string v0, "ChooseLockUniversal"

    const-string v1, "performAnimations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v1, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v0, v1, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1083
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1087
    :cond_1
    return-void
.end method

.method private setDefaultInitState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    const-string v0, "ChooseLockUniversal"

    const-string v1, "setDefaultInitState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 514
    sget-object v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    .line 516
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "ChooseLockUniversal"

    const-string v1, "Setting with help image initially"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 520
    :cond_0
    return-void
.end method

.method private setInitialState()V
    .locals 11

    .prologue
    const v10, 0x7f0e0a80

    const v6, 0x7f0c00a2

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 417
    const-string v3, "ChooseLockUniversal"

    const-string v4, "setInitialState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v7, v5, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 423
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e15d8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 438
    iget-boolean v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFlgToChkConfChng:Z

    if-eqz v3, :cond_6

    .line 439
    iput-boolean v7, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFlgToChkConfChng:Z

    .line 440
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentPwd:Ljava/lang/String;

    .line 443
    .local v2, "savedPassword":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 444
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v7}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 447
    :cond_0
    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurScreenState:I

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    :goto_1
    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    .line 449
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    const-string v0, ""

    .line 452
    .local v0, "curDirection":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/DirectionLockView;->setCurrentPassword(Ljava/lang/String;)V

    .line 454
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 456
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 472
    :goto_3
    invoke-direct {p0, v0, v9}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->handleStepCircle(Ljava/lang/String;Z)V

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 433
    .end local v0    # "curDirection":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "savedPassword":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 447
    .restart local v2    # "savedPassword":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    goto :goto_1

    .line 458
    .restart local v0    # "curDirection":Ljava/lang/String;
    .restart local v1    # "i":I
    :sswitch_0
    const-string v0, "UP"

    .line 459
    goto :goto_3

    .line 461
    :sswitch_1
    const-string v0, "RIGHT"

    .line 462
    goto :goto_3

    .line 464
    :sswitch_2
    const-string v0, "DOWN"

    .line 465
    goto :goto_3

    .line 467
    :sswitch_3
    const-string v0, "LEFT"

    .line 468
    goto :goto_3

    .line 475
    :cond_3
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftBtnState:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 476
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightBtnState:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 478
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v4, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v3, v4, :cond_7

    .line 479
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    const v4, 0x7f0e0a89

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 480
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPwd:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    .line 482
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 483
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_4
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 486
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    .line 487
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 488
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_5

    .line 489
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 494
    :cond_5
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v3, v4, v7, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 496
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 502
    .end local v0    # "curDirection":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "savedPassword":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setDefaultInitState()V

    .line 508
    :cond_7
    :goto_5
    return-void

    .line 505
    :cond_8
    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setRequestedOrientation(I)V

    .line 506
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setDefaultInitState()V

    goto :goto_5

    .line 456
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4c -> :sswitch_3
        0x52 -> :sswitch_1
        0x55 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method initializeIdentifiers()V
    .locals 3

    .prologue
    .line 169
    const-string v1, "ChooseLockUniversal"

    const-string v2, "initializeIdentifiers"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v1, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    .line 171
    const v1, 0x7f0d010c

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DirectionLockView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    .line 172
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 174
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 175
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DirectionLockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const v1, 0x7f0d0112

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    .line 178
    const v1, 0x7f0d0111

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    .line 180
    const v1, 0x7f0d00f8

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    .line 181
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 525
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 526
    const-string v1, "ChooseLockUniversal"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFlgToChkConfChng:Z

    .line 528
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->endOngoingAnimations()V

    .line 529
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentPwd:Ljava/lang/String;

    .line 530
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderString:Ljava/lang/String;

    .line 531
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v2, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurScreenState:I

    .line 532
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftBtnState:Z

    .line 533
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightBtnState:Z

    .line 534
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPwd:Ljava/lang/String;

    .line 535
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->initializing()V

    .line 536
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "ChooseLockUniversal"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->initializing()V

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1120
    const-string v0, "ChooseLockUniversal"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->freeUpMemory()V

    .line 1123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1124
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    const-string v0, "ChooseLockUniversal"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 144
    return-void
.end method
