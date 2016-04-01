.class public abstract Lcom/sec/sdp/ISdpManagerService$Stub;
.super Landroid/os/Binder;
.source "ISdpManagerService.java"

# interfaces
.implements Lcom/sec/sdp/ISdpManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sdp/ISdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sdp/ISdpManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.sdp.ISdpManagerService"

.field static final TRANSACTION_addEngine:I = 0x3

.field static final TRANSACTION_allow:I = 0xe

.field static final TRANSACTION_clearEncPkgCache:I = 0x15

.field static final TRANSACTION_clearEncPkgData:I = 0x14

.field static final TRANSACTION_createEncPkgDir:I = 0x12

.field static final TRANSACTION_deleteToeknFromTrusted:I = 0x17

.field static final TRANSACTION_disallow:I = 0xf

.field static final TRANSACTION_enroll:I = 0x19

.field static final TRANSACTION_exists:I = 0xd

.field static final TRANSACTION_getEncPkgDataSizeInfo:I = 0x13

.field static final TRANSACTION_getEngineInfo:I = 0x11

.field static final TRANSACTION_getSupportedSDKVersion:I = 0x10

.field static final TRANSACTION_isLicensed:I = 0xc

.field static final TRANSACTION_isSDPEnabled:I = 0x1

.field static final TRANSACTION_isSdpSupported:I = 0x2

.field static final TRANSACTION_lock:I = 0x6

.field static final TRANSACTION_migrate:I = 0x9

.field static final TRANSACTION_registerListener:I = 0xa

.field static final TRANSACTION_removeEngine:I = 0x4

.field static final TRANSACTION_resetPassword:I = 0x8

.field static final TRANSACTION_saveTokenIntoTrusted:I = 0x16

.field static final TRANSACTION_setPassword:I = 0x7

.field static final TRANSACTION_unlock:I = 0x5

.field static final TRANSACTION_unlockViaTrusted:I = 0x18

.field static final TRANSACTION_unregisterListener:I = 0xb

.field static final TRANSACTION_verify:I = 0x1a


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.sec.sdp.ISdpManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/sdp/ISdpManagerService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/sec/sdp/ISdpManagerService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/sec/sdp/ISdpManagerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/sdp/ISdpManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_2aa

    .line 362
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    .line 45
    :sswitch_a
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v7, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, isSDPEnabled(I)Z

    move-result v4

    .line 54
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v4, :cond_23

    move v3, v6

    :cond_23
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 60
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_27
    const-string v7, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, isSdpSupported()Z

    move-result v4

    .line 62
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v4, :cond_36

    move v3, v6

    :cond_36
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v4    # "_result":Z
    :sswitch_3a
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_60

    .line 71
    sget-object v3, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;

    .line 77
    .local v0, "_arg0":Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    :goto_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, addEngine(Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 81
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :cond_60
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    goto :goto_4d

    .line 87
    .end local v0    # "_arg0":Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    :sswitch_62
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, removeEngine(Ljava/lang/String;)I

    move-result v4

    .line 91
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_76
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, unlock(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 103
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 109
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_8f
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, lock(Ljava/lang/String;)I

    move-result v4

    .line 113
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 119
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_a4
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, setPassword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 125
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_bd
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 139
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 145
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_da
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, migrate(Ljava/lang/String;)I

    move-result v4

    .line 149
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 155
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_ef
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpListener;

    move-result-object v1

    .line 160
    .local v1, "_arg1":Lcom/sec/sdp/ISdpListener;
    invoke-virtual {p0, v0, v1}, registerListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I

    move-result v4

    .line 161
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 167
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/sec/sdp/ISdpListener;
    .end local v4    # "_result":I
    :sswitch_10c
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/ISdpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpListener;

    move-result-object v1

    .line 172
    .restart local v1    # "_arg1":Lcom/sec/sdp/ISdpListener;
    invoke-virtual {p0, v0, v1}, unregisterListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I

    move-result v4

    .line 173
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 179
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/sec/sdp/ISdpListener;
    .end local v4    # "_result":I
    :sswitch_129
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, isLicensed(Ljava/lang/String;)I

    move-result v4

    .line 183
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 189
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_13e
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, exists(Ljava/lang/String;)I

    move-result v4

    .line 193
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_153
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, allow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 205
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 211
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_16c
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, disallow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 217
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 223
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_185
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, getSupportedSDKVersion()D

    move-result-wide v4

    .line 225
    .local v4, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_9

    .line 231
    .end local v4    # "_result":D
    :sswitch_196
    const-string v7, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 235
    .local v4, "_result":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v4, :cond_1b0

    .line 237
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v4, p3, v6}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 241
    :cond_1b0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 247
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :sswitch_1b5
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, createEncPkgDir(ILjava/lang/String;)I

    move-result v4

    .line 253
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 259
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1ce
    const-string v7, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v4

    .line 265
    .local v4, "_result":Landroid/content/pm/PackageStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v4, :cond_1ec

    .line 267
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {v4, p3, v6}, Landroid/content/pm/PackageStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 271
    :cond_1ec
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 277
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/pm/PackageStats;
    :sswitch_1f1
    const-string v7, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, clearEncPkgData(ILjava/lang/String;)Z

    move-result v4

    .line 283
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v4, :cond_208

    move v3, v6

    :cond_208
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 289
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_20d
    const-string v7, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, clearEncPkgCache(ILjava/lang/String;)Z

    move-result v4

    .line 295
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v4, :cond_224

    move v3, v6

    :cond_224
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 301
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_229
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 306
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 307
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 313
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_242
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, deleteToeknFromTrusted(Ljava/lang/String;)I

    move-result v4

    .line 317
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 323
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_257
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 329
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 335
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_270
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 343
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 349
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_28d
    const-string v3, "com.sec.sdp.ISdpManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 355
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 357
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 41
    :sswitch_data_2aa
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_62
        0x5 -> :sswitch_76
        0x6 -> :sswitch_8f
        0x7 -> :sswitch_a4
        0x8 -> :sswitch_bd
        0x9 -> :sswitch_da
        0xa -> :sswitch_ef
        0xb -> :sswitch_10c
        0xc -> :sswitch_129
        0xd -> :sswitch_13e
        0xe -> :sswitch_153
        0xf -> :sswitch_16c
        0x10 -> :sswitch_185
        0x11 -> :sswitch_196
        0x12 -> :sswitch_1b5
        0x13 -> :sswitch_1ce
        0x14 -> :sswitch_1f1
        0x15 -> :sswitch_20d
        0x16 -> :sswitch_229
        0x17 -> :sswitch_242
        0x18 -> :sswitch_257
        0x19 -> :sswitch_270
        0x1a -> :sswitch_28d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
