.class public Lcom/android/settings/vpn2/ConfigDialogFragment;
.super Landroid/app/DialogFragment;
.source "ConfigDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mAlwaysOnProfile:Lcom/android/internal/net/VpnProfile;


# instance fields
.field private isUserAddProfilesAllowed:I

.field private isUserChangeProfilesAllowed:I

.field private isUserSetAlwaysOnAllowed:I

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mAlwaysOnProfile:Lcom/android/internal/net/VpnProfile;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 68
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    return-void
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0cd9

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private disconnect(Lcom/android/internal/net/VpnProfile;)V
    .locals 6
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 237
    .local v0, "connected":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    const-string v3, "[Legacy VPN]"

    const-string v4, "[Legacy VPN]"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "connected":Lcom/android/internal/net/LegacyVpnInfo;
    :cond_0
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ConfigDialogFragment"

    const-string v3, "Failed to disconnect"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/vpn2/VpnSettings;
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "edit"    # Z
    .param p3, "exists"    # Z

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "profile"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    const-string v2, "editing"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    const-string v2, "exists"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    new-instance v1, Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/vpn2/ConfigDialogFragment;-><init>()V

    .line 90
    .local v1, "frag":Lcom/android/settings/vpn2/ConfigDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "vpnconfigdialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 223
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 224
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    check-cast v3, Lcom/android/settings/vpn2/ConfigDialog;

    .line 147
    .local v3, "dialog":Lcom/android/settings/vpn2/ConfigDialog;
    invoke-virtual {v3}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v7

    .line 150
    .local v7, "profile":Lcom/android/internal/net/VpnProfile;
    iget v10, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->isUserAddProfilesAllowed:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 151
    const/4 v1, 0x1

    .line 153
    .local v1, "allowChange":Z
    invoke-virtual {v3}, Lcom/android/settings/vpn2/ConfigDialog;->isEditing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 154
    iget v10, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->isUserChangeProfilesAllowed:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const/4 v1, 0x1

    .line 155
    :goto_0
    if-nez v1, :cond_1

    .line 218
    .end local v1    # "allowChange":Z
    :goto_1
    return-void

    .line 154
    .restart local v1    # "allowChange":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    .end local v1    # "allowChange":Z
    :cond_1
    const/4 v10, -0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_3

    .line 166
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VPN_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v12

    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 170
    invoke-direct {p0, v7}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)V

    .line 173
    invoke-virtual {v3}, Lcom/android/settings/vpn2/ConfigDialog;->isEditing()Z

    move-result v10

    if-nez v10, :cond_2

    .line 175
    :try_start_0
    invoke-direct {p0, v7}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    goto :goto_1

    .line 176
    :catch_0
    move-exception v4

    .line 177
    .local v4, "e":Landroid/os/RemoteException;
    const-string v10, "ConfigDialogFragment"

    const-string v11, "Failed to connect"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 180
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v10, -0x3

    move/from16 v0, p2

    if-ne v0, v10, :cond_2

    .line 182
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    const-string v11, "LOCKDOWN_VPN"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 183
    const/4 v6, 0x0

    .line 184
    .local v6, "lockdownKey":Ljava/lang/String;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v10

    const-string v11, "LOCKDOWN_VPN"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    .line 185
    .local v9, "value":[B
    invoke-virtual {v3}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v10

    sput-object v10, Lcom/android/settings/vpn2/ConfigDialogFragment;->mAlwaysOnProfile:Lcom/android/internal/net/VpnProfile;

    .line 186
    if-eqz v9, :cond_4

    .line 187
    new-instance v6, Ljava/lang/String;

    .end local v6    # "lockdownKey":Ljava/lang/String;
    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([B)V

    .line 188
    .restart local v6    # "lockdownKey":Ljava/lang/String;
    sget-object v10, Lcom/android/settings/vpn2/ConfigDialogFragment;->mAlwaysOnProfile:Lcom/android/internal/net/VpnProfile;

    if-eqz v10, :cond_5

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 190
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 191
    .local v8, "res":Landroid/content/res/Resources;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0e0311

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0e0cd4

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v2, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 198
    .end local v2    # "context":Landroid/content/Context;
    .end local v8    # "res":Landroid/content/res/Resources;
    :cond_4
    const-string v10, "ConfigDialogFragment"

    const-string v11, "value is NULL !"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v6    # "lockdownKey":Ljava/lang/String;
    .end local v9    # "value":[B
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)V

    .line 204
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    .line 205
    .local v5, "keyStore":Landroid/security/KeyStore;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VPN_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v5, v10, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 208
    iget-object v10, v7, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const-string v11, "LOCKDOWN_VPN"

    invoke-virtual {v5, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 209
    const-string v10, "LOCKDOWN_VPN"

    invoke-virtual {v5, v10}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 211
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v10}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 212
    :catch_1
    move-exception v4

    .line 213
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v10, "ConfigDialogFragment"

    const-string v11, "Failed to clear lockdown VPN configuration"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 137
    .local v6, "args":Landroid/os/Bundle;
    const-string v0, "profile"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 138
    .local v3, "profile":Lcom/android/internal/net/VpnProfile;
    const-string v0, "editing"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 139
    .local v4, "editing":Z
    const-string v0, "exists"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 141
    .local v5, "exists":Z
    new-instance v0, Lcom/android/settings/vpn2/ConfigDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn2/ConfigDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    return-object v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "user"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUserManager:Landroid/os/UserManager;

    .line 99
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUserManager:Landroid/os/UserManager;

    const-string v4, "no_config_vpn"

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "false"

    aput-object v1, v0, v3

    .line 108
    .local v0, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v5, "isUserAddProfilesAllowed"

    invoke-static {v1, v4, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->isUserAddProfilesAllowed:I

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v5, "isUserChangeProfilesAllowed"

    invoke-static {v1, v4, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->isUserChangeProfilesAllowed:I

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v5, "isUserSetAlwaysOnAllowed"

    invoke-static {v1, v4, v5, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->isUserSetAlwaysOnAllowed:I

    .line 118
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 119
    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    if-nez v1, :cond_2

    .line 121
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 126
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    goto :goto_1

    :cond_3
    move v1, v3

    .line 126
    goto :goto_2

    .line 131
    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    goto :goto_0
.end method
