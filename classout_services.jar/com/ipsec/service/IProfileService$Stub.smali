.class public abstract Lcom/ipsec/service/IProfileService$Stub;
.super Landroid/os/Binder;
.source "IProfileService.java"

# interfaces
.implements Lcom/ipsec/service/IProfileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/service/IProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipsec/service/IProfileService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ipsec.service.IProfileService"

.field static final TRANSACTION_checkUpgrade:I = 0x12

.field static final TRANSACTION_delete:I = 0x5

.field static final TRANSACTION_deleteCert:I = 0x10

.field static final TRANSACTION_deleteSecret:I = 0x8

.field static final TRANSACTION_get:I = 0x1

.field static final TRANSACTION_getCACert:I = 0xb

.field static final TRANSACTION_getCert:I = 0xa

.field static final TRANSACTION_getSecret:I = 0x6

.field static final TRANSACTION_isKeyStoreUnlocked:I = 0x2

.field static final TRANSACTION_list:I = 0x4

.field static final TRANSACTION_listCACerts:I = 0xe

.field static final TRANSACTION_listCertFiles:I = 0xf

.field static final TRANSACTION_listCerts:I = 0xd

.field static final TRANSACTION_save:I = 0x3

.field static final TRANSACTION_saveCert:I = 0xc

.field static final TRANSACTION_saveCertBlob:I = 0x11

.field static final TRANSACTION_saveSecret:I = 0x7

.field static final TRANSACTION_sign:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ipsec/service/IProfileService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.ipsec.service.IProfileService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ipsec/service/IProfileService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/ipsec/service/IProfileService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/ipsec/service/IProfileService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ipsec/service/IProfileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_1e0

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 42
    :sswitch_a
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 61
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_2c
    const-string v9, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, isKeyStoreUnlocked()Z

    move-result v6

    .line 63
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v6, :cond_3b

    move v0, v8

    :cond_3b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 69
    .end local v6    # "_result":Z
    :sswitch_3f
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 80
    invoke-virtual/range {v0 .. v5}, save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 81
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 87
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_64
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, list(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 93
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_9

    .line 99
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_7c
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, delete(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 105
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 111
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_95
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, getSecret(Ljava/lang/String;)[B

    move-result-object v6

    .line 115
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 121
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":[B
    :sswitch_aa
    const-string v9, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 126
    .local v2, "_arg1":[B
    invoke-virtual {p0, v1, v2}, saveSecret(Ljava/lang/String;[B)Z

    move-result v6

    .line 127
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v6, :cond_c1

    move v0, v8

    :cond_c1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 133
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v6    # "_result":Z
    :sswitch_c6
    const-string v9, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, deleteSecret(Ljava/lang/String;)Z

    move-result v6

    .line 137
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v6, :cond_d9

    move v0, v8

    :cond_d9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 143
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_de
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 150
    .local v3, "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, sign(ILjava/lang/String;[B)[B

    move-result-object v6

    .line 151
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 157
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[B
    .end local v6    # "_result":[B
    :sswitch_fb
    const-string v9, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, getCert(I)Lcom/ipsec/client/CertKeyPair;

    move-result-object v6

    .line 161
    .local v6, "_result":Lcom/ipsec/client/CertKeyPair;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v6, :cond_115

    .line 163
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {v6, p3, v8}, Lcom/ipsec/client/CertKeyPair;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 167
    :cond_115
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 173
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Lcom/ipsec/client/CertKeyPair;
    :sswitch_11a
    const-string v9, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, getCACert(I)Lcom/ipsec/client/CertKeyPair;

    move-result-object v6

    .line 177
    .restart local v6    # "_result":Lcom/ipsec/client/CertKeyPair;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v6, :cond_134

    .line 179
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {v6, p3, v8}, Lcom/ipsec/client/CertKeyPair;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 183
    :cond_134
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 189
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Lcom/ipsec/client/CertKeyPair;
    :sswitch_139
    const-string v9, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_163

    .line 192
    sget-object v9, Lcom/ipsec/client/CertKeyPair;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ipsec/client/CertKeyPair;

    .line 198
    .local v1, "_arg0":Lcom/ipsec/client/CertKeyPair;
    :goto_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_165

    move v3, v8

    .line 201
    .local v3, "_arg2":Z
    :goto_157
    invoke-virtual {p0, v1, v2, v3}, saveCert(Lcom/ipsec/client/CertKeyPair;Ljava/lang/String;Z)I

    move-result v6

    .line 202
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 195
    .end local v1    # "_arg0":Lcom/ipsec/client/CertKeyPair;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v6    # "_result":I
    :cond_163
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/ipsec/client/CertKeyPair;
    goto :goto_14c

    .restart local v2    # "_arg1":Ljava/lang/String;
    :cond_165
    move v3, v0

    .line 200
    goto :goto_157

    .line 208
    .end local v1    # "_arg0":Lcom/ipsec/client/CertKeyPair;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_167
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, listCerts()Ljava/util/Map;

    move-result-object v6

    .line 210
    .local v6, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_9

    .line 216
    .end local v6    # "_result":Ljava/util/Map;
    :sswitch_178
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, listCACerts()Ljava/util/Map;

    move-result-object v6

    .line 218
    .restart local v6    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_9

    .line 224
    .end local v6    # "_result":Ljava/util/Map;
    :sswitch_189
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, listCertFiles()Ljava/util/List;

    move-result-object v7

    .line 226
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 232
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_19a
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, deleteCert(Ljava/lang/String;)I

    move-result v6

    .line 236
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 242
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_1af
    const-string v0, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 246
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, saveCertBlob([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 256
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_1cc
    const-string v9, "com.ipsec.service.IProfileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, checkUpgrade()Z

    move-result v6

    .line 258
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v6, :cond_1db

    move v0, v8

    :cond_1db
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    :sswitch_data_1e0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_64
        0x5 -> :sswitch_7c
        0x6 -> :sswitch_95
        0x7 -> :sswitch_aa
        0x8 -> :sswitch_c6
        0x9 -> :sswitch_de
        0xa -> :sswitch_fb
        0xb -> :sswitch_11a
        0xc -> :sswitch_139
        0xd -> :sswitch_167
        0xe -> :sswitch_178
        0xf -> :sswitch_189
        0x10 -> :sswitch_19a
        0x11 -> :sswitch_1af
        0x12 -> :sswitch_1cc
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
