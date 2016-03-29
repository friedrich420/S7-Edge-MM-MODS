.class Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;
.super Ljava/lang/Object;
.source "ConfirmLockUniversal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->attachListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 556
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 558
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 559
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$300(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$400(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0a7a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e15db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # invokes: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->clearStepCircles()V
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1300(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    .line 570
    return-void
.end method
