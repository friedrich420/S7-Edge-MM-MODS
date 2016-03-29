.class Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;
.super Ljava/lang/Object;
.source "ConfirmLockUniversal.java"

# interfaces
.implements Lcom/android/internal/widget/DirectionLockTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
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
    .line 218
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionDetected(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "curDirection"    # Ljava/lang/String;
    .param p2, "isDirectionDetected"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0a7a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

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

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

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

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$300(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$400(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 235
    :cond_1
    const-string v0, "FINGER_LIFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 236
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$600(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_3

    .line 245
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e15dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_3
    return-void

    .line 239
    :cond_4
    if-eqz p2, :cond_2

    const-string v0, "FINGER_LIFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # invokes: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleStepCircle(Ljava/lang/String;Z)V
    invoke-static {v0, p1, v4}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$700(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onDirectionStarted()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method
