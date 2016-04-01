.class public abstract Landroid/security/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "IKeystoreService.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.IKeystoreService"

.field static final TRANSACTION_abort:I = 0x1f

.field static final TRANSACTION_addAuthToken:I = 0x21

.field static final TRANSACTION_addRngEntropy:I = 0x17

.field static final TRANSACTION_begin:I = 0x1c

.field static final TRANSACTION_clear_uid:I = 0x16

.field static final TRANSACTION_del:I = 0x4

.field static final TRANSACTION_duplicate:I = 0x14

.field static final TRANSACTION_exist:I = 0x5

.field static final TRANSACTION_exportKey:I = 0x1b

.field static final TRANSACTION_finish:I = 0x1e

.field static final TRANSACTION_generate:I = 0xc

.field static final TRANSACTION_generateKey:I = 0x18

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_getKeyCharacteristics:I = 0x19

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_getState_MDFPP:I = 0x25

.field static final TRANSACTION_get_by_uid:I = 0x28

.field static final TRANSACTION_get_pubkey:I = 0x10

.field static final TRANSACTION_getmtime:I = 0x13

.field static final TRANSACTION_grant:I = 0x11

.field static final TRANSACTION_importKey:I = 0x1a

.field static final TRANSACTION_import_key:I = 0xd

.field static final TRANSACTION_insert:I = 0x3

.field static final TRANSACTION_isEmpty:I = 0xb

.field static final TRANSACTION_isOperationAuthorized:I = 0x20

.field static final TRANSACTION_is_hardware_backed:I = 0x15

.field static final TRANSACTION_list:I = 0x6

.field static final TRANSACTION_lock:I = 0x9

.field static final TRANSACTION_migrate_MDFPP_keystore:I = 0x24

.field static final TRANSACTION_onUserAdded:I = 0x22

.field static final TRANSACTION_onUserAdded_MDFPP:I = 0x27

.field static final TRANSACTION_onUserPasswordChanged:I = 0x8

.field static final TRANSACTION_onUserRemoved:I = 0x23

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_reset_MDFPP:I = 0x26

.field static final TRANSACTION_sign:I = 0xe

.field static final TRANSACTION_ungrant:I = 0x12

.field static final TRANSACTION_unlock:I = 0xa

.field static final TRANSACTION_update:I = 0x1d

.field static final TRANSACTION_verify:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_3
    return-object v0

    .line 32
    :cond_4
    const-string v1, "android.security.IKeystoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/IKeystoreService;

    if-eqz v1, :cond_13

    .line 34
    check-cast v0, Landroid/security/IKeystoreService;

    goto :goto_3

    .line 36
    :cond_13
    new-instance v0, Landroid/security/IKeystoreService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/security/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
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
    .line 44
    sparse-switch p1, :sswitch_data_53e

    .line 657
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 48
    :sswitch_8
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    goto :goto_7

    .line 53
    :sswitch_f
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, getState(I)I

    move-result v10

    .line 57
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v0, 0x1

    goto :goto_7

    .line 63
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_24
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, get(Ljava/lang/String;)[B

    move-result-object v10

    .line 67
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 69
    const/4 v0, 0x1

    goto :goto_7

    .line 73
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":[B
    :sswitch_39
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 79
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 82
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, insert(Ljava/lang/String;[BII)I

    move-result v10

    .line 83
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    const/4 v0, 0x1

    goto :goto_7

    .line 89
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v10    # "_result":I
    :sswitch_5a
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, del(Ljava/lang/String;I)I

    move-result v10

    .line 95
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v0, 0x1

    goto :goto_7

    .line 101
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_73
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, exist(Ljava/lang/String;I)I

    move-result v10

    .line 107
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 113
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_8d
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 125
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":[Ljava/lang/String;
    :sswitch_a7
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, reset()I

    move-result v10

    .line 127
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 133
    .end local v10    # "_result":I
    :sswitch_b9
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, onUserPasswordChanged(ILjava/lang/String;)I

    move-result v10

    .line 139
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 145
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_d3
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, lock(I)I

    move-result v10

    .line 149
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 155
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_e9
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, unlock(ILjava/lang/String;)I

    move-result v10

    .line 161
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 167
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_103
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, isEmpty(I)I

    move-result v10

    .line 171
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 177
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_119
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 187
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 189
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14e

    .line 190
    sget-object v0, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/security/KeystoreArguments;

    .local v6, "_arg5":Landroid/security/KeystoreArguments;
    :goto_140
    move-object v0, p0

    .line 195
    invoke-virtual/range {v0 .. v6}, generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result v10

    .line 196
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 193
    .end local v6    # "_arg5":Landroid/security/KeystoreArguments;
    .end local v10    # "_result":I
    :cond_14e
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/security/KeystoreArguments;
    goto :goto_140

    .line 202
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/security/KeystoreArguments;
    :sswitch_150
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 208
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 210
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 211
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, import_key(Ljava/lang/String;[BII)I

    move-result v10

    .line 212
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 218
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v10    # "_result":I
    :sswitch_172
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 223
    .restart local v2    # "_arg1":[B
    invoke-virtual {p0, v1, v2}, sign(Ljava/lang/String;[B)[B

    move-result-object v10

    .line 224
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 226
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 230
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v10    # "_result":[B
    :sswitch_18c
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 236
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 237
    .local v3, "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, verify(Ljava/lang/String;[B[B)I

    move-result v10

    .line 238
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 244
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v10    # "_result":I
    :sswitch_1aa
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, get_pubkey(Ljava/lang/String;)[B

    move-result-object v10

    .line 248
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 250
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 254
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":[B
    :sswitch_1c0
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 259
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, grant(Ljava/lang/String;I)I

    move-result v10

    .line 260
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 266
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_1da
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, ungrant(Ljava/lang/String;I)I

    move-result v10

    .line 272
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 278
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_1f4
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, getmtime(Ljava/lang/String;)J

    move-result-wide v10

    .line 282
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 284
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 288
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":J
    :sswitch_20a
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 294
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 297
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, duplicate(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v10

    .line 298
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 304
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v10    # "_result":I
    :sswitch_22c
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, is_hardware_backed(Ljava/lang/String;)I

    move-result v10

    .line 308
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 314
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_242
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 317
    .local v8, "_arg0":J
    invoke-virtual {p0, v8, v9}, clear_uid(J)I

    move-result v10

    .line 318
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 324
    .end local v8    # "_arg0":J
    .end local v10    # "_result":I
    :sswitch_258
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 327
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, addRngEntropy([B)I

    move-result v10

    .line 328
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 334
    .end local v1    # "_arg0":[B
    .end local v10    # "_result":I
    :sswitch_26e
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2ae

    .line 339
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 345
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_285
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 347
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 349
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 351
    .restart local v5    # "_arg4":I
    new-instance v6, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v6}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v6, "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, p0

    .line 352
    invoke-virtual/range {v0 .. v6}, generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v10

    .line 353
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    if-eqz v6, :cond_2b0

    .line 356
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v0, 0x1

    invoke-virtual {v6, p3, v0}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 362
    :goto_2ab
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 342
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :cond_2ae
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_285

    .line 360
    .restart local v3    # "_arg2":[B
    .restart local v4    # "_arg3":I
    .restart local v5    # "_arg4":I
    .restart local v6    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v10    # "_result":I
    :cond_2b0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2ab

    .line 366
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :sswitch_2b5
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f6

    .line 371
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterBlob;

    .line 377
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterBlob;
    :goto_2cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f8

    .line 378
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/keymaster/KeymasterBlob;

    .line 384
    .local v3, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :goto_2da
    new-instance v4, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v4}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 385
    .local v4, "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, v1, v2, v3, v4}, getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v10

    .line 386
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    if-eqz v4, :cond_2fa

    .line 389
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    const/4 v0, 0x1

    invoke-virtual {v4, p3, v0}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 395
    :goto_2f3
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 374
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :cond_2f6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_2cc

    .line 381
    :cond_2f8
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_2da

    .line 393
    .restart local v4    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v10    # "_result":I
    :cond_2fa
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f3

    .line 399
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :sswitch_2ff
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_343

    .line 404
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 410
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 412
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 414
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 416
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 418
    .local v6, "_arg5":I
    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v7, "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, p0

    .line 419
    invoke-virtual/range {v0 .. v7}, importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v10

    .line 420
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    if-eqz v7, :cond_345

    .line 423
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 429
    :goto_340
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 407
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :cond_343
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_316

    .line 427
    .restart local v3    # "_arg2":I
    .restart local v4    # "_arg3":[B
    .restart local v5    # "_arg4":I
    .restart local v6    # "_arg5":I
    .restart local v7    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v10    # "_result":I
    :cond_345
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_340

    .line 433
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :sswitch_34a
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 439
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_387

    .line 440
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/keymaster/KeymasterBlob;

    .line 446
    .local v3, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :goto_365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_389

    .line 447
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/keymaster/KeymasterBlob;

    .line 452
    .local v4, "_arg3":Landroid/security/keymaster/KeymasterBlob;
    :goto_373
    invoke-virtual {p0, v1, v2, v3, v4}, exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    move-result-object v10

    .line 453
    .local v10, "_result":Landroid/security/keymaster/ExportResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v10, :cond_38b

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/ExportResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 461
    :goto_384
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 443
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    .end local v10    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_387
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_365

    .line 450
    :cond_389
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_373

    .line 459
    .restart local v10    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_38b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_384

    .line 465
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    .end local v10    # "_result":Landroid/security/keymaster/ExportResult;
    :sswitch_390
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 469
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 473
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3cf

    const/4 v4, 0x1

    .line 475
    .local v4, "_arg3":Z
    :goto_3a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d1

    .line 476
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/keymaster/KeymasterArguments;

    .line 482
    .local v5, "_arg4":Landroid/security/keymaster/KeymasterArguments;
    :goto_3b6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, "_arg5":[B
    move-object v0, p0

    .line 483
    invoke-virtual/range {v0 .. v6}, begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v10

    .line 484
    .local v10, "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v10, :cond_3d3

    .line 486
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 492
    :goto_3cc
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 473
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    .end local v6    # "_arg5":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_3cf
    const/4 v4, 0x0

    goto :goto_3a8

    .line 479
    .restart local v4    # "_arg3":Z
    :cond_3d1
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_3b6

    .line 490
    .restart local v6    # "_arg5":[B
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_3d3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3cc

    .line 496
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    .end local v6    # "_arg5":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_3d8
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 500
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_407

    .line 501
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 507
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_3ef
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 508
    .local v3, "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v10

    .line 509
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v10, :cond_409

    .line 511
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 517
    :goto_404
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 504
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_407
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_3ef

    .line 515
    .restart local v3    # "_arg2":[B
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_409
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_404

    .line 521
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_40e
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 525
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_441

    .line 526
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 532
    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_425
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 534
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 535
    .local v4, "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v10

    .line 536
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    if-eqz v10, :cond_443

    .line 538
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 544
    :goto_43e
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 529
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_441
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_425

    .line 542
    .restart local v3    # "_arg2":[B
    .restart local v4    # "_arg3":[B
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_443
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_43e

    .line 548
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_448
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 551
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, abort(Landroid/os/IBinder;)I

    move-result v10

    .line 552
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 558
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_result":I
    :sswitch_45e
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 561
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, isOperationAuthorized(Landroid/os/IBinder;)Z

    move-result v10

    .line 562
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v10, :cond_477

    const/4 v0, 0x1

    :goto_471
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 563
    :cond_477
    const/4 v0, 0x0

    goto :goto_471

    .line 568
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_result":Z
    :sswitch_479
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 571
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, addAuthToken([B)I

    move-result v10

    .line 572
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 578
    .end local v1    # "_arg0":[B
    .end local v10    # "_result":I
    :sswitch_48f
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 582
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 583
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, onUserAdded(II)I

    move-result v10

    .line 584
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 590
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_4a9
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 593
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, onUserRemoved(I)I

    move-result v10

    .line 594
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 600
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_4bf
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 606
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 607
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, migrate_MDFPP_keystore(Ljava/lang/String;II)I

    move-result v10

    .line 608
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 614
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v10    # "_result":I
    :sswitch_4dd
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 617
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, getState_MDFPP(I)I

    move-result v10

    .line 618
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 624
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_4f3
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 627
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, reset_MDFPP(I)I

    move-result v10

    .line 628
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 634
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_509
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 638
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 639
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, onUserAdded_MDFPP(II)I

    move-result v10

    .line 640
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 646
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_523
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 651
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, get_by_uid(Ljava/lang/String;I)[B

    move-result-object v10

    .line 652
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 654
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 44
    nop

    :sswitch_data_53e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x3 -> :sswitch_39
        0x4 -> :sswitch_5a
        0x5 -> :sswitch_73
        0x6 -> :sswitch_8d
        0x7 -> :sswitch_a7
        0x8 -> :sswitch_b9
        0x9 -> :sswitch_d3
        0xa -> :sswitch_e9
        0xb -> :sswitch_103
        0xc -> :sswitch_119
        0xd -> :sswitch_150
        0xe -> :sswitch_172
        0xf -> :sswitch_18c
        0x10 -> :sswitch_1aa
        0x11 -> :sswitch_1c0
        0x12 -> :sswitch_1da
        0x13 -> :sswitch_1f4
        0x14 -> :sswitch_20a
        0x15 -> :sswitch_22c
        0x16 -> :sswitch_242
        0x17 -> :sswitch_258
        0x18 -> :sswitch_26e
        0x19 -> :sswitch_2b5
        0x1a -> :sswitch_2ff
        0x1b -> :sswitch_34a
        0x1c -> :sswitch_390
        0x1d -> :sswitch_3d8
        0x1e -> :sswitch_40e
        0x1f -> :sswitch_448
        0x20 -> :sswitch_45e
        0x21 -> :sswitch_479
        0x22 -> :sswitch_48f
        0x23 -> :sswitch_4a9
        0x24 -> :sswitch_4bf
        0x25 -> :sswitch_4dd
        0x26 -> :sswitch_4f3
        0x27 -> :sswitch_509
        0x28 -> :sswitch_523
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
