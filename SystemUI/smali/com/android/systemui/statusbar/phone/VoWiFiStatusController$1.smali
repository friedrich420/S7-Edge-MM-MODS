.class Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;
.super Landroid/content/BroadcastReceiver;
.source "VoWiFiStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.sec.sprint.wfc.VOWIFI_STATUS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    # invokes: Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->updateVoWiFi(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v3, p1, p2}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->access$000(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;Landroid/content/Intent;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 69
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "com.sec.sprint.wfc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.oem.smartwifisupport"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    # invokes: Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->handleVoWifi()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->access$100(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V

    goto :goto_0
.end method
