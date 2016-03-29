.class Lcom/android/keyguard/KeyguardPinBasedInputView$8;
.super Ljava/lang/Object;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPinBasedInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$8;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/keyguard/R$id;->onehand_left_arrow_pin:I

    if-ne v0, v1, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$8;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    # setter for: Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z
    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->access$102(Lcom/android/keyguard/KeyguardPinBasedInputView;Z)Z

    .line 558
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$8;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$8;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    # getter for: Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->access$100(Lcom/android/keyguard/KeyguardPinBasedInputView;)Z

    move-result v1

    # invokes: Lcom/android/keyguard/KeyguardPinBasedInputView;->movePinLock(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->access$200(Lcom/android/keyguard/KeyguardPinBasedInputView;Z)V

    .line 559
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$8;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    # getter for: Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->access$300(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_direction"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/keyguard/R$id;->onehand_right_arrow_pin:I

    if-ne v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$8;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    # setter for: Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z
    invoke-static {v0, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->access$102(Lcom/android/keyguard/KeyguardPinBasedInputView;Z)Z

    .line 563
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$8;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$8;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    # getter for: Lcom/android/keyguard/KeyguardPinBasedInputView;->mRightPressed:Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->access$100(Lcom/android/keyguard/KeyguardPinBasedInputView;)Z

    move-result v1

    # invokes: Lcom/android/keyguard/KeyguardPinBasedInputView;->movePinLock(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->access$200(Lcom/android/keyguard/KeyguardPinBasedInputView;Z)V

    .line 564
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$8;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    # getter for: Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->access$400(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_direction"

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
