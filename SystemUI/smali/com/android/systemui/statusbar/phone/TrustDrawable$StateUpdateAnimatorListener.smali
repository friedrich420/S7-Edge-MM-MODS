.class Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TrustDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TrustDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateUpdateAnimatorListener"
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;Lcom/android/systemui/statusbar/phone/TrustDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/TrustDrawable;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/TrustDrawable$1;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;-><init>(Lcom/android/systemui/statusbar/phone/TrustDrawable;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    .line 291
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;->this$0:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/TrustDrawable;->updateState(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->access$300(Lcom/android/systemui/statusbar/phone/TrustDrawable;Z)V

    .line 298
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrustDrawable$StateUpdateAnimatorListener;->mCancelled:Z

    .line 286
    return-void
.end method
