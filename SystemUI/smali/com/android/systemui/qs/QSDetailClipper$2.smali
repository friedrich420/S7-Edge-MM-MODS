.class Lcom/android/systemui/qs/QSDetailClipper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSDetailClipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailClipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailClipper;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetailClipper;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetailClipper;->access$002(Lcom/android/systemui/qs/QSDetailClipper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 92
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper$2;->this$0:Lcom/android/systemui/qs/QSDetailClipper;

    # getter for: Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailClipper;->access$200(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    return-void
.end method
