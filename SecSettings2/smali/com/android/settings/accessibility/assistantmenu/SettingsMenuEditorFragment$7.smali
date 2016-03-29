.class Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;
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
    .line 521
    iput-object p1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 535
    const-string v1, "SettingsMenuEditorFragment"

    const-string v2, "[c] #2 onAnimationEnd!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$1800(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 537
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$1900(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 539
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$2000(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$2100(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I

    move-result v0

    .line 542
    .local v0, "columnItemCount":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$2300(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v1

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$2300(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$2300(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$2300(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$2300(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    const/4 v2, 0x0

    const/4 v3, 0x1

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$2400(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;ZI)V

    .line 553
    :cond_1
    return-void

    .line 539
    .end local v0    # "columnItemCount":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$2200(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I

    move-result v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 531
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 526
    return-void
.end method
