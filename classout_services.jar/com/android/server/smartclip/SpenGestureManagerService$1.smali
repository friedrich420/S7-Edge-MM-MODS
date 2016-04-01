.class Lcom/android/server/smartclip/SpenGestureManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
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
    .line 215
    iput-object p1, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "action":Ljava/lang/String;
    const-string v18, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_27

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "online"

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I
    invoke-static/range {v18 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$002(Lcom/android/server/smartclip/SpenGestureManagerService;I)I

    .line 310
    :cond_26
    :goto_26
    return-void

    .line 224
    :cond_27
    sget-object v18, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Receive broadcast : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v18, "com.samsung.pen.INSERT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_299

    .line 227
    invoke-virtual/range {p0 .. p0}, isInitialStickyBroadcast()Z

    move-result v18

    if-nez v18, :cond_26

    .line 231
    const-string/jumbo v18, "penInsert"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 232
    .local v14, "penInsert":Z
    const-string/jumbo v18, "isBoot"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 233
    .local v9, "isBoot":Z
    sget-object v18, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "penInsert : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".isBoot : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/16 v16, 0x0

    .line 236
    .local v16, "topMostComponent":Landroid/content/ComponentName;
    if-eqz v14, :cond_161

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J
    invoke-static/range {v20 .. v20}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v20

    sub-long v6, v18, v20

    .line 239
    .local v6, "elapsed":J
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J
    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100(Lcom/android/server/smartclip/SpenGestureManagerService;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_c5

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->calculateSpenUsingDuration(J)V
    invoke-static {v0, v6, v7}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$200(Lcom/android/server/smartclip/SpenGestureManagerService;J)V

    .line 242
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$102(Lcom/android/server/smartclip/SpenGestureManagerService;J)J

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    const-string v19, "SpenAttached"

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$300(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    .line 253
    .end local v6    # "elapsed":J
    :goto_df
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$500(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_194

    const/4 v15, 0x1

    .line 254
    .local v15, "supportAirCMDService":Z
    :goto_f2
    if-eqz v15, :cond_19a

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z
    invoke-static {v0, v14}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$602(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 258
    sget-object v18, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v19, "Start AirCommand. #1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v8, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 261
    .local v8, "extras":Landroid/os/Bundle;
    const-string v18, "action"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v19, "topComponent"

    if-eqz v16, :cond_197

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v18

    :goto_127
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v18, "batteryStatus"

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$000(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    const-string v18, "coverOpened"

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandService(Landroid/os/Bundle;)V
    invoke-static {v0, v8}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$800(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V

    goto/16 :goto_26

    .line 246
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v15    # "supportAirCMDService":Z
    :cond_161
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;
    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$400(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/content/ComponentName;

    move-result-object v16

    .line 247
    if-eqz v16, :cond_191

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 248
    .local v17, "topMostPackageName":Ljava/lang/String;
    :goto_171
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$102(Lcom/android/server/smartclip/SpenGestureManagerService;J)J

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$300(Lcom/android/server/smartclip/SpenGestureManagerService;Ljava/lang/String;)V

    goto/16 :goto_df

    .line 247
    .end local v17    # "topMostPackageName":Ljava/lang/String;
    :cond_191
    const-string v17, ""

    goto :goto_171

    .line 253
    :cond_194
    const/4 v15, 0x0

    goto/16 :goto_f2

    .line 262
    .restart local v8    # "extras":Landroid/os/Bundle;
    .restart local v15    # "supportAirCMDService":Z
    :cond_197
    const-string v18, ""

    goto :goto_127

    .line 273
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_19a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$900(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirCommandModeAllowed()Z

    move-result v18

    if-eqz v18, :cond_268

    if-nez v14, :cond_268

    if-nez v9, :cond_268

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v18

    if-nez v18, :cond_1cd

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->createGlobalAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v19

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v18 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1002(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl;

    .line 277
    :cond_1cd
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "pen_detachment_option"

    const/16 v20, 0x0

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 280
    .local v13, "penDetachOption":I
    sget-object v18, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PEN_DETACHMENT_OPTION is : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardSecureOn()Z

    move-result v18

    if-nez v18, :cond_26

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v18

    const-string/jumbo v20, "window"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1202(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1200(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 285
    .local v5, "display":Landroid/view/Display;
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 286
    .local v12, "outSize":Landroid/graphics/Point;
    invoke-virtual {v5, v12}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->isShowGlobalAirButton()Z

    move-result v18

    if-eqz v18, :cond_26

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v18

    const v19, 0x461c4000    # 10000.0f

    const v20, 0x461c4000    # 10000.0f

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/airbutton/AirButtonImpl;->show(FF)V

    .line 290
    sget-object v18, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v19, "AirButtonImpl show() is called!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 294
    .end local v5    # "display":Landroid/view/Display;
    .end local v12    # "outSize":Landroid/graphics/Point;
    .end local v13    # "penDetachOption":I
    :cond_268
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v18

    if-eqz v18, :cond_26

    .line 295
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v19 .. v19}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/airbutton/AirButtonImpl;->isShowing()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_26

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mGlobalAirButton:Lcom/samsung/android/airbutton/AirButtonImpl;
    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1000(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    goto/16 :goto_26

    .line 300
    .end local v9    # "isBoot":Z
    .end local v14    # "penInsert":Z
    .end local v15    # "supportAirCMDService":Z
    .end local v16    # "topMostComponent":Landroid/content/ComponentName;
    :cond_299
    const-string v18, "com.samsung.cover.OPEN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2d9

    .line 301
    const-string v18, "coverOpen"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 302
    .local v10, "isCoverOpen":Z
    sget-object v18, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "isCoverOpen : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v0, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    goto/16 :goto_26

    .line 305
    .end local v10    # "isCoverOpen":Z
    :cond_2d9
    const-string v18, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_26

    .line 306
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "lock_screen_quick_note"

    const/16 v20, 0x0

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    if-eqz v18, :cond_316

    const/4 v11, 0x1

    .line 307
    .local v11, "isEnableLockScreenQuickNote":Z
    :goto_2f9
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v18

    if-eqz v18, :cond_26

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipView:Lcom/android/server/smartclip/SmartClipView;
    invoke-static/range {v18 .. v18}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1300(Lcom/android/server/smartclip/SpenGestureManagerService;)Lcom/android/server/smartclip/SmartClipView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/smartclip/SmartClipView;->setDoubleTapStateBySettingMenu(Z)V

    goto/16 :goto_26

    .line 306
    .end local v11    # "isEnableLockScreenQuickNote":Z
    :cond_316
    const/4 v11, 0x0

    goto :goto_2f9
.end method
