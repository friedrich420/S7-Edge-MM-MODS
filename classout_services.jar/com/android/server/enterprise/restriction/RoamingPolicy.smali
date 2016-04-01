.class public Lcom/android/server/enterprise/restriction/RoamingPolicy;
.super Landroid/app/enterprise/IRoamingPolicy$Stub;
.source "RoamingPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final NON_ROAMING_AUTO_SYNC_SETTING:Ljava/lang/String; = "NonRoamingAutoSyncSetting"

.field private static final ROAMING_POLICY_PREF:Ljava/lang/String; = "RoamingPolicyPref"

.field private static final TAG:Ljava/lang/String; = "RoamingPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private final phoneStateListner:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/enterprise/IRoamingPolicy$Stub;-><init>()V

    .line 136
    new-instance v0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;-><init>(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V

    iput-object v0, p0, phoneStateListner:Landroid/telephony/PhoneStateListener;

    .line 154
    iput-object v2, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 81
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    .line 83
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 84
    invoke-virtual {p0, v2}, isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 85
    invoke-direct {p0}, registerRoamingListener()V

    .line 86
    :cond_2e
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/restriction/RoamingPolicy;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .prologue
    .line 70
    iget-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .prologue
    .line 70
    invoke-direct {p0}, storeUserAutoSyncSetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/restriction/RoamingPolicy;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RoamingPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, setMasterSyncAutomatically(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .prologue
    .line 70
    invoke-direct {p0}, restoreUserAutoSyncSetting()V

    return-void
.end method

.method private deregisterRoamingListener()V
    .registers 4

    .prologue
    .line 93
    iget-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, phoneStateListner:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 94
    invoke-direct {p0}, restoreUserAutoSyncSetting()V

    .line 95
    return-void
.end method

.method private enforceOwnerOnlyAndRoamingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 170
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ROAMING"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 158
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 161
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private registerRoamingListener()V
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, phoneStateListner:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 90
    return-void
.end method

.method private restoreUserAutoSyncSetting()V
    .registers 6

    .prologue
    .line 113
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "RoamingPolicyPref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 116
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 117
    const-string v2, "RoamingPolicy"

    const-string/jumbo v3, "restoreUserAutoSyncSetting"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "NonRoamingAutoSyncSetting"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2}, setMasterSyncAutomatically(Z)V

    .line 122
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_2f
    return-void
.end method

.method private setMasterSyncAutomatically(Z)V
    .registers 10
    .param p1, "flag"    # Z

    .prologue
    .line 129
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    .line 130
    .local v3, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v2, :cond_2d

    aget v4, v0, v1

    .line 131
    .local v4, "userid":I
    invoke-static {p1, v4}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 132
    const-string v5, "RoamingPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMasterSyncAutomatically : userid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 134
    .end local v4    # "userid":I
    :cond_2d
    return-void
.end method

.method private storeUserAutoSyncSetting()V
    .registers 6

    .prologue
    .line 99
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "RoamingPolicyPref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 103
    const-string v2, "RoamingPolicy"

    const-string/jumbo v3, "storeUserAutoSyncSetting"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "NonRoamingAutoSyncSetting"

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_29
    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 327
    const/4 v1, 0x1

    .line 329
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string/jumbo v6, "roamingDataEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 332
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 333
    .local v2, "value":Z
    if-nez v2, :cond_10

    .line 334
    move v1, v2

    .line 338
    .end local v2    # "value":Z
    :cond_23
    const-string v4, "RoamingPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDataRoamingEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return v1
.end method

.method public isRoamingPushEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 270
    const/4 v1, 0x1

    .line 271
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string/jumbo v6, "roamingPushEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 274
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 275
    .local v2, "value":Z
    if-nez v2, :cond_10

    .line 276
    move v1, v2

    .line 281
    .end local v2    # "value":Z
    :cond_23
    const-string v4, "RoamingPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRoamingPushEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return v1
.end method

.method public isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 220
    const/4 v1, 0x1

    .line 221
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string/jumbo v6, "roamingSyncEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 224
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 225
    .local v2, "value":Z
    if-nez v2, :cond_10

    .line 226
    move v1, v2

    .line 231
    .end local v2    # "value":Z
    :cond_23
    const-string v4, "RoamingPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRoamingSyncEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return v1
.end method

.method public isRoamingVoiceCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 395
    const/4 v1, 0x1

    .line 396
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string/jumbo v6, "roamingVoiceCallsEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 399
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 400
    .local v2, "value":Z
    if-nez v2, :cond_10

    .line 401
    move v1, v2

    .line 405
    .end local v2    # "value":Z
    :cond_23
    return v1
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 345
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 350
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 360
    return-void
.end method

.method public setRoamingData(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 294
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRoamingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 295
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v9, "ROAMING"

    const-string/jumbo v10, "roamingDataEnabled"

    invoke-virtual {v7, v8, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 298
    .local v3, "result":Z
    invoke-virtual {p0, p1}, isRoamingDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 299
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.action.internal.ROAMING_SETROAMINGDATA"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v2, "i":Landroid/content/Intent;
    const-string/jumbo v7, "roamingData"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 302
    .local v4, "token":J
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    .end local v2    # "i":Landroid/content/Intent;
    .end local v4    # "token":J
    :cond_32
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 306
    .local v6, "userId":I
    if-eqz v3, :cond_55

    if-nez v6, :cond_55

    .line 307
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 309
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_41
    const-string v7, "RoamingPolicy"

    const-string/jumbo v8, "setRoamingData"

    invoke-virtual {p0, p1}, isRoamingDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    invoke-virtual {v1, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 310
    const-string v7, "RoamingPolicy"

    const-string/jumbo v8, "setRoamingData : calling gearPolicyManager   "

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_55} :catch_73

    .line 315
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_55
    :goto_55
    const-string v7, "RoamingPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDataRoaming : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1}, isRoamingDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return v3

    .line 311
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_73
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_55
.end method

.method public setRoamingPush(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 243
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRoamingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 244
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "ROAMING"

    const-string/jumbo v7, "roamingPushEnabled"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 247
    .local v2, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 248
    .local v3, "userId":I
    if-eqz v2, :cond_34

    if-nez v3, :cond_34

    .line 249
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_20
    const-string v4, "RoamingPolicy"

    const-string/jumbo v5, "setRoamingPush"

    invoke-virtual {p0, p1}, isRoamingPushEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 252
    const-string v4, "RoamingPolicy"

    const-string/jumbo v5, "setRoamingPush : calling gearPolicyManager   "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_34} :catch_4e

    .line 257
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_34
    :goto_34
    const-string v4, "RoamingPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRoamingPush : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return v2

    .line 253
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_4e
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public setRoamingSync(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 181
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRoamingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 183
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "ROAMING"

    const-string/jumbo v9, "roamingSyncEnabled"

    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 186
    .local v2, "result":Z
    const-string v6, "RoamingPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRoamingSync : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 190
    .local v4, "token":J
    :try_start_2e
    invoke-virtual {p0, p1}, isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-nez v6, :cond_73

    .line 191
    invoke-direct {p0}, registerRoamingListener()V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_77

    .line 196
    :goto_37
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 199
    .local v3, "userId":I
    if-eqz v2, :cond_72

    if-nez v3, :cond_72

    .line 200
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 202
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_49
    const-string v6, "RoamingPolicy"

    const-string/jumbo v7, "setRoamingSync"

    invoke-virtual {p0, p1}, isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 203
    const-string v6, "RoamingPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setRoamingSync : calling gearPolicyManager  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_72} :catch_7c

    .line 209
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_72
    :goto_72
    return v2

    .line 193
    .end local v3    # "userId":I
    :cond_73
    :try_start_73
    invoke-direct {p0}, deregisterRoamingListener()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_37

    .line 196
    :catchall_77
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 204
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_7c
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_72
.end method

.method public setRoamingVoiceCalls(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 369
    invoke-direct {p0, p1}, enforceOwnerOnlyAndRoamingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 370
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "ROAMING"

    const-string/jumbo v7, "roamingVoiceCallsEnabled"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 373
    .local v2, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 374
    .local v3, "userId":I
    if-eqz v2, :cond_45

    if-nez v3, :cond_45

    .line 375
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 377
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_20
    const-string v4, "RoamingPolicy"

    const-string/jumbo v5, "setRoamingVoiceCalls"

    invoke-virtual {p0, p1}, isRoamingVoiceCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 378
    const-string v4, "RoamingPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRoamingVoiceCalls :   calling gearPolicyManager  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_45} :catch_46

    .line 383
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_45
    :goto_45
    return v2

    .line 379
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_46
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 355
    return-void
.end method
