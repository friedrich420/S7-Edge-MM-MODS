.class Lcom/android/settings/networkconnect/NetworkConnectActivity$2;
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
    .line 227
    iput-object p1, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 230
    new-instance v2, Lcom/android/settings/networkconnect/NetworkManagerUtils;

    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$300(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 231
    .local v2, "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    invoke-virtual {v2}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getUsedSubIds()Ljava/util/List;

    move-result-object v1

    .line 232
    .local v1, "usedSubIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v3, "warningWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_warning_app_whitelist_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->putWhiteList(Ljava/util/List;Ljava/lang/String;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "i":I
    .end local v3    # "warningWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v4}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$100(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$000(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileDataMap(Ljava/util/Map;)V

    .line 239
    iget-object v4, p0, Lcom/android/settings/networkconnect/NetworkConnectActivity$2;->this$0:Lcom/android/settings/networkconnect/NetworkConnectActivity;

    # getter for: Lcom/android/settings/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/settings/networkconnect/NetworkConnectActivity;->access$200(Lcom/android/settings/networkconnect/NetworkConnectActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 240
    return-void
.end method
