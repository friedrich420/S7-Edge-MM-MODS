.class Lcom/android/server/policy/GlobalActions$17;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createPortraitGlobalActionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 2

    .prologue
    .line 1994
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1997
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1998
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 1999
    .local v1, "eventX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 2000
    .local v2, "eventY":I
    if-nez v0, :cond_99

    .line 2001
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4300()Z

    move-result v5

    if-eqz v5, :cond_53

    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v6, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget v6, v6, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v5, v6}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v5

    if-lt v1, v5, :cond_53

    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v6, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget v6, v6, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v5, v6}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v5

    iget-object v6, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget v6, v6, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    add-int/2addr v5, v6

    if-gt v1, v5, :cond_53

    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v6, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget v6, v6, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v5, v6}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v5

    if-lt v2, v5, :cond_53

    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v6, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget v6, v6, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v5, v6}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v5

    iget-object v6, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget v6, v6, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    add-int/2addr v5, v6

    if-gt v2, v5, :cond_53

    .line 2033
    :cond_52
    :goto_52
    return v3

    .line 2007
    :cond_53
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4300()Z

    move-result v5

    if-nez v5, :cond_76

    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v6, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget v6, v6, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v5, v6}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v5

    if-lt v1, v5, :cond_76

    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v6, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget v6, v6, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v5, v6}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v5

    iget-object v6, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget v6, v6, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    add-int/2addr v5, v6

    if-le v1, v5, :cond_52

    .line 2011
    :cond_76
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v5, :cond_82

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4300()Z

    move-result v5

    if-nez v5, :cond_82

    move v3, v4

    .line 2012
    goto :goto_52

    .line 2014
    :cond_82
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4300()Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 2015
    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V
    invoke-static {v3, v4}, Lcom/android/server/policy/GlobalActions;->access$5700(Lcom/android/server/policy/GlobalActions;Z)V

    :goto_8d
    move v3, v4

    .line 2019
    goto :goto_52

    .line 2017
    :cond_8f
    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8d

    .line 2023
    :cond_99
    if-ne v0, v4, :cond_52

    .line 2024
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v4, :cond_52

    .line 2025
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4300()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 2026
    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$4302(Z)Z

    goto :goto_52

    .line 2028
    :cond_a9
    sput-boolean v3, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 2029
    iget-object v4, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_52
.end method
