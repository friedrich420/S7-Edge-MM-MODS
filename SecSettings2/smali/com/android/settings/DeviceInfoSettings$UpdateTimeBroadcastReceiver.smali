.class Lcom/android/settings/DeviceInfoSettings$UpdateTimeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTimeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$UpdateTimeBroadcastReceiver;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/DeviceInfoSettings;Lcom/android/settings/DeviceInfoSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/DeviceInfoSettings;
    .param p2, "x1"    # Lcom/android/settings/DeviceInfoSettings$1;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/settings/DeviceInfoSettings$UpdateTimeBroadcastReceiver;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 294
    if-nez p2, :cond_1

    .line 295
    const-string v1, "DeviceInfoSettings"

    const-string v2, "Intent is null!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    const-string v1, "DeviceInfoSettings"

    const-string v2, "Action is null!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    :cond_2
    const-string v1, "sec.fota.intent.CHECKED_DATE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "DeviceInfoSettings"

    const-string v2, "Software Update date is updated"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings$UpdateTimeBroadcastReceiver;->this$0:Lcom/android/settings/DeviceInfoSettings;

    # invokes: Lcom/android/settings/DeviceInfoSettings;->updateLastCheckedDate()V
    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->access$000(Lcom/android/settings/DeviceInfoSettings;)V

    goto :goto_0
.end method
