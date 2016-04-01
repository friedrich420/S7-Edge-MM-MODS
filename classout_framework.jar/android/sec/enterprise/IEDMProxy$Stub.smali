.class public abstract Landroid/sec/enterprise/IEDMProxy$Stub;
.super Landroid/os/Binder;
.source "IEDMProxy.java"

# interfaces
.implements Landroid/sec/enterprise/IEDMProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/IEDMProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.enterprise.IEDMProxy"

.field static final TRANSACTION_AuditLogger:I = 0x43

.field static final TRANSACTION_AuditLoggerAsUser:I = 0x44

.field static final TRANSACTION_AuditLoggerPrivileged:I = 0x45

.field static final TRANSACTION_AuditLoggerPrivilegedAsUser:I = 0x46

.field static final TRANSACTION_addCallsCount:I = 0x1

.field static final TRANSACTION_addNumberOfIncomingCalls:I = 0x20

.field static final TRANSACTION_addNumberOfIncomingSms:I = 0x23

.field static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x21

.field static final TRANSACTION_addNumberOfOutgoingSms:I = 0x24

.field static final TRANSACTION_bluetoothLog:I = 0x3c

.field static final TRANSACTION_canIncomingCall:I = 0x1d

.field static final TRANSACTION_canIncomingSms:I = 0x27

.field static final TRANSACTION_canOutgoingCall:I = 0x1e

.field static final TRANSACTION_canOutgoingSms:I = 0x26

.field static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x25

.field static final TRANSACTION_edmAddOrUpdate:I = 0x2e

.field static final TRANSACTION_getAddHomeShorcutRequested:I = 0x88

.field static final TRANSACTION_getAliasesForPackage:I = 0x84

.field static final TRANSACTION_getAliasesForWiFi:I = 0x86

.field static final TRANSACTION_getAllowBluetoothDataTransfer:I = 0x9

.field static final TRANSACTION_getAllowUserPolicyChanges:I = 0x2a

.field static final TRANSACTION_getAllowUserProfiles:I = 0x2b

.field static final TRANSACTION_getApplicationIconFromDb:I = 0x7

.field static final TRANSACTION_getApplicationNameFromDb:I = 0x60

.field static final TRANSACTION_getApplicationStateEnabled:I = 0x41

.field static final TRANSACTION_getApplicationStateEnabledAsUser:I = 0x42

.field static final TRANSACTION_getAutomaticConnectionToWifi:I = 0x4f

.field static final TRANSACTION_getBlockedNetworks:I = 0x29

.field static final TRANSACTION_getBrowserSettingStatus:I = 0x12

.field static final TRANSACTION_getCertificateAliasesHavingPrivateKey:I = 0x87

.field static final TRANSACTION_getCertificateChain:I = 0x7e

.field static final TRANSACTION_getELMPermissions:I = 0x7f

.field static final TRANSACTION_getEmergencyCallOnly:I = 0x1f

.field static final TRANSACTION_getKeyboardMode:I = 0x77

.field static final TRANSACTION_getMinimumRequiredSecurity:I = 0x2d

.field static final TRANSACTION_getNetworkSSIDList:I = 0x28

.field static final TRANSACTION_getPromptCredentialsEnabled:I = 0x2c

.field static final TRANSACTION_getSealedHideNotificationMessages:I = 0x69

.field static final TRANSACTION_getSealedNotificationMessagesState:I = 0x68

.field static final TRANSACTION_getSealedState:I = 0x67

.field static final TRANSACTION_getSensorDisabled:I = 0x6d

.field static final TRANSACTION_getSlotIdForCaller:I = 0x81

.field static final TRANSACTION_getSlotIdForPackage:I = 0x82

.field static final TRANSACTION_getToastEnabledState:I = 0x6b

.field static final TRANSACTION_getToastGravity:I = 0x74

.field static final TRANSACTION_getToastGravityEnabledState:I = 0x73

.field static final TRANSACTION_getToastGravityXOffset:I = 0x75

.field static final TRANSACTION_getToastGravityYOffset:I = 0x76

.field static final TRANSACTION_getToastShowPackageNameState:I = 0x6c

.field static final TRANSACTION_getVolumeButtonRotationState:I = 0x6f

.field static final TRANSACTION_getVolumeControlStream:I = 0x6a

.field static final TRANSACTION_getVolumePanelEnabledState:I = 0x6e

.field static final TRANSACTION_getWifiAutoSwitchDelay:I = 0x72

.field static final TRANSACTION_getWifiAutoSwitchState:I = 0x70

.field static final TRANSACTION_getWifiAutoSwitchThreshold:I = 0x71

.field static final TRANSACTION_getWifiSsidRestrictionList:I = 0x5f

.field static final TRANSACTION_getWifiState:I = 0x78

.field static final TRANSACTION_isAccessControlMethodPassword:I = 0x85

.field static final TRANSACTION_isAccountAdditionAllowed:I = 0x5d

.field static final TRANSACTION_isAccountRemovalAllowed:I = 0x5c

.field static final TRANSACTION_isAndroidBeamAllowed:I = 0x5b

.field static final TRANSACTION_isApplicationForceStopDisabled:I = 0x3d

.field static final TRANSACTION_isAudioRecordAllowed:I = 0x4d

.field static final TRANSACTION_isAuditLogEnabledAsUser:I = 0x47

.field static final TRANSACTION_isBTSecureAccessAllowedAsUser:I = 0x79

.field static final TRANSACTION_isBackgroundProcessLimitAllowed:I = 0x52

.field static final TRANSACTION_isBackupAllowed:I = 0x3f

.field static final TRANSACTION_isBlockMmsWithStorageEnabled:I = 0x56

.field static final TRANSACTION_isBlockSmsWithStorageEnabled:I = 0x55

.field static final TRANSACTION_isBluetoothDeviceAllowed:I = 0xd

.field static final TRANSACTION_isBluetoothEnabled:I = 0x11

.field static final TRANSACTION_isBluetoothLogEnabled:I = 0x3b

.field static final TRANSACTION_isBluetoothUUIDAllowed:I = 0xb

.field static final TRANSACTION_isCCMPolicyEnabledForCaller:I = 0x80

.field static final TRANSACTION_isCCMPolicyEnabledForPackage:I = 0x83

.field static final TRANSACTION_isCaCertificateTrustedAsUser:I = 0x4c

.field static final TRANSACTION_isCallingCaptureEnabled:I = 0x2

.field static final TRANSACTION_isCameraEnabled:I = 0x18

.field static final TRANSACTION_isChangeRequested:I = 0x13

.field static final TRANSACTION_isClipboardAllowed:I = 0x1b

.field static final TRANSACTION_isClipboardShareAllowed:I = 0x54

.field static final TRANSACTION_isCopyContactToSimAllowed:I = 0x61

.field static final TRANSACTION_isDateTimeChangeEnabled:I = 0x30

.field static final TRANSACTION_isDesktopConnectivityEnabled:I = 0x40

.field static final TRANSACTION_isDiscoverableEnabled:I = 0xf

.field static final TRANSACTION_isGoogleCrashReportAllowed:I = 0x32

.field static final TRANSACTION_isHardwareKeyAllowed:I = 0x35

.field static final TRANSACTION_isIncomingMmsAllowed:I = 0x3e

.field static final TRANSACTION_isIncomingSmsAllowed:I = 0x38

.field static final TRANSACTION_isIntentDisabled:I = 0x8

.field static final TRANSACTION_isKillingActivitiesOnLeaveAllowed:I = 0x53

.field static final TRANSACTION_isKnoxBluetoothEnabled:I = 0x7c

.field static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x22

.field static final TRANSACTION_isLimitedDiscoverableEnabled:I = 0x10

.field static final TRANSACTION_isLocationProviderBlocked:I = 0x6

.field static final TRANSACTION_isMMSCaptureEnabled:I = 0x64

.field static final TRANSACTION_isMicrophoneEnabled:I = 0x1c

.field static final TRANSACTION_isNFCEnabled:I = 0x19

.field static final TRANSACTION_isNFCEnabledWithMsg:I = 0x1a

.field static final TRANSACTION_isNFCStateChangeAllowed:I = 0x62

.field static final TRANSACTION_isNonMarketAppAllowed:I = 0x17

.field static final TRANSACTION_isOcspCheckEnabled:I = 0x4b

.field static final TRANSACTION_isOutgoingCallsAllowed:I = 0xa

.field static final TRANSACTION_isOutgoingSmsAllowed:I = 0x39

.field static final TRANSACTION_isPackageAllowedToAccessExternalSdcard:I = 0x7d

.field static final TRANSACTION_isPackageWhitelistedFromBTSecureAccess:I = 0x7a

.field static final TRANSACTION_isPackageWhitelistedFromBTSecureAccessUid:I = 0x7b

.field static final TRANSACTION_isPairingEnabled:I = 0xe

.field static final TRANSACTION_isPowerOffAllowed:I = 0x37

.field static final TRANSACTION_isProfileEnabled:I = 0xc

.field static final TRANSACTION_isRevocationCheckEnabled:I = 0x4a

.field static final TRANSACTION_isRoamingPushEnabled:I = 0x14

.field static final TRANSACTION_isRoamingSyncEnabled:I = 0x15

.field static final TRANSACTION_isSBeamAllowed:I = 0x5a

.field static final TRANSACTION_isSMSCaptureEnabled:I = 0x4

.field static final TRANSACTION_isSVoiceAllowed:I = 0x58

.field static final TRANSACTION_isScreenCaptureEnabled:I = 0x34

.field static final TRANSACTION_isScreenLockPatternVisibilityEnabled:I = 0x31

.field static final TRANSACTION_isSettingsChangesAllowed:I = 0x16

.field static final TRANSACTION_isSimLockedByAdmin:I = 0x5e

.field static final TRANSACTION_isTaskManagerAllowed:I = 0x36

.field static final TRANSACTION_isTimaKeystoreEnabled:I = 0x89

.field static final TRANSACTION_isTimaKeystoreEnabledForPackage:I = 0x8a

.field static final TRANSACTION_isUrlBlocked:I = 0x3a

.field static final TRANSACTION_isUserRemoveCertificatesAllowedAsUser:I = 0x63

.field static final TRANSACTION_isVideoRecordAllowed:I = 0x4e

.field static final TRANSACTION_isWapPushAllowed:I = 0x59

.field static final TRANSACTION_isWifiDirectAllowed:I = 0x51

.field static final TRANSACTION_isWifiStateChangeAllowed:I = 0x33

.field static final TRANSACTION_notifyCertificateFailure:I = 0x48

.field static final TRANSACTION_notifyCertificateFailureAsUser:I = 0x49

.field static final TRANSACTION_notifyCertificateRemovedAsUser:I = 0x50

.field static final TRANSACTION_notifyUserKeystoreUnlocked:I = 0x66

.field static final TRANSACTION_removeNetworkConfiguration:I = 0x2f

.field static final TRANSACTION_storeBlockedSmsMms:I = 0x57

.field static final TRANSACTION_storeCalling:I = 0x3

.field static final TRANSACTION_storeMMS:I = 0x65

.field static final TRANSACTION_storeSMS:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/IEDMProxy;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v1, "android.sec.enterprise.IEDMProxy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Landroid/sec/enterprise/IEDMProxy;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
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
    .line 40
    sparse-switch p1, :sswitch_data_e62

    .line 1417
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 44
    :sswitch_8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    goto :goto_7

    .line 49
    :sswitch_f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, addCallsCount(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v0, 0x1

    goto :goto_7

    .line 58
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_20
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, isCallingCaptureEnabled()Z

    move-result v8

    .line 60
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v8, :cond_34

    const/4 v0, 0x1

    :goto_2f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v0, 0x1

    goto :goto_7

    .line 61
    :cond_34
    const/4 v0, 0x0

    goto :goto_2f

    .line 66
    .end local v8    # "_result":Z
    :sswitch_36
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v5, 0x1

    .local v5, "_arg4":Z
    :goto_52
    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v5}, storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v0, 0x1

    goto :goto_7

    .line 76
    .end local v5    # "_arg4":Z
    :cond_5b
    const/4 v5, 0x0

    goto :goto_52

    .line 83
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :sswitch_5d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, isSMSCaptureEnabled()Z

    move-result v8

    .line 85
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v8, :cond_71

    const/4 v0, 0x1

    :goto_6c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v0, 0x1

    goto :goto_7

    .line 86
    :cond_71
    const/4 v0, 0x0

    goto :goto_6c

    .line 91
    .end local v8    # "_result":Z
    :sswitch_73
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_94

    const/4 v4, 0x1

    .line 100
    .local v4, "_arg3":Z
    :goto_8b
    invoke-virtual {p0, v1, v2, v3, v4}, storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 99
    .end local v4    # "_arg3":Z
    :cond_94
    const/4 v4, 0x0

    goto :goto_8b

    .line 106
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_96
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v8

    .line 110
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v8, :cond_af

    const/4 v0, 0x1

    :goto_a9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 111
    :cond_af
    const/4 v0, 0x0

    goto :goto_a9

    .line 116
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_b1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v8

    .line 122
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 128
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":[B
    :sswitch_cb
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ee

    .line 131
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 136
    .local v1, "_arg0":Landroid/content/Intent;
    :goto_de
    invoke-virtual {p0, v1}, isIntentDisabled(Landroid/content/Intent;)Z

    move-result v8

    .line 137
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v8, :cond_f0

    const/4 v0, 0x1

    :goto_e8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 134
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_result":Z
    :cond_ee
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/Intent;
    goto :goto_de

    .line 138
    .restart local v8    # "_result":Z
    :cond_f0
    const/4 v0, 0x0

    goto :goto_e8

    .line 143
    .end local v1    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_result":Z
    :sswitch_f2
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10e

    const/4 v1, 0x1

    .line 146
    .local v1, "_arg0":Z
    :goto_fe
    invoke-virtual {p0, v1}, getAllowBluetoothDataTransfer(Z)Z

    move-result v8

    .line 147
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v8, :cond_110

    const/4 v0, 0x1

    :goto_108
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 145
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_10e
    const/4 v1, 0x0

    goto :goto_fe

    .line 148
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_110
    const/4 v0, 0x0

    goto :goto_108

    .line 153
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_112
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, isOutgoingCallsAllowed()Z

    move-result v8

    .line 155
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v8, :cond_127

    const/4 v0, 0x1

    :goto_121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 156
    :cond_127
    const/4 v0, 0x0

    goto :goto_121

    .line 161
    .end local v8    # "_result":Z
    :sswitch_129
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v8

    .line 165
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v8, :cond_142

    const/4 v0, 0x1

    :goto_13c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 166
    :cond_142
    const/4 v0, 0x0

    goto :goto_13c

    .line 171
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_144
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, isProfileEnabled(I)Z

    move-result v8

    .line 175
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v8, :cond_15d

    const/4 v0, 0x1

    :goto_157
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 176
    :cond_15d
    const/4 v0, 0x0

    goto :goto_157

    .line 181
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_15f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v8

    .line 185
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v8, :cond_178

    const/4 v0, 0x1

    :goto_172
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 186
    :cond_178
    const/4 v0, 0x0

    goto :goto_172

    .line 191
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_17a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, isPairingEnabled()Z

    move-result v8

    .line 193
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v8, :cond_18f

    const/4 v0, 0x1

    :goto_189
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 194
    :cond_18f
    const/4 v0, 0x0

    goto :goto_189

    .line 199
    .end local v8    # "_result":Z
    :sswitch_191
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, isDiscoverableEnabled()Z

    move-result v8

    .line 201
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v8, :cond_1a6

    const/4 v0, 0x1

    :goto_1a0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 202
    :cond_1a6
    const/4 v0, 0x0

    goto :goto_1a0

    .line 207
    .end local v8    # "_result":Z
    :sswitch_1a8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, isLimitedDiscoverableEnabled()Z

    move-result v8

    .line 209
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v8, :cond_1bd

    const/4 v0, 0x1

    :goto_1b7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 210
    :cond_1bd
    const/4 v0, 0x0

    goto :goto_1b7

    .line 215
    .end local v8    # "_result":Z
    :sswitch_1bf
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, isBluetoothEnabled()Z

    move-result v8

    .line 217
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v8, :cond_1d4

    const/4 v0, 0x1

    :goto_1ce
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 218
    :cond_1d4
    const/4 v0, 0x0

    goto :goto_1ce

    .line 223
    .end local v8    # "_result":Z
    :sswitch_1d6
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, getBrowserSettingStatus(I)Z

    move-result v8

    .line 227
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v8, :cond_1ef

    const/4 v0, 0x1

    :goto_1e9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 228
    :cond_1ef
    const/4 v0, 0x0

    goto :goto_1e9

    .line 233
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_1f1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, isChangeRequested()I

    move-result v8

    .line 235
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 241
    .end local v8    # "_result":I
    :sswitch_203
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, isRoamingPushEnabled()Z

    move-result v8

    .line 243
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v8, :cond_218

    const/4 v0, 0x1

    :goto_212
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 244
    :cond_218
    const/4 v0, 0x0

    goto :goto_212

    .line 249
    .end local v8    # "_result":Z
    :sswitch_21a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, isRoamingSyncEnabled()Z

    move-result v8

    .line 251
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v8, :cond_22f

    const/4 v0, 0x1

    :goto_229
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 252
    :cond_22f
    const/4 v0, 0x0

    goto :goto_229

    .line 257
    .end local v8    # "_result":Z
    :sswitch_231
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24d

    const/4 v1, 0x1

    .line 260
    .local v1, "_arg0":Z
    :goto_23d
    invoke-virtual {p0, v1}, isSettingsChangesAllowed(Z)Z

    move-result v8

    .line 261
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v8, :cond_24f

    const/4 v0, 0x1

    :goto_247
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 259
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_24d
    const/4 v1, 0x0

    goto :goto_23d

    .line 262
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_24f
    const/4 v0, 0x0

    goto :goto_247

    .line 267
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_251
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, isNonMarketAppAllowed()Z

    move-result v8

    .line 269
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v8, :cond_266

    const/4 v0, 0x1

    :goto_260
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 270
    :cond_266
    const/4 v0, 0x0

    goto :goto_260

    .line 275
    .end local v8    # "_result":Z
    :sswitch_268
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_284

    const/4 v1, 0x1

    .line 278
    .restart local v1    # "_arg0":Z
    :goto_274
    invoke-virtual {p0, v1}, isCameraEnabled(Z)Z

    move-result v8

    .line 279
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v8, :cond_286

    const/4 v0, 0x1

    :goto_27e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 277
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_284
    const/4 v1, 0x0

    goto :goto_274

    .line 280
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_286
    const/4 v0, 0x0

    goto :goto_27e

    .line 285
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_288
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, isNFCEnabled()Z

    move-result v8

    .line 287
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v8, :cond_29d

    const/4 v0, 0x1

    :goto_297
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 288
    :cond_29d
    const/4 v0, 0x0

    goto :goto_297

    .line 293
    .end local v8    # "_result":Z
    :sswitch_29f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2bb

    const/4 v1, 0x1

    .line 296
    .restart local v1    # "_arg0":Z
    :goto_2ab
    invoke-virtual {p0, v1}, isNFCEnabledWithMsg(Z)Z

    move-result v8

    .line 297
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v8, :cond_2bd

    const/4 v0, 0x1

    :goto_2b5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 295
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_2bb
    const/4 v1, 0x0

    goto :goto_2ab

    .line 298
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_2bd
    const/4 v0, 0x0

    goto :goto_2b5

    .line 303
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_2bf
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2db

    const/4 v1, 0x1

    .line 306
    .restart local v1    # "_arg0":Z
    :goto_2cb
    invoke-virtual {p0, v1}, isClipboardAllowed(Z)Z

    move-result v8

    .line 307
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v8, :cond_2dd

    const/4 v0, 0x1

    :goto_2d5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 305
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_2db
    const/4 v1, 0x0

    goto :goto_2cb

    .line 308
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_2dd
    const/4 v0, 0x0

    goto :goto_2d5

    .line 313
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_2df
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2fb

    const/4 v1, 0x1

    .line 316
    .restart local v1    # "_arg0":Z
    :goto_2eb
    invoke-virtual {p0, v1}, isMicrophoneEnabled(Z)Z

    move-result v8

    .line 317
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v8, :cond_2fd

    const/4 v0, 0x1

    :goto_2f5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 315
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_2fb
    const/4 v1, 0x0

    goto :goto_2eb

    .line 318
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_2fd
    const/4 v0, 0x0

    goto :goto_2f5

    .line 323
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_2ff
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, canIncomingCall(Ljava/lang/String;)Z

    move-result v8

    .line 327
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v8, :cond_318

    const/4 v0, 0x1

    :goto_312
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 328
    :cond_318
    const/4 v0, 0x0

    goto :goto_312

    .line 333
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_31a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, canOutgoingCall(Ljava/lang/String;)Z

    move-result v8

    .line 337
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    if-eqz v8, :cond_333

    const/4 v0, 0x1

    :goto_32d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 338
    :cond_333
    const/4 v0, 0x0

    goto :goto_32d

    .line 343
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_335
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_351

    const/4 v1, 0x1

    .line 346
    .local v1, "_arg0":Z
    :goto_341
    invoke-virtual {p0, v1}, getEmergencyCallOnly(Z)Z

    move-result v8

    .line 347
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v8, :cond_353

    const/4 v0, 0x1

    :goto_34b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 345
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_351
    const/4 v1, 0x0

    goto :goto_341

    .line 348
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_353
    const/4 v0, 0x0

    goto :goto_34b

    .line 353
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_355
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, addNumberOfIncomingCalls()Z

    move-result v8

    .line 355
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v8, :cond_36a

    const/4 v0, 0x1

    :goto_364
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 356
    :cond_36a
    const/4 v0, 0x0

    goto :goto_364

    .line 361
    .end local v8    # "_result":Z
    :sswitch_36c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, addNumberOfOutgoingCalls()Z

    move-result v8

    .line 363
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v8, :cond_381

    const/4 v0, 0x1

    :goto_37b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 364
    :cond_381
    const/4 v0, 0x0

    goto :goto_37b

    .line 369
    .end local v8    # "_result":Z
    :sswitch_383
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, isLimitNumberOfSmsEnabled()Z

    move-result v8

    .line 371
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v8, :cond_398

    const/4 v0, 0x1

    :goto_392
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 372
    :cond_398
    const/4 v0, 0x0

    goto :goto_392

    .line 377
    .end local v8    # "_result":Z
    :sswitch_39a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, addNumberOfIncomingSms()Z

    move-result v8

    .line 379
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v8, :cond_3af

    const/4 v0, 0x1

    :goto_3a9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 380
    :cond_3af
    const/4 v0, 0x0

    goto :goto_3a9

    .line 385
    .end local v8    # "_result":Z
    :sswitch_3b1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, addNumberOfOutgoingSms()Z

    move-result v8

    .line 387
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v8, :cond_3c6

    const/4 v0, 0x1

    :goto_3c0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 388
    :cond_3c6
    const/4 v0, 0x0

    goto :goto_3c0

    .line 393
    .end local v8    # "_result":Z
    :sswitch_3c8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, decreaseNumberOfOutgoingSms()Z

    move-result v8

    .line 395
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v8, :cond_3dd

    const/4 v0, 0x1

    :goto_3d7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 396
    :cond_3dd
    const/4 v0, 0x0

    goto :goto_3d7

    .line 401
    .end local v8    # "_result":Z
    :sswitch_3df
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, canOutgoingSms(Ljava/lang/String;)Z

    move-result v8

    .line 405
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v8, :cond_3f8

    const/4 v0, 0x1

    :goto_3f2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 406
    :cond_3f8
    const/4 v0, 0x0

    goto :goto_3f2

    .line 411
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_3fa
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, canIncomingSms(Ljava/lang/String;)Z

    move-result v8

    .line 415
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v8, :cond_413

    const/4 v0, 0x1

    :goto_40d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 416
    :cond_413
    const/4 v0, 0x0

    goto :goto_40d

    .line 421
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_415
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, getNetworkSSIDList()Ljava/util/List;

    move-result-object v10

    .line 423
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 425
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 429
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_427
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, getBlockedNetworks()Ljava/util/List;

    move-result-object v10

    .line 431
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 433
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 437
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_439
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, getAllowUserPolicyChanges()Z

    move-result v8

    .line 439
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v8, :cond_44e

    const/4 v0, 0x1

    :goto_448
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 440
    :cond_44e
    const/4 v0, 0x0

    goto :goto_448

    .line 445
    .end local v8    # "_result":Z
    :sswitch_450
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_470

    const/4 v1, 0x1

    .line 449
    .local v1, "_arg0":Z
    :goto_45c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, getAllowUserProfiles(ZI)Z

    move-result v8

    .line 451
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v8, :cond_472

    const/4 v0, 0x1

    :goto_46a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 447
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :cond_470
    const/4 v1, 0x0

    goto :goto_45c

    .line 452
    .restart local v1    # "_arg0":Z
    .restart local v2    # "_arg1":I
    .restart local v8    # "_result":Z
    :cond_472
    const/4 v0, 0x0

    goto :goto_46a

    .line 457
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_474
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, getPromptCredentialsEnabled()Z

    move-result v8

    .line 459
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v8, :cond_489

    const/4 v0, 0x1

    :goto_483
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 460
    :cond_489
    const/4 v0, 0x0

    goto :goto_483

    .line 465
    .end local v8    # "_result":Z
    :sswitch_48b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, getMinimumRequiredSecurity()I

    move-result v8

    .line 467
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 473
    .end local v8    # "_result":I
    :sswitch_49d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4bd

    .line 476
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 482
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_4b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 479
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_4bd
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4b0

    .line 489
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4bf
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v8

    .line 493
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    if-eqz v8, :cond_4d8

    const/4 v0, 0x1

    :goto_4d2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 494
    :cond_4d8
    const/4 v0, 0x0

    goto :goto_4d2

    .line 499
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_4da
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, isDateTimeChangeEnabled()Z

    move-result v8

    .line 501
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v8, :cond_4ef

    const/4 v0, 0x1

    :goto_4e9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 502
    :cond_4ef
    const/4 v0, 0x0

    goto :goto_4e9

    .line 507
    .end local v8    # "_result":Z
    :sswitch_4f1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, isScreenLockPatternVisibilityEnabled()Z

    move-result v8

    .line 509
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v8, :cond_506

    const/4 v0, 0x1

    :goto_500
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 510
    :cond_506
    const/4 v0, 0x0

    goto :goto_500

    .line 515
    .end local v8    # "_result":Z
    :sswitch_508
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, isGoogleCrashReportAllowed()Z

    move-result v8

    .line 517
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    if-eqz v8, :cond_51d

    const/4 v0, 0x1

    :goto_517
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 518
    :cond_51d
    const/4 v0, 0x0

    goto :goto_517

    .line 523
    .end local v8    # "_result":Z
    :sswitch_51f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, isWifiStateChangeAllowed()Z

    move-result v8

    .line 525
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    if-eqz v8, :cond_534

    const/4 v0, 0x1

    :goto_52e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 526
    :cond_534
    const/4 v0, 0x0

    goto :goto_52e

    .line 531
    .end local v8    # "_result":Z
    :sswitch_536
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_552

    const/4 v1, 0x1

    .line 534
    .local v1, "_arg0":Z
    :goto_542
    invoke-virtual {p0, v1}, isScreenCaptureEnabled(Z)Z

    move-result v8

    .line 535
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v8, :cond_554

    const/4 v0, 0x1

    :goto_54c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 533
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_552
    const/4 v1, 0x0

    goto :goto_542

    .line 536
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_554
    const/4 v0, 0x0

    goto :goto_54c

    .line 541
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_556
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 545
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_576

    const/4 v2, 0x1

    .line 546
    .local v2, "_arg1":Z
    :goto_566
    invoke-virtual {p0, v1, v2}, isHardwareKeyAllowed(IZ)Z

    move-result v8

    .line 547
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v8, :cond_578

    const/4 v0, 0x1

    :goto_570
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 545
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_576
    const/4 v2, 0x0

    goto :goto_566

    .line 548
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_578
    const/4 v0, 0x0

    goto :goto_570

    .line 553
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_57a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_596

    const/4 v1, 0x1

    .line 556
    .local v1, "_arg0":Z
    :goto_586
    invoke-virtual {p0, v1}, isTaskManagerAllowed(Z)Z

    move-result v8

    .line 557
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    if-eqz v8, :cond_598

    const/4 v0, 0x1

    :goto_590
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 555
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_596
    const/4 v1, 0x0

    goto :goto_586

    .line 558
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_598
    const/4 v0, 0x0

    goto :goto_590

    .line 563
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_59a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b6

    const/4 v1, 0x1

    .line 566
    .restart local v1    # "_arg0":Z
    :goto_5a6
    invoke-virtual {p0, v1}, isPowerOffAllowed(Z)Z

    move-result v8

    .line 567
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    if-eqz v8, :cond_5b8

    const/4 v0, 0x1

    :goto_5b0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 565
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_5b6
    const/4 v1, 0x0

    goto :goto_5a6

    .line 568
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_5b8
    const/4 v0, 0x0

    goto :goto_5b0

    .line 573
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_5ba
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, isIncomingSmsAllowed()Z

    move-result v8

    .line 575
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    if-eqz v8, :cond_5cf

    const/4 v0, 0x1

    :goto_5c9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 576
    :cond_5cf
    const/4 v0, 0x0

    goto :goto_5c9

    .line 581
    .end local v8    # "_result":Z
    :sswitch_5d1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, isOutgoingSmsAllowed()Z

    move-result v8

    .line 583
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    if-eqz v8, :cond_5e6

    const/4 v0, 0x1

    :goto_5e0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 584
    :cond_5e6
    const/4 v0, 0x0

    goto :goto_5e0

    .line 589
    .end local v8    # "_result":Z
    :sswitch_5e8
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, isUrlBlocked(Ljava/lang/String;)Z

    move-result v8

    .line 593
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v8, :cond_601

    const/4 v0, 0x1

    :goto_5fb
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 594
    :cond_601
    const/4 v0, 0x0

    goto :goto_5fb

    .line 599
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_603
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, isBluetoothLogEnabled()Z

    move-result v8

    .line 601
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v8, :cond_618

    const/4 v0, 0x1

    :goto_612
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 602
    :cond_618
    const/4 v0, 0x0

    goto :goto_612

    .line 607
    .end local v8    # "_result":Z
    :sswitch_61a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 611
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 618
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_630
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 622
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 624
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 626
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 630
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_661

    const/4 v6, 0x1

    .local v6, "_arg5":Z
    :goto_650
    move-object v0, p0

    .line 631
    invoke-virtual/range {v0 .. v6}, isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 632
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    if-eqz v8, :cond_663

    const/4 v0, 0x1

    :goto_65b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 630
    .end local v6    # "_arg5":Z
    .end local v8    # "_result":Z
    :cond_661
    const/4 v6, 0x0

    goto :goto_650

    .line 633
    .restart local v6    # "_arg5":Z
    .restart local v8    # "_result":Z
    :cond_663
    const/4 v0, 0x0

    goto :goto_65b

    .line 638
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Z
    .end local v8    # "_result":Z
    :sswitch_665
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, isIncomingMmsAllowed()Z

    move-result v8

    .line 640
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    if-eqz v8, :cond_67a

    const/4 v0, 0x1

    :goto_674
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 641
    :cond_67a
    const/4 v0, 0x0

    goto :goto_674

    .line 646
    .end local v8    # "_result":Z
    :sswitch_67c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_698

    const/4 v1, 0x1

    .line 649
    .local v1, "_arg0":Z
    :goto_688
    invoke-virtual {p0, v1}, isBackupAllowed(Z)Z

    move-result v8

    .line 650
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v8, :cond_69a

    const/4 v0, 0x1

    :goto_692
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 648
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_698
    const/4 v1, 0x0

    goto :goto_688

    .line 651
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_69a
    const/4 v0, 0x0

    goto :goto_692

    .line 656
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_69c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, isDesktopConnectivityEnabled()Z

    move-result v8

    .line 658
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    if-eqz v8, :cond_6b1

    const/4 v0, 0x1

    :goto_6ab
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 659
    :cond_6b1
    const/4 v0, 0x0

    goto :goto_6ab

    .line 664
    .end local v8    # "_result":Z
    :sswitch_6b3
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6d3

    const/4 v2, 0x1

    .line 669
    .local v2, "_arg1":Z
    :goto_6c3
    invoke-virtual {p0, v1, v2}, getApplicationStateEnabled(Ljava/lang/String;Z)Z

    move-result v8

    .line 670
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v8, :cond_6d5

    const/4 v0, 0x1

    :goto_6cd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 668
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :cond_6d3
    const/4 v2, 0x0

    goto :goto_6c3

    .line 671
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_result":Z
    :cond_6d5
    const/4 v0, 0x0

    goto :goto_6cd

    .line 676
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v8    # "_result":Z
    :sswitch_6d7
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 680
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6fb

    const/4 v2, 0x1

    .line 682
    .restart local v2    # "_arg1":Z
    :goto_6e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 683
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v8

    .line 684
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    if-eqz v8, :cond_6fd

    const/4 v0, 0x1

    :goto_6f5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 680
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :cond_6fb
    const/4 v2, 0x0

    goto :goto_6e7

    .line 685
    .restart local v2    # "_arg1":Z
    .restart local v3    # "_arg2":I
    .restart local v8    # "_result":Z
    :cond_6fd
    const/4 v0, 0x0

    goto :goto_6f5

    .line 690
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :sswitch_6ff
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 694
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 696
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_729

    const/4 v3, 0x1

    .line 698
    .local v3, "_arg2":Z
    :goto_713
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 700
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 702
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 703
    invoke-virtual/range {v0 .. v6}, AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 696
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :cond_729
    const/4 v3, 0x0

    goto :goto_713

    .line 709
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_72b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 713
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 715
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_759

    const/4 v3, 0x1

    .line 717
    .restart local v3    # "_arg2":Z
    :goto_73f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 719
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 721
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 723
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    move-object v0, p0

    .line 724
    invoke-virtual/range {v0 .. v7}, AuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 715
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    :cond_759
    const/4 v3, 0x0

    goto :goto_73f

    .line 730
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_75b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 734
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 736
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_785

    const/4 v3, 0x1

    .line 738
    .restart local v3    # "_arg2":Z
    :goto_76f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 740
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 742
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 743
    invoke-virtual/range {v0 .. v6}, AuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 736
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    :cond_785
    const/4 v3, 0x0

    goto :goto_76f

    .line 749
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_787
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 753
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 755
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7b5

    const/4 v3, 0x1

    .line 757
    .restart local v3    # "_arg2":Z
    :goto_79b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 759
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 761
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 763
    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg6":I
    move-object v0, p0

    .line 764
    invoke-virtual/range {v0 .. v7}, AuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 755
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    :cond_7b5
    const/4 v3, 0x0

    goto :goto_79b

    .line 770
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_7b7
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 773
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, isAuditLogEnabledAsUser(I)Z

    move-result v8

    .line 774
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    if-eqz v8, :cond_7d0

    const/4 v0, 0x1

    :goto_7ca
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 775
    :cond_7d0
    const/4 v0, 0x0

    goto :goto_7ca

    .line 780
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_7d2
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 786
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7ef

    const/4 v3, 0x1

    .line 787
    .restart local v3    # "_arg2":Z
    :goto_7e6
    invoke-virtual {p0, v1, v2, v3}, notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 788
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 786
    .end local v3    # "_arg2":Z
    :cond_7ef
    const/4 v3, 0x0

    goto :goto_7e6

    .line 793
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_7f1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 797
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 799
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_812

    const/4 v3, 0x1

    .line 801
    .restart local v3    # "_arg2":Z
    :goto_805
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 802
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 799
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":I
    :cond_812
    const/4 v3, 0x0

    goto :goto_805

    .line 808
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_814
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, isRevocationCheckEnabled()Z

    move-result v8

    .line 810
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    if-eqz v8, :cond_829

    const/4 v0, 0x1

    :goto_823
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 811
    :cond_829
    const/4 v0, 0x0

    goto :goto_823

    .line 816
    .end local v8    # "_result":Z
    :sswitch_82b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, isOcspCheckEnabled()Z

    move-result v8

    .line 818
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    if-eqz v8, :cond_840

    const/4 v0, 0x1

    :goto_83a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 819
    :cond_840
    const/4 v0, 0x0

    goto :goto_83a

    .line 824
    .end local v8    # "_result":Z
    :sswitch_842
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 828
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_866

    const/4 v2, 0x1

    .line 830
    .local v2, "_arg1":Z
    :goto_852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 831
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, isCaCertificateTrustedAsUser([BZI)Z

    move-result v8

    .line 832
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    if-eqz v8, :cond_868

    const/4 v0, 0x1

    :goto_860
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 828
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :cond_866
    const/4 v2, 0x0

    goto :goto_852

    .line 833
    .restart local v2    # "_arg1":Z
    .restart local v3    # "_arg2":I
    .restart local v8    # "_result":Z
    :cond_868
    const/4 v0, 0x0

    goto :goto_860

    .line 838
    .end local v1    # "_arg0":[B
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v8    # "_result":Z
    :sswitch_86a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_886

    const/4 v1, 0x1

    .line 841
    .local v1, "_arg0":Z
    :goto_876
    invoke-virtual {p0, v1}, isAudioRecordAllowed(Z)Z

    move-result v8

    .line 842
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    if-eqz v8, :cond_888

    const/4 v0, 0x1

    :goto_880
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 840
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_886
    const/4 v1, 0x0

    goto :goto_876

    .line 843
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_888
    const/4 v0, 0x0

    goto :goto_880

    .line 848
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_88a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8a6

    const/4 v1, 0x1

    .line 851
    .restart local v1    # "_arg0":Z
    :goto_896
    invoke-virtual {p0, v1}, isVideoRecordAllowed(Z)Z

    move-result v8

    .line 852
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    if-eqz v8, :cond_8a8

    const/4 v0, 0x1

    :goto_8a0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 850
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_8a6
    const/4 v1, 0x0

    goto :goto_896

    .line 853
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_8a8
    const/4 v0, 0x0

    goto :goto_8a0

    .line 858
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_8aa
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0}, getAutomaticConnectionToWifi()Z

    move-result v8

    .line 860
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    if-eqz v8, :cond_8bf

    const/4 v0, 0x1

    :goto_8b9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 861
    :cond_8bf
    const/4 v0, 0x0

    goto :goto_8b9

    .line 866
    .end local v8    # "_result":Z
    :sswitch_8c1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 870
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 871
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, notifyCertificateRemovedAsUser(Ljava/lang/String;I)V

    .line 872
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 877
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_8d7
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8f3

    const/4 v1, 0x1

    .line 880
    .local v1, "_arg0":Z
    :goto_8e3
    invoke-virtual {p0, v1}, isWifiDirectAllowed(Z)Z

    move-result v8

    .line 881
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    if-eqz v8, :cond_8f5

    const/4 v0, 0x1

    :goto_8ed
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 879
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_8f3
    const/4 v1, 0x0

    goto :goto_8e3

    .line 882
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_8f5
    const/4 v0, 0x0

    goto :goto_8ed

    .line 887
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_8f7
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p0}, isBackgroundProcessLimitAllowed()Z

    move-result v8

    .line 889
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    if-eqz v8, :cond_90c

    const/4 v0, 0x1

    :goto_906
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 890
    :cond_90c
    const/4 v0, 0x0

    goto :goto_906

    .line 895
    .end local v8    # "_result":Z
    :sswitch_90e
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0}, isKillingActivitiesOnLeaveAllowed()Z

    move-result v8

    .line 897
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    if-eqz v8, :cond_923

    const/4 v0, 0x1

    :goto_91d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 898
    :cond_923
    const/4 v0, 0x0

    goto :goto_91d

    .line 903
    .end local v8    # "_result":Z
    :sswitch_925
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, isClipboardShareAllowed()Z

    move-result v8

    .line 905
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    if-eqz v8, :cond_93a

    const/4 v0, 0x1

    :goto_934
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 906
    :cond_93a
    const/4 v0, 0x0

    goto :goto_934

    .line 911
    .end local v8    # "_result":Z
    :sswitch_93c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0}, isBlockSmsWithStorageEnabled()Z

    move-result v8

    .line 913
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    if-eqz v8, :cond_951

    const/4 v0, 0x1

    :goto_94b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 914
    :cond_951
    const/4 v0, 0x0

    goto :goto_94b

    .line 919
    .end local v8    # "_result":Z
    :sswitch_953
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0}, isBlockMmsWithStorageEnabled()Z

    move-result v8

    .line 921
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    if-eqz v8, :cond_968

    const/4 v0, 0x1

    :goto_962
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 922
    :cond_968
    const/4 v0, 0x0

    goto :goto_962

    .line 927
    .end local v8    # "_result":Z
    :sswitch_96a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_990

    const/4 v1, 0x1

    .line 931
    .restart local v1    # "_arg0":Z
    :goto_976
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 933
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 935
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 937
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 938
    invoke-virtual/range {v0 .. v5}, storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    .line 939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 929
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :cond_990
    const/4 v1, 0x0

    goto :goto_976

    .line 944
    :sswitch_992
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9ae

    const/4 v1, 0x1

    .line 947
    .restart local v1    # "_arg0":Z
    :goto_99e
    invoke-virtual {p0, v1}, isSVoiceAllowed(Z)Z

    move-result v8

    .line 948
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    if-eqz v8, :cond_9b0

    const/4 v0, 0x1

    :goto_9a8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 946
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_9ae
    const/4 v1, 0x0

    goto :goto_99e

    .line 949
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_9b0
    const/4 v0, 0x0

    goto :goto_9a8

    .line 954
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_9b2
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p0}, isWapPushAllowed()Z

    move-result v8

    .line 956
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    if-eqz v8, :cond_9c7

    const/4 v0, 0x1

    :goto_9c1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 957
    :cond_9c7
    const/4 v0, 0x0

    goto :goto_9c1

    .line 962
    .end local v8    # "_result":Z
    :sswitch_9c9
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9e5

    const/4 v1, 0x1

    .line 965
    .restart local v1    # "_arg0":Z
    :goto_9d5
    invoke-virtual {p0, v1}, isSBeamAllowed(Z)Z

    move-result v8

    .line 966
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    if-eqz v8, :cond_9e7

    const/4 v0, 0x1

    :goto_9df
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 964
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_9e5
    const/4 v1, 0x0

    goto :goto_9d5

    .line 967
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_9e7
    const/4 v0, 0x0

    goto :goto_9df

    .line 972
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_9e9
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a05

    const/4 v1, 0x1

    .line 975
    .restart local v1    # "_arg0":Z
    :goto_9f5
    invoke-virtual {p0, v1}, isAndroidBeamAllowed(Z)Z

    move-result v8

    .line 976
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    if-eqz v8, :cond_a07

    const/4 v0, 0x1

    :goto_9ff
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 974
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_a05
    const/4 v1, 0x0

    goto :goto_9f5

    .line 977
    .restart local v1    # "_arg0":Z
    .restart local v8    # "_result":Z
    :cond_a07
    const/4 v0, 0x0

    goto :goto_9ff

    .line 982
    .end local v1    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_a09
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 988
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a2d

    const/4 v3, 0x1

    .line 989
    .local v3, "_arg2":Z
    :goto_a1d
    invoke-virtual {p0, v1, v2, v3}, isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 990
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    if-eqz v8, :cond_a2f

    const/4 v0, 0x1

    :goto_a27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 988
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Z
    :cond_a2d
    const/4 v3, 0x0

    goto :goto_a1d

    .line 991
    .restart local v3    # "_arg2":Z
    .restart local v8    # "_result":Z
    :cond_a2f
    const/4 v0, 0x0

    goto :goto_a27

    .line 996
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Z
    :sswitch_a31
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1000
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1002
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a55

    const/4 v3, 0x1

    .line 1003
    .restart local v3    # "_arg2":Z
    :goto_a45
    invoke-virtual {p0, v1, v2, v3}, isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 1004
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    if-eqz v8, :cond_a57

    const/4 v0, 0x1

    :goto_a4f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1002
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Z
    :cond_a55
    const/4 v3, 0x0

    goto :goto_a45

    .line 1005
    .restart local v3    # "_arg2":Z
    .restart local v8    # "_result":Z
    :cond_a57
    const/4 v0, 0x0

    goto :goto_a4f

    .line 1010
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Z
    .end local v8    # "_result":Z
    :sswitch_a59
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v8

    .line 1014
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    if-eqz v8, :cond_a72

    const/4 v0, 0x1

    :goto_a6c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1015
    :cond_a72
    const/4 v0, 0x0

    goto :goto_a6c

    .line 1020
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_a74
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1023
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v10

    .line 1024
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1026
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1030
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a8a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1034
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1035
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1036
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1038
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1042
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_aa4
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1045
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, isCopyContactToSimAllowed(I)Z

    move-result v8

    .line 1046
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    if-eqz v8, :cond_abd

    const/4 v0, 0x1

    :goto_ab7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1047
    :cond_abd
    const/4 v0, 0x0

    goto :goto_ab7

    .line 1052
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_abf
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p0}, isNFCStateChangeAllowed()Z

    move-result v8

    .line 1054
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    if-eqz v8, :cond_ad4

    const/4 v0, 0x1

    :goto_ace
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1056
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1055
    :cond_ad4
    const/4 v0, 0x0

    goto :goto_ace

    .line 1060
    .end local v8    # "_result":Z
    :sswitch_ad6
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1063
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v8

    .line 1064
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    if-eqz v8, :cond_aef

    const/4 v0, 0x1

    :goto_ae9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1065
    :cond_aef
    const/4 v0, 0x0

    goto :goto_ae9

    .line 1070
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_af1
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0}, isMMSCaptureEnabled()Z

    move-result v8

    .line 1072
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    if-eqz v8, :cond_b06

    const/4 v0, 0x1

    :goto_b00
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1073
    :cond_b06
    const/4 v0, 0x0

    goto :goto_b00

    .line 1078
    .end local v8    # "_result":Z
    :sswitch_b08
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b29

    const/4 v4, 0x1

    .line 1087
    .local v4, "_arg3":Z
    :goto_b20
    invoke-virtual {p0, v1, v2, v3, v4}, storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1086
    .end local v4    # "_arg3":Z
    :cond_b29
    const/4 v4, 0x0

    goto :goto_b20

    .line 1093
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_b2b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1096
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, notifyUserKeystoreUnlocked(I)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1102
    .end local v1    # "_arg0":I
    :sswitch_b3d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0}, getSealedState()Z

    move-result v8

    .line 1104
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    if-eqz v8, :cond_b52

    const/4 v0, 0x1

    :goto_b4c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1105
    :cond_b52
    const/4 v0, 0x0

    goto :goto_b4c

    .line 1110
    .end local v8    # "_result":Z
    :sswitch_b54
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, getSealedNotificationMessagesState()Z

    move-result v8

    .line 1112
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    if-eqz v8, :cond_b69

    const/4 v0, 0x1

    :goto_b63
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1113
    :cond_b69
    const/4 v0, 0x0

    goto :goto_b63

    .line 1118
    .end local v8    # "_result":Z
    :sswitch_b6b
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p0}, getSealedHideNotificationMessages()I

    move-result v8

    .line 1120
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1126
    .end local v8    # "_result":I
    :sswitch_b7d
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p0}, getVolumeControlStream()I

    move-result v8

    .line 1128
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1134
    .end local v8    # "_result":I
    :sswitch_b8f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0}, getToastEnabledState()Z

    move-result v8

    .line 1136
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    if-eqz v8, :cond_ba4

    const/4 v0, 0x1

    :goto_b9e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1137
    :cond_ba4
    const/4 v0, 0x0

    goto :goto_b9e

    .line 1142
    .end local v8    # "_result":Z
    :sswitch_ba6
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p0}, getToastShowPackageNameState()Z

    move-result v8

    .line 1144
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    if-eqz v8, :cond_bbb

    const/4 v0, 0x1

    :goto_bb5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1145
    :cond_bbb
    const/4 v0, 0x0

    goto :goto_bb5

    .line 1150
    .end local v8    # "_result":Z
    :sswitch_bbd
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p0}, getSensorDisabled()I

    move-result v8

    .line 1152
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1158
    .end local v8    # "_result":I
    :sswitch_bcf
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p0}, getVolumePanelEnabledState()Z

    move-result v8

    .line 1160
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    if-eqz v8, :cond_be4

    const/4 v0, 0x1

    :goto_bde
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1161
    :cond_be4
    const/4 v0, 0x0

    goto :goto_bde

    .line 1166
    .end local v8    # "_result":Z
    :sswitch_be6
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p0}, getVolumeButtonRotationState()Z

    move-result v8

    .line 1168
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    if-eqz v8, :cond_bfb

    const/4 v0, 0x1

    :goto_bf5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1170
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1169
    :cond_bfb
    const/4 v0, 0x0

    goto :goto_bf5

    .line 1174
    .end local v8    # "_result":Z
    :sswitch_bfd
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0}, getWifiAutoSwitchState()Z

    move-result v8

    .line 1176
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    if-eqz v8, :cond_c12

    const/4 v0, 0x1

    :goto_c0c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1177
    :cond_c12
    const/4 v0, 0x0

    goto :goto_c0c

    .line 1182
    .end local v8    # "_result":Z
    :sswitch_c14
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0}, getWifiAutoSwitchThreshold()I

    move-result v8

    .line 1184
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1190
    .end local v8    # "_result":I
    :sswitch_c26
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p0}, getWifiAutoSwitchDelay()I

    move-result v8

    .line 1192
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1198
    .end local v8    # "_result":I
    :sswitch_c38
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p0}, getToastGravityEnabledState()Z

    move-result v8

    .line 1200
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    if-eqz v8, :cond_c4d

    const/4 v0, 0x1

    :goto_c47
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1201
    :cond_c4d
    const/4 v0, 0x0

    goto :goto_c47

    .line 1206
    .end local v8    # "_result":Z
    :sswitch_c4f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p0}, getToastGravity()I

    move-result v8

    .line 1208
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1214
    .end local v8    # "_result":I
    :sswitch_c61
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p0}, getToastGravityXOffset()I

    move-result v8

    .line 1216
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1222
    .end local v8    # "_result":I
    :sswitch_c73
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p0}, getToastGravityYOffset()I

    move-result v8

    .line 1224
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1230
    .end local v8    # "_result":I
    :sswitch_c85
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p0}, getKeyboardMode()I

    move-result v8

    .line 1232
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1238
    .end local v8    # "_result":I
    :sswitch_c97
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0}, getWifiState()Z

    move-result v8

    .line 1240
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    if-eqz v8, :cond_cac

    const/4 v0, 0x1

    :goto_ca6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1241
    :cond_cac
    const/4 v0, 0x0

    goto :goto_ca6

    .line 1246
    .end local v8    # "_result":Z
    :sswitch_cae
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1249
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, isBTSecureAccessAllowedAsUser(I)Z

    move-result v8

    .line 1250
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    if-eqz v8, :cond_cc7

    const/4 v0, 0x1

    :goto_cc1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1251
    :cond_cc7
    const/4 v0, 0x0

    goto :goto_cc1

    .line 1256
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_cc9
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, isPackageWhitelistedFromBTSecureAccess(Ljava/lang/String;)Z

    move-result v8

    .line 1260
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    if-eqz v8, :cond_ce2

    const/4 v0, 0x1

    :goto_cdc
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1261
    :cond_ce2
    const/4 v0, 0x0

    goto :goto_cdc

    .line 1266
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_ce4
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1269
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, isPackageWhitelistedFromBTSecureAccessUid(I)Z

    move-result v8

    .line 1270
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    if-eqz v8, :cond_cfd

    const/4 v0, 0x1

    :goto_cf7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1271
    :cond_cfd
    const/4 v0, 0x0

    goto :goto_cf7

    .line 1276
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_cff
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1279
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, isKnoxBluetoothEnabled(I)Z

    move-result v8

    .line 1280
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    if-eqz v8, :cond_d18

    const/4 v0, 0x1

    :goto_d12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1281
    :cond_d18
    const/4 v0, 0x0

    goto :goto_d12

    .line 1286
    .end local v1    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_d1a
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1290
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1291
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v8

    .line 1292
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    if-eqz v8, :cond_d37

    const/4 v0, 0x1

    :goto_d31
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1293
    :cond_d37
    const/4 v0, 0x0

    goto :goto_d31

    .line 1298
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Z
    :sswitch_d39
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1301
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, getCertificateChain(Ljava/lang/String;)[B

    move-result-object v8

    .line 1302
    .local v8, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1304
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1308
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":[B
    :sswitch_d4f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1311
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 1312
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1314
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1318
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_d65
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p0}, isCCMPolicyEnabledForCaller()Z

    move-result v8

    .line 1320
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    if-eqz v8, :cond_d7a

    const/4 v0, 0x1

    :goto_d74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1321
    :cond_d7a
    const/4 v0, 0x0

    goto :goto_d74

    .line 1326
    .end local v8    # "_result":Z
    :sswitch_d7c
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1329
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, getSlotIdForCaller(Ljava/lang/String;)J

    move-result-wide v8

    .line 1330
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1332
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1336
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":J
    :sswitch_d92
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1340
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1341
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, getSlotIdForPackage(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 1342
    .restart local v8    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1343
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1344
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1348
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":J
    :sswitch_dac
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1351
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z

    move-result v8

    .line 1352
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    if-eqz v8, :cond_dc5

    const/4 v0, 0x1

    :goto_dbf
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1353
    :cond_dc5
    const/4 v0, 0x0

    goto :goto_dbf

    .line 1358
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_dc7
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1361
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 1362
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1363
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1364
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1368
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_ddd
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, isAccessControlMethodPassword()Z

    move-result v8

    .line 1370
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1371
    if-eqz v8, :cond_df2

    const/4 v0, 0x1

    :goto_dec
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1372
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1371
    :cond_df2
    const/4 v0, 0x0

    goto :goto_dec

    .line 1376
    .end local v8    # "_result":Z
    :sswitch_df4
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p0}, getAliasesForWiFi()Ljava/util/List;

    move-result-object v10

    .line 1378
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1380
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1384
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_e06
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {p0}, getCertificateAliasesHavingPrivateKey()Ljava/util/List;

    move-result-object v10

    .line 1386
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1388
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1392
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_e18
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p0}, getAddHomeShorcutRequested()Z

    move-result v8

    .line 1394
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    if-eqz v8, :cond_e2d

    const/4 v0, 0x1

    :goto_e27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1395
    :cond_e2d
    const/4 v0, 0x0

    goto :goto_e27

    .line 1400
    .end local v8    # "_result":Z
    :sswitch_e2f
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p0}, isTimaKeystoreEnabled()Z

    move-result v8

    .line 1402
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    if-eqz v8, :cond_e44

    const/4 v0, 0x1

    :goto_e3e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1403
    :cond_e44
    const/4 v0, 0x0

    goto :goto_e3e

    .line 1408
    .end local v8    # "_result":Z
    :sswitch_e46
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1411
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z

    move-result v8

    .line 1412
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    if-eqz v8, :cond_e5f

    const/4 v0, 0x1

    :goto_e59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 1413
    :cond_e5f
    const/4 v0, 0x0

    goto :goto_e59

    .line 40
    nop

    :sswitch_data_e62
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_36
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_73
        0x6 -> :sswitch_96
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_cb
        0x9 -> :sswitch_f2
        0xa -> :sswitch_112
        0xb -> :sswitch_129
        0xc -> :sswitch_144
        0xd -> :sswitch_15f
        0xe -> :sswitch_17a
        0xf -> :sswitch_191
        0x10 -> :sswitch_1a8
        0x11 -> :sswitch_1bf
        0x12 -> :sswitch_1d6
        0x13 -> :sswitch_1f1
        0x14 -> :sswitch_203
        0x15 -> :sswitch_21a
        0x16 -> :sswitch_231
        0x17 -> :sswitch_251
        0x18 -> :sswitch_268
        0x19 -> :sswitch_288
        0x1a -> :sswitch_29f
        0x1b -> :sswitch_2bf
        0x1c -> :sswitch_2df
        0x1d -> :sswitch_2ff
        0x1e -> :sswitch_31a
        0x1f -> :sswitch_335
        0x20 -> :sswitch_355
        0x21 -> :sswitch_36c
        0x22 -> :sswitch_383
        0x23 -> :sswitch_39a
        0x24 -> :sswitch_3b1
        0x25 -> :sswitch_3c8
        0x26 -> :sswitch_3df
        0x27 -> :sswitch_3fa
        0x28 -> :sswitch_415
        0x29 -> :sswitch_427
        0x2a -> :sswitch_439
        0x2b -> :sswitch_450
        0x2c -> :sswitch_474
        0x2d -> :sswitch_48b
        0x2e -> :sswitch_49d
        0x2f -> :sswitch_4bf
        0x30 -> :sswitch_4da
        0x31 -> :sswitch_4f1
        0x32 -> :sswitch_508
        0x33 -> :sswitch_51f
        0x34 -> :sswitch_536
        0x35 -> :sswitch_556
        0x36 -> :sswitch_57a
        0x37 -> :sswitch_59a
        0x38 -> :sswitch_5ba
        0x39 -> :sswitch_5d1
        0x3a -> :sswitch_5e8
        0x3b -> :sswitch_603
        0x3c -> :sswitch_61a
        0x3d -> :sswitch_630
        0x3e -> :sswitch_665
        0x3f -> :sswitch_67c
        0x40 -> :sswitch_69c
        0x41 -> :sswitch_6b3
        0x42 -> :sswitch_6d7
        0x43 -> :sswitch_6ff
        0x44 -> :sswitch_72b
        0x45 -> :sswitch_75b
        0x46 -> :sswitch_787
        0x47 -> :sswitch_7b7
        0x48 -> :sswitch_7d2
        0x49 -> :sswitch_7f1
        0x4a -> :sswitch_814
        0x4b -> :sswitch_82b
        0x4c -> :sswitch_842
        0x4d -> :sswitch_86a
        0x4e -> :sswitch_88a
        0x4f -> :sswitch_8aa
        0x50 -> :sswitch_8c1
        0x51 -> :sswitch_8d7
        0x52 -> :sswitch_8f7
        0x53 -> :sswitch_90e
        0x54 -> :sswitch_925
        0x55 -> :sswitch_93c
        0x56 -> :sswitch_953
        0x57 -> :sswitch_96a
        0x58 -> :sswitch_992
        0x59 -> :sswitch_9b2
        0x5a -> :sswitch_9c9
        0x5b -> :sswitch_9e9
        0x5c -> :sswitch_a09
        0x5d -> :sswitch_a31
        0x5e -> :sswitch_a59
        0x5f -> :sswitch_a74
        0x60 -> :sswitch_a8a
        0x61 -> :sswitch_aa4
        0x62 -> :sswitch_abf
        0x63 -> :sswitch_ad6
        0x64 -> :sswitch_af1
        0x65 -> :sswitch_b08
        0x66 -> :sswitch_b2b
        0x67 -> :sswitch_b3d
        0x68 -> :sswitch_b54
        0x69 -> :sswitch_b6b
        0x6a -> :sswitch_b7d
        0x6b -> :sswitch_b8f
        0x6c -> :sswitch_ba6
        0x6d -> :sswitch_bbd
        0x6e -> :sswitch_bcf
        0x6f -> :sswitch_be6
        0x70 -> :sswitch_bfd
        0x71 -> :sswitch_c14
        0x72 -> :sswitch_c26
        0x73 -> :sswitch_c38
        0x74 -> :sswitch_c4f
        0x75 -> :sswitch_c61
        0x76 -> :sswitch_c73
        0x77 -> :sswitch_c85
        0x78 -> :sswitch_c97
        0x79 -> :sswitch_cae
        0x7a -> :sswitch_cc9
        0x7b -> :sswitch_ce4
        0x7c -> :sswitch_cff
        0x7d -> :sswitch_d1a
        0x7e -> :sswitch_d39
        0x7f -> :sswitch_d4f
        0x80 -> :sswitch_d65
        0x81 -> :sswitch_d7c
        0x82 -> :sswitch_d92
        0x83 -> :sswitch_dac
        0x84 -> :sswitch_dc7
        0x85 -> :sswitch_ddd
        0x86 -> :sswitch_df4
        0x87 -> :sswitch_e06
        0x88 -> :sswitch_e18
        0x89 -> :sswitch_e2f
        0x8a -> :sswitch_e46
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
