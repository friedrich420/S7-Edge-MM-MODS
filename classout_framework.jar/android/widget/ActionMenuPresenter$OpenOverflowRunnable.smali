.class Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V
    .registers 3
    .param p2, "popup"    # Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 1408
    iput-object p1, p0, this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    iput-object p2, p0, mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 1410
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1414
    iget-object v1, p0, this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->access$2100(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1415
    iget-object v1, p0, this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->access$2200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 1417
    :cond_11
    iget-object v1, p0, this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;
    invoke-static {v1}, Landroid/widget/ActionMenuPresenter;->access$2300(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1418
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1419
    iget-object v1, p0, this$0:Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, mPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    # setter for: Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;
    invoke-static {v1, v2}, Landroid/widget/ActionMenuPresenter;->access$1702(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 1421
    :cond_30
    iget-object v1, p0, this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    # setter for: Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v1, v2}, Landroid/widget/ActionMenuPresenter;->access$2402(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 1422
    return-void
.end method
