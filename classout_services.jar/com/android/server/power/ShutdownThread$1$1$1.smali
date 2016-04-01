.class Lcom/android/server/power/ShutdownThread$1$1$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownThread$1$1;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$1$1;)V
    .registers 2

    .prologue
    .line 554
    iput-object p1, p0, this$1:Lcom/android/server/power/ShutdownThread$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 561
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 557
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, this$1:Lcom/android/server/power/ShutdownThread$1$1;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1$1;->this$0:Lcom/android/server/power/ShutdownThread$1;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$1;->val$ctx:Landroid/content/Context;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->access$400(Landroid/content/Context;Z)V

    .line 559
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 562
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 560
    return-void
.end method
