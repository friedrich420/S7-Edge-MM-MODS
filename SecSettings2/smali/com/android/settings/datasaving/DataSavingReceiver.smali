.class public Lcom/android/settings/datasaving/DataSavingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataSavingReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isNeedStartSavingService(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 62
    .local v1, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v2

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v0, v3

    .line 69
    .local v0, "airplane":Z
    :goto_1
    if-nez v0, :cond_0

    move v2, v3

    .line 72
    goto :goto_0

    .end local v0    # "airplane":Z
    :cond_2
    move v0, v2

    .line 66
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "action":Ljava/lang/String;
    const-string v2, "DataSavingReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-static {p1}, Lcom/android/settings/Utils;->isDataCompressionEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, "dataSavingHelper":Lcom/android/settings/datasaving/DataSavingHelper;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/datasaving/DataSavingReceiver;->isNeedStartSavingService(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    if-nez v1, :cond_2

    .line 40
    invoke-static {p1}, Lcom/android/settings/datasaving/DataSavingHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/datasaving/DataSavingHelper;

    move-result-object v1

    .line 42
    :cond_2
    invoke-virtual {v1}, Lcom/android/settings/datasaving/DataSavingHelper;->bindServices()V

    .line 43
    invoke-virtual {v1}, Lcom/android/settings/datasaving/DataSavingHelper;->startSaving()V

    .line 44
    const-string v2, "DataSavingReceiver"

    const-string v3, "start saving when boot completed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_3
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    if-nez v1, :cond_4

    .line 50
    invoke-static {p1}, Lcom/android/settings/datasaving/DataSavingHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/datasaving/DataSavingHelper;

    move-result-object v1

    .line 52
    :cond_4
    invoke-virtual {v1}, Lcom/android/settings/datasaving/DataSavingHelper;->bindServices()V

    .line 53
    invoke-virtual {v1}, Lcom/android/settings/datasaving/DataSavingHelper;->setIMSIForTrafficService()V

    .line 54
    invoke-virtual {v1}, Lcom/android/settings/datasaving/DataSavingHelper;->startSaving()V

    goto :goto_0
.end method
