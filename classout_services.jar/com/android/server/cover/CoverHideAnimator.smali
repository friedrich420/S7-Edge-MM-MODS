.class public Lcom/android/server/cover/CoverHideAnimator;
.super Ljava/lang/Object;
.source "CoverHideAnimator.java"


# instance fields
.field private final FADE_IN_ANIMATION_DURATION:J

.field private final FADE_OUT_ANIMATION_DURATION:J

.field private final FADE_OUT_ANIMATION_START_DELAY:J

.field private final MSG_SEND_COVER_CANCEL_ANIMATION:I

.field private final MSG_SEND_COVER_START_ANIMATION:I

.field private final TAG:Ljava/lang/String;

.field private mAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mCallbackRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCoverHideView:Landroid/view/View;

.field private mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mWindowLP:Landroid/view/WindowManager$LayoutParams;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lcom/android/server/cover/CoverHideAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0x64

    iput-wide v0, p0, FADE_IN_ANIMATION_DURATION:J

    .line 39
    const-wide/16 v0, 0x96

    iput-wide v0, p0, FADE_OUT_ANIMATION_START_DELAY:J

    .line 40
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, FADE_OUT_ANIMATION_DURATION:J

    .line 42
    const/16 v0, 0x65

    iput v0, p0, MSG_SEND_COVER_START_ANIMATION:I

    .line 43
    const/16 v0, 0x66

    iput v0, p0, MSG_SEND_COVER_CANCEL_ANIMATION:I

    .line 45
    new-instance v0, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    iput-object v0, p0, mAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, mCoverHideView:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/android/server/cover/CoverHideAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverHideAnimator$1;-><init>(Lcom/android/server/cover/CoverHideAnimator;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/android/server/cover/CoverHideAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverHideAnimator$2;-><init>(Lcom/android/server/cover/CoverHideAnimator;)V

    iput-object v0, p0, mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 106
    new-instance v0, Lcom/android/server/cover/CoverHideAnimator$3;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverHideAnimator$3;-><init>(Lcom/android/server/cover/CoverHideAnimator;)V

    iput-object v0, p0, mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 70
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, mWm:Landroid/view/WindowManager;

    .line 73
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, mWindowLP:Landroid/view/WindowManager$LayoutParams;

    .line 74
    iget-object v0, p0, mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "clear cover animation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 76
    iget-object v0, p0, mWindowLP:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 77
    iget-object v0, p0, mWindowLP:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 78
    iget-object v0, p0, mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7de

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 79
    iget-object v0, p0, mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 80
    iget-object v0, p0, mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x4080008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/CoverHideAnimator;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverHideAnimator;

    .prologue
    .line 35
    iget-object v0, p0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cover/CoverHideAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverHideAnimator;

    .prologue
    .line 35
    invoke-direct {p0}, handleStartAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/cover/CoverHideAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverHideAnimator;

    .prologue
    .line 35
    invoke-direct {p0}, handleCancelAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cover/CoverHideAnimator;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverHideAnimator;

    .prologue
    .line 35
    iget-object v0, p0, mCallbackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/cover/CoverHideAnimator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverHideAnimator;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    iput-object p1, p0, mCallbackRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/cover/CoverHideAnimator;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverHideAnimator;

    .prologue
    .line 35
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cover/CoverHideAnimator;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverHideAnimator;

    .prologue
    .line 35
    iget-object v0, p0, mCoverHideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cover/CoverHideAnimator;)Landroid/animation/AnimatorListenerAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverHideAnimator;

    .prologue
    .line 35
    iget-object v0, p0, mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cover/CoverHideAnimator;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cover/CoverHideAnimator;

    .prologue
    .line 35
    iget-object v0, p0, mAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/cover/CoverHideAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverHideAnimator;

    .prologue
    .line 35
    invoke-direct {p0}, removeViewFromWindow()V

    return-void
.end method

.method private handleCancelAnimation()V
    .registers 4

    .prologue
    .line 160
    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCancelAnimation() mCoverHideView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCoverHideView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 163
    iget-object v0, p0, mCoverHideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 164
    invoke-direct {p0}, removeViewFromWindow()V

    .line 166
    :cond_2b
    return-void
.end method

.method private handleStartAnimation()V
    .registers 5

    .prologue
    .line 142
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleStartAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 145
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "mCoverHideView is not null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, removeViewFromWindow()V

    .line 149
    :cond_17
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mCoverHideView:Landroid/view/View;

    .line 150
    iget-object v0, p0, mCoverHideView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 151
    iget-object v0, p0, mCoverHideView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    iget-object v0, p0, mCoverHideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, mAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 156
    iget-object v0, p0, mWm:Landroid/view/WindowManager;

    iget-object v1, p0, mCoverHideView:Landroid/view/View;

    iget-object v2, p0, mWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    return-void
.end method

.method private removeViewFromWindow()V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeViewFromWindow() mCoverHideView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCoverHideView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_2d

    .line 122
    iget-object v0, p0, mCoverHideView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, mWm:Landroid/view/WindowManager;

    iget-object v1, p0, mCoverHideView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 125
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, mCoverHideView:Landroid/view/View;

    .line 126
    return-void
.end method


# virtual methods
.method public cancelHideAnimation()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "cancelHideAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    return-void
.end method

.method public playCoverHideAnimation(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "callbackRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 135
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "playCoverHideAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput-object p1, p0, mCallbackRunnable:Ljava/lang/Runnable;

    .line 138
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    return-void
.end method
