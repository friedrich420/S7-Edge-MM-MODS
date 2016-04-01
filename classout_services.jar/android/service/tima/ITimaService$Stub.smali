.class public abstract Landroid/service/tima/ITimaService$Stub;
.super Landroid/os/Binder;
.source "ITimaService.java"

# interfaces
.implements Landroid/service/tima/ITimaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/tima/ITimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/tima/ITimaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.tima.ITimaService"

.field static final TRANSACTION_DCMSelfCheck:I = 0x2d

.field static final TRANSACTION_FipsKeyStore3_del:I = 0x29

.field static final TRANSACTION_FipsKeyStore3_exist:I = 0x26

.field static final TRANSACTION_FipsKeyStore3_get:I = 0x27

.field static final TRANSACTION_FipsKeyStore3_getmtime:I = 0x28

.field static final TRANSACTION_FipsKeyStore3_init:I = 0x24

.field static final TRANSACTION_FipsKeyStore3_put:I = 0x25

.field static final TRANSACTION_FipsKeyStore3_saw:I = 0x2a

.field static final TRANSACTION_KeyStore3_del:I = 0x11

.field static final TRANSACTION_KeyStore3_exist:I = 0xe

.field static final TRANSACTION_KeyStore3_get:I = 0xf

.field static final TRANSACTION_KeyStore3_getmtime:I = 0x10

.field static final TRANSACTION_KeyStore3_init:I = 0xc

.field static final TRANSACTION_KeyStore3_put:I = 0xd

.field static final TRANSACTION_KeyStore3_saw:I = 0x12

.field static final TRANSACTION_attestation:I = 0xa

.field static final TRANSACTION_ccmRegisterForDefaultCertificate:I = 0x14

.field static final TRANSACTION_checkEvent:I = 0x1

.field static final TRANSACTION_checkHistory:I = 0x2

.field static final TRANSACTION_displayEvent:I = 0x3

.field static final TRANSACTION_dumpLog:I = 0x15

.field static final TRANSACTION_getDeviceID:I = 0xb

.field static final TRANSACTION_getEventList:I = 0x4

.field static final TRANSACTION_getTimaVersion:I = 0x13

.field static final TRANSACTION_getTuiVersion:I = 0x1d

.field static final TRANSACTION_isKapEnforced:I = 0x2c

.field static final TRANSACTION_keystoreInit:I = 0x6

.field static final TRANSACTION_keystoreInstallKey:I = 0x7

.field static final TRANSACTION_keystoreRetrieveKey:I = 0x8

.field static final TRANSACTION_keystoreShutdown:I = 0x9

.field static final TRANSACTION_launchTui:I = 0x18

.field static final TRANSACTION_launchTuiWithSecretId:I = 0x19

.field static final TRANSACTION_loadTui:I = 0x16

.field static final TRANSACTION_setISLCallback:I = 0x5

.field static final TRANSACTION_setKapMode:I = 0x2b

.field static final TRANSACTION_tuiDecryptPinHash:I = 0x22

.field static final TRANSACTION_tuiGetCerts:I = 0x20

.field static final TRANSACTION_tuiGetSecretDimension:I = 0x21

.field static final TRANSACTION_tuiInitSecret:I = 0x1a

.field static final TRANSACTION_tuiInitSecretFile:I = 0x1b

.field static final TRANSACTION_tuiInitSecretMemoryFile:I = 0x1c

.field static final TRANSACTION_tuiRegAppImage:I = 0x1e

.field static final TRANSACTION_tuiRegAppImageFile:I = 0x1f

.field static final TRANSACTION_unloadTui:I = 0x17

.field static final TRANSACTION_verifyCertChain:I = 0x23


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "android.service.tima.ITimaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Landroid/service/tima/ITimaService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Landroid/service/tima/ITimaService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/tima/ITimaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_45e

    .line 556
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_9
    return v9

    .line 43
    :sswitch_a
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, checkEvent(II)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 60
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_28
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkHistory(II)Ljava/lang/String;

    move-result-object v6

    .line 66
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 72
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_40
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, displayEvent(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 81
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_50
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, getEventList(I)Ljava/util/List;

    move-result-object v8

    .line 85
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_9

    .line 91
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_64
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaISLCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaISLCallback;

    move-result-object v1

    .line 94
    .local v1, "_arg0":Landroid/service/tima/ITimaISLCallback;
    invoke-virtual {p0, v1}, setISLCallback(Landroid/service/tima/ITimaISLCallback;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 100
    .end local v1    # "_arg0":Landroid/service/tima/ITimaISLCallback;
    :sswitch_78
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, keystoreInit()I

    move-result v6

    .line 102
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 108
    .end local v6    # "_result":I
    :sswitch_88
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 113
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, keystoreInstallKey(I[B)I

    move-result v6

    .line 114
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 120
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v6    # "_result":I
    :sswitch_a1
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, keystoreRetrieveKey(I)[B

    move-result-object v6

    .line 124
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 130
    .end local v1    # "_arg0":I
    .end local v6    # "_result":[B
    :sswitch_b6
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, keystoreShutdown()I

    move-result v6

    .line 132
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 138
    .end local v6    # "_result":I
    :sswitch_c7
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 142
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, attestation([BI)[B

    move-result-object v6

    .line 144
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 150
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v6    # "_result":[B
    :sswitch_e0
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, getDeviceID()[B

    move-result-object v6

    .line 152
    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 158
    .end local v6    # "_result":[B
    :sswitch_f1
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, KeyStore3_init()I

    move-result v6

    .line 160
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 166
    .end local v6    # "_result":I
    :sswitch_102
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 172
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v4

    .line 175
    .local v4, "_arg3":[C
    invoke-virtual {p0, v1, v2, v3, v4}, KeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v6

    .line 176
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[C
    .end local v6    # "_result":I
    :sswitch_123
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, KeyStore3_exist(Ljava/lang/String;I)Z

    move-result v6

    .line 188
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v6, :cond_13a

    move v0, v9

    :cond_13a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 194
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_13f
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    .line 199
    .local v2, "_arg1":[C
    invoke-virtual {p0, v1, v2}, KeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v6

    .line 200
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 206
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[C
    .end local v6    # "_result":[B
    :sswitch_158
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, KeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v6

    .line 210
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 216
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":J
    :sswitch_16d
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, KeyStore3_del(Ljava/lang/String;I)Z

    move-result v6

    .line 222
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v6, :cond_184

    move v0, v9

    :cond_184
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 228
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_189
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 240
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_1a2
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, getTimaVersion()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 248
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_1b3
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 252
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1d7

    move v4, v9

    .line 257
    .local v4, "_arg3":Z
    :goto_1cb
    invoke-virtual {p0, v1, v2, v3, v4}, ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v6

    .line 258
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v4    # "_arg3":Z
    .end local v6    # "_result":I
    :cond_1d7
    move v4, v0

    .line 256
    goto :goto_1cb

    .line 264
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_1d9
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, dumpLog()[B

    move-result-object v6

    .line 266
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 272
    .end local v6    # "_result":[B
    :sswitch_1ea
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, loadTui()I

    move-result v6

    .line 274
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 280
    .end local v6    # "_result":I
    :sswitch_1fb
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, unloadTui()I

    move-result v6

    .line 282
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 288
    .end local v6    # "_result":I
    :sswitch_20c
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 294
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_230

    move v3, v9

    .line 296
    .local v3, "_arg2":Z
    :goto_220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 297
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, launchTui(Ljava/lang/String;[BZI)[B

    move-result-object v6

    .line 298
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v6    # "_result":[B
    :cond_230
    move v3, v0

    .line 294
    goto :goto_220

    .line 304
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    :sswitch_232
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 308
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 312
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_25b

    move v4, v9

    .line 314
    .local v4, "_arg3":Z
    :goto_24a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 315
    invoke-virtual/range {v0 .. v5}, launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B

    move-result-object v6

    .line 316
    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_result":[B
    :cond_25b
    move v4, v0

    .line 312
    goto :goto_24a

    .line 322
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    :sswitch_25d
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 326
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 328
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 330
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, tuiInitSecret([BIILjava/lang/String;)I

    move-result v6

    .line 332
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 338
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_27e
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 344
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 346
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 347
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, tuiInitSecretFile(Ljava/lang/String;IILjava/lang/String;)I

    move-result v6

    .line 348
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 354
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_29f
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2cf

    .line 357
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 363
    .local v1, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_2b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 367
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 369
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 370
    invoke-virtual/range {v0 .. v5}, tuiInitSecretMemoryFile(Landroid/os/ParcelFileDescriptor;IIILjava/lang/String;)I

    move-result v6

    .line 371
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 360
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_result":I
    :cond_2cf
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_2b2

    .line 377
    .end local v1    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_2d1
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, getTuiVersion()Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 385
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2e2
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 390
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, tuiRegAppImage(Ljava/lang/String;[B)[I

    move-result-object v6

    .line 391
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 397
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v6    # "_result":[I
    :sswitch_2fb
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 401
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, tuiRegAppImageFile(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    .line 403
    .restart local v6    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 409
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":[I
    :sswitch_314
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, tuiGetCerts()[B

    move-result-object v6

    .line 411
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 417
    .end local v6    # "_result":[B
    :sswitch_325
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, tuiGetSecretDimension()[I

    move-result-object v6

    .line 419
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 425
    .end local v6    # "_result":[I
    :sswitch_336
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 430
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, tuiDecryptPinHash(Ljava/lang/String;[B)[B

    move-result-object v6

    .line 431
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 437
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v6    # "_result":[B
    :sswitch_34f
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 440
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, verifyCertChain([B)[B

    move-result-object v6

    .line 441
    .restart local v6    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 447
    .end local v1    # "_arg0":[B
    .end local v6    # "_result":[B
    :sswitch_364
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_37c

    move v1, v9

    .line 450
    .local v1, "_arg0":Z
    :goto_370
    invoke-virtual {p0, v1}, FipsKeyStore3_init(Z)I

    move-result v6

    .line 451
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v6    # "_result":I
    :cond_37c
    move v1, v0

    .line 449
    goto :goto_370

    .line 457
    :sswitch_37e
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 463
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 465
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v4

    .line 466
    .local v4, "_arg3":[C
    invoke-virtual {p0, v1, v2, v3, v4}, FipsKeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v6

    .line 467
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 473
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[C
    .end local v6    # "_result":I
    :sswitch_39f
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 477
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 478
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, FipsKeyStore3_exist(Ljava/lang/String;I)Z

    move-result v6

    .line 479
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    if-eqz v6, :cond_3b6

    move v0, v9

    :cond_3b6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 485
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_3bb
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 489
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v2

    .line 490
    .local v2, "_arg1":[C
    invoke-virtual {p0, v1, v2}, FipsKeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v6

    .line 491
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 497
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[C
    .end local v6    # "_result":[B
    :sswitch_3d4
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 500
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, FipsKeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v6

    .line 501
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 507
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":J
    :sswitch_3e9
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 511
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 512
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, FipsKeyStore3_del(Ljava/lang/String;I)Z

    move-result v6

    .line 513
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v6, :cond_400

    move v0, v9

    :cond_400
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 519
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_405
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 523
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 524
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, FipsKeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 525
    .local v6, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_9

    .line 531
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":[Ljava/lang/String;
    :sswitch_41e
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_439

    move v1, v9

    .line 535
    .local v1, "_arg0":Z
    :goto_42a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_43b

    move v2, v9

    .line 536
    .local v2, "_arg1":Z
    :goto_431
    invoke-virtual {p0, v1, v2}, setKapMode(ZZ)V

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_439
    move v1, v0

    .line 533
    goto :goto_42a

    .restart local v1    # "_arg0":Z
    :cond_43b
    move v2, v0

    .line 535
    goto :goto_431

    .line 542
    .end local v1    # "_arg0":Z
    :sswitch_43d
    const-string v10, "android.service.tima.ITimaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, isKapEnforced()Z

    move-result v6

    .line 544
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v6, :cond_44c

    move v0, v9

    :cond_44c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 550
    .end local v6    # "_result":Z
    :sswitch_451
    const-string v0, "android.service.tima.ITimaService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, DCMSelfCheck()V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 39
    :sswitch_data_45e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_28
        0x3 -> :sswitch_40
        0x4 -> :sswitch_50
        0x5 -> :sswitch_64
        0x6 -> :sswitch_78
        0x7 -> :sswitch_88
        0x8 -> :sswitch_a1
        0x9 -> :sswitch_b6
        0xa -> :sswitch_c7
        0xb -> :sswitch_e0
        0xc -> :sswitch_f1
        0xd -> :sswitch_102
        0xe -> :sswitch_123
        0xf -> :sswitch_13f
        0x10 -> :sswitch_158
        0x11 -> :sswitch_16d
        0x12 -> :sswitch_189
        0x13 -> :sswitch_1a2
        0x14 -> :sswitch_1b3
        0x15 -> :sswitch_1d9
        0x16 -> :sswitch_1ea
        0x17 -> :sswitch_1fb
        0x18 -> :sswitch_20c
        0x19 -> :sswitch_232
        0x1a -> :sswitch_25d
        0x1b -> :sswitch_27e
        0x1c -> :sswitch_29f
        0x1d -> :sswitch_2d1
        0x1e -> :sswitch_2e2
        0x1f -> :sswitch_2fb
        0x20 -> :sswitch_314
        0x21 -> :sswitch_325
        0x22 -> :sswitch_336
        0x23 -> :sswitch_34f
        0x24 -> :sswitch_364
        0x25 -> :sswitch_37e
        0x26 -> :sswitch_39f
        0x27 -> :sswitch_3bb
        0x28 -> :sswitch_3d4
        0x29 -> :sswitch_3e9
        0x2a -> :sswitch_405
        0x2b -> :sswitch_41e
        0x2c -> :sswitch_43d
        0x2d -> :sswitch_451
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
