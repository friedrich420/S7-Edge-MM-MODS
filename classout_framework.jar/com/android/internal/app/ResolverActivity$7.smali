.class Lcom/android/internal/app/ResolverActivity$7;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->safelyStartActivtyAfterAnimation(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic val$cti:Lcom/android/internal/app/ResolverActivity$TargetInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .registers 3

    .prologue
    .line 3136
    iput-object p1, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, val$cti:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3148
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3142
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->access$3602(Lcom/android/internal/app/ResolverActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 3143
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, val$cti:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 3144
    iget-object v0, p0, this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 3145
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3151
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3139
    return-void
.end method
