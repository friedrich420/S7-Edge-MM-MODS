.class Lcom/android/settings/DeviceInfoSettings$5;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceInfoSettings;->initDeviceInfoSoftwareUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 2399
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 2402
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2404
    .local v0, "bChecked":Z
    const-string v2, "DeviceInfoSettings"

    const-string v4, "Auto Update(WIFI only) is Selected"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SOFTWARE_UPDATE_WIFI_ONLY2"

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2408
    new-instance v1, Landroid/content/Intent;

    const-string v2, "sec.fota.intent.WIFIONLY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2409
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "changed_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2410
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2411
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2413
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$5;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string v4, "com.samsung.omcagent.intent.AUTO_UPDATE"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    # invokes: Lcom/android/settings/DeviceInfoSettings;->sendOmcUpdate(Ljava/lang/String;Ljava/lang/Boolean;)Z
    invoke-static {v2, v4, v5}, Lcom/android/settings/DeviceInfoSettings;->access$1100(Lcom/android/settings/DeviceInfoSettings;Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 2415
    return v3

    .line 2405
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
