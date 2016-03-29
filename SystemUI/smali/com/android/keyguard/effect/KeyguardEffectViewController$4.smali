.class Lcom/android/keyguard/effect/KeyguardEffectViewController$4;
.super Ljava/lang/Object;
.source "KeyguardEffectViewController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewController;->setEffectLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
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
    .line 384
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 389
    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChange() v: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldBottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBottom:I
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$500(Lcom/android/keyguard/effect/KeyguardEffectViewController;)I

    move-result v0

    if-eq v0, p5, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewController;->mBottom:I
    invoke-static {v0, p5}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$502(Lcom/android/keyguard/effect/KeyguardEffectViewController;I)I

    .line 392
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$4;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewController;->apply()V
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$600(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    .line 394
    :cond_0
    return-void
.end method
