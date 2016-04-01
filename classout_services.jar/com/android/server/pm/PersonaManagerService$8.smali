.class Lcom/android/server/pm/PersonaManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    .prologue
    .line 7979
    iput-object p1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7982
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 7984
    .local v6, "action":Ljava/lang/String;
    const-string v20, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_ab

    .line 7985
    const-string v20, "android.intent.extra.user_handle"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 7986
    .local v7, "currentUserId":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v20

    if-nez v20, :cond_8a

    .line 7987
    const-string/jumbo v20, "sys.knox.store"

    const-string v21, "0"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7988
    const-string v20, "PersonaManagerService"

    const-string/jumbo v21, "onReceive USER_SWITCHED it is not knox container"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7993
    :goto_3a
    const-string v20, "PersonaManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onReceive USER_SWITCHED in "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7995
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v20

    if-nez v20, :cond_9d

    if-nez v7, :cond_9d

    .line 7997
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->getPersonaIds()[I

    move-result-object v15

    .line 7998
    .local v15, "personaIds":[I
    if-eqz v15, :cond_9d

    array-length v0, v15

    move/from16 v20, v0

    if-lez v20, :cond_9d

    .line 7999
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_75
    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    aget v21, v15, v9

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killKnoxLauncher(I)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/pm/PersonaManagerService;->access$9100(Lcom/android/server/pm/PersonaManagerService;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_75

    .line 7990
    .end local v9    # "i":I
    .end local v15    # "personaIds":[I
    :cond_8a
    const-string/jumbo v20, "sys.knox.store"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7991
    const-string v20, "PersonaManagerService"

    const-string/jumbo v21, "onReceive USER_SWITCHED it is knox container"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 8002
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setKnoxAppsComponentSetting(Landroid/content/Context;I)V
    invoke-static {v0, v1, v7}, Lcom/android/server/pm/PersonaManagerService;->access$600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;I)V

    .line 8098
    .end local v7    # "currentUserId":I
    :cond_aa
    :goto_aa
    return-void

    .line 8004
    :cond_ab
    const-string v20, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1f6

    .line 8005
    const-string v20, "android.intent.extra.user_handle"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 8006
    .local v19, "userId":I
    const-string v20, "PersonaManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onReceive USER_ADD userId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8007
    const/16 v20, 0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_f2

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_aa

    .line 8008
    :cond_f2
    const-string v20, "PersonaManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "userId "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is not Knox, so disable Knox packages"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8009
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v20

    const-string v21, "com.sec.knox.containeragent2"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8010
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v20

    const-string v21, "com.sec.knox.packageverifier"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8011
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v20

    const-string v21, "com.sec.knox.shortcutsms"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8013
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v20

    const-string v21, "com.samsung.android.bbc.fileprovider"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8015
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v20

    const-string v21, "com.samsung.knox.knoxtrustagent"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8018
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKnoxBluetoothSupported()Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$9200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v20

    if-eqz v20, :cond_1b7

    .line 8019
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v20

    const-string v21, "com.sec.knox.bluetooth"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8024
    :cond_1b7
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v20

    const-string v21, "com.sec.enterprise.knox.shareddevice.keyguard"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 8028
    :try_start_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v20

    const-string v21, "com.sec.knox.knoxlauncher"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1e9} :catch_1eb

    goto/16 :goto_aa

    .line 8029
    :catch_1eb
    move-exception v8

    .line 8030
    .local v8, "e":Ljava/lang/Exception;
    const-string v20, "PersonaManagerService"

    const-string/jumbo v21, "not exist card type launcher"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aa

    .line 8033
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v19    # "userId":I
    :cond_1f6
    const-string v20, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_239

    .line 8034
    const-string v20, "PersonaManagerService"

    const-string v21, "INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION onReceive"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8035
    const-string/jumbo v20, "personaid"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 8036
    .local v14, "personaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v20

    const/16 v21, 0x6

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 8037
    .local v12, "msg":Landroid/os/Message;
    iput v14, v12, Landroid/os/Message;->arg1:I

    .line 8038
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_aa

    .line 8039
    .end local v12    # "msg":Landroid/os/Message;
    .end local v14    # "personaId":I
    :cond_239
    const-string v20, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_26b

    .line 8040
    const-string v20, "PersonaManagerService"

    const-string v21, "ACTION_SCREEN_ON onReceive"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8041
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v20

    const/16 v21, 0x13

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 8042
    .restart local v12    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_aa

    .line 8043
    .end local v12    # "msg":Landroid/os/Message;
    :cond_26b
    const-string v20, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_293

    const-string v20, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_293

    const-string v20, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_293

    const-string v20, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_379

    .line 8044
    :cond_293
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v16

    .line 8045
    .local v16, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2a3
    :goto_2a3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_34d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PersonaInfo;

    .line 8046
    .local v13, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v13, :cond_2a3

    .line 8047
    const-string v20, "PersonaManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "PID:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8048
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/pm/PersonaInfo;->setIsFingerReset(Z)V

    .line 8049
    const-string/jumbo v20, "lock_settings"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    check-cast v18, Lcom/android/server/LockSettingsService;

    .line 8050
    .local v18, "service":Lcom/android/server/LockSettingsService;
    if-eqz v18, :cond_2a3

    .line 8053
    :try_start_2df
    const-string/jumbo v20, "lockscreen.password_type"

    const-wide/16 v22, 0x0

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v17, v0

    .line 8055
    .local v17, "quality":I
    const v20, 0x61000

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a3

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    sget-object v21, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v20

    if-eqz v20, :cond_2a3

    .line 8056
    const-string v20, "PersonaManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "KNOX Container of user "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " will be locked by changes of fingerprints."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8057
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    sget-object v21, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;
    :try_end_345
    .catch Ljava/lang/Exception; {:try_start_2df .. :try_end_345} :catch_347

    goto/16 :goto_2a3

    .line 8059
    .end local v17    # "quality":I
    :catch_347
    move-exception v8

    .line 8060
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2a3

    .line 8065
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v13    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v18    # "service":Lcom/android/server/LockSettingsService;
    :cond_34d
    const-string v20, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_aa

    .line 8066
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_35b
    :goto_35b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_aa

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PersonaInfo;

    .line 8067
    .restart local v13    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v13, :cond_35b

    .line 8068
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    iget v0, v13, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/pm/PersonaManagerService;->setIsFingerAsSupplement(IZ)V

    goto :goto_35b

    .line 8072
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v16    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_379
    const-string v20, "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_427

    .line 8074
    const-string/jumbo v20, "personaid"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 8075
    .restart local v14    # "personaId":I
    const-string v20, "PersonaManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "on Receive : SDP_TIMEOUT personaId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8076
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v11

    .line 8077
    .local v11, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v11, :cond_404

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    sget-object v21, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v20

    if-eqz v20, :cond_404

    .line 8078
    const-string v20, "PersonaManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "inside onReceive() state is ACTIVE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v22, v0

    iget v0, v11, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-boolean v0, v11, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aa

    .line 8082
    :cond_404
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v20

    const/16 v21, 0x14

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 8083
    .restart local v12    # "msg":Landroid/os/Message;
    iput v14, v12, Landroid/os/Message;->arg1:I

    .line 8084
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_aa

    .line 8085
    .end local v11    # "info":Landroid/content/pm/PersonaInfo;
    .end local v12    # "msg":Landroid/os/Message;
    .end local v14    # "personaId":I
    :cond_427
    const-string v20, "com.sec.knox.container.INTENT_ACTION_LOCK_TIMEOUT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_482

    .line 8087
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v20

    const/16 v21, 0x18

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 8088
    .restart local v12    # "msg":Landroid/os/Message;
    const-string/jumbo v20, "personaid"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 8089
    const-string v20, "PersonaManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "on Receive : LOCK_TIMEOUT personaId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v12, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8090
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_aa

    .line 8091
    .end local v12    # "msg":Landroid/os/Message;
    :cond_482
    const-string v20, "com.sec.knox.container.INTENT_ACTION_RESET_PWD_TIMEOUT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_aa

    .line 8093
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v20

    const/16 v21, 0x19

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 8094
    .restart local v12    # "msg":Landroid/os/Message;
    const-string/jumbo v20, "personaid"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 8095
    const-string v20, "PersonaManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "on Receive : RESET_PWD_TIMEOUT  personaId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v12, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8096
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_aa
.end method
