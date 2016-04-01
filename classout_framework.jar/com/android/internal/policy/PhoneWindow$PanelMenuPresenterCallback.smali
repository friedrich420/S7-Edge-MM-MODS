.class Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 2

    .prologue
    .line 2438
    iput-object p1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "x1"    # Lcom/android/internal/policy/PhoneWindow$1;

    .prologue
    .line 2438
    invoke-direct {p0, p1}, <init>(Lcom/android/internal/policy/PhoneWindow;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 9
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2441
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    .line 2442
    .local v2, "parentMenu":Landroid/view/Menu;
    if-eq v2, p1, :cond_22

    move v0, v3

    .line 2443
    .local v0, "isSubMenu":Z
    :goto_8
    iget-object v4, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_d

    move-object p1, v2

    .end local p1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_d
    invoke-virtual {v4, p1}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 2444
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_21

    .line 2445
    if-eqz v0, :cond_24

    .line 2446
    iget-object v4, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    # invokes: Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    invoke-static {v4, v5, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->access$500(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 2447
    iget-object v4, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 2454
    :cond_21
    :goto_21
    return-void

    .line 2442
    .end local v0    # "isSubMenu":Z
    .end local v1    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .restart local p1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_22
    const/4 v0, 0x0

    goto :goto_8

    .line 2451
    .end local p1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v0    # "isSubMenu":Z
    .restart local v1    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_24
    iget-object v3, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_21
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 5
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/16 v2, 0x8

    .line 2458
    if-nez p1, :cond_1f

    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2459
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2460
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1f

    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2461
    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2465
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_1f
    const/4 v1, 0x1

    return v1
.end method
