.class public Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
.super Ljava/lang/Object;
.source "PrivateKnoxCustom.java"


# static fields
.field static final KNOX_CUSTOM_AUTO_STARTUP_FLAG:I = 0x1

.field static final KNOX_CUSTOM_AUTO_STARTUP_OFFSET:I = 0x8

.field static final KNOX_CUSTOM_CHECKSUM_OFFSET:I = 0x1f

.field static final KNOX_CUSTOM_CHECKSUM_VALUE:I = 0x6

.field static final KNOX_CUSTOM_FLAG_OFFSET:I = 0x1e

.field static final KNOX_CUSTOM_RESERVED_FLAG:I = 0x2

.field static final KNOX_CUSTOM_RESERVED_OFFSET:I = 0x9

.field static final KNOX_CUSTOM_TRUE:I = 0x8

.field static final PARAM_BUF_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PrivateKnoxCustom:"

.field static mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, DEBUG:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 87
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private enforceSystemPermission()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 93
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 95
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-class v1, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    monitor-enter v1

    :try_start_3
    sget-object v0, mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    if-nez v0, :cond_e

    .line 78
    new-instance v0, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    .line 80
    :cond_e
    sget-object v0, mInstance:Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readBooleanDataValue(I)Z
    .registers 12
    .param p1, "index"    # I

    .prologue
    const/16 v9, 0x1e

    const/16 v8, 0x9

    const/16 v7, 0x8

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 112
    .local v2, "token":J
    invoke-direct {p0}, readParamData()[B

    move-result-object v4

    .line 113
    .local v4, "value":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    if-nez v4, :cond_16

    move v1, v0

    .line 136
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_15
    return v1

    .line 121
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_16
    const/16 v5, 0x1f

    aget-byte v5, v4, v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_37

    .line 123
    if-ne p1, v7, :cond_2a

    .line 124
    aget-byte v5, v4, v7

    if-ne v5, v7, :cond_2a

    aget-byte v5, v4, v9

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2a

    .line 125
    const/4 v0, 0x1

    .line 129
    :cond_2a
    if-ne p1, v8, :cond_37

    .line 130
    aget-byte v5, v4, v8

    if-ne v5, v7, :cond_37

    aget-byte v5, v4, v9

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_37

    .line 131
    const/4 v0, 0x1

    :cond_37
    move v1, v0

    .line 136
    .restart local v1    # "ret":I
    goto :goto_15
.end method

.method private native readParamData()[B
.end method

.method private writeBooleanDataValue(IZ)Z
    .registers 15
    .param p1, "index"    # I
    .param p2, "set_true"    # Z

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x0

    const/16 v9, 0x9

    const/16 v8, 0x1e

    const/16 v7, 0x8

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, "ret":Z
    const/16 v6, 0x20

    new-array v3, v6, [B

    .line 142
    .local v3, "value":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 143
    .local v1, "random":Ljava/security/SecureRandom;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 145
    .local v4, "token":J
    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 148
    invoke-direct {p0}, readParamData()[B

    move-result-object v0

    .line 149
    .local v0, "previousValue":[B
    const/16 v6, 0x1f

    aget-byte v6, v0, v6

    if-ne v6, v11, :cond_51

    .line 151
    aget-byte v6, v0, v7

    aput-byte v6, v3, v7

    .line 152
    aget-byte v6, v0, v9

    aput-byte v6, v3, v9

    .line 153
    aget-byte v6, v0, v8

    aput-byte v6, v3, v8

    .line 161
    :goto_2f
    if-eqz p2, :cond_5a

    .line 162
    aput-byte v7, v3, p1

    .line 167
    :goto_33
    const/16 v6, 0x1f

    aput-byte v11, v3, v6

    .line 168
    if-ne p1, v7, :cond_40

    .line 169
    aget-byte v6, v3, v8

    or-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    .line 171
    :cond_40
    if-ne p1, v9, :cond_49

    .line 172
    aget-byte v6, v3, v8

    or-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    .line 175
    :cond_49
    invoke-direct {p0, v3}, writeParamData([B)Z

    move-result v2

    .line 176
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    return v2

    .line 156
    :cond_51
    const/16 v6, 0x17

    aput-byte v6, v3, v7

    .line 157
    aput-byte v10, v3, v9

    .line 158
    aput-byte v10, v3, v8

    goto :goto_2f

    .line 164
    :cond_5a
    const/4 v6, 0x7

    aput-byte v6, v3, p1

    goto :goto_33
.end method

.method private native writeParamData([B)Z
.end method


# virtual methods
.method public isKnoxCustomAutoStartUpEnabled()Z
    .registers 3

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, "ret":Z
    const/16 v1, 0x8

    invoke-direct {p0, v1}, readBooleanDataValue(I)Z

    move-result v0

    .line 216
    return v0
.end method

.method public setKnoxCustomAutoStartUp(Z)Z
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    const/16 v4, 0x8

    .line 187
    const/4 v2, 0x0

    .line 190
    .local v2, "ret":Z
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 192
    .local v0, "callingUid":I
    invoke-virtual {p0}, isKnoxCustomAutoStartUpEnabled()Z

    move-result v1

    .line 194
    .local v1, "currentState":Z
    if-eqz p1, :cond_15

    .line 195
    if-nez v1, :cond_14

    .line 196
    const/4 v3, 0x1

    invoke-direct {p0, v4, v3}, writeBooleanDataValue(IZ)Z

    move-result v2

    .line 203
    :cond_14
    :goto_14
    return v2

    .line 199
    :cond_15
    if-eqz v1, :cond_14

    .line 200
    const/4 v3, 0x0

    invoke-direct {p0, v4, v3}, writeBooleanDataValue(IZ)Z

    move-result v2

    goto :goto_14
.end method
