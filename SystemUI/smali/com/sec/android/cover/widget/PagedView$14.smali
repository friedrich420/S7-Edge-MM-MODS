.class Lcom/sec/android/cover/widget/PagedView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/widget/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/widget/PagedView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/PagedView;)V
    .locals 0

    .prologue
    .line 2768
    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView$14;->this$0:Lcom/sec/android/cover/widget/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView$14;->this$0:Lcom/sec/android/cover/widget/PagedView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/widget/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->access$1002(Lcom/sec/android/cover/widget/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 2772
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView$14;->this$0:Lcom/sec/android/cover/widget/PagedView;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/cover/widget/PagedView;->mWarpPageExposed:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->access$1202(Lcom/sec/android/cover/widget/PagedView;Z)Z

    .line 2773
    return-void
.end method
