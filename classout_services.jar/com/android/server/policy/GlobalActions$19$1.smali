.class Lcom/android/server/policy/GlobalActions$19$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$19;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$19;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$19;)V
    .registers 2

    .prologue
    .line 2170
    iput-object p1, p0, this$1:Lcom/android/server/policy/GlobalActions$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2187
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2182
    iget-object v0, p0, this$1:Lcom/android/server/policy/GlobalActions$19;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$19;->val$action:Lcom/android/server/policy/GlobalActions$Action;

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$Action;->onPress()V

    .line 2183
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2178
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2174
    return-void
.end method
