.class Lcom/android/settings/SettingsPreferenceFragment$3$1;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsPreferenceFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsPreferenceFragment$3;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment$3;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$3$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 521
    iget-object v5, p0, Lcom/android/settings/SettingsPreferenceFragment$3$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$3;

    iget v5, v5, Lcom/android/settings/SettingsPreferenceFragment$3;->val$position:I

    iget-object v6, p0, Lcom/android/settings/SettingsPreferenceFragment$3$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$3;

    iget-object v6, v6, Lcom/android/settings/SettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v3, v5, v6

    .line 522
    .local v3, "index":I
    iget-object v5, p0, Lcom/android/settings/SettingsPreferenceFragment$3$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$3;

    iget-object v5, v5, Lcom/android/settings/SettingsPreferenceFragment$3;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    # getter for: Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/SettingsPreferenceFragment;->access$000(Lcom/android/settings/SettingsPreferenceFragment;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/android/settings/SettingsPreferenceFragment$3$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$3;

    iget-object v5, v5, Lcom/android/settings/SettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 523
    iget-object v5, p0, Lcom/android/settings/SettingsPreferenceFragment$3$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$3;

    iget-object v5, v5, Lcom/android/settings/SettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 524
    .local v2, "headerCnt":I
    iget-object v5, p0, Lcom/android/settings/SettingsPreferenceFragment$3$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$3;

    iget-object v5, v5, Lcom/android/settings/SettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    add-int v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 525
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_1

    .line 533
    .end local v2    # "headerCnt":I
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 526
    .restart local v2    # "headerCnt":I
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    .line 527
    .local v0, "centerX":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 528
    .local v1, "centerY":I
    iget-object v5, p0, Lcom/android/settings/SettingsPreferenceFragment$3$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$3;

    iget-object v5, v5, Lcom/android/settings/SettingsPreferenceFragment$3;->val$highlight:Landroid/graphics/drawable/Drawable;

    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 529
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setPressed(Z)V

    .line 530
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setPressed(Z)V

    .line 531
    iget-object v5, p0, Lcom/android/settings/SettingsPreferenceFragment$3$1;->this$1:Lcom/android/settings/SettingsPreferenceFragment$3;

    iget-object v5, v5, Lcom/android/settings/SettingsPreferenceFragment$3;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v6, 0x0

    # setter for: Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/settings/SettingsPreferenceFragment;->access$002(Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
