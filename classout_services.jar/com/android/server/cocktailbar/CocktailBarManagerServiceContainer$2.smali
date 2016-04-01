.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;
.super Landroid/content/BroadcastReceiver;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .registers 2

    .prologue
    .line 1014
    iput-object p1, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, -0x2710

    .line 1016
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1017
    .local v1, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1018
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v6

    monitor-enter v6

    .line 1019
    :try_start_15
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1020
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v0, :cond_36

    .line 1021
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 1022
    .local v4, "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-eqz v4, :cond_33

    .line 1023
    invoke-virtual {v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onConfigurationChanged()V

    .line 1020
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1026
    .end local v4    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_36
    monitor-exit v6

    .line 1062
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_37
    :goto_37
    return-void

    .line 1026
    :catchall_38
    move-exception v5

    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_38

    throw v5

    .line 1027
    :cond_3b
    const-string v5, "android.intent.action.USER_STARTED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1028
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserStarted(I)V
    invoke-static {v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$700(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto :goto_37

    .line 1030
    :cond_4f
    const-string v5, "android.intent.action.USER_STOPPED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1031
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserStopped(I)V
    invoke-static {v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$800(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto :goto_37

    .line 1033
    :cond_63
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 1034
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserSwitched(I)V
    invoke-static {v5, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$900(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto :goto_37

    .line 1037
    :cond_77
    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarSettingObserver:Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;

    move-result-object v5

    if-eqz v5, :cond_a3

    .line 1039
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarSettingObserver:Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 1041
    :cond_a3
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onBroadcastReceived(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 1044
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v6

    monitor-enter v6

    .line 1045
    :try_start_b6
    invoke-virtual {p0}, getSendingUserId()I

    move-result v3

    .line 1046
    .local v3, "sendingUser":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_de

    .line 1047
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1048
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c8
    if-ge v2, v0, :cond_ef

    .line 1049
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 1050
    .restart local v4    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-eqz v4, :cond_db

    .line 1051
    invoke-virtual {v4, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 1048
    :cond_db
    add-int/lit8 v2, v2, 0x1

    goto :goto_c8

    .line 1055
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_de
    iget-object v5, p0, this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 1056
    .restart local v4    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-eqz v4, :cond_ef

    .line 1057
    invoke-virtual {v4, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 1060
    .end local v4    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_ef
    monitor-exit v6

    goto/16 :goto_37

    .end local v3    # "sendingUser":I
    :catchall_f2
    move-exception v5

    monitor-exit v6
    :try_end_f4
    .catchall {:try_start_b6 .. :try_end_f4} :catchall_f2

    throw v5
.end method
