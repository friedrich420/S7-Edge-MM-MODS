.class Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->setFullScreenMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isAnimationCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;Z)V
    .locals 1

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;->val$enabled:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;->isAnimationCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;->isAnimationCanceled:Z

    .line 410
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 395
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeEnabled:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 396
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mPhoneStatusBarCallback:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$000(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$PhoneStatusBarCallback;->getBarStatus()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 397
    const/high16 v0, 0x3f800000    # 1.0f

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mNotificationPanelView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 401
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;->val$enabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;->isAnimationCanceled:Z

    if-nez v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mFullScreenModeShown:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$302(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;Z)Z

    .line 403
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "LWFV"

    sget-object v3, Lcom/android/keyguard/util/KeyguardStatusUtils;->USE_APP_FEATURE_SURVEY:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/util/KeyguardStatusUtils;->insertGSIMLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_1
    return-void

    .line 395
    .end local v0    # "alpha":F
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method
