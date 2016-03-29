.class Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V
    .locals 0

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1646
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->mAccessibilityState:Z
    invoke-static {v2, p1}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->access$3902(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;Z)Z

    .line 1647
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->updateFeedbackEnabled()V
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->access$6100(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V

    .line 1648
    if-eqz p1, :cond_0

    .line 1649
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v2, v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$6200(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1650
    .local v1, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 1651
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 1652
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1655
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v2, v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mRows:Ljava/util/List;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$6200(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1656
    .restart local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2300(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v3, v3, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10809dc

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1660
    .end local v1    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    :cond_1
    return-void
.end method
