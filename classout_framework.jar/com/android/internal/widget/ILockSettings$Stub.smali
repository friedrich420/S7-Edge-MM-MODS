.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final TRANSACTION_checkAppLockBackupPin:I = 0x42

.field static final TRANSACTION_checkAppLockFingerprintPassword:I = 0x43

.field static final TRANSACTION_checkAppLockPassword:I = 0x40

.field static final TRANSACTION_checkAppLockPattern:I = 0x41

.field static final TRANSACTION_checkAppLockPin:I = 0x3f

.field static final TRANSACTION_checkBackupPassword:I = 0x4a

.field static final TRANSACTION_checkBackupPin:I = 0x15

.field static final TRANSACTION_checkCarrierPassword:I = 0x1f

.field static final TRANSACTION_checkFMMPassword:I = 0x19

.field static final TRANSACTION_checkParentControlPassword:I = 0x22

.field static final TRANSACTION_checkPassword:I = 0xb

.field static final TRANSACTION_checkPattern:I = 0x8

.field static final TRANSACTION_checkPersonalModeBackupPin:I = 0x33

.field static final TRANSACTION_checkPersonalModeFingerprintPassword:I = 0x34

.field static final TRANSACTION_checkPersonalModePassword:I = 0x31

.field static final TRANSACTION_checkPersonalModePattern:I = 0x32

.field static final TRANSACTION_checkPersonalModePin:I = 0x30

.field static final TRANSACTION_checkSignatureBackupPin:I = 0x28

.field static final TRANSACTION_checkVoldPassword:I = 0xd

.field static final TRANSACTION_getBoolean:I = 0x4

.field static final TRANSACTION_getCarrierLockPlusMode:I = 0x1b

.field static final TRANSACTION_getLong:I = 0x5

.field static final TRANSACTION_getParentControlPasswordHashSize:I = 0x24

.field static final TRANSACTION_getSignatureInfo:I = 0x26

.field static final TRANSACTION_getString:I = 0x6

.field static final TRANSACTION_haveAppLockBackupPin:I = 0x47

.field static final TRANSACTION_haveAppLockFingerprintPassword:I = 0x48

.field static final TRANSACTION_haveAppLockPassword:I = 0x45

.field static final TRANSACTION_haveAppLockPattern:I = 0x46

.field static final TRANSACTION_haveAppLockPin:I = 0x44

.field static final TRANSACTION_haveBackupPassword:I = 0x4c

.field static final TRANSACTION_haveBackupPin:I = 0x17

.field static final TRANSACTION_haveCarrierPassword:I = 0x20

.field static final TRANSACTION_haveFMMPassword:I = 0x1a

.field static final TRANSACTION_haveParentControlPassword:I = 0x23

.field static final TRANSACTION_havePassword:I = 0xf

.field static final TRANSACTION_havePattern:I = 0xe

.field static final TRANSACTION_havePersonalModeBackupPin:I = 0x38

.field static final TRANSACTION_havePersonalModeFingerprintPassword:I = 0x39

.field static final TRANSACTION_havePersonalModePassword:I = 0x36

.field static final TRANSACTION_havePersonalModePattern:I = 0x37

.field static final TRANSACTION_havePersonalModePin:I = 0x35

.field static final TRANSACTION_haveSignature:I = 0x29

.field static final TRANSACTION_haveSignatureBackupPin:I = 0x2a

.field static final TRANSACTION_registerStrongAuthTracker:I = 0x10

.field static final TRANSACTION_requireStrongAuth:I = 0x12

.field static final TRANSACTION_sanitizePassword:I = 0x13

.field static final TRANSACTION_setAppLockBackupPin:I = 0x3d

.field static final TRANSACTION_setAppLockFingerprintPassword:I = 0x3e

.field static final TRANSACTION_setAppLockPassword:I = 0x3b

.field static final TRANSACTION_setAppLockPattern:I = 0x3c

.field static final TRANSACTION_setAppLockPin:I = 0x3a

.field static final TRANSACTION_setBoolean:I = 0x1

.field static final TRANSACTION_setCarrierLockPlusEnabled:I = 0x1c

.field static final TRANSACTION_setLockBackupPassword:I = 0x49

.field static final TRANSACTION_setLockBackupPin:I = 0x14

.field static final TRANSACTION_setLockCarrierPassword:I = 0x1d

.field static final TRANSACTION_setLockFMMPassword:I = 0x18

.field static final TRANSACTION_setLockParentControlPassword:I = 0x21

.field static final TRANSACTION_setLockPassword:I = 0xa

.field static final TRANSACTION_setLockPattern:I = 0x7

.field static final TRANSACTION_setLong:I = 0x2

.field static final TRANSACTION_setPersonalModeFingerprintPassword:I = 0x2f

.field static final TRANSACTION_setPersonalModeLockBackupPin:I = 0x2e

.field static final TRANSACTION_setPersonalModeLockPassword:I = 0x2c

.field static final TRANSACTION_setPersonalModeLockPattern:I = 0x2d

.field static final TRANSACTION_setPersonalModeLockPin:I = 0x2b

.field static final TRANSACTION_setSignatureBackupPin:I = 0x27

.field static final TRANSACTION_setSignatureInfo:I = 0x25

.field static final TRANSACTION_setString:I = 0x3

.field static final TRANSACTION_unregisterStrongAuthTracker:I = 0x11

.field static final TRANSACTION_updateCarrierLockPlusMode:I = 0x1e

.field static final TRANSACTION_verifyBackupPassword:I = 0x4b

.field static final TRANSACTION_verifyBackupPin:I = 0x16

.field static final TRANSACTION_verifyPassword:I = 0xc

.field static final TRANSACTION_verifyPattern:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
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
    const-string v1, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/widget/ILockSettings;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_7be

    .line 956
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 43
    :sswitch_a
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    move v2, v8

    .line 54
    .local v2, "_arg1":Z
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 55
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, setBoolean(Ljava/lang/String;ZI)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v2    # "_arg1":Z
    .end local v4    # "_arg2":I
    :cond_2b
    move v2, v9

    .line 52
    goto :goto_20

    .line 61
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 67
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 68
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, setLong(Ljava/lang/String;JI)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    :sswitch_45
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 81
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 87
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :sswitch_5d
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7f

    move v2, v8

    .line 93
    .local v2, "_arg1":Z
    :goto_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 94
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v6

    .line 95
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v6, :cond_7b

    move v9, v8

    :cond_7b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v2    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Z
    :cond_7f
    move v2, v9

    .line 91
    goto :goto_6d

    .line 101
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_81
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 107
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 108
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    .line 109
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 115
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v6    # "_result":J
    :sswitch_9e
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 122
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 129
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_bb
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 136
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 142
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :sswitch_d4
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .line 148
    .local v6, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v6, :cond_f2

    .line 150
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 154
    :cond_f2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 160
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_f7
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 166
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 167
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .line 168
    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v6, :cond_119

    .line 170
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 174
    :cond_119
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 180
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_11e
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 187
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 193
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :sswitch_137
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 197
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .line 199
    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v6, :cond_155

    .line 201
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 205
    :cond_155
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 211
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_15a
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 217
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 218
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .line 219
    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v6, :cond_17c

    .line 221
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 225
    :cond_17c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 231
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_181
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 234
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, checkVoldPassword(I)Z

    move-result v6

    .line 235
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v6, :cond_194

    move v9, v8

    :cond_194
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 241
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_199
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 244
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, havePattern(I)Z

    move-result v6

    .line 245
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v6, :cond_1ac

    move v9, v8

    :cond_1ac
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 251
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_1b1
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 254
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, havePassword(I)Z

    move-result v6

    .line 255
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz v6, :cond_1c4

    move v9, v8

    :cond_1c4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 261
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_1c9
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v1

    .line 264
    .local v1, "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual {p0, v1}, registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 270
    .end local v1    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_1de
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v1

    .line 273
    .restart local v1    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual {p0, v1}, unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 279
    .end local v1    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :sswitch_1f3
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, requireStrongAuth(II)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 290
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_208
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, sanitizePassword()V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 297
    :sswitch_215
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 304
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v4}, setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 310
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :sswitch_22e
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 315
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, checkBackupPin(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .line 316
    .local v6, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    if-eqz v6, :cond_24c

    .line 318
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 322
    :cond_24c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 328
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_251
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 334
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 335
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3, v4}, verifyBackupPin(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .line 336
    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v6, :cond_273

    .line 338
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 342
    :cond_273
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 348
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_278
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, haveBackupPin(I)Z

    move-result v6

    .line 352
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v6, :cond_28b

    move v9, v8

    :cond_28b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 358
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_290
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 363
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, setLockFMMPassword(Ljava/lang/String;I)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 369
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_2a5
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 373
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkFMMPassword(Ljava/lang/String;I)Z

    move-result v6

    .line 375
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v6, :cond_2bc

    move v9, v8

    :cond_2bc
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 381
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_2c1
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 384
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, haveFMMPassword(I)Z

    move-result v6

    .line 385
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v6, :cond_2d4

    move v9, v8

    :cond_2d4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 391
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_2d9
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 394
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, getCarrierLockPlusMode(I)Z

    move-result v6

    .line 395
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v6, :cond_2ec

    move v9, v8

    :cond_2ec
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 401
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_2f1
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 404
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, setCarrierLockPlusEnabled(I)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 410
    .end local v1    # "_arg0":I
    :sswitch_302
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 415
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setLockCarrierPassword(Ljava/lang/String;I)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 421
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_317
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 424
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, updateCarrierLockPlusMode(I)Z

    move-result v6

    .line 425
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v6, :cond_32a

    move v9, v8

    :cond_32a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 431
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_32f
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkCarrierPassword(Ljava/lang/String;I)Z

    move-result v6

    .line 437
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    if-eqz v6, :cond_346

    move v9, v8

    :cond_346
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 443
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_34b
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 446
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, haveCarrierPassword(I)Z

    move-result v6

    .line 447
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v6, :cond_35e

    move v9, v8

    :cond_35e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 453
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_363
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 457
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 458
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setLockParentControlPassword([BI)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 464
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :sswitch_378
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 468
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkParentControlPassword([BI)Z

    move-result v6

    .line 470
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v6, :cond_38f

    move v9, v8

    :cond_38f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 476
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_394
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, haveParentControlPassword(I)Z

    move-result v6

    .line 480
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    if-eqz v6, :cond_3a7

    move v9, v8

    :cond_3a7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 486
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_3ac
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 489
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, getParentControlPasswordHashSize(I)I

    move-result v6

    .line 490
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 496
    .end local v1    # "_arg0":I
    .end local v6    # "_result":I
    :sswitch_3c1
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 500
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 501
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setSignatureInfo([BI)V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 507
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :sswitch_3d6
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 510
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, getSignatureInfo(I)[B

    move-result-object v6

    .line 511
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_9

    .line 517
    .end local v1    # "_arg0":I
    .end local v6    # "_result":[B
    :sswitch_3eb
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 521
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 522
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setSignatureBackupPin([BI)V

    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 528
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    :sswitch_400
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 532
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 533
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkSignatureBackupPin([BI)Z

    move-result v6

    .line 534
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    if-eqz v6, :cond_417

    move v9, v8

    :cond_417
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 540
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_41c
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 543
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, haveSignature(I)Z

    move-result v6

    .line 544
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v6, :cond_42f

    move v9, v8

    :cond_42f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 550
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_434
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 553
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, haveSignatureBackupPin(I)Z

    move-result v6

    .line 554
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v6, :cond_447

    move v9, v8

    :cond_447
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 560
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_44c
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 565
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setPersonalModeLockPin(Ljava/lang/String;I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 571
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_461
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 575
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 576
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setPersonalModeLockPassword(Ljava/lang/String;I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 582
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_476
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 586
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 587
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setPersonalModeLockPattern(Ljava/lang/String;I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 593
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_48b
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 597
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 598
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setPersonalModeLockBackupPin(Ljava/lang/String;I)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 604
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_4a0
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 608
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 609
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setPersonalModeFingerprintPassword(Ljava/lang/String;I)V

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 615
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_4b5
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 619
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 620
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkPersonalModePin(Ljava/lang/String;I)Z

    move-result v6

    .line 621
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    if-eqz v6, :cond_4cc

    move v9, v8

    :cond_4cc
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 627
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_4d1
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 631
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 632
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkPersonalModePassword(Ljava/lang/String;I)Z

    move-result v6

    .line 633
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    if-eqz v6, :cond_4e8

    move v9, v8

    :cond_4e8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 639
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_4ed
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 643
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 644
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkPersonalModePattern(Ljava/lang/String;I)Z

    move-result v6

    .line 645
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    if-eqz v6, :cond_504

    move v9, v8

    :cond_504
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 651
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_509
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 655
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 656
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkPersonalModeBackupPin(Ljava/lang/String;I)Z

    move-result v6

    .line 657
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    if-eqz v6, :cond_520

    move v9, v8

    :cond_520
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 663
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_525
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 667
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 668
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z

    move-result v6

    .line 669
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    if-eqz v6, :cond_53c

    move v9, v8

    :cond_53c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 675
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_541
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 678
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, havePersonalModePin(I)Z

    move-result v6

    .line 679
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    if-eqz v6, :cond_554

    move v9, v8

    :cond_554
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 685
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_559
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 688
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, havePersonalModePassword(I)Z

    move-result v6

    .line 689
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    if-eqz v6, :cond_56c

    move v9, v8

    :cond_56c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 695
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_571
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 698
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, havePersonalModePattern(I)Z

    move-result v6

    .line 699
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    if-eqz v6, :cond_584

    move v9, v8

    :cond_584
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 705
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_589
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 708
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, havePersonalModeBackupPin(I)Z

    move-result v6

    .line 709
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    if-eqz v6, :cond_59c

    move v9, v8

    :cond_59c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 715
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_5a1
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 718
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, havePersonalModeFingerprintPassword(I)Z

    move-result v6

    .line 719
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    if-eqz v6, :cond_5b4

    move v9, v8

    :cond_5b4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 725
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_5b9
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 730
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setAppLockPin(Ljava/lang/String;I)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 736
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_5ce
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 740
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 741
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setAppLockPassword(Ljava/lang/String;I)V

    .line 742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 747
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_5e3
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 751
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 752
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setAppLockPattern(Ljava/lang/String;I)V

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 758
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_5f8
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 762
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 763
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setAppLockBackupPin(Ljava/lang/String;I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 769
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_60d
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 773
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 774
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, setAppLockFingerprintPassword(Ljava/lang/String;I)V

    .line 775
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 780
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_622
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 784
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 785
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkAppLockPin(Ljava/lang/String;I)Z

    move-result v6

    .line 786
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    if-eqz v6, :cond_639

    move v9, v8

    :cond_639
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 792
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_63e
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 796
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 797
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v6

    .line 798
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    if-eqz v6, :cond_655

    move v9, v8

    :cond_655
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 804
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_65a
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 808
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 809
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkAppLockPattern(Ljava/lang/String;I)Z

    move-result v6

    .line 810
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    if-eqz v6, :cond_671

    move v9, v8

    :cond_671
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 816
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_676
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 820
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 821
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkAppLockBackupPin(Ljava/lang/String;I)Z

    move-result v6

    .line 822
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    if-eqz v6, :cond_68d

    move v9, v8

    :cond_68d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 828
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_692
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 832
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 833
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, checkAppLockFingerprintPassword(Ljava/lang/String;I)Z

    move-result v6

    .line 834
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    if-eqz v6, :cond_6a9

    move v9, v8

    :cond_6a9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 840
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v6    # "_result":Z
    :sswitch_6ae
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 843
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, haveAppLockPin(I)Z

    move-result v6

    .line 844
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    if-eqz v6, :cond_6c1

    move v9, v8

    :cond_6c1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 850
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_6c6
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 853
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, haveAppLockPassword(I)Z

    move-result v6

    .line 854
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    if-eqz v6, :cond_6d9

    move v9, v8

    :cond_6d9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 860
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_6de
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 863
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, haveAppLockPattern(I)Z

    move-result v6

    .line 864
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    if-eqz v6, :cond_6f1

    move v9, v8

    :cond_6f1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 870
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_6f6
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 873
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, haveAppLockBackupPin(I)Z

    move-result v6

    .line 874
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    if-eqz v6, :cond_709

    move v9, v8

    :cond_709
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 880
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_70e
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 883
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, haveAppLockFingerprintPassword(I)Z

    move-result v6

    .line 884
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    if-eqz v6, :cond_721

    move v9, v8

    :cond_721
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 890
    .end local v1    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_726
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 896
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 898
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_746

    move v5, v8

    .line 899
    .local v5, "_arg3":Z
    :goto_73e
    invoke-virtual {p0, v1, v2, v4, v5}, setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v5    # "_arg3":Z
    :cond_746
    move v5, v9

    .line 898
    goto :goto_73e

    .line 905
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :sswitch_748
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 909
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 911
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_76d

    move v4, v8

    .line 912
    .local v4, "_arg2":Z
    :goto_75c
    invoke-virtual {p0, v1, v2, v4}, checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .line 913
    .local v6, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    if-eqz v6, :cond_76f

    .line 915
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .end local v4    # "_arg2":Z
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_76d
    move v4, v9

    .line 911
    goto :goto_75c

    .line 919
    .restart local v4    # "_arg2":Z
    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_76f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 925
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_774
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 929
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 931
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 933
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_79e

    move v5, v8

    .restart local v5    # "_arg3":Z
    :goto_78c
    move-object v0, p0

    .line 934
    invoke-virtual/range {v0 .. v5}, verifyBackupPassword(Ljava/lang/String;JIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v6

    .line 935
    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    if-eqz v6, :cond_7a0

    .line 937
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    invoke-virtual {v6, p3, v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_79e
    move v5, v9

    .line 933
    goto :goto_78c

    .line 941
    .restart local v5    # "_arg3":Z
    .restart local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_7a0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 947
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :sswitch_7a5
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 950
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, haveBackupPassword(I)Z

    move-result v6

    .line 951
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    if-eqz v6, :cond_7b8

    move v9, v8

    :cond_7b8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_7be
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_45
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_81
        0x6 -> :sswitch_9e
        0x7 -> :sswitch_bb
        0x8 -> :sswitch_d4
        0x9 -> :sswitch_f7
        0xa -> :sswitch_11e
        0xb -> :sswitch_137
        0xc -> :sswitch_15a
        0xd -> :sswitch_181
        0xe -> :sswitch_199
        0xf -> :sswitch_1b1
        0x10 -> :sswitch_1c9
        0x11 -> :sswitch_1de
        0x12 -> :sswitch_1f3
        0x13 -> :sswitch_208
        0x14 -> :sswitch_215
        0x15 -> :sswitch_22e
        0x16 -> :sswitch_251
        0x17 -> :sswitch_278
        0x18 -> :sswitch_290
        0x19 -> :sswitch_2a5
        0x1a -> :sswitch_2c1
        0x1b -> :sswitch_2d9
        0x1c -> :sswitch_2f1
        0x1d -> :sswitch_302
        0x1e -> :sswitch_317
        0x1f -> :sswitch_32f
        0x20 -> :sswitch_34b
        0x21 -> :sswitch_363
        0x22 -> :sswitch_378
        0x23 -> :sswitch_394
        0x24 -> :sswitch_3ac
        0x25 -> :sswitch_3c1
        0x26 -> :sswitch_3d6
        0x27 -> :sswitch_3eb
        0x28 -> :sswitch_400
        0x29 -> :sswitch_41c
        0x2a -> :sswitch_434
        0x2b -> :sswitch_44c
        0x2c -> :sswitch_461
        0x2d -> :sswitch_476
        0x2e -> :sswitch_48b
        0x2f -> :sswitch_4a0
        0x30 -> :sswitch_4b5
        0x31 -> :sswitch_4d1
        0x32 -> :sswitch_4ed
        0x33 -> :sswitch_509
        0x34 -> :sswitch_525
        0x35 -> :sswitch_541
        0x36 -> :sswitch_559
        0x37 -> :sswitch_571
        0x38 -> :sswitch_589
        0x39 -> :sswitch_5a1
        0x3a -> :sswitch_5b9
        0x3b -> :sswitch_5ce
        0x3c -> :sswitch_5e3
        0x3d -> :sswitch_5f8
        0x3e -> :sswitch_60d
        0x3f -> :sswitch_622
        0x40 -> :sswitch_63e
        0x41 -> :sswitch_65a
        0x42 -> :sswitch_676
        0x43 -> :sswitch_692
        0x44 -> :sswitch_6ae
        0x45 -> :sswitch_6c6
        0x46 -> :sswitch_6de
        0x47 -> :sswitch_6f6
        0x48 -> :sswitch_70e
        0x49 -> :sswitch_726
        0x4a -> :sswitch_748
        0x4b -> :sswitch_774
        0x4c -> :sswitch_7a5
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
