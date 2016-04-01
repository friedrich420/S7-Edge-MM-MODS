.class public abstract Lcom/ipsec/client/IIPsecService$Stub;
.super Landroid/os/Binder;
.source "IIPsecService.java"

# interfaces
.implements Lcom/ipsec/client/IIPsecService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IIPsecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipsec/client/IIPsecService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ipsec.client.IIPsecService"

.field static final TRANSACTION_checkConnection:I = 0xa

.field static final TRANSACTION_clearLog:I = 0x4

.field static final TRANSACTION_connect:I = 0x5

.field static final TRANSACTION_connectionQuery:I = 0x8

.field static final TRANSACTION_connectionState:I = 0x9

.field static final TRANSACTION_disconnect:I = 0x6

.field static final TRANSACTION_getLog:I = 0x3

.field static final TRANSACTION_isConnected:I = 0x7

.field static final TRANSACTION_registerCallback:I = 0xc

.field static final TRANSACTION_setQueryData:I = 0xb

.field static final TRANSACTION_startService:I = 0x1

.field static final TRANSACTION_stopService:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ipsec.client.IIPsecService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecService;
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
    const-string v1, "com.ipsec.client.IIPsecService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ipsec/client/IIPsecService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/ipsec/client/IIPsecService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/ipsec/client/IIPsecService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ipsec/client/IIPsecService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_20e

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    .line 42
    :sswitch_a
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    .line 50
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 55
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_23
    invoke-virtual {p0, v0}, startService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 56
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v1, :cond_35

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 53
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_33
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_23

    .line 62
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_35
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 68
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_39
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5c

    .line 71
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 76
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_4c
    invoke-virtual {p0, v0}, stopService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v1, :cond_5e

    .line 79
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_5c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_4c

    .line 83
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_5e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 89
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_62
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_85

    .line 92
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 97
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_75
    invoke-virtual {p0, v0}, getLog(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 98
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v1, :cond_87

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 95
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_85
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_75

    .line 104
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 110
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_8c
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b0

    .line 113
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 118
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_9f
    invoke-virtual {p0, v0}, clearLog(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 119
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v1, :cond_b2

    .line 121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 116
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_b0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_9f

    .line 125
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_b2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 131
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_b7
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_db

    .line 134
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 139
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_ca
    invoke-virtual {p0, v0}, connect(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 140
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v1, :cond_dd

    .line 142
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 137
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_db
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_ca

    .line 146
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_dd
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 152
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_e2
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_106

    .line 155
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 160
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_f5
    invoke-virtual {p0, v0}, disconnect(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 161
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v1, :cond_108

    .line 163
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 158
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_106
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_f5

    .line 167
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 173
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_10d
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_131

    .line 176
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 181
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_120
    invoke-virtual {p0, v0}, isConnected(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 182
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v1, :cond_133

    .line 184
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 179
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_131
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_120

    .line 188
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_133
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 194
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_138
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15c

    .line 197
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 202
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_14b
    invoke-virtual {p0, v0}, connectionQuery(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 203
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v1, :cond_15e

    .line 205
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 200
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_15c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_14b

    .line 209
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_15e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 215
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_163
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_187

    .line 218
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 223
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_176
    invoke-virtual {p0, v0}, connectionState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 224
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v1, :cond_189

    .line 226
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 221
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_187
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_176

    .line 230
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_189
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 236
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_18e
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b2

    .line 239
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 244
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_1a1
    invoke-virtual {p0, v0}, checkConnection(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 245
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v1, :cond_1b4

    .line 247
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 242
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_1b2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_1a1

    .line 251
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_1b4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 257
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_1b9
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1dd

    .line 260
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 265
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    :goto_1cc
    invoke-virtual {p0, v0}, setQueryData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 266
    .restart local v1    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v1, :cond_1df

    .line 268
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 263
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :cond_1dd
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_1cc

    .line 272
    .restart local v1    # "_result":Landroid/os/Bundle;
    :cond_1df
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 278
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":Landroid/os/Bundle;
    :sswitch_1e4
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ipsec/client/IIPsecServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecServiceCallback;

    move-result-object v0

    .line 281
    .local v0, "_arg0":Lcom/ipsec/client/IIPsecServiceCallback;
    invoke-virtual {p0, v0}, registerCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 287
    .end local v0    # "_arg0":Lcom/ipsec/client/IIPsecServiceCallback;
    :sswitch_1f9
    const-string v3, "com.ipsec.client.IIPsecService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/ipsec/client/IIPsecServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecServiceCallback;

    move-result-object v0

    .line 290
    .restart local v0    # "_arg0":Lcom/ipsec/client/IIPsecServiceCallback;
    invoke-virtual {p0, v0}, unregisterCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 38
    :sswitch_data_20e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_39
        0x3 -> :sswitch_62
        0x4 -> :sswitch_8c
        0x5 -> :sswitch_b7
        0x6 -> :sswitch_e2
        0x7 -> :sswitch_10d
        0x8 -> :sswitch_138
        0x9 -> :sswitch_163
        0xa -> :sswitch_18e
        0xb -> :sswitch_1b9
        0xc -> :sswitch_1e4
        0xd -> :sswitch_1f9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
