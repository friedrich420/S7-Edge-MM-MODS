.class Lcom/android/settings/networkconnect/NetworkConnectActivity$3;
.super Ljava/lang/Object;
.source "NetworkConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/networkconnect/NetworkConnectActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/networkconnect/NetworkConnectActivity;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$100(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$000(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setFirewallRuleWifiMap(Ljava/util/Map;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$200(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 263
    return-void
.end method
