.class Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$1;
.super Landroid/os/Handler;
.source "PackageSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->sendText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$1;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 846
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 847
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$1;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    iget-object v1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$1;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    # invokes: Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getCommand()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->access$100(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->setSendText(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$1;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    # invokes: Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getKeyS()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->access$200(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    .line 849
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$1;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    # invokes: Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getKeyE()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->access$300(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    .line 850
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$1;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    # invokes: Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getKeyT()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->access$400(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_type:Ljava/lang/String;

    .line 852
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$1;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    invoke-virtual {v0}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->getOrderToSend()V

    .line 853
    return-void
.end method
