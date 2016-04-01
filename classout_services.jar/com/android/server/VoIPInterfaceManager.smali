.class public Lcom/android/server/VoIPInterfaceManager;
.super Landroid/os/IVoIPInterface$Stub;
.source "VoIPInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VoIPInterfaceManager$1;,
        Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;,
        Lcom/android/server/VoIPInterfaceManager$CallState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_INDEX:I = -0x1

.field private static final PERMISSION_VOIP_INTERFACE:Ljava/lang/String; = "com.sec.android.permission.VOIP_INTERFACE"

.field private static final TAG:Ljava/lang/String; = "VoIPInterfaceManager"


# instance fields
.field alarms:Landroid/app/AlarmManager;

.field private callTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dbg_exception:Z

.field private dbg_level:I

.field private mContext:Landroid/content/Context;

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field mDirection:I

.field mIndex:I

.field mMode:I

.field mMpty:Z

.field mNumber:Ljava/lang/String;

.field mStatus:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mType:I

.field pIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 389
    invoke-direct {p0}, Landroid/os/IVoIPInterface$Stub;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, dbg_level:I

    .line 67
    iput-boolean v1, p0, dbg_exception:Z

    .line 72
    iput-object v2, p0, mCpuBooster:Landroid/os/DVFSHelper;

    .line 75
    iput v1, p0, mIndex:I

    .line 76
    iput v1, p0, mDirection:I

    .line 77
    iput v1, p0, mStatus:I

    .line 78
    iput v1, p0, mMode:I

    .line 79
    iput-boolean v1, p0, mMpty:Z

    .line 80
    const-string v0, ""

    iput-object v0, p0, mNumber:Ljava/lang/String;

    .line 81
    iput v1, p0, mType:I

    .line 2060
    iput-object v2, p0, alarms:Landroid/app/AlarmManager;

    .line 390
    const-string v0, "VoIPInterfaceManager()..."

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 392
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, callTypeList:Ljava/util/ArrayList;

    .line 395
    const-string v0, "START VOIPINTERFACE SERVICE"

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VoIPInterfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, log(Ljava/lang/String;)V

    return-void
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1715
    const-string/jumbo v1, "createTelUrl()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1716
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1717
    const/4 v1, 0x0

    .line 1722
    :goto_d
    return-object v1

    .line 1720
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1721
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method private dump_calltype_w_index(I)V
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 2107
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 2109
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_91

    .line 2110
    const-string v1, "###########################"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 2111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PKG NAME     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 2112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION NAME  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getactionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 2113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL NUMBER  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$500(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 2114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL STATE   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$600(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 2115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOTE NUM   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRemotePartyNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 2117
    :cond_91
    return-void
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .registers 12
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_12

    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "com.sec.android.permission.VOIP_INTERFACE"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_13

    .line 213
    :cond_12
    return-void

    .line 198
    :cond_13
    const/4 v2, 0x0

    .line 199
    .local v2, "isAllowed":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 200
    .local v6, "pid":I
    invoke-direct {p0, v6}, getPackageNameByPID(I)[Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "packageNames":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1f
    if-ge v1, v3, :cond_2a

    aget-object v4, v0, v1

    .line 204
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v4}, isAllowedVoIP(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 205
    const/4 v2, 0x1

    .line 210
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2a
    if-nez v2, :cond_12

    .line 211
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission denied:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", you do not have voip permission."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 202
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f
.end method

.method private enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V
    .registers 12
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 170
    .local v2, "isAllowed":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_27

    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "com.sec.android.permission.VOIP_INTERFACE"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_27

    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_27

    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_29

    .line 173
    :cond_27
    const/4 v2, 0x1

    .line 189
    :cond_28
    return-void

    .line 175
    :cond_29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 176
    .local v6, "pid":I
    invoke-direct {p0, v6}, getPackageNameByPID(I)[Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "packageNames":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_34
    if-ge v1, v3, :cond_3f

    aget-object v4, v0, v1

    .line 180
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v4}, isAllowedVoIPGetStateOnly(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 181
    const/4 v2, 0x1

    .line 186
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3f
    if-nez v2, :cond_28

    .line 187
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission denied:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", you do not have voip permission."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 178
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_34
.end method

.method private getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1812
    invoke-direct {p0, p1}, getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .line 1814
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1f

    .line 1815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getCallSessionInfo_w_pkgName() : Can not find session index with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1816
    const/4 v1, 0x0

    .line 1822
    :goto_1e
    return-object v1

    .line 1819
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getCallSessionInfo_w_pkgName() : Find session index with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1821
    iget-object v2, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1822
    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    goto :goto_1e
.end method

.method private getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I
    .registers 6
    .param p1, "callState"    # Lcom/android/server/VoIPInterfaceManager$CallState;

    .prologue
    const/4 v2, -0x1

    .line 1828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCallTypeIndex_w_callstate()...callState["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_26

    move v0, v2

    .line 1916
    :goto_25
    return v0

    .line 1833
    :cond_26
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_5f

    .line 1834
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_268

    .line 1835
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDialing()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto :goto_25

    .line 1834
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1841
    .end local v0    # "i":I
    :cond_5f
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_98

    .line 1842
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_64
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_268

    .line 1843
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallRinging()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 1844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto :goto_25

    .line 1842
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 1849
    .end local v0    # "i":I
    :cond_98
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_d2

    .line 1850
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9d
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_268

    .line 1851
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallActive()Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 1852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1850
    :cond_cf
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 1857
    .end local v0    # "i":I
    :cond_d2
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_10c

    .line 1858
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d7
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_268

    .line 1859
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallIdle()Z

    move-result v1

    if-eqz v1, :cond_109

    .line 1860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1858
    :cond_109
    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    .line 1865
    .end local v0    # "i":I
    :cond_10c
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_146

    .line 1866
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_111
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_268

    .line 1867
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallHold()Z

    move-result v1

    if-eqz v1, :cond_143

    .line 1868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1866
    :cond_143
    add-int/lit8 v0, v0, 0x1

    goto :goto_111

    .line 1874
    .end local v0    # "i":I
    :cond_146
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_180

    .line 1875
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_14b
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_268

    .line 1876
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallAlerting()Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 1877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1875
    :cond_17d
    add-int/lit8 v0, v0, 0x1

    goto :goto_14b

    .line 1882
    .end local v0    # "i":I
    :cond_180
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_1ba

    .line 1883
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_185
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_268

    .line 1884
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallIncoming()Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 1885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1883
    :cond_1b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_185

    .line 1890
    .end local v0    # "i":I
    :cond_1ba
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_1f4

    .line 1891
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1bf
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_268

    .line 1892
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallWaiting()Z

    move-result v1

    if-eqz v1, :cond_1f1

    .line 1893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1891
    :cond_1f1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1bf

    .line 1899
    .end local v0    # "i":I
    :cond_1f4
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_22e

    .line 1900
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1f9
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_268

    .line 1901
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDisconnecting()Z

    move-result v1

    if-eqz v1, :cond_22b

    .line 1902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1900
    :cond_22b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f9

    .line 1907
    .end local v0    # "i":I
    :cond_22e
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_268

    .line 1908
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_233
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_268

    .line 1909
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDisconnected()Z

    move-result v1

    if-eqz v1, :cond_265

    .line 1910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 1908
    :cond_265
    add-int/lit8 v0, v0, 0x1

    goto :goto_233

    .end local v0    # "i":I
    :cond_268
    move v0, v2

    .line 1916
    goto/16 :goto_25
.end method

.method private getCallTypeIndex_w_pkgName(Ljava/lang/String;)I
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1792
    iget-object v3, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1793
    .local v1, "listSize":I
    const/4 v2, -0x1

    .line 1795
    .local v2, "matchedIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_36

    .line 1796
    iget-object v3, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v3}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1797
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    getCallTypeIndex_w_pkgName() : Find session index with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 1798
    move v2, v0

    .line 1795
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1802
    :cond_36
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4f

    .line 1803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    getCallTypeIndex_w_pkgName() : Can not find session index with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 1807
    :cond_4f
    return v2
.end method

.method private getPackageNameByPID(I)[Ljava/lang/String;
    .registers 7
    .param p1, "pid"    # I

    .prologue
    .line 219
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 220
    .local v1, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 221
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_12

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_12

    .line 222
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 224
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_29
    return-object v3

    :cond_2a
    const/4 v3, 0x0

    goto :goto_29
.end method

.method private initCPUBoost()V
    .registers 7

    .prologue
    .line 2131
    iget-object v1, p0, mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v1, :cond_f

    .line 2132
    new-instance v1, Landroid/os/DVFSHelper;

    iget-object v2, p0, mContext:Landroid/content/Context;

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, mCpuBooster:Landroid/os/DVFSHelper;

    .line 2136
    :cond_f
    iget-object v1, p0, mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v1, :cond_2c

    .line 2137
    iget-object v1, p0, mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    .line 2138
    .local v0, "supportedCPUFreqTable":[I
    if-eqz v0, :cond_2c

    .line 2140
    iget-object v1, p0, mCpuBooster:Landroid/os/DVFSHelper;

    const-string v2, "CPU"

    iget-object v3, p0, mCpuBooster:Landroid/os/DVFSHelper;

    const v4, 0xc3500

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 2143
    .end local v0    # "supportedCPUFreqTable":[I
    :cond_2c
    return-void
.end method

.method private isVoIPRunningAndDeregi()Z
    .registers 11

    .prologue
    .line 1680
    const-string/jumbo v8, "isVoIPRunningAndDeregi()..."

    invoke-direct {p0, v8}, log(Ljava/lang/String;)V

    .line 1681
    iget-object v8, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_10

    .line 1682
    const/4 v8, 0x0

    .line 1710
    :goto_f
    return v8

    .line 1684
    :cond_10
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1685
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 1687
    .local v7, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1688
    .local v5, "packagePid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1689
    .local v3, "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_49

    .line 1690
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v8, v8, v1

    iget v9, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 1692
    :cond_49
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 1693
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v9, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 1697
    .end local v1    # "i":I
    .end local v3    # "item":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_5d
    iget-object v8, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1699
    .local v4, "listSize":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_64
    if-ge v1, v4, :cond_92

    .line 1700
    iget-object v8, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v8}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1701
    .local v6, "pid":Ljava/lang/Integer;
    if-nez v6, :cond_95

    .line 1702
    const-string v8, "The session is in DB. but, process is not running.. It will be destroyed.."

    invoke-direct {p0, v8}, log(Ljava/lang/String;)V

    .line 1703
    iget-boolean v8, p0, dbg_exception:Z

    if-nez v8, :cond_95

    .line 1704
    iget-object v8, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v8}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, destroyCallSession(Ljava/lang/String;)Z

    .line 1710
    .end local v6    # "pid":Ljava/lang/Integer;
    :cond_92
    const/4 v8, 0x1

    goto/16 :goto_f

    .line 1699
    .restart local v6    # "pid":Ljava/lang/Integer;
    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_64
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2121
    const-string v0, "VoIPInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    return-void
.end method

.method private log(Ljava/lang/String;I)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "setdbg_level"    # I

    .prologue
    .line 2126
    iget v0, p0, dbg_level:I

    if-ge p2, v0, :cond_9

    .line 2127
    const-string v0, "VoIPInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_9
    return-void
.end method

.method private notifyVoIPCallStateChangeIntoTelephony()V
    .registers 5

    .prologue
    .line 1189
    const-string v2, "    notifyVoIPCallStateChangeIntoTelephony()...notify to BT"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1191
    :try_start_5
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1192
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_15

    .line 1193
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->notifyVoIPCallStateChangeIntoBT()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    .line 1198
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    :goto_15
    return-void

    .line 1195
    :catch_16
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    notifyVoIPCallStateChangeIntoTelephony()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    goto :goto_15
.end method

.method private sendVoIPBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "extraDataValue"    # Ljava/lang/String;

    .prologue
    .line 1737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendVoIPBroadcast()...pkgName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] actionName["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] extraDataValue["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1738
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1739
    .local v0, "voipActivity":Landroid/content/Intent;
    if-eqz p1, :cond_3b

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    :cond_3b
    const-string v1, "VOIP_ACTION"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1741
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1742
    return-void
.end method

.method private startCPUBoost()V
    .registers 3

    .prologue
    .line 2145
    iget-object v0, p0, mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_a

    .line 2146
    iget-object v0, p0, mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 2150
    :goto_9
    return-void

    .line 2148
    :cond_a
    const-string v0, "VoIPInterfaceManager"

    const-string v1, "Can not start CPUBoost, please call initCPUBoost"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private stopCPUBoost()V
    .registers 3

    .prologue
    .line 2152
    iget-object v0, p0, mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_a

    .line 2153
    iget-object v0, p0, mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 2157
    :goto_9
    return-void

    .line 2155
    :cond_a
    const-string v0, "VoIPInterfaceManager"

    const-string v1, "Can not start CPUBoost, please call initCPUBoost"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private updateStatusBar(ZZ)V
    .registers 8
    .param p1, "disableExpand"    # Z
    .param p2, "disableAlerts"    # Z

    .prologue
    .line 1495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1498
    .local v0, "ident":J
    :try_start_4
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1501
    const/4 v2, 0x0

    .line 1503
    .local v2, "state":I
    if-eqz p1, :cond_17

    .line 1504
    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    .line 1507
    :cond_17
    if-eqz p2, :cond_1c

    .line 1508
    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    .line 1511
    :cond_1c
    iget-object v3, p0, mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v2}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_25

    .line 1513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1515
    return-void

    .line 1513
    .end local v2    # "state":I
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public answerVoIPCall()Z
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 556
    const-string v4, "answerVoIPCall"

    invoke-direct {p0, v4}, enforceCallingPermission(Ljava/lang/String;)V

    .line 557
    const-string v4, "answerVoIPCall()..."

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, existValidCall()Z

    move-result v4

    if-nez v4, :cond_13

    .line 585
    :goto_12
    return v3

    .line 562
    :cond_13
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    if-ne v2, v5, :cond_2b

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_2b

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v5, :cond_4c

    .line 567
    :cond_2b
    iget-object v4, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 569
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_33
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->answerVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 570
    const-string v4, "    answerVoIPCall() : answerVoIPCall() is true in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 571
    const/4 v3, 0x1

    goto :goto_12

    .line 574
    :cond_44
    const-string v4, "    answerVoIPCall() : answerVoIPCall() is false in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_49} :catch_4a

    goto :goto_12

    .line 577
    :catch_4a
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_12

    .line 582
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4c
    const-string v4, "    Can not find RINGING session"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public callInVoIP(Ljava/lang/String;)V
    .registers 7
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1610
    const-string v3, "callInVoIP"

    invoke-direct {p0, v3}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callInVoIP()... : number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 1613
    invoke-direct {p0, p1}, createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, "url":Ljava/lang/String;
    if-nez v2, :cond_27

    .line 1615
    const-string v3, "    callInVoIP() : url == null"

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 1628
    :goto_26
    return-void

    .line 1619
    :cond_27
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1622
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    :try_start_34
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1623
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_26

    .line 1624
    :catch_3d
    move-exception v0

    .line 1625
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VoIPInterfaceManager"

    const-string v4, "Failed to start intent activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method public canUseBTInVoIP(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1071
    const-string v1, "canUseBTInVoIP"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUseBTInVoIP()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1074
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 1076
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_2b

    .line 1077
    const-string v1, "    canUseBTInVoIP() : session != null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    .line 1082
    :goto_2a
    return v1

    .line 1081
    :cond_2b
    const-string v1, "    canUseBTInVoIP() : session == null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1082
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public canUseHoldInVoIP()Z
    .registers 4

    .prologue
    .line 1231
    const-string v2, "canUseHoldInVoIP"

    invoke-direct {p0, v2}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1232
    const-string v2, "canUseHoldInVoIP()..."

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p0}, existValidCall()Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_20

    .line 1236
    .end local v0    # "index":I
    :cond_19
    const-string v2, "    canUseHoldInVoIP() : There is no valid active voip call"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1237
    const/4 v2, 0x0

    .line 1242
    :goto_1f
    return v2

    .line 1240
    .restart local v0    # "index":I
    :cond_20
    const-string v2, "    canUseHoldInVoIP() : session == null"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1241
    iget-object v2, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1242
    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getHoldStatus()Z

    move-result v2

    goto :goto_1f
.end method

.method public convertVoIPStateToCallState(I)I
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 1971
    const-string v1, "convertVoIPStateToCallState"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1972
    const/4 v0, 0x0

    .line 1973
    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertVoIPStateToCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1974
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$1;->$SwitchMap$com$android$server$VoIPInterfaceManager$CallState:[I

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_76

    .line 1997
    :goto_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertVoIPStateToCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1998
    return v0

    .line 1976
    :pswitch_60
    const/4 v0, 0x0

    goto :goto_39

    .line 1978
    :pswitch_62
    const/4 v0, 0x1

    goto :goto_39

    .line 1980
    :pswitch_64
    const/4 v0, 0x2

    goto :goto_39

    .line 1982
    :pswitch_66
    const/4 v0, 0x3

    goto :goto_39

    .line 1984
    :pswitch_68
    const/4 v0, 0x5

    goto :goto_39

    .line 1986
    :pswitch_6a
    const/4 v0, 0x4

    goto :goto_39

    .line 1988
    :pswitch_6c
    const/4 v0, 0x5

    goto :goto_39

    .line 1990
    :pswitch_6e
    const/4 v0, 0x6

    goto :goto_39

    .line 1992
    :pswitch_70
    const/4 v0, 0x7

    goto :goto_39

    .line 1994
    :pswitch_72
    const/16 v0, 0x8

    goto :goto_39

    .line 1974
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_60
        :pswitch_62
        :pswitch_64
        :pswitch_66
        :pswitch_68
        :pswitch_6a
        :pswitch_6c
        :pswitch_6e
        :pswitch_70
        :pswitch_72
    .end packed-switch
.end method

.method public createCallSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)Z
    .registers 11
    .param p1, "apkName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "voipPhoneNumber"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IVoIPCallbackInterface;

    .prologue
    const/4 v3, 0x0

    .line 417
    const-string/jumbo v4, "createCallSession"

    invoke-direct {p0, v4}, enforceCallingPermission(Ljava/lang/String;)V

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createCallSession()... apkName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actionName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", voipPhoneNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 420
    const/4 v1, 0x0

    .line 422
    .local v1, "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    monitor-enter p0

    .line 423
    :try_start_3e
    invoke-direct {p0, p1}, getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, "idxCallType":I
    :goto_42
    const/4 v4, -0x1

    if-eq v0, v4, :cond_7d

    .line 426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t This session already exists !! delete the same session !! apkName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", idxCallType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callTypeList.count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, getSessionCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 428
    iget-object v4, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 430
    invoke-direct {p0, p1}, getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    goto :goto_42

    .line 433
    :cond_7d
    new-instance v2, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-direct {v2, p0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;-><init>(Lcom/android/server/VoIPInterfaceManager;)V
    :try_end_82
    .catchall {:try_start_3e .. :try_end_82} :catchall_b1

    .line 434
    .end local v1    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .local v2, "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-nez v2, :cond_8b

    .line 435
    :try_start_84
    const-string v4, "    createCallSession() : newCallSessionInfo == null"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 436
    monitor-exit p0

    .line 454
    :goto_8a
    return v3

    .line 439
    :cond_8b
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v2, v4}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 440
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)V

    .line 442
    invoke-virtual {v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isValidSessionInfo()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 443
    iget-object v3, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    const-string v3, "    createCallSession() : newCallSessionInfo.isValidSessionInfo() is true"

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 450
    const/4 v3, 0x1

    monitor-exit p0
    :try_end_a5
    .catchall {:try_start_84 .. :try_end_a5} :catchall_a6

    goto :goto_8a

    .line 456
    :catchall_a6
    move-exception v3

    move-object v1, v2

    .end local v0    # "idxCallType":I
    .end local v2    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .restart local v1    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :goto_a8
    :try_start_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_b1

    throw v3

    .line 453
    .end local v1    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .restart local v0    # "idxCallType":I
    .restart local v2    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_aa
    :try_start_aa
    const-string v4, "    Fail adding callSession"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 454
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_aa .. :try_end_b0} :catchall_a6

    goto :goto_8a

    .line 456
    .end local v0    # "idxCallType":I
    .end local v2    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .restart local v1    # "newCallSessionInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :catchall_b1
    move-exception v3

    goto :goto_a8
.end method

.method public destroyCallSession(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 466
    const-string/jumbo v1, "destroyCallSession"

    invoke-direct {p0, v1}, enforceCallingPermission(Ljava/lang/String;)V

    .line 467
    const-string/jumbo v1, "destroyCallSession()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 470
    monitor-enter p0

    .line 471
    :try_start_d
    invoke-direct {p0, p1}, getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .line 473
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 474
    const-string v1, "    destroyCallSession() : Invalid packageName. Please check the package.."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 475
    const/4 v1, 0x0

    monitor-exit p0

    .line 484
    :goto_1b
    return v1

    .line 478
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    destroyCallSession() : find session with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "index value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_1b

    .line 486
    .end local v0    # "index":I
    :catchall_45
    move-exception v1

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_d .. :try_end_47} :catchall_45

    throw v1
.end method

.method public disableStatusBarforVoIP()V
    .registers 3

    .prologue
    .line 1518
    const-string/jumbo v0, "disableStatusBarforVoIP"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1520
    const-string/jumbo v0, "disableStatusBarforVoIP()..."

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 1521
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, updateStatusBar(ZZ)V

    .line 1522
    return-void
.end method

.method public dumpCallSessionInfoDB(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1642
    const-string/jumbo v2, "dumpCallSessionInfoDB"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SESSION DB SIZE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1645
    if-nez p1, :cond_33

    .line 1646
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    iget-object v2, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 1647
    invoke-direct {p0, v0}, dump_calltype_w_index(I)V

    .line 1646
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1651
    .end local v0    # "i":I
    :cond_33
    invoke-direct {p0, p1}, getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v1

    .line 1652
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3b

    .line 1658
    .end local v1    # "index":I
    :cond_3a
    :goto_3a
    return-void

    .line 1656
    .restart local v1    # "index":I
    :cond_3b
    invoke-direct {p0, v1}, dump_calltype_w_index(I)V

    goto :goto_3a
.end method

.method public existValidCall()Z
    .registers 3

    .prologue
    .line 1726
    const-string/jumbo v0, "existValidCall"

    invoke-direct {p0, v0}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1727
    iget-object v0, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_15

    .line 1728
    const-string v0, "Not exist call session"

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 1729
    const/4 v0, 0x0

    .line 1732
    :goto_14
    return v0

    .line 1731
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "existValidCall()... callTypeList.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 1732
    const/4 v0, 0x1

    goto :goto_14
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 399
    const-string/jumbo v0, "finalize()... "

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 403
    invoke-super {p0}, Landroid/os/IVoIPInterface$Stub;->finalize()V

    .line 405
    return-void
.end method

.method public getActiveCallIndex()I
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 2002
    const-string/jumbo v1, "getActiveCallIndex"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 2005
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_f

    move v0, v2

    .line 2021
    :goto_e
    return v0

    .line 2008
    :cond_f
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_10
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_ab

    .line 2009
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_88

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_88

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_88

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_88

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_88

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_88

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_a7

    .line 2016
    :cond_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveCallIndex() ActiveCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2008
    :cond_a7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    .line 2020
    :cond_ab
    const-string/jumbo v1, "getActiveCallIndex() return  INVALID_INDEX "

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    move v0, v2

    .line 2021
    goto/16 :goto_e
.end method

.method public getActiveFgCallState()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1920
    const-string/jumbo v1, "getActiveFgCallState"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1921
    const-string/jumbo v1, "getActiveFgCallState()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v2

    .line 1934
    :goto_14
    return v1

    .line 1926
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    .line 1927
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_4e

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_4e

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_6f

    .line 1930
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActiveCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {p0, v0}, convertVoIPStateToCallState(I)I

    move-result v1

    goto :goto_14

    .line 1926
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_72
    move v1, v2

    .line 1934
    goto :goto_14
.end method

.method public getCallSessionInfo(I)Z
    .registers 8
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1745
    const-string/jumbo v1, "getCallSessionInfo"

    invoke-direct {p0, v1}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1746
    const-string v1, "VoIPInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCallSessionInfo is called. Index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callTypeList.size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v4, p1, 0x1

    if-ge v1, v4, :cond_3c

    .line 1762
    :goto_3b
    return v2

    .line 1750
    :cond_3c
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1751
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    const-string v1, "VoIPInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCall("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, mIndex:I

    .line 1754
    # getter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isIncoming:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$300(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_eb

    move v1, v2

    :goto_72
    iput v1, p0, mDirection:I

    .line 1755
    invoke-virtual {p0, p1}, convertVoIPStateToCallState(I)I

    move-result v1

    iput v1, p0, mStatus:I

    .line 1756
    iput v2, p0, mMode:I

    .line 1757
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_85

    move v2, v3

    :cond_85
    iput-boolean v2, p0, mMpty:Z

    .line 1758
    # getter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->remotePartyNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$400(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mNumber:Ljava/lang/String;

    .line 1759
    const/16 v1, 0x81

    iput v1, p0, mType:I

    .line 1761
    const-string v1, "VoIPInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIndex : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, mIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mDirection : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, mDirection:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mStatus : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, mStatus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mMpty : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, mMpty:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mNumber : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, mNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mType : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, mType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1762
    goto/16 :goto_3b

    :cond_eb
    move v1, v3

    .line 1754
    goto :goto_72
.end method

.method public getCurrentRemoteCallNumber()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1569
    const-string/jumbo v3, "getCurrentRemoteCallNumber"

    invoke-direct {p0, v3}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1570
    const-string/jumbo v3, "getCurrentRemoteCallNumber()..."

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {p0}, existValidCall()Z

    move-result v3

    if-nez v3, :cond_15

    .line 1601
    :goto_14
    return-object v2

    .line 1577
    :cond_15
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    .local v1, "index":I
    if-eq v1, v4, :cond_44

    .line 1598
    :cond_1d
    iget-object v2, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1599
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Return remote party number for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRemotePartyNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 1580
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_44
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1d

    .line 1582
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1d

    .line 1584
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1d

    .line 1587
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1d

    .line 1589
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1d

    .line 1591
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1d

    .line 1594
    const-string v3, "    Call with IDLE voip state or DISCONNECT voip state"

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public getCurrentVoIPNumber()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1538
    const-string/jumbo v3, "getCurrentVoIPNumber"

    invoke-direct {p0, v3}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1539
    const-string/jumbo v3, "getCurrentVoIPNumber()..."

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p0}, existValidCall()Z

    move-result v3

    if-nez v3, :cond_15

    .line 1560
    :goto_14
    return-object v2

    .line 1546
    :cond_15
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    .local v1, "index":I
    if-eq v1, v4, :cond_44

    .line 1557
    :cond_1d
    iget-object v2, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1558
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Return voip number for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRegisteredCallNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 1549
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_44
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1d

    .line 1553
    const-string v3, "    No call with ACTIVE voip state or HOLDING voip state"

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public getDirectionForClcc()I
    .registers 2

    .prologue
    .line 1771
    const-string/jumbo v0, "getDirectionForClcc"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1772
    iget v0, p0, mDirection:I

    return v0
.end method

.method public getFirstActiveBgCallState()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1937
    const-string/jumbo v1, "getFirstActiveBgCallState"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1938
    const-string/jumbo v1, "getFirstActiveBgCallState()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v2

    .line 1949
    :goto_14
    return v1

    .line 1943
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 1944
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_4f

    .line 1945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HodingCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1946
    invoke-virtual {p0, v0}, convertVoIPStateToCallState(I)I

    move-result v1

    goto :goto_14

    .line 1943
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_52
    move v1, v2

    .line 1949
    goto :goto_14
.end method

.method public getFirstActiveRingingCallState()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1953
    const-string/jumbo v1, "getFirstActiveRingingCallState"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1954
    const-string/jumbo v1, "getFirstActiveRingingCallState()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v2

    .line 1967
    :goto_14
    return v1

    .line 1959
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    .line 1960
    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_4e

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_4e

    iget-object v1, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_6f

    .line 1963
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RingingCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1964
    invoke-virtual {p0, v0}, convertVoIPStateToCallState(I)I

    move-result v1

    goto :goto_14

    .line 1959
    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_72
    move v1, v2

    .line 1967
    goto :goto_14
.end method

.method public getIndexForClcc()I
    .registers 2

    .prologue
    .line 1766
    const-string/jumbo v0, "getIndexForClcc"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1767
    iget v0, p0, mIndex:I

    return v0
.end method

.method public getMptyForClcc()Z
    .registers 2

    .prologue
    .line 1781
    const-string/jumbo v0, "getMptyForClcc"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1782
    iget-boolean v0, p0, mMpty:Z

    return v0
.end method

.method public getNumberForClcc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1786
    const-string/jumbo v0, "getNumberForClcc"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1787
    iget-object v0, p0, mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionCount()I
    .registers 2

    .prologue
    .line 1636
    const-string/jumbo v0, "getSessionCount"

    invoke-direct {p0, v0}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1637
    const-string/jumbo v0, "getSessionCount()... "

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 1638
    iget-object v0, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getState()I
    .registers 6

    .prologue
    .line 2025
    const-string/jumbo v3, "getState"

    invoke-direct {p0, v3}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 2026
    const-string/jumbo v3, "getState()..."

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 2028
    const/4 v2, 0x0

    .line 2031
    .local v2, "state":I
    :try_start_d
    invoke-virtual {p0}, getActiveCallIndex()I

    move-result v1

    .line 2032
    .local v1, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_46

    .line 2033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getState get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v3}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "index value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {p0, v1}, convertVoIPStateToCallState(I)I
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_45} :catch_47

    move-result v2

    .line 2042
    .end local v1    # "index":I
    :cond_46
    :goto_46
    return v2

    .line 2037
    :catch_47
    move-exception v0

    .line 2039
    .local v0, "NPE":Ljava/lang/NullPointerException;
    const-string v3, "NullPointerException occurred"

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 2040
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, dumpCallSessionInfoDB(Ljava/lang/String;)V

    goto :goto_46
.end method

.method public getStatusForClcc()I
    .registers 2

    .prologue
    .line 1776
    const-string/jumbo v0, "getStatusForClcc"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1777
    iget v0, p0, mStatus:I

    return v0
.end method

.method public getVoIPCallCount(Ljava/lang/String;)I
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 765
    const-string/jumbo v1, "getVoIPCallCount"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 766
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 768
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_16

    .line 769
    const-string v1, "    getVoIPCallCount() : temp != null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCallCountInThisSession()I

    move-result v1

    .line 774
    :goto_15
    return v1

    .line 773
    :cond_16
    const-string v1, "    getVoIPCallCount() : temp == null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 774
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getVoIPInCallAlert()Z
    .registers 4

    .prologue
    .line 544
    const-string/jumbo v1, "getVoIPInCallAlert"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 545
    const-string/jumbo v1, "getVoIPInCallAlert()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 547
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "pref_voip_alert_on_call"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public hangupVoIPCall()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 594
    const-string/jumbo v4, "hangupVoIPCall"

    invoke-direct {p0, v4}, enforceCallingPermission(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v4, "hangupVoIPCall()..."

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, existValidCall()Z

    move-result v4

    if-nez v4, :cond_15

    .line 629
    :goto_14
    return v3

    .line 601
    :cond_15
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    if-ne v2, v5, :cond_4d

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_4d

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_4d

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_4d

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_4d

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_4d

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v5, :cond_6e

    .line 611
    :cond_4d
    iget-object v4, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 613
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_55
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->hangupVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 614
    const-string v4, "    hangupVoIPCall() : hangupVoIPCall() is true in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 615
    const/4 v3, 0x1

    goto :goto_14

    .line 618
    :cond_66
    const-string v4, "    hangupVoIPCall() : hangupVoIPCall() is false in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6b} :catch_6c

    goto :goto_14

    .line 621
    :catch_6c
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_14

    .line 626
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6e
    const-string v4, "    Can not find DIALING/RINGING/ACTIVE  session"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public holdVoIPCall()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 638
    const-string/jumbo v4, "holdVoIPCall"

    invoke-direct {p0, v4}, enforceCallingPermission(Ljava/lang/String;)V

    .line 639
    const-string/jumbo v4, "holdVoIPCall()..."

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, existValidCall()Z

    move-result v4

    if-nez v4, :cond_14

    .line 664
    :goto_13
    return v3

    .line 645
    :cond_14
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3e

    .line 646
    iget-object v4, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 648
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_25
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->holdVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 649
    const-string v4, "    holdVoIPCall() : holdVoIPCall() is true in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 650
    const/4 v3, 0x1

    goto :goto_13

    .line 653
    :cond_36
    const-string v4, "    holdVoIPCall() : holdVoIPCall() is false in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3b} :catch_3c

    goto :goto_13

    .line 656
    :catch_3c
    move-exception v1

    .line 657
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_13

    .line 661
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3e
    const-string v4, "    Can not find ACTIVE session"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    goto :goto_13
.end method

.method protected isAllowedVoIP(Ljava/lang/String;)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 88
    const/4 v8, 0x0

    .line 90
    .local v8, "signatureMatch":Z
    const-string v11, "com.amc.ui"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    move v10, v8

    .line 118
    :cond_b
    :goto_b
    return v10

    .line 92
    :cond_c
    const-string/jumbo v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 96
    :try_start_17
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 97
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 98
    .local v9, "signatures":[Landroid/content/pm/Signature;
    if-eqz v9, :cond_5a

    .line 99
    const/4 v10, 0x2

    new-array v0, v10, [Landroid/content/pm/Signature;

    const/4 v10, 0x0

    new-instance v11, Landroid/content/pm/Signature;

    const-string v12, "308201e53082014ea00302010202044c297bf2300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3130303632393034353230325a170d3131303632393034353230325a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100daa631a08a8f795410f717537bd9da66082ffc0a80c573683f38ca6e88b23df1789f85cc0665592ea84c669ba55ca6e327555882d24639da94e9a3168f8a6959d1bf937b8d471788917aa069fab9a5152cb9ab4ba6750abbc1b13b3a225a65c021dd8bf2cf2fd3cc1a097a3c227fcb6373899bb7267b05d42a05fcdcb5e6e24b0203010001300d06092a864886f70d010105050003818100749f8d27bad3d4837a029ae828bae9ff1deea50d04a4f5067da5bbe492a25c16eea7ee84a713bc81c853c77018ea10912a5d8d1b439f78563302c9b815cabd1f29bd9cceb0fdb64ac4b74c338200641597ee0abad0fc3183a4c69378a39ab070c4ae050d643268980e1ae3639e28a006d7290437af90741e87e363e31e9fccbd"

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v11, v0, v10

    const/4 v10, 0x1

    new-instance v11, Landroid/content/pm/Signature;

    const-string v12, "308201cf30820138a00302010202044e0bbe87300d06092a864886f70d0101050500302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f4950301e170d3131303633303030303833395a170d3431303632323030303833395a302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f495030819f300d06092a864886f70d010101050003818d0030818902818100c868e260bdeba63fde4630a72a7a7f4a7c9663ba6b28c182530fc807d3e7d0a9f1a9d5f83e05a4092ab8ae4b9b469f4fb7f9ea1c2dc0eeba09aae2c93bdd94f4665d3644639622bba583df2b44ad54d69ce5c7398338ad517cc3e6c3a8849a567131925475dd3db485b820920a2e2c690e780cfee2370eba462299c2a9e6d5990203010001300d06092a864886f70d010105050003818100b7972a1043f0ca6e7f6a62a48f785aaa56ca6b4533c11b4fdf0211855cc54174b088a287c399c2384bdfa95db476626f2d201e7a756c6d8e3cc98690a89379058c1c389096500a3a0945fce341d5188f70c2ef0e14f1aa7dfbeee888d8e30c2cdbc8870005490dbae4459170df512b4ee55f61f4e5299359b1bc54a0cb077387"

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v11, v0, v10

    .line 105
    .local v0, "SIGNATURES":[Landroid/content/pm/Signature;
    move-object v1, v9

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_41
    if-ge v4, v5, :cond_5a

    aget-object v7, v1, v4

    .line 106
    .local v7, "signature":Landroid/content/pm/Signature;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    array-length v10, v0

    if-ge v3, v10, :cond_52

    .line 107
    aget-object v10, v0, v3

    invoke-virtual {v10, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_4e} :catch_58

    move-result v10

    if-eqz v10, :cond_55

    .line 108
    const/4 v8, 0x1

    .line 105
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 106
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 115
    .end local v0    # "SIGNATURES":[Landroid/content/pm/Signature;
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "signature":Landroid/content/pm/Signature;
    .end local v9    # "signatures":[Landroid/content/pm/Signature;
    :catch_58
    move-exception v2

    .line 116
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5a
    move v10, v8

    .line 118
    goto :goto_b
.end method

.method protected isAllowedVoIPGetStateOnly(Ljava/lang/String;)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 125
    const/4 v6, 0x0

    .line 128
    .local v6, "isAllowed":Z
    :try_start_2
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0xc0

    invoke-virtual {v12, p1, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 129
    .local v8, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 131
    .local v10, "signatures":[Landroid/content/pm/Signature;
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 134
    .local v1, "appInfos":Landroid/content/pm/ApplicationInfo;
    iget v12, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1b

    .line 135
    const/4 v6, 0x1

    .end local v1    # "appInfos":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "signatures":[Landroid/content/pm/Signature;
    :cond_19
    :goto_19
    move v11, v6

    .line 160
    :cond_1a
    return v11

    .line 137
    .restart local v1    # "appInfos":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v10    # "signatures":[Landroid/content/pm/Signature;
    :cond_1b
    const-string v12, "com.amc.ui"

    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    if-eqz v10, :cond_19

    .line 138
    const-string/jumbo v12, "eng"

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1a

    .line 141
    const/4 v11, 0x2

    new-array v0, v11, [Landroid/content/pm/Signature;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/pm/Signature;

    const-string v13, "308201e53082014ea00302010202044c297bf2300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3130303632393034353230325a170d3131303632393034353230325a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d0030818902818100daa631a08a8f795410f717537bd9da66082ffc0a80c573683f38ca6e88b23df1789f85cc0665592ea84c669ba55ca6e327555882d24639da94e9a3168f8a6959d1bf937b8d471788917aa069fab9a5152cb9ab4ba6750abbc1b13b3a225a65c021dd8bf2cf2fd3cc1a097a3c227fcb6373899bb7267b05d42a05fcdcb5e6e24b0203010001300d06092a864886f70d010105050003818100749f8d27bad3d4837a029ae828bae9ff1deea50d04a4f5067da5bbe492a25c16eea7ee84a713bc81c853c77018ea10912a5d8d1b439f78563302c9b815cabd1f29bd9cceb0fdb64ac4b74c338200641597ee0abad0fc3183a4c69378a39ab070c4ae050d643268980e1ae3639e28a006d7290437af90741e87e363e31e9fccbd"

    invoke-direct {v12, v13}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v12, v0, v11

    const/4 v11, 0x1

    new-instance v12, Landroid/content/pm/Signature;

    const-string v13, "308201cf30820138a00302010202044e0bbe87300d06092a864886f70d0101050500302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f4950301e170d3131303633303030303833395a170d3431303632323030303833395a302c310c300a060355040b1303534543311c301a0603550403131353616d73756e67204d6f62696c6520566f495030819f300d06092a864886f70d010101050003818d0030818902818100c868e260bdeba63fde4630a72a7a7f4a7c9663ba6b28c182530fc807d3e7d0a9f1a9d5f83e05a4092ab8ae4b9b469f4fb7f9ea1c2dc0eeba09aae2c93bdd94f4665d3644639622bba583df2b44ad54d69ce5c7398338ad517cc3e6c3a8849a567131925475dd3db485b820920a2e2c690e780cfee2370eba462299c2a9e6d5990203010001300d06092a864886f70d010105050003818100b7972a1043f0ca6e7f6a62a48f785aaa56ca6b4533c11b4fdf0211855cc54174b088a287c399c2384bdfa95db476626f2d201e7a756c6d8e3cc98690a89379058c1c389096500a3a0945fce341d5188f70c2ef0e14f1aa7dfbeee888d8e30c2cdbc8870005490dbae4459170df512b4ee55f61f4e5299359b1bc54a0cb077387"

    invoke-direct {v12, v13}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v12, v0, v11

    .line 147
    .local v0, "SIGNATURES":[Landroid/content/pm/Signature;
    move-object v2, v10

    .local v2, "arr$":[Landroid/content/pm/Signature;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_4a
    if-ge v5, v7, :cond_19

    aget-object v9, v2, v5

    .line 148
    .local v9, "signature":Landroid/content/pm/Signature;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    array-length v11, v0

    if-ge v4, v11, :cond_5b

    .line 149
    aget-object v11, v0, v4

    invoke-virtual {v11, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_57} :catch_61

    move-result v11

    if-eqz v11, :cond_5e

    .line 150
    const/4 v6, 0x1

    .line 147
    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 148
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 157
    .end local v0    # "SIGNATURES":[Landroid/content/pm/Signature;
    .end local v1    # "appInfos":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "signature":Landroid/content/pm/Signature;
    .end local v10    # "signatures":[Landroid/content/pm/Signature;
    :catch_61
    move-exception v3

    .line 158
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x0

    goto :goto_19
.end method

.method public isDualBTConnection()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1115
    const-string/jumbo v3, "isDualBTConnection"

    invoke-direct {p0, v3}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1116
    const-string/jumbo v3, "isDualBTConnection()... :  = "

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 1118
    :try_start_d
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1119
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_23

    .line 1120
    const-string v3, "    idDualBTConnection(): ITelephony != null"

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 1121
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDualBTConnection()Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_22} :catch_24

    move-result v2

    .line 1127
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_23
    :goto_23
    return v2

    .line 1123
    :catch_24
    move-exception v0

    .line 1124
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_23
.end method

.method public isIncoming()Z
    .registers 5

    .prologue
    .line 2045
    const-string/jumbo v2, "isIncoming"

    invoke-direct {p0, v2}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 2046
    const-string/jumbo v2, "isIncoming()..."

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 2049
    invoke-virtual {p0}, getActiveCallIndex()I

    move-result v1

    .line 2050
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3b

    .line 2051
    iget-object v2, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 2052
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isIncoming get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getDirection()Z

    move-result v2

    .line 2055
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :goto_3a
    return v2

    :cond_3b
    const/4 v2, 0x0

    goto :goto_3a
.end method

.method public isVoIPActivated()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1477
    const-string/jumbo v1, "isVoIPActivated"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1478
    const-string/jumbo v1, "isVoIPActivated()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1479
    invoke-direct {p0}, isVoIPRunningAndDeregi()Z

    .line 1481
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1489
    :goto_16
    return v0

    .line 1484
    :cond_17
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 1485
    const/4 v0, 0x1

    goto :goto_16

    .line 1488
    :cond_22
    const-string v1, "    Can not find the session with ACTIVE state"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public isVoIPAlerting()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1385
    const-string/jumbo v1, "isVoIPAlerting"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1386
    const-string/jumbo v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1387
    invoke-direct {p0}, isVoIPRunningAndDeregi()Z

    .line 1389
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1398
    :goto_16
    return v0

    .line 1393
    :cond_17
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 1394
    const/4 v0, 0x1

    goto :goto_16

    .line 1397
    :cond_22
    const-string v1, "    Can not find the session with ALERTING state"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public isVoIPDialing()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1339
    const-string/jumbo v1, "isVoIPDialing"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1340
    const-string/jumbo v1, "isVoIPDialing()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1341
    invoke-direct {p0}, isVoIPRunningAndDeregi()Z

    .line 1343
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1351
    :goto_16
    return v0

    .line 1346
    :cond_17
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 1347
    const/4 v0, 0x1

    goto :goto_16

    .line 1350
    :cond_22
    const-string v1, "    Can not find the session with DIALING state"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public isVoIPDisconnecting()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1454
    const-string/jumbo v1, "isVoIPDisconnecting"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1455
    const-string/jumbo v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1456
    invoke-direct {p0}, isVoIPRunningAndDeregi()Z

    .line 1458
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1467
    :goto_16
    return v0

    .line 1462
    :cond_17
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 1463
    const/4 v0, 0x1

    goto :goto_16

    .line 1466
    :cond_22
    const-string v1, "    Can not find the session with DISCONNECTING state"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public isVoIPHolding()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1361
    const-string/jumbo v1, "isVoIPHolding"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1362
    const-string/jumbo v1, "isVoIPHolding()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1363
    invoke-direct {p0}, isVoIPRunningAndDeregi()Z

    .line 1365
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1374
    :goto_16
    return v0

    .line 1369
    :cond_17
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 1370
    const/4 v0, 0x1

    goto :goto_16

    .line 1373
    :cond_22
    const-string v1, "    Can not find the session with HOLDING state"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public isVoIPIdle()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 1252
    const-string/jumbo v2, "isVoIPIdle"

    invoke-direct {p0, v2}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1253
    const-string/jumbo v2, "isVoIPIdle()..."

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1254
    invoke-direct {p0}, isVoIPRunningAndDeregi()Z

    .line 1256
    invoke-virtual {p0}, existValidCall()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1257
    const-string v1, "    isVoIPIdle() : No session in db "

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1284
    :cond_1d
    :goto_1d
    return v0

    .line 1261
    :cond_1e
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_28

    move v0, v1

    .line 1262
    goto :goto_1d

    .line 1264
    :cond_28
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_32

    move v0, v1

    .line 1265
    goto :goto_1d

    .line 1267
    :cond_32
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_3c

    move v0, v1

    .line 1268
    goto :goto_1d

    .line 1270
    :cond_3c
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_46

    move v0, v1

    .line 1271
    goto :goto_1d

    .line 1274
    :cond_46
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_50

    move v0, v1

    .line 1275
    goto :goto_1d

    .line 1277
    :cond_50
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_5a

    move v0, v1

    .line 1278
    goto :goto_1d

    .line 1280
    :cond_5a
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_1d

    move v0, v1

    .line 1281
    goto :goto_1d
.end method

.method public isVoIPIncoming()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1408
    const-string/jumbo v1, "isVoIPIncoming"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1409
    const-string/jumbo v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1410
    invoke-direct {p0}, isVoIPRunningAndDeregi()Z

    .line 1412
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1421
    :goto_16
    return v0

    .line 1416
    :cond_17
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 1417
    const/4 v0, 0x1

    goto :goto_16

    .line 1420
    :cond_22
    const-string v1, "    Can not find the session with INCOMING state"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public isVoIPRingOrDialing()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 1293
    const-string/jumbo v1, "isVoIPRingOrDialing"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1294
    const-string/jumbo v1, "isVoIPRingOrDialing()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1296
    invoke-direct {p0}, isVoIPRunningAndDeregi()Z

    .line 1298
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1306
    :goto_17
    return v0

    .line 1301
    :cond_18
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v2, :cond_28

    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-eq v1, v2, :cond_2a

    .line 1303
    :cond_28
    const/4 v0, 0x1

    goto :goto_17

    .line 1305
    :cond_2a
    const-string v1, "    Can not find the session with RINGING or DIALING state"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public isVoIPRinging()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1316
    const-string/jumbo v1, "isVoIPRinging"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1317
    const-string/jumbo v1, "isVoIPRinging()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1318
    invoke-direct {p0}, isVoIPRunningAndDeregi()Z

    .line 1320
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1329
    :goto_16
    return v0

    .line 1324
    :cond_17
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 1325
    const/4 v0, 0x1

    goto :goto_16

    .line 1328
    :cond_22
    const-string v1, "    Can not find the session with RINGING state"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public isVoIPWaiting()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1431
    const-string/jumbo v1, "isVoIPWaiting"

    invoke-direct {p0, v1}, enforceCallingPermissionGetStateOnly(Ljava/lang/String;)V

    .line 1432
    const-string/jumbo v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1433
    invoke-direct {p0}, isVoIPRunningAndDeregi()Z

    .line 1435
    invoke-virtual {p0}, existValidCall()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1444
    :goto_16
    return v0

    .line 1439
    :cond_17
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 1440
    const/4 v0, 0x1

    goto :goto_16

    .line 1443
    :cond_22
    const-string v1, "    Can not find the session with WAITING state"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public moveVoIPToTop()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 495
    const-string/jumbo v4, "moveVoIPToTop"

    invoke-direct {p0, v4}, enforceCallingPermission(Ljava/lang/String;)V

    .line 496
    const-string/jumbo v4, "moveVoIPToTop()..."

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, existValidCall()Z

    move-result v4

    if-nez v4, :cond_15

    .line 530
    :goto_14
    return v3

    .line 503
    :cond_15
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    if-ne v2, v5, :cond_35

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_35

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_35

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v5, :cond_56

    .line 510
    :cond_35
    iget-object v4, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 513
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_3d
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->moveVoIPToTop()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 514
    const-string v4, "    moveVoIPToTop() : moveVoIPToTop() is true in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 515
    const/4 v3, 0x1

    goto :goto_14

    .line 518
    :cond_4e
    const-string v4, "    moveVoIPToTop() : moveVoIPToTop() is false in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_53} :catch_54

    goto :goto_14

    .line 521
    :catch_54
    move-exception v1

    .line 522
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_14

    .line 526
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_56
    const-string v4, "    Can not find DIALING/RINGING/ACTIVE  session"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 529
    const-string v4, ""

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public muteVoIPCall()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 708
    const-string/jumbo v4, "muteVoIPCall"

    invoke-direct {p0, v4}, enforceCallingPermission(Ljava/lang/String;)V

    .line 709
    const-string/jumbo v4, "muteVoIPCall()..."

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, existValidCall()Z

    move-result v4

    if-nez v4, :cond_14

    .line 733
    :goto_13
    return v3

    .line 714
    :cond_14
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3e

    .line 715
    iget-object v4, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 717
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_25
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->muteVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 718
    const-string v4, "    muteVoIPCall() : muteVoIPCall() is true in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 719
    const/4 v3, 0x1

    goto :goto_13

    .line 722
    :cond_36
    const-string v4, "    muteVoIPCall() : muteVoIPCall() is false in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3b} :catch_3c

    goto :goto_13

    .line 725
    :catch_3c
    move-exception v1

    .line 726
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_13

    .line 730
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3e
    const-string v4, "    Can not find holding session"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public notifyCallStateforVoIP(ILjava/lang/String;)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1168
    const-string/jumbo v3, "notifyCallStateforVoIP"

    invoke-direct {p0, v3}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1169
    const-string/jumbo v3, "notifyCallStateforVoIP()... :  = "

    invoke-direct {p0, v3}, log(Ljava/lang/String;)V

    .line 1170
    const-string/jumbo v3, "telephony.registry"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v2

    .line 1172
    .local v2, "mRegistry":Lcom/android/internal/telephony/ITelephonyRegistry;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1174
    .local v0, "ident":J
    :try_start_1b
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_22
    .catchall {:try_start_1b .. :try_end_1e} :catchall_27

    .line 1177
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1180
    :goto_21
    return-void

    .line 1175
    :catch_22
    move-exception v3

    .line 1177
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_21

    :catchall_27
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifyMissedCallforVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "date"    # J

    .prologue
    .line 1153
    const-string/jumbo v1, "notifyMissedCallforVoIP"

    invoke-direct {p0, v1}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1154
    const-string/jumbo v1, "notifyMissedCallforVoIP()... :  = "

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1155
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1157
    .local v0, "mTel":Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "ident":J
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1159
    :try_start_1f
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_26
    .catchall {:try_start_1f .. :try_end_22} :catchall_2b

    .line 1162
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1165
    :goto_25
    return-void

    .line 1160
    :catch_26
    move-exception v1

    .line 1162
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    :catchall_2b
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public reenableStatusBarforVoIP()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1525
    const-string/jumbo v0, "reenableStatusBarforVoIP"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1527
    const-string/jumbo v0, "reenableStatusBarforVoIP()..."

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 1528
    invoke-direct {p0, v1, v1}, updateStatusBar(ZZ)V

    .line 1529
    return-void
.end method

.method public resetVoIPCheckBC()V
    .registers 3

    .prologue
    .line 2097
    const-string/jumbo v0, "resetVoIPCheckBC"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 2098
    const-string/jumbo v0, "resetVoIPCheckBC()"

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 2099
    iget-object v0, p0, pIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1a

    .line 2100
    iget-object v0, p0, alarms:Landroid/app/AlarmManager;

    iget-object v1, p0, pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2101
    const/4 v0, 0x0

    iput-object v0, p0, pIntent:Landroid/app/PendingIntent;

    .line 2103
    :cond_1a
    return-void
.end method

.method public resumeVoIPCall()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 673
    const-string/jumbo v4, "resumeVoIPCall"

    invoke-direct {p0, v4}, enforceCallingPermission(Ljava/lang/String;)V

    .line 674
    const-string/jumbo v4, "resumeVoIPCall()..."

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, existValidCall()Z

    move-result v4

    if-nez v4, :cond_14

    .line 698
    :goto_13
    return v3

    .line 679
    :cond_14
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, "index":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3e

    .line 680
    iget-object v4, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 682
    .local v0, "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_25
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->resumeVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 683
    const-string v4, "    resumeVoIPCall() : resumeVoIPCall() is true in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    .line 684
    const/4 v3, 0x1

    goto :goto_13

    .line 687
    :cond_36
    const-string v4, "    resumeVoIPCall() : resumeVoIPCall() is false in callback"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3b} :catch_3c

    goto :goto_13

    .line 690
    :catch_3c
    move-exception v1

    .line 691
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_13

    .line 695
    .end local v0    # "callInfo":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3e
    const-string v4, "    Can not find holding session"

    invoke-direct {p0, v4}, log(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public setBTUserWantsAudioOn(Z)Z
    .registers 6
    .param p1, "flag"    # Z

    .prologue
    .line 1093
    const-string/jumbo v2, "setBTUserWantsAudioOn"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBTUserWantsAudioOn()... : audion on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1096
    :try_start_1d
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1097
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_32

    .line 1098
    const-string v2, "    setBTUserWantsAudioOn(): ITelephony != null"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1099
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setBTUserWantsAudioOn(Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_34

    .line 1105
    :cond_32
    const/4 v2, 0x1

    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :goto_33
    return v2

    .line 1101
    :catch_34
    move-exception v0

    .line 1102
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_33
.end method

.method public setBTUserWantsSwitchAudio()Z
    .registers 4

    .prologue
    .line 1137
    const-string/jumbo v2, "setBTUserWantsSwitchAudio"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1138
    const-string/jumbo v2, "setBTUserWantsSwitchAudio()... :  = "

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1140
    :try_start_c
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1141
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_21

    .line 1142
    const-string v2, "    idDualBTConnection(): ITelephony != null"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1143
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setBTUserWantsSwitchAudio()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_21} :catch_23

    .line 1149
    :cond_21
    const/4 v2, 0x1

    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :goto_22
    return v2

    .line 1145
    :catch_23
    move-exception v0

    .line 1146
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public setEngMode(Ljava/lang/String;I)V
    .registers 5
    .param p1, "hiddenkey"    # Ljava/lang/String;
    .param p2, "debugLevel"    # I

    .prologue
    const/4 v1, 0x0

    .line 1661
    const-string/jumbo v0, "setEngMode"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1662
    const-string/jumbo v0, "setEngMode()..."

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 1664
    if-nez p1, :cond_14

    .line 1665
    iput p2, p0, dbg_level:I

    .line 1666
    iput-boolean v1, p0, dbg_exception:Z

    .line 1676
    :goto_13
    return-void

    .line 1668
    :cond_14
    const-string v0, "147268321478969"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1669
    const-string v0, "    you can use debug mode"

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 1670
    iput p2, p0, dbg_level:I

    .line 1671
    const/4 v0, 0x1

    iput-boolean v0, p0, dbg_exception:Z

    goto :goto_13

    .line 1674
    :cond_27
    iput-boolean v1, p0, dbg_exception:Z

    goto :goto_13
.end method

.method public setUseBTInVoIP(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "btEnable"    # Z

    .prologue
    .line 1047
    const-string/jumbo v2, "setUseBTInVoIP"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUseBTInVoIP()... : pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", btEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p0}, existValidCall()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct {p0, p1}, getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3b

    .line 1052
    .end local v0    # "index":I
    :cond_34
    const-string v2, "    setUseBTInVoIP() : Can not access session db with this apk"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1053
    const/4 v2, 0x0

    .line 1060
    :goto_3a
    return v2

    .line 1056
    .restart local v0    # "index":I
    :cond_3b
    iget-object v2, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1057
    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$102(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1059
    const-string v2, "    setUseBTInVoIP() : set BT flag in the session"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1060
    const/4 v2, 0x1

    goto :goto_3a
.end method

.method public setUseHoldInVoIP(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holdEnable"    # Z

    .prologue
    .line 1208
    const-string/jumbo v2, "setUseHoldInVoIP"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUseHoldInVoIP()... : pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", holdEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p0}, existValidCall()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct {p0, p1}, getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3b

    .line 1213
    .end local v0    # "index":I
    :cond_34
    const-string v2, "    setUseHoldInVoIP() : Can not access session db with this apk"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1214
    const/4 v2, 0x0

    .line 1221
    :goto_3a
    return v2

    .line 1217
    .restart local v0    # "index":I
    :cond_3b
    iget-object v2, p0, callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1218
    .local v1, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$202(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1220
    const-string v2, "    setUseHoldInVoIP() : set hold flag in the session"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 1221
    const/4 v2, 0x1

    goto :goto_3a
.end method

.method public setVoIPActive(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "activatedNumber"    # Ljava/lang/String;

    .prologue
    .line 854
    const-string/jumbo v1, "setVoIPActive"

    invoke-direct {p0, v1}, enforceCallingPermission(Ljava/lang/String;)V

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPActive()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 856
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 858
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_45

    .line 859
    const-string v1, "    setVoIPActive() :temp != null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 860
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 861
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 863
    invoke-direct {p0}, notifyVoIPCallStateChangeIntoTelephony()V

    .line 865
    :cond_43
    const/4 v1, 0x1

    .line 869
    :goto_44
    return v1

    .line 868
    :cond_45
    const-string v1, "    setVoIPActive() :temp == null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 869
    const/4 v1, 0x0

    goto :goto_44
.end method

.method public setVoIPAlerting(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "alertingNumber"    # Ljava/lang/String;

    .prologue
    .line 909
    const-string/jumbo v1, "setVoIPAlerting"

    invoke-direct {p0, v1}, enforceCallingPermission(Ljava/lang/String;)V

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPAlerting()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 911
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 913
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_45

    .line 914
    const-string v1, "    setVoIPAlerting() :temp != null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 915
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 916
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 918
    invoke-direct {p0}, notifyVoIPCallStateChangeIntoTelephony()V

    .line 920
    :cond_43
    const/4 v1, 0x1

    .line 924
    :goto_44
    return v1

    .line 923
    :cond_45
    const-string v1, "    setVoIPAlerting() :temp == null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 924
    const/4 v1, 0x0

    goto :goto_44
.end method

.method public setVoIPCallCount(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 744
    const-string/jumbo v1, "setVoIPCallCount"

    invoke-direct {p0, v1}, enforceCallingPermission(Ljava/lang/String;)V

    .line 745
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 747
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_27

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    setVoIPCallCount() : temp != null, count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallCountInThisSession(I)V

    .line 750
    const/4 v1, 0x1

    .line 754
    :goto_26
    return v1

    .line 753
    :cond_27
    const-string v1, "    setVoIPCallCount() : temp == null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 754
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public setVoIPDialing(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "calleeNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 826
    const-string/jumbo v2, "setVoIPDialing"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoIPDialing()... : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 828
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 830
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_49

    .line 831
    const-string v2, "    setVoIPDialing() :temp != null"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 832
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 833
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    .line 835
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 836
    invoke-direct {p0}, notifyVoIPCallStateChangeIntoTelephony()V

    .line 838
    :cond_47
    const/4 v1, 0x1

    .line 842
    :goto_48
    return v1

    .line 841
    :cond_49
    const-string v2, "    setVoIPDialing() :temp == null"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    goto :goto_48
.end method

.method public setVoIPDisconnected(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "disconnectedNumber"    # Ljava/lang/String;

    .prologue
    .line 1020
    const-string/jumbo v1, "setVoIPDisconnected"

    invoke-direct {p0, v1}, enforceCallingPermission(Ljava/lang/String;)V

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPDisconnected()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1022
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 1024
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_45

    .line 1025
    const-string v1, "    setVoIPDisconnected() :temp != null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1026
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 1027
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1029
    invoke-direct {p0}, notifyVoIPCallStateChangeIntoTelephony()V

    .line 1031
    :cond_43
    const/4 v1, 0x1

    .line 1035
    :goto_44
    return v1

    .line 1034
    :cond_45
    const-string v1, "    setVoIPDisconnected() :temp == null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1035
    const/4 v1, 0x0

    goto :goto_44
.end method

.method public setVoIPDisconnecting(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "disconnectingNumber"    # Ljava/lang/String;

    .prologue
    .line 993
    const-string/jumbo v1, "setVoIPDisconnecting"

    invoke-direct {p0, v1}, enforceCallingPermission(Ljava/lang/String;)V

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPDisconnecting()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 995
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 997
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_45

    .line 998
    const-string v1, "    setVoIPDisconnecting() :temp != null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 999
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 1000
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1002
    invoke-direct {p0}, notifyVoIPCallStateChangeIntoTelephony()V

    .line 1004
    :cond_43
    const/4 v1, 0x1

    .line 1008
    :goto_44
    return v1

    .line 1007
    :cond_45
    const-string v1, "    setVoIPDisconnecting() :temp == null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 1008
    const/4 v1, 0x0

    goto :goto_44
.end method

.method public setVoIPHolding(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holdNumber"    # Ljava/lang/String;

    .prologue
    .line 881
    const-string/jumbo v1, "setVoIPHolding"

    invoke-direct {p0, v1}, enforceCallingPermission(Ljava/lang/String;)V

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPHolding()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 883
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 885
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_45

    .line 886
    const-string v1, "    setVoIPHolding() :temp != null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 887
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 888
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 890
    invoke-direct {p0}, notifyVoIPCallStateChangeIntoTelephony()V

    .line 892
    :cond_43
    const/4 v1, 0x1

    .line 896
    :goto_44
    return v1

    .line 895
    :cond_45
    const-string v1, "    setVoIPHolding() :temp == null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 896
    const/4 v1, 0x0

    goto :goto_44
.end method

.method public setVoIPIdle(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 785
    const-string/jumbo v0, "setVoIPIdle"

    invoke-direct {p0, v0}, enforceCallingPermission(Ljava/lang/String;)V

    .line 786
    const-string/jumbo v0, "setVoIPIdle()..."

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 787
    invoke-direct {p0}, notifyVoIPCallStateChangeIntoTelephony()V

    .line 788
    const/4 v0, 0x1

    return v0
.end method

.method public setVoIPInCallAlert(Z)V
    .registers 5
    .param p1, "value"    # Z

    .prologue
    .line 534
    const-string/jumbo v2, "setVoIPInCallAlert"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 535
    const-string/jumbo v2, "setVoIPInCallAlert()..."

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 537
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 539
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "pref_voip_alert_on_call"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 540
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 541
    return-void
.end method

.method public setVoIPIncoming(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 936
    const-string/jumbo v2, "setVoIPIncoming"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoIPIncoming()... : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 938
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 940
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_48

    .line 941
    const-string v2, "    setVoIPIncoming() :temp != null"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 942
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 943
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    .line 945
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 946
    invoke-direct {p0}, notifyVoIPCallStateChangeIntoTelephony()V

    .line 952
    :cond_47
    :goto_47
    return v1

    .line 951
    :cond_48
    const-string v1, "    setVoIPIncoming() :temp == null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 952
    const/4 v1, 0x0

    goto :goto_47
.end method

.method public setVoIPRinging(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callerNumber"    # Ljava/lang/String;

    .prologue
    .line 799
    const-string/jumbo v1, "setVoIPRinging"

    invoke-direct {p0, v1}, enforceCallingPermission(Ljava/lang/String;)V

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoIPRinging()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 801
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 803
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_45

    .line 804
    const-string v1, "    setVoIPRinging() :temp != null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 805
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 806
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 808
    invoke-direct {p0}, notifyVoIPCallStateChangeIntoTelephony()V

    .line 810
    :cond_43
    const/4 v1, 0x1

    .line 814
    :goto_44
    return v1

    .line 813
    :cond_45
    const-string v1, "    setVoIPRinging() :temp == null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 814
    const/4 v1, 0x0

    goto :goto_44
.end method

.method public setVoIPWaiting(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "waitingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 964
    const-string/jumbo v2, "setVoIPWaiting"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoIPWaiting()... : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 966
    invoke-direct {p0, p1}, getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 968
    .local v0, "temp":Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_48

    .line 969
    const-string v2, "    setVoIPWaiting() :temp != null"

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 970
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 971
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    .line 973
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 974
    invoke-direct {p0}, notifyVoIPCallStateChangeIntoTelephony()V

    .line 980
    :cond_47
    :goto_47
    return v1

    .line 979
    :cond_48
    const-string v1, "    setVoIPWaiting() :temp == null"

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 980
    const/4 v1, 0x0

    goto :goto_47
.end method

.method public startVoIPCheckBC(JLjava/lang/String;)V
    .registers 19
    .param p1, "setTimeInt"    # J
    .param p3, "actionName"    # Ljava/lang/String;

    .prologue
    .line 2065
    const-string/jumbo v2, "startVoIPCheckBC"

    invoke-direct {p0, v2}, enforceCallingPermission(Ljava/lang/String;)V

    .line 2067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startVoIPCheckBC()...  setTimeInt["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "] actionName["

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 2068
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2071
    .local v10, "ident":J
    :try_start_35
    iget-object v2, p0, alarms:Landroid/app/AlarmManager;

    if-nez v2, :cond_45

    .line 2072
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, alarms:Landroid/app/AlarmManager;

    .line 2076
    :cond_45
    iget-object v2, p0, pIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_50

    .line 2077
    iget-object v2, p0, alarms:Landroid/app/AlarmManager;

    iget-object v8, p0, pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2080
    :cond_50
    const/4 v3, 0x1

    .line 2081
    .local v3, "alarmType":I
    move-wide/from16 v6, p1

    .line 2082
    .local v6, "timeInt":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2083
    .local v4, "firstTime":J
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2085
    .local v9, "inent":Landroid/content/Intent;
    const-wide/16 v12, 0x3e8

    cmp-long v2, v6, v12

    if-gez v2, :cond_66

    .line 2086
    const-wide/16 v6, 0x3e8

    .line 2089
    :cond_66
    iget-object v2, p0, mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v8, v9, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, pIntent:Landroid/app/PendingIntent;

    .line 2090
    iget-object v2, p0, alarms:Landroid/app/AlarmManager;

    iget-object v8, p0, pIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_77
    .catchall {:try_start_35 .. :try_end_77} :catchall_7b

    .line 2092
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2094
    return-void

    .line 2092
    .end local v3    # "alarmType":I
    .end local v4    # "firstTime":J
    .end local v6    # "timeInt":J
    .end local v9    # "inent":Landroid/content/Intent;
    :catchall_7b
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
