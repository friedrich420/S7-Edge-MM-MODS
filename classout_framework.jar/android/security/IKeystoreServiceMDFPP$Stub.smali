.class public abstract Landroid/security/IKeystoreServiceMDFPP$Stub;
.super Landroid/os/Binder;
.source "IKeystoreServiceMDFPP.java"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreServiceMDFPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;
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
    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    .line 66
    :goto_3
    return-object v0

    .line 62
    :cond_4
    const-string v1, "android.security.IKeystoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/security/IKeystoreService;

    if-eqz v1, :cond_13

    .line 64
    check-cast v0, Landroid/security/IKeystoreService;

    goto :goto_3

    .line 66
    :cond_13
    new-instance v0, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/security/IKeystoreServiceMDFPP$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 72
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
    .line 78
    sparse-switch p1, :sswitch_data_53e

    .line 691
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 82
    :sswitch_8
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    goto :goto_7

    .line 87
    :sswitch_f
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, getState(I)I

    move-result v10

    .line 91
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v0, 0x1

    goto :goto_7

    .line 97
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_24
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, get(Ljava/lang/String;)[B

    move-result-object v10

    .line 101
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 103
    const/4 v0, 0x1

    goto :goto_7

    .line 107
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":[B
    :sswitch_39
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 113
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 115
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 116
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, insert(Ljava/lang/String;[BII)I

    move-result v10

    .line 117
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v0, 0x1

    goto :goto_7

    .line 123
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v10    # "_result":I
    :sswitch_5a
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 128
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, del(Ljava/lang/String;I)I

    move-result v10

    .line 129
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v0, 0x1

    goto :goto_7

    .line 135
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_73
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, exist(Ljava/lang/String;I)I

    move-result v10

    .line 141
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 147
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_8d
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 153
    .local v10, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 159
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":[Ljava/lang/String;
    :sswitch_a7
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, reset()I

    move-result v10

    .line 161
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 167
    .end local v10    # "_result":I
    :sswitch_b9
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, onUserPasswordChanged(ILjava/lang/String;)I

    move-result v10

    .line 173
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 179
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_d3
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, lock(I)I

    move-result v10

    .line 183
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 189
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_e9
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, unlock(ILjava/lang/String;)I

    move-result v10

    .line 195
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 201
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_103
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 204
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, isEmpty(I)I

    move-result v10

    .line 205
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 211
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_119
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 217
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 219
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 221
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 223
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14e

    .line 224
    sget-object v0, Landroid/security/KeystoreArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/security/KeystoreArguments;

    .local v6, "_arg5":Landroid/security/KeystoreArguments;
    :goto_140
    move-object v0, p0

    .line 229
    invoke-virtual/range {v0 .. v6}, generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result v10

    .line 230
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 227
    .end local v6    # "_arg5":Landroid/security/KeystoreArguments;
    .end local v10    # "_result":I
    :cond_14e
    const/4 v6, 0x0

    .restart local v6    # "_arg5":Landroid/security/KeystoreArguments;
    goto :goto_140

    .line 236
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/security/KeystoreArguments;
    :sswitch_150
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 242
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 244
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 245
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, import_key(Ljava/lang/String;[BII)I

    move-result v10

    .line 246
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 252
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v10    # "_result":I
    :sswitch_172
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 257
    .restart local v2    # "_arg1":[B
    invoke-virtual {p0, v1, v2}, sign(Ljava/lang/String;[B)[B

    move-result-object v10

    .line 258
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 264
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v10    # "_result":[B
    :sswitch_18c
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 270
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 271
    .local v3, "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, verify(Ljava/lang/String;[B[B)I

    move-result v10

    .line 272
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 278
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    .end local v10    # "_result":I
    :sswitch_1aa
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, get_pubkey(Ljava/lang/String;)[B

    move-result-object v10

    .line 282
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 284
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 288
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":[B
    :sswitch_1c0
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, grant(Ljava/lang/String;I)I

    move-result v10

    .line 294
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 300
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_1da
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 305
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, ungrant(Ljava/lang/String;I)I

    move-result v10

    .line 306
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 312
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_1f4
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, getmtime(Ljava/lang/String;)J

    move-result-wide v10

    .line 316
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 318
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 322
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":J
    :sswitch_20a
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 328
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 331
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, duplicate(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v10

    .line 332
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 338
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v10    # "_result":I
    :sswitch_22c
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, is_hardware_backed(Ljava/lang/String;)I

    move-result v10

    .line 342
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 348
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_242
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 351
    .local v8, "_arg0":J
    invoke-virtual {p0, v8, v9}, clear_uid(J)I

    move-result v10

    .line 352
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 358
    .end local v8    # "_arg0":J
    .end local v10    # "_result":I
    :sswitch_258
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 361
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, addRngEntropy([B)I

    move-result v10

    .line 362
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 368
    .end local v1    # "_arg0":[B
    .end local v10    # "_result":I
    :sswitch_26e
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2ae

    .line 373
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 379
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_285
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 381
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 383
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 385
    .restart local v5    # "_arg4":I
    new-instance v6, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v6}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v6, "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, p0

    .line 386
    invoke-virtual/range {v0 .. v6}, generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v10

    .line 387
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    if-eqz v6, :cond_2b0

    .line 390
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v0, 0x1

    invoke-virtual {v6, p3, v0}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 396
    :goto_2ab
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 376
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

    .line 394
    .restart local v3    # "_arg2":[B
    .restart local v4    # "_arg3":I
    .restart local v5    # "_arg4":I
    .restart local v6    # "_arg5":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v10    # "_result":I
    :cond_2b0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2ab

    .line 400
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

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f6

    .line 405
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterBlob;

    .line 411
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterBlob;
    :goto_2cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f8

    .line 412
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/keymaster/KeymasterBlob;

    .line 418
    .local v3, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :goto_2da
    new-instance v4, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v4}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 419
    .local v4, "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, v1, v2, v3, v4}, getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v10

    .line 420
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    if-eqz v4, :cond_2fa

    .line 423
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/4 v0, 0x1

    invoke-virtual {v4, p3, v0}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 429
    :goto_2f3
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 408
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :cond_2f6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_2cc

    .line 415
    :cond_2f8
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_2da

    .line 427
    .restart local v4    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v10    # "_result":I
    :cond_2fa
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f3

    .line 433
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterBlob;
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeyCharacteristics;
    .end local v10    # "_result":I
    :sswitch_2ff
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_343

    .line 438
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 444
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 446
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 448
    .local v4, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 450
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 452
    .local v6, "_arg5":I
    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v7, "_arg6":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, p0

    .line 453
    invoke-virtual/range {v0 .. v7}, importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v10

    .line 454
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    if-eqz v7, :cond_345

    .line 457
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/security/keymaster/KeyCharacteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    :goto_340
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 441
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

    .line 461
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

    .line 467
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

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 473
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_387

    .line 474
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/security/keymaster/KeymasterBlob;

    .line 480
    .local v3, "_arg2":Landroid/security/keymaster/KeymasterBlob;
    :goto_365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_389

    .line 481
    sget-object v0, Landroid/security/keymaster/KeymasterBlob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/keymaster/KeymasterBlob;

    .line 486
    .local v4, "_arg3":Landroid/security/keymaster/KeymasterBlob;
    :goto_373
    invoke-virtual {p0, v1, v2, v3, v4}, exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    move-result-object v10

    .line 487
    .local v10, "_result":Landroid/security/keymaster/ExportResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    if-eqz v10, :cond_38b

    .line 489
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/ExportResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 495
    :goto_384
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 477
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    .end local v10    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_387
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_365

    .line 484
    :cond_389
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    goto :goto_373

    .line 493
    .restart local v10    # "_result":Landroid/security/keymaster/ExportResult;
    :cond_38b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_384

    .line 499
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/security/keymaster/KeymasterBlob;
    .end local v4    # "_arg3":Landroid/security/keymaster/KeymasterBlob;
    .end local v10    # "_result":Landroid/security/keymaster/ExportResult;
    :sswitch_390
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 503
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 507
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3cf

    const/4 v4, 0x1

    .line 509
    .local v4, "_arg3":Z
    :goto_3a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d1

    .line 510
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/keymaster/KeymasterArguments;

    .line 516
    .local v5, "_arg4":Landroid/security/keymaster/KeymasterArguments;
    :goto_3b6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .local v6, "_arg5":[B
    move-object v0, p0

    .line 517
    invoke-virtual/range {v0 .. v6}, begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v10

    .line 518
    .local v10, "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v10, :cond_3d3

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 526
    :goto_3cc
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 507
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    .end local v6    # "_arg5":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_3cf
    const/4 v4, 0x0

    goto :goto_3a8

    .line 513
    .restart local v4    # "_arg3":Z
    :cond_3d1
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_3b6

    .line 524
    .restart local v6    # "_arg5":[B
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_3d3
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3cc

    .line 530
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

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 534
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_407

    .line 535
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 541
    .local v2, "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_3ef
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 542
    .local v3, "_arg2":[B
    invoke-virtual {p0, v1, v2, v3}, update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v10

    .line 543
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v10, :cond_409

    .line 545
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 551
    :goto_404
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 538
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_407
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_3ef

    .line 549
    .restart local v3    # "_arg2":[B
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_409
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_404

    .line 555
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_40e
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 559
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_441

    .line 560
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keymaster/KeymasterArguments;

    .line 566
    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    :goto_425
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 568
    .restart local v3    # "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 569
    .local v4, "_arg3":[B
    invoke-virtual {p0, v1, v2, v3, v4}, finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v10

    .line 570
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    if-eqz v10, :cond_443

    .line 572
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/security/keymaster/OperationResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 578
    :goto_43e
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 563
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_441
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    goto :goto_425

    .line 576
    .restart local v3    # "_arg2":[B
    .restart local v4    # "_arg3":[B
    .restart local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :cond_443
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_43e

    .line 582
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/security/keymaster/KeymasterArguments;
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":[B
    .end local v10    # "_result":Landroid/security/keymaster/OperationResult;
    :sswitch_448
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 585
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, abort(Landroid/os/IBinder;)I

    move-result v10

    .line 586
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 592
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_result":I
    :sswitch_45e
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 595
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, isOperationAuthorized(Landroid/os/IBinder;)Z

    move-result v10

    .line 596
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v10, :cond_477

    const/4 v0, 0x1

    :goto_471
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 597
    :cond_477
    const/4 v0, 0x0

    goto :goto_471

    .line 602
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_result":Z
    :sswitch_479
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 605
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, addAuthToken([B)I

    move-result v10

    .line 606
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 612
    .end local v1    # "_arg0":[B
    .end local v10    # "_result":I
    :sswitch_48f
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 616
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 617
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, onUserAdded(II)I

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
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_4a9
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 627
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, onUserRemoved(I)I

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
    :sswitch_4bf
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 640
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 641
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, migrate_MDFPP_keystore(Ljava/lang/String;II)I

    move-result v10

    .line 642
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 648
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v10    # "_result":I
    :sswitch_4dd
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 651
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, getState_MDFPP(I)I

    move-result v10

    .line 652
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 658
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_4f3
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 661
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, reset_MDFPP(I)I

    move-result v10

    .line 662
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 668
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_509
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 672
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 673
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, onUserAdded_MDFPP(II)I

    move-result v10

    .line 674
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 680
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_523
    const-string v0, "android.security.IKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 685
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, get_by_uid(Ljava/lang/String;I)[B

    move-result-object v10

    .line 686
    .local v10, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 688
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 78
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
