.class Lcom/sec/android/cover/widget/PagedView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/widget/PagedView;->hideScrollingIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/sec/android/cover/widget/PagedView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/PagedView;)V
    .locals 1

    .prologue
    .line 2142
    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView$3;->this$0:Lcom/sec/android/cover/widget/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView$3;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView$3;->cancelled:Z

    .line 2148
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2152
    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView$3;->cancelled:Z

    if-nez v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView$3;->this$0:Lcom/sec/android/cover/widget/PagedView;

    # getter for: Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/cover/widget/PagedView;->access$300(Lcom/sec/android/cover/widget/PagedView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2155
    :cond_0
    return-void
.end method
