.class public Lcom/android/server/bridge/BridgeProxy$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .registers 2

    .prologue
    .line 612
    iput-object p1, p0, this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 615
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v22

    const-string v23, "PackageReceiver onReceive()"

    invoke-static/range {v22 .. v23}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_254

    .line 619
    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, "addedPackage":Ljava/lang/String;
    if-nez v3, :cond_2c

    .line 726
    .end local v3    # "addedPackage":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-void

    .line 625
    .restart local v3    # "addedPackage":Ljava/lang/String;
    :cond_2c
    :try_start_2c
    const-string/jumbo v22, "package"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 627
    .local v8, "iPM":Landroid/content/pm/IPackageManager;
    const/16 v22, 0x80

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v8, v3, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 629
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 630
    .local v5, "bundle":Landroid/os/Bundle;
    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_2b

    .line 633
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5d
    :goto_5d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 634
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_5d

    .line 637
    const-string v22, "RCPSyncerName_"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_15f

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 642
    .local v21, "syncerPreferences":Landroid/content/SharedPreferences;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v5, v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 643
    .local v16, "serviceName":Ljava/lang/String;
    const-string v22, "RCPSyncerName_"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 644
    .local v20, "syncerName":Ljava/lang/String;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onCreate(): serviceName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "; syncerName="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "; UserId="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    if-eqz v16, :cond_5d

    .line 647
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onCreate(): Adding syncer for UserId="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 651
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_13c
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_13c} :catch_13e
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_13c} :catch_22e

    goto/16 :goto_5d

    .line 674
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v9    # "key":Ljava/lang/String;
    .end local v16    # "serviceName":Ljava/lang/String;
    .end local v20    # "syncerName":Ljava/lang/String;
    .end local v21    # "syncerPreferences":Landroid/content/SharedPreferences;
    :catch_13e
    move-exception v6

    .line 675
    .local v6, "e":Ljava/lang/NullPointerException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " PackageReceiver onReceive() Failed to load meta-data, NullPointer: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 654
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "iPM":Landroid/content/pm/IPackageManager;
    .restart local v9    # "key":Ljava/lang/String;
    :cond_15f
    :try_start_15f
    const-string v22, "RCPProviderName_"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5d

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->access$1600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 659
    .local v14, "providerPreferences":Landroid/content/SharedPreferences;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v5, v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 660
    .restart local v16    # "serviceName":Ljava/lang/String;
    const-string v22, "RCPProviderName_"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 661
    .local v13, "providerName":Ljava/lang/String;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onCreate(): serviceName = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "; providerName="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "; UserId="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    if-eqz v16, :cond_5d

    .line 665
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onCreate(): Adding provider for UserId="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v24 .. v24}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 669
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_22c
    .catch Ljava/lang/NullPointerException; {:try_start_15f .. :try_end_22c} :catch_13e
    .catch Landroid/os/RemoteException; {:try_start_15f .. :try_end_22c} :catch_22e

    goto/16 :goto_5d

    .line 678
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v9    # "key":Ljava/lang/String;
    .end local v13    # "providerName":Ljava/lang/String;
    .end local v14    # "providerPreferences":Landroid/content/SharedPreferences;
    .end local v16    # "serviceName":Ljava/lang/String;
    :catch_22e
    move-exception v6

    .line 679
    .local v6, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception trying to get applicationInfo for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 681
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2b

    .line 683
    .end local v3    # "addedPackage":Ljava/lang/String;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_254
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    const-string v23, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    .line 689
    .local v15, "removedPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mSyncerPrefName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 691
    .restart local v21    # "syncerPreferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v19

    .line 692
    .local v19, "syncerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_306

    .line 693
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_294
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_306

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 694
    .local v18, "syncerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v10, v18

    .line 695
    .local v10, "pairs":Ljava/util/Map$Entry;
    if-eqz v10, :cond_294

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_294

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_294

    .line 696
    new-instance v17, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 697
    .local v17, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_294

    .line 698
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " RCPComponents syncer package removed == "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 707
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "pairs":Ljava/util/Map$Entry;
    .end local v17    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    .end local v18    # "syncerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_306
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->access$1600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 709
    .restart local v14    # "providerPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    .line 711
    .local v12, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_2b

    .line 712
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_332
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 713
    .local v11, "providerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v10, v11

    .line 714
    .restart local v10    # "pairs":Ljava/util/Map$Entry;
    if-eqz v10, :cond_332

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_332

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_332

    .line 715
    new-instance v17, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .line 716
    .restart local v17    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_332

    .line 717
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " RCPComponents provider package removed == "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_2b
.end method
