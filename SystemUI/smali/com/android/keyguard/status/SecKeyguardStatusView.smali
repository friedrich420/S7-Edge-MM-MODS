.class public Lcom/android/keyguard/status/SecKeyguardStatusView;
.super Landroid/widget/FrameLayout;
.source "SecKeyguardStatusView.java"


# instance fields
.field private mClockHolder:Landroid/view/View;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mIsDcmClock:Z

.field private mSecKeyguardClockView:Lcom/android/keyguard/status/SecKeyguardClockView;

.field private mSecKeyguardWeatherView:Lcom/android/keyguard/status/SecKeyguardWeatherView;

.field private mShowAnimation:Landroid/view/animation/Animation;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/status/SecKeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/status/SecKeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    new-instance v0, Lcom/android/keyguard/status/SecKeyguardStatusView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/status/SecKeyguardStatusView$3;-><init>(Lcom/android/keyguard/status/SecKeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/status/SecKeyguardStatusView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardStatusView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/status/SecKeyguardStatusView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardStatusView;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mIsDcmClock:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/status/SecKeyguardStatusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardStatusView;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->updateStatusView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/status/SecKeyguardStatusView;)Lcom/android/keyguard/status/SecKeyguardClockView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardStatusView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/status/SecKeyguardClockView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/status/SecKeyguardStatusView;)Lcom/android/keyguard/status/SecKeyguardWeatherView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/status/SecKeyguardStatusView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mSecKeyguardWeatherView:Lcom/android/keyguard/status/SecKeyguardWeatherView;

    return-object v0
.end method

.method private createClockView()V
    .locals 4

    .prologue
    .line 108
    sget v0, Lcom/android/keyguard/R$layout;->sec_keyguard_clock_view:I

    .line 109
    .local v0, "layout_id":I
    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/keyguard/status/SecKeyguardStatusView;->addView(Landroid/view/View;II)V

    .line 110
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_clock_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/status/SecKeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/status/SecKeyguardClockView;

    iput-object v1, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/status/SecKeyguardClockView;

    .line 111
    return-void
.end method

.method private createWeatherView()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method private updateClock(Z)V
    .locals 2
    .param p1, "isCovered"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/status/SecKeyguardClockView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/status/SecKeyguardClockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/status/SecKeyguardClockView;->sendMsgUpdateClock(Z)V

    .line 177
    :cond_0
    return-void
.end method

.method private updateStatusView()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "SecKeyguardStatusView"

    const-string v1, "updateStatusView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->removeAllViews()V

    .line 103
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->createClockView()V

    .line 104
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->createWeatherView()V

    .line 105
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 90
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 96
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->updateStatusView()V

    .line 51
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->animation_status_view_hide:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mHideAnimation:Landroid/view/animation/Animation;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->animation_status_view_show:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mShowAnimation:Landroid/view/animation/Animation;

    .line 54
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sec_clock_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/status/SecKeyguardStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mClockHolder:Landroid/view/View;

    .line 84
    return-void
.end method

.method public refreshTime()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public setCoverState(Z)V
    .locals 3
    .param p1, "isCovered"    # Z

    .prologue
    .line 163
    invoke-static {}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isCovered()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 164
    const-string v0, "SecKeyguardStatusView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoverState changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {p1}, Lcom/android/keyguard/util/KeyguardStatusUtils;->setCoverState(Z)V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/keyguard/status/SecKeyguardStatusView;->updateClock(Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 190
    return-void
.end method

.method public updateOwnerInfo(ZZ)V
    .locals 1
    .param p1, "isUpdateOwnerInfo"    # Z
    .param p2, "isForced"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/status/SecKeyguardClockView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardStatusView;->mSecKeyguardClockView:Lcom/android/keyguard/status/SecKeyguardClockView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/status/SecKeyguardClockView;->updateOwnerInfo(ZZ)V

    .line 125
    :cond_0
    return-void
.end method
