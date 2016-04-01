.class Lcom/android/server/policy/GlobalActions$20;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
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
    .line 2194
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2198
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2199
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget v4, v4, Lcom/android/server/policy/GlobalActions;->mPowerOffIconResId:I

    if-ne v1, v4, :cond_43

    .line 2200
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsSafemodeSupport:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6800()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2201
    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$4302(Z)Z

    .line 2202
    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$4402(Z)Z

    .line 2203
    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2204
    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$4000(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    move v1, v2

    .line 2208
    :goto_42
    return v1

    :cond_43
    move v1, v3

    goto :goto_42
.end method
