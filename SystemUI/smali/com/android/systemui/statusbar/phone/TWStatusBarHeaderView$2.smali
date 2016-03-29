.class Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$2;
.super Ljava/lang/Object;
.source "TWStatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->setQsDetailShowing(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

.field final synthetic val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$2;->this$0:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$2;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 311
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportTwoPhone:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSupportDualNumber:Z

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$2;->this$0:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->access$100(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$2;->this$0:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->access$100(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getUserSwitcherController()Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-result-object v0

    .line 314
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isCalling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$2;->this$0:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->access$200(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$2;->this$0:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->access$300(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0338

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 322
    .end local v0    # "controller":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$2;->this$0:Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;

    # getter for: Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;->access$400(Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView;)Lcom/android/systemui/statusbar/phone/ActivityStarter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TWStatusBarHeaderView$2;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v2}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method
