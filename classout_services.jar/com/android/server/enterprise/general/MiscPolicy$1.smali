.class Lcom/android/server/enterprise/general/MiscPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .registers 2

    .prologue
    .line 2104
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2107
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2108
    :cond_18
    const-string v1, "MiscPolicy"

    const-string v2, "Received intent: android.intent.action.BOOT_COMPLETED or android.intent.action.USER_ADDED"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    :try_start_1f
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # invokes: Lcom/android/server/enterprise/general/MiscPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;
    invoke-static {v1}, Lcom/android/server/enterprise/general/MiscPolicy;->access$700(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/net/IConnectivityManager;

    .line 2111
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # invokes: Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxyOnBoot()V
    invoke-static {v1}, Lcom/android/server/enterprise/general/MiscPolicy;->access$800(Lcom/android/server/enterprise/general/MiscPolicy;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2a

    .line 2116
    :cond_29
    :goto_29
    return-void

    .line 2112
    :catch_2a
    move-exception v0

    .line 2113
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiscPolicy"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29
.end method
