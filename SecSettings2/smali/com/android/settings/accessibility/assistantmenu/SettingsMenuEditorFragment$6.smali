.class Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;
.super Ljava/lang/Object;
.source "SettingsMenuEditorFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 512
    const-string v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[c] onAnimationEnd!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I
    invoke-static {v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$1700(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z
    invoke-static {v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$1100(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$900(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AfterTranslateAnimationEnd()V
    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$100(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    .line 518
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 508
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 503
    return-void
.end method
