.class public Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
.super Landroid/app/enterprise/dualsim/IDualSimPolicy$Stub;
.source "DualSimPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "DualSimPolicyService"

.field private static mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/enterprise/dualsim/IDualSimPolicy$Stub;-><init>()V

    .line 77
    const-string v0, "DualSimPolicyService"

    const-string v1, "DualSimPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 80
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    move-result-object v0

    sput-object v0, mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    .line 81
    return-void
.end method

.method private enforceDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 99
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DUAL_SIM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 104
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DUAL_SIM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 88
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 91
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public clearPreferredSimSlot(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, -0x1

    .line 213
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, "result":Z
    :try_start_5
    invoke-virtual {p0, p1}, getPreferredSimSlot(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 217
    .local v1, "mPreferSim":I
    if-eq v1, v3, :cond_2a

    .line 218
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DualSim_Policy"

    const-string v5, "PreferredSim"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v3, v4, :cond_2a

    .line 220
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v5, "DualSim_Policy"

    const-string v6, "PreferredSim"

    const/4 v7, -0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2b

    move-result v2

    .line 228
    .end local v1    # "mPreferSim":I
    :cond_2a
    :goto_2a
    return v2

    .line 225
    :catch_2b
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public getPreferredSimSlot(Landroid/app/enterprise/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, -0x1

    .line 193
    const/4 v2, 0x0

    .line 195
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "DualSim_Policy"

    const-string v7, "PreferredSim"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_2e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 199
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 200
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_18

    .line 201
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2f

    move-result v4

    .line 209
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_2e
    :goto_2e
    return v4

    .line 206
    :catch_2f
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method

.method public onAdminAdded(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 121
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onAdminAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 133
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onAdminRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 127
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "onPreAdminRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public setPreferredSimSlot(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "slotNum"    # I

    .prologue
    const/4 v7, 0x1

    .line 150
    invoke-direct {p0, p1}, enforceOwnerOnlyAndDualSimPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 151
    invoke-virtual {p0, p1}, getPreferredSimSlot(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 152
    .local v1, "mPreferSim":I
    const/4 v2, 0x0

    .line 154
    .local v2, "result":Z
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3f

    .line 155
    :try_start_c
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DualSim_Policy"

    const-string v5, "PreferredSim"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v3, v4, :cond_32

    .line 157
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v5, "DualSim_Policy"

    const-string v6, "PreferredSim"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 159
    if-eqz v2, :cond_32

    .line 161
    if-nez p2, :cond_33

    .line 162
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, switchNetworkCustomizer(I)V

    .line 189
    :cond_32
    :goto_32
    return v2

    .line 164
    :cond_33
    if-ne p2, v7, :cond_32

    .line 165
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, switchNetworkCustomizer(I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_39} :catch_3a

    goto :goto_32

    .line 186
    :catch_3a
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3f
    :try_start_3f
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v5, "DualSim_Policy"

    const-string v6, "PreferredSim"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 175
    if-eqz v2, :cond_32

    .line 177
    if-nez p2, :cond_54

    .line 178
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, switchNetworkCustomizer(I)V

    goto :goto_32

    .line 180
    :cond_54
    if-ne p2, v7, :cond_32

    .line 181
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, switchNetworkCustomizer(I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5a} :catch_3a

    goto :goto_32
.end method

.method public switchNetworkCustomizer(I)V
    .registers 6
    .param p1, "simId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 138
    if-nez p1, :cond_14

    .line 139
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 140
    .local v0, "subId":[I
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 146
    .end local v0    # "subId":[I
    :cond_13
    :goto_13
    return-void

    .line 141
    :cond_14
    if-ne p1, v2, :cond_13

    .line 142
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 143
    .local v1, "subId2":[I
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_13
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 115
    const-string v0, "DualSimPolicyService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
