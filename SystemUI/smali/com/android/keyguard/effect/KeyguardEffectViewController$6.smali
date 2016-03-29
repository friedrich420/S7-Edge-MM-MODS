.class Lcom/android/keyguard/effect/KeyguardEffectViewController$6;
.super Ljava/lang/Object;
.source "KeyguardEffectViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewController;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mScreenOnAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$900(Lcom/android/keyguard/effect/KeyguardEffectViewController;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 543
    return-void
.end method
