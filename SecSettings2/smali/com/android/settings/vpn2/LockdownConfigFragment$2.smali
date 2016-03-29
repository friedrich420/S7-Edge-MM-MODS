.class Lcom/android/settings/vpn2/LockdownConfigFragment$2;
.super Ljava/lang/Object;
.source "LockdownConfigFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/LockdownConfigFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/LockdownConfigFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$keyStore:Landroid/security/KeyStore;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/LockdownConfigFragment;Landroid/widget/ListView;Landroid/security/KeyStore;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->this$0:Lcom/android/settings/vpn2/LockdownConfigFragment;

    iput-object p2, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->val$keyStore:Landroid/security/KeyStore;

    iput-object p4, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v9, 0x1

    .line 143
    iget-object v5, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    .line 144
    .local v2, "newIndex":I
    iget-object v5, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->this$0:Lcom/android/settings/vpn2/LockdownConfigFragment;

    # getter for: Lcom/android/settings/vpn2/LockdownConfigFragment;->mCurrentIndex:I
    invoke-static {v5}, Lcom/android/settings/vpn2/LockdownConfigFragment;->access$000(Lcom/android/settings/vpn2/LockdownConfigFragment;)I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "true"

    aput-object v6, v4, v5

    .line 149
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->this$0:Lcom/android/settings/vpn2/LockdownConfigFragment;

    invoke-virtual {v5}, Lcom/android/settings/vpn2/LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v7, "isUserSetAlwaysOnAllowed"

    invoke-static {v5, v6, v7, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, "isUserSetAlwaysOnAllowed":I
    if-eqz v1, :cond_0

    .line 157
    if-nez v2, :cond_2

    .line 158
    iget-object v5, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->val$keyStore:Landroid/security/KeyStore;

    const-string v6, "LOCKDOWN_VPN"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 159
    const/4 v5, 0x0

    # setter for: Lcom/android/settings/vpn2/LockdownConfigFragment;->mAlwaysOnProfile:Lcom/android/internal/net/VpnProfile;
    invoke-static {v5}, Lcom/android/settings/vpn2/LockdownConfigFragment;->access$102(Lcom/android/internal/net/VpnProfile;)Lcom/android/internal/net/VpnProfile;

    .line 179
    :goto_1
    iget-object v5, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->this$0:Lcom/android/settings/vpn2/LockdownConfigFragment;

    invoke-virtual {v5}, Lcom/android/settings/vpn2/LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    goto :goto_0

    .line 161
    :cond_2
    iget-object v5, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->this$0:Lcom/android/settings/vpn2/LockdownConfigFragment;

    # getter for: Lcom/android/settings/vpn2/LockdownConfigFragment;->mProfiles:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/vpn2/LockdownConfigFragment;->access$200(Lcom/android/settings/vpn2/LockdownConfigFragment;)Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 162
    .local v3, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-virtual {v3}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()I

    move-result v0

    .line 163
    .local v0, "checkProfile":I
    if-ne v0, v9, :cond_3

    .line 164
    iget-object v5, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->val$context:Landroid/content/Context;

    const v6, 0x7f0e0cd7

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    .line 169
    iget-object v5, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->val$context:Landroid/content/Context;

    const v6, 0x7f0e0cd8

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 173
    :cond_4
    iget-object v5, p0, Lcom/android/settings/vpn2/LockdownConfigFragment$2;->val$keyStore:Landroid/security/KeyStore;

    const-string v6, "LOCKDOWN_VPN"

    iget-object v7, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 175
    # setter for: Lcom/android/settings/vpn2/LockdownConfigFragment;->mAlwaysOnProfile:Lcom/android/internal/net/VpnProfile;
    invoke-static {v3}, Lcom/android/settings/vpn2/LockdownConfigFragment;->access$102(Lcom/android/internal/net/VpnProfile;)Lcom/android/internal/net/VpnProfile;

    goto :goto_1
.end method
