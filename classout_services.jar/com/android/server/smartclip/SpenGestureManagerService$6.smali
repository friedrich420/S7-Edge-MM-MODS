.class Lcom/android/server/smartclip/SpenGestureManagerService$6;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .prologue
    .line 1213
    iput-object p1, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .registers 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 1220
    const/4 v8, 0x0

    .line 1221
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostActivityClassName()Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2800(Lcom/android/server/smartclip/SpenGestureManagerService;)Ljava/lang/String;

    move-result-object v2

    .line 1222
    .local v2, "currentTopMostActivity":Ljava/lang/String;
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "createGlobalAirButton : Current topmost activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    new-instance v6, Landroid/content/Intent;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_ACTIONMEMO:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2900()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1225
    .local v6, "gacIntentActionMemo":Landroid/content/Intent;
    new-instance v7, Landroid/content/Intent;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->GLOBAL_AIR_COMMAND_SELECTED_FOR_RAKEINSERVICE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3000()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1227
    .local v7, "gacIntentRakeInService":Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    .line 1229
    .local v10, "personID":I
    packed-switch p2, :pswitch_data_42e

    .line 1471
    :cond_3b
    :goto_3b
    return-void

    .line 1231
    :pswitch_3c
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_QUICK_MEMO"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const/4 v9, 0x0

    .line 1234
    .local v9, "isCallState":Z
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 1246
    .local v12, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v12, :cond_64

    .line 1247
    if-nez v9, :cond_63

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_63

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9f

    :cond_63
    const/4 v9, 0x1

    .line 1252
    :cond_64
    :goto_64
    if-eqz v9, :cond_b2

    .line 1253
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v13

    const/4 v14, 0x3

    if-lt v13, v14, :cond_a1

    .line 1254
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.intent.action.QUICKMEMO_LAUNCH_BY_CALL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1261
    :goto_7f
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1262
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1264
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3100()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 1265
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "ACTIONMEMO"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto :goto_3b

    .line 1247
    :cond_9f
    const/4 v9, 0x0

    goto :goto_64

    .line 1256
    :cond_a1
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.samsung.intent.action.QUICKMEMO_LAUNCH_BY_CALL"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_7f

    .line 1258
    :cond_b2
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->launchActionMemo()V
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$2200(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    goto :goto_7f

    .line 1269
    .end local v9    # "isCallState":Z
    .end local v12    # "tmgr":Landroid/telephony/TelephonyManager;
    :pswitch_ba
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_SCRAPBOOKER"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleSmartClip()Z
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 1275
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3400()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f1

    .line 1276
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "createGlobalAirButton : RakeIn launching ignored. Current activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1283
    :cond_f1
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "com.samsung.android.app.pinboard"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isPackageActivated(Ljava/lang/String;)Z
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3500(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_144

    .line 1284
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1285
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v13, "com.sec.android.app.SmartClipService"

    const-string v14, "com.sec.android.app.SmartClipService.rakein.RakeInService"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1286
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1287
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1289
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v6, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1291
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1292
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1298
    :goto_133
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3100()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 1299
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "SCRAPBOOKER"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 1294
    :cond_144
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "onItemSelected : Pinboard is not installed or activated"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1040507

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_133

    .line 1303
    :pswitch_15c
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_RAKEINSELECT"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleSmartClip()Z
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 1309
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RAKEIN_CONTENT:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3400()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_193

    .line 1310
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "createGlobalAirButton : RakeInSelect launching ignored. Current activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1314
    :cond_193
    const/16 v13, 0x64

    if-lt v10, v13, :cond_1a8

    .line 1315
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1040b37

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1319
    .local v1, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3b

    .line 1321
    .end local v1    # "cheatSheet":Landroid/widget/Toast;
    :cond_1a8
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1322
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v13, "com.sec.android.app.SmartClipService"

    const-string v14, "com.sec.android.app.SmartClipService.rakein.RakeInSelectService"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1323
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x7

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1324
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1328
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x7

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1329
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1331
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3100()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 1332
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "SCRAPBOOKER"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 1337
    :pswitch_1e5
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_FLASH_ANNO"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleCapture()Z
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 1343
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_FLASH_ANNOTATION:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3700()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_21c

    .line 1344
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "createGlobalAirButton : Flash annotation launching ignored. Current activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1348
    :cond_21c
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1349
    .restart local v8    # "intent":Landroid/content/Intent;
    const/high16 v13, 0x14000000

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1350
    const-string v13, "com.sec.spen.flashannotatesvc"

    const-string v14, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v13

    if-eqz v13, :cond_251

    .line 1352
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v14

    if-ne v13, v14, :cond_251

    .line 1353
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 1356
    :cond_251
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1358
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x2

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1359
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1361
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3100()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 1362
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "SCREENWRITE"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 1366
    :pswitch_27b
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_S_FINDER"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    const/16 v13, 0x64

    if-lt v10, v13, :cond_297

    .line 1369
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1040b37

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1373
    .restart local v1    # "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3b

    .line 1375
    .end local v1    # "cheatSheet":Landroid/widget/Toast;
    :cond_297
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1376
    .restart local v8    # "intent":Landroid/content/Intent;
    const/high16 v13, 0x14000000

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1377
    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.samsung.android.app.galaxyfinder"

    const-string v15, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1378
    const-string v13, "callername"

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1380
    :try_start_2b3
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2bc
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2b3 .. :try_end_2bc} :catch_2d7

    .line 1385
    :goto_2bc
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v6, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1387
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x3

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1388
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_3b

    .line 1381
    :catch_2d7
    move-exception v3

    .line 1382
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "Failed to start S-Finder"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2bc

    .line 1393
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_2e0
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_PEN_WINDOW"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const/16 v13, 0x64

    if-lt v10, v13, :cond_2fc

    .line 1396
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1040b37

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1400
    .restart local v1    # "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3b

    .line 1402
    .end local v1    # "cheatSheet":Landroid/widget/Toast;
    :cond_2fc
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1403
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v13, "com.sec.android.app.FlashBarService"

    const-string v14, "com.sec.android.app.FlashBarService.SmartWindowDrawService"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x4

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1405
    const-string/jumbo v13, "multiwindow"

    const/4 v14, 0x1

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1406
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1408
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v6, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1410
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x4

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1411
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_3b

    .line 1416
    :pswitch_33a
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_EASY_CLIP"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->isPossibleSmartClip()Z
    invoke-static {v13}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3300(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 1424
    const/16 v13, 0x64

    if-lt v10, v13, :cond_360

    .line 1425
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1040b37

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 1429
    .restart local v1    # "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3b

    .line 1431
    .end local v1    # "cheatSheet":Landroid/widget/Toast;
    :cond_360
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->ACTIVITY_NAME_RESHAPE_TUTORIAL:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3800()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3af

    .line 1432
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "createGlobalAirButton : GLOBAL_APP_EASY_CLIP launching ignored. Current activity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x104087a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1434
    .local v4, "easyClip":Ljava/lang/String;
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1040358

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1435
    .local v5, "easyClipRunning":Ljava/lang/String;
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v5, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3b

    .line 1439
    .end local v4    # "easyClip":Ljava/lang/String;
    .end local v5    # "easyClipRunning":Ljava/lang/String;
    :cond_3af
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1440
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v13, "com.sec.android.app.SmartClipService"

    const-string v14, "com.sec.android.app.SmartClipService.easyclip.EasyClipService"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1441
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x5

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1442
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1444
    const-string/jumbo v13, "selectIndex"

    const/4 v14, 0x5

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1445
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1447
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3100()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 1448
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "EASYCLIP"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 1452
    :pswitch_3ec
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "GLOBAL_APP_S_NOTE"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const-string v11, "com.samsung.android.snote"

    .line 1454
    .local v11, "sNotePackage":Ljava/lang/String;
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1455
    if-eqz v8, :cond_426

    .line 1457
    :try_start_403
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v8, v14}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_40c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_403 .. :try_end_40c} :catch_41d

    .line 1465
    :goto_40c
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCommandItemLoggingEnabled:Z
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3100()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 1466
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v14, "SNOTE"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogAirCommandItemSelected(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3200(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 1458
    :catch_41d
    move-exception v3

    .line 1459
    .restart local v3    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "Failed to start S-Note"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40c

    .line 1462
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_426
    sget-object v13, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v14, "Failed to start S-Note. S-Note launch intent is null!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40c

    .line 1229
    :pswitch_data_42e
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_ba
        :pswitch_1e5
        :pswitch_27b
        :pswitch_2e0
        :pswitch_33a
        :pswitch_3ec
        :pswitch_15c
    .end packed-switch
.end method
