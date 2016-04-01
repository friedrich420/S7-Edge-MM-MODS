.class Landroid/widget/AbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2

    .prologue
    .line 3005
    iput-object p1, p0, this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 3008
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3010
    iget-object v1, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 3011
    .local v0, "position":I
    iget-object v1, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3012
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 13
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3016
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3076
    :goto_9
    return v5

    .line 3020
    :cond_a
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 3021
    .local v4, "position":I
    if-eq v4, v8, :cond_18

    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v7, :cond_1a

    :cond_18
    move v5, v6

    .line 3023
    goto :goto_9

    .line 3026
    :cond_1a
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    iget-object v7, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v4, v7, :cond_26

    move v5, v6

    .line 3033
    goto :goto_9

    .line 3037
    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3038
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v7, v3, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v7, :cond_3e

    .line 3039
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v2, v3, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 3044
    .local v2, "isItemEnabled":Z
    :goto_32
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_3c

    if-nez v2, :cond_40

    :cond_3c
    move v5, v6

    .line 3046
    goto :goto_9

    .line 3041
    .end local v2    # "isItemEnabled":Z
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3e
    const/4 v2, 0x0

    .restart local v2    # "isItemEnabled":Z
    goto :goto_32

    .line 3049
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_40
    sparse-switch p2, :sswitch_data_96

    move v5, v6

    .line 3076
    goto :goto_9

    .line 3051
    :sswitch_45
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v4, :cond_53

    .line 3052
    iget-object v6, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v8}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_9

    :cond_53
    move v5, v6

    .line 3055
    goto :goto_9

    .line 3057
    :sswitch_55
    iget-object v7, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v7

    if-eq v7, v4, :cond_63

    .line 3058
    iget-object v6, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v4}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_9

    :cond_63
    move v5, v6

    .line 3061
    goto :goto_9

    .line 3063
    :sswitch_65
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 3064
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v4}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 3065
    .local v0, "id":J
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p1, v4, v0, v1}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v5

    goto :goto_9

    .end local v0    # "id":J
    :cond_7a
    move v5, v6

    .line 3067
    goto :goto_9

    .line 3069
    :sswitch_7c
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_92

    .line 3070
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, v4}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 3071
    .restart local v0    # "id":J
    iget-object v5, p0, this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p1, v4, v0, v1}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    goto/16 :goto_9

    .end local v0    # "id":J
    :cond_92
    move v5, v6

    .line 3073
    goto/16 :goto_9

    .line 3049
    nop

    :sswitch_data_96
    .sparse-switch
        0x4 -> :sswitch_55
        0x8 -> :sswitch_45
        0x10 -> :sswitch_65
        0x20 -> :sswitch_7c
    .end sparse-switch
.end method
