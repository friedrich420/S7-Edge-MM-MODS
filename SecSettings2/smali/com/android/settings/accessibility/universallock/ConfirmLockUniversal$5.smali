.class Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;
.super Ljava/lang/Object;
.source "ConfirmLockUniversal.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializeAnimations()V
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
    .line 443
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 463
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 456
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 457
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 451
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 447
    return-void
.end method
