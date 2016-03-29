.class Lcom/android/settings/networkconnect/NetworkConnectActivity$1;
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
    .line 208
    iput-object p1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$1;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    sget-boolean v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$1;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$100(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$1;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$000(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileDataMap(Ljava/util/Map;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$1;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$200(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 215
    return-void
.end method
