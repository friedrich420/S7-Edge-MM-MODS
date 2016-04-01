.class Lcom/android/server/policy/GlobalActions$5;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsFirstEmergency:Z

.field private mIsVT:Z

.field private mShowConditionalEmergency:Z

.field telephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .registers 14
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    const/4 v6, 0x0

    .line 1264
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1266
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsFirstEmergency:Z

    .line 1267
    iput-boolean v6, p0, mShowConditionalEmergency:Z

    .line 1268
    iput-boolean v6, p0, mIsVT:Z

    .line 1269
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .registers 5
    .param p1, "buttonOn"    # Z

    .prologue
    .line 1292
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in changeStateFromPress of LongLifeMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1348
    iget-object v0, p0, telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    iput-boolean v0, p0, mIsVT:Z

    .line 1349
    iget-boolean v0, p0, mIsVT:Z

    if-eqz v0, :cond_e

    .line 1350
    const/4 v0, 0x0

    .line 1353
    :goto_d
    return v0

    :cond_e
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    goto :goto_d
.end method

.method public onPress()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 1272
    const-string v2, "GlobalActions"

    const-string/jumbo v3, "in onPress of LongLifeMode"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const-string v3, "com.android.service.GlobalAction"

    const-string v4, "0002"

    const-string v5, "EmergencyMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isFMMlocked()Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$3100(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1276
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUnableEmergencyforFMM:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$3200(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1284
    :goto_2f
    return-void

    .line 1280
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1281
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "enabled"

    iget-object v3, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5b

    :goto_46
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1282
    const-string/jumbo v1, "flag"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1283
    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2f

    .line 1281
    :cond_5b
    const/4 v1, 0x0

    goto :goto_46
.end method

.method onToggle(Z)V
    .registers 5
    .param p1, "on"    # Z

    .prologue
    .line 1287
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in onToggle of LongLifeMode on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 1300
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 1304
    iget-boolean v0, p0, mIsFirstEmergency:Z

    if-eqz v0, :cond_d

    .line 1305
    invoke-virtual {p0}, showConditionalInternal()Z

    move-result v0

    iput-boolean v0, p0, mShowConditionalEmergency:Z

    .line 1306
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsFirstEmergency:Z

    .line 1308
    :cond_d
    iget-boolean v0, p0, mShowConditionalEmergency:Z

    return v0
.end method

.method public showConditionalInternal()Z
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1313
    const-string/jumbo v7, "ril.domesticOtaStart"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1314
    .local v1, "domesticOtaStart":Ljava/lang/String;
    const-string/jumbo v7, "true"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1315
    sget-boolean v5, Lcom/android/server/policy/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v5, :cond_1d

    .line 1316
    const-string v5, "GlobalActions"

    const-string v7, "EmergencyMode is disable on OTA mode"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_1d
    :goto_1d
    return v6

    .line 1322
    :cond_1e
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 1323
    const-string/jumbo v7, "lock"

    iget-object v8, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "missing_phone_lock"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 1326
    iget-object v7, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    .line 1327
    .local v2, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v2, :cond_b2

    .line 1328
    iget-object v7, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "kids_home_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_ae

    move v3, v5

    .line 1329
    .local v3, "kidsModeEnabled":Z
    :goto_64
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v7

    if-eqz v7, :cond_b0

    const/16 v7, 0x600

    invoke-virtual {v2, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v7

    if-eqz v7, :cond_b0

    move v4, v5

    .line 1330
    .local v4, "upsmModeEnabled":Z
    :goto_73
    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->canSetMode()Z

    move-result v0

    .line 1331
    .local v0, "canSetMode":Z
    const-string v7, "GlobalActions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "kidsModeEnabled ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "upsmModeEnabled ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "canSetMode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    if-eqz v0, :cond_1d

    if-nez v4, :cond_1d

    if-nez v3, :cond_1d

    move v6, v5

    .line 1335
    goto/16 :goto_1d

    .end local v0    # "canSetMode":Z
    .end local v3    # "kidsModeEnabled":Z
    .end local v4    # "upsmModeEnabled":Z
    :cond_ae
    move v3, v6

    .line 1328
    goto :goto_64

    .restart local v3    # "kidsModeEnabled":Z
    :cond_b0
    move v4, v6

    .line 1329
    goto :goto_73

    .line 1338
    .end local v3    # "kidsModeEnabled":Z
    :cond_b2
    const-string v5, "GlobalActions"

    const-string/jumbo v7, "mEmergency : emMgr is null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1341
    .end local v2    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_bc
    const-string v5, "GlobalActions"

    const-string/jumbo v7, "mEmergency : SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE is false"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 1296
    const/4 v0, 0x1

    return v0
.end method
