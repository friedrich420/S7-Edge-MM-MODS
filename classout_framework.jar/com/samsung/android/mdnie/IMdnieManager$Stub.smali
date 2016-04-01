.class public abstract Lcom/samsung/android/mdnie/IMdnieManager$Stub;
.super Landroid/os/Binder;
.source "IMdnieManager.java"

# interfaces
.implements Lcom/samsung/android/mdnie/IMdnieManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/IMdnieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdnie/IMdnieManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mdnie.IMdnieManager"

.field static final TRANSACTION_getContentMode:I = 0x2

.field static final TRANSACTION_getScreenMode:I = 0x1

.field static final TRANSACTION_setAmoledACL:I = 0x5

.field static final TRANSACTION_setContentMode:I = 0x4

.field static final TRANSACTION_setScreenMode:I = 0x3

.field static final TRANSACTION_setmDNIeAccessibilityMode:I = 0xa

.field static final TRANSACTION_setmDNIeColorBlind:I = 0x6

.field static final TRANSACTION_setmDNIeEmergencyMode:I = 0x9

.field static final TRANSACTION_setmDNIeNegative:I = 0x7

.field static final TRANSACTION_setmDNIeScreenCurtain:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mdnie/IMdnieManager;
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
    const-string v1, "com.samsung.android.mdnie.IMdnieManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/mdnie/IMdnieManager;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/samsung/android/mdnie/IMdnieManager;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/samsung/android/mdnie/IMdnieManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/mdnie/IMdnieManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_10e

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 43
    :sswitch_a
    const-string v3, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v3, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, getScreenMode()I

    move-result v2

    .line 50
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 56
    .end local v2    # "_result":I
    :sswitch_20
    const-string v3, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, getContentMode()I

    move-result v2

    .line 58
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 64
    .end local v2    # "_result":I
    :sswitch_30
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, setScreenMode(I)Z

    move-result v2

    .line 68
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v2, :cond_43

    move v3, v4

    :cond_43
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_47
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, setContentMode(I)Z

    move-result v2

    .line 78
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_5a

    move v3, v4

    :cond_5a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 84
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_5e
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, setAmoledACL(I)Z

    move-result v2

    .line 88
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_71

    move v3, v4

    :cond_71
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 94
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_75
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_94

    move v0, v4

    .line 98
    .local v0, "_arg0":Z
    :goto_81
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 99
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, setmDNIeColorBlind(Z[I)Z

    move-result v2

    .line 100
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_8f

    move v3, v4

    :cond_8f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":Z
    :cond_94
    move v0, v3

    .line 96
    goto :goto_81

    .line 106
    :sswitch_96
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b1

    move v0, v4

    .line 109
    .restart local v0    # "_arg0":Z
    :goto_a2
    invoke-virtual {p0, v0}, setmDNIeNegative(Z)Z

    move-result v2

    .line 110
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v2, :cond_ac

    move v3, v4

    :cond_ac
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_b1
    move v0, v3

    .line 108
    goto :goto_a2

    .line 116
    :sswitch_b3
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ce

    move v0, v4

    .line 119
    .restart local v0    # "_arg0":Z
    :goto_bf
    invoke-virtual {p0, v0}, setmDNIeScreenCurtain(Z)Z

    move-result v2

    .line 120
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v2, :cond_c9

    move v3, v4

    :cond_c9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_ce
    move v0, v3

    .line 118
    goto :goto_bf

    .line 126
    :sswitch_d0
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_eb

    move v0, v4

    .line 129
    .restart local v0    # "_arg0":Z
    :goto_dc
    invoke-virtual {p0, v0}, setmDNIeEmergencyMode(Z)Z

    move-result v2

    .line 130
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v2, :cond_e6

    move v3, v4

    :cond_e6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_eb
    move v0, v3

    .line 128
    goto :goto_dc

    .line 136
    :sswitch_ed
    const-string v5, "com.samsung.android.mdnie.IMdnieManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10c

    move v1, v4

    .line 141
    .local v1, "_arg1":Z
    :goto_fd
    invoke-virtual {p0, v0, v1}, setmDNIeAccessibilityMode(IZ)Z

    move-result v2

    .line 142
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v2, :cond_107

    move v3, v4

    :cond_107
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_10c
    move v1, v3

    .line 140
    goto :goto_fd

    .line 39
    :sswitch_data_10e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_47
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_75
        0x7 -> :sswitch_96
        0x8 -> :sswitch_b3
        0x9 -> :sswitch_d0
        0xa -> :sswitch_ed
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
