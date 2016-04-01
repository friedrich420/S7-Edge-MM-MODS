.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_IsDomesticRoaming:I = 0xa0

.field static final TRANSACTION_IsInternationalRoaming:I = 0x9f

.field static final TRANSACTION_NSRI_requestProc:I = 0xcb

.field static final TRANSACTION_SimSlotActivation:I = 0xb4

.field static final TRANSACTION_SimSlotOnOff:I = 0xb3

.field static final TRANSACTION_answerRingingCall:I = 0x8

.field static final TRANSACTION_answerRingingCallForSubscriber:I = 0x9

.field static final TRANSACTION_calculateAkaResponse:I = 0xb9

.field static final TRANSACTION_calculateGbaBootstrappingResponse:I = 0xba

.field static final TRANSACTION_calculateNafExternalKey:I = 0xbb

.field static final TRANSACTION_call:I = 0x4

.field static final TRANSACTION_callForSubscriber:I = 0x5

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x78

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x68

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x69

.field static final TRANSACTION_checkNSRIUSIMstate_int:I = 0xca

.field static final TRANSACTION_dial:I = 0x2

.field static final TRANSACTION_dialForSubscriber:I = 0x3

.field static final TRANSACTION_disableDataConnectivity:I = 0x2a

.field static final TRANSACTION_disableLocationUpdates:I = 0x27

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x28

.field static final TRANSACTION_enableDataConnectivity:I = 0x29

.field static final TRANSACTION_enableLocationUpdates:I = 0x25

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x26

.field static final TRANSACTION_enableVideoCalling:I = 0x76

.field static final TRANSACTION_endCall:I = 0x6

.field static final TRANSACTION_endCallForSubscriber:I = 0x7

.field static final TRANSACTION_factoryReset:I = 0x83

.field static final TRANSACTION_getActiveFgCallState:I = 0xd2

.field static final TRANSACTION_getActivePhoneType:I = 0x33

.field static final TRANSACTION_getActivePhoneTypeForSubscriber:I = 0x34

.field static final TRANSACTION_getAllCellInfo:I = 0x48

.field static final TRANSACTION_getAtr:I = 0x94

.field static final TRANSACTION_getAtrUsingSlotId:I = 0x95

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x5a

.field static final TRANSACTION_getCallState:I = 0x2e

.field static final TRANSACTION_getCallStateForSubscriber:I = 0x2f

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x6a

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x67

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x35

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x36

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x37

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x38

.field static final TRANSACTION_getCdmaEriText:I = 0x39

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x3a

.field static final TRANSACTION_getCdmaMdn:I = 0x65

.field static final TRANSACTION_getCdmaMin:I = 0x66

.field static final TRANSACTION_getCellLocation:I = 0x2c

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x5e

.field static final TRANSACTION_getCurrentUATI:I = 0xa9

.field static final TRANSACTION_getDataActivity:I = 0x30

.field static final TRANSACTION_getDataEnabled:I = 0x62

.field static final TRANSACTION_getDataNetworkType:I = 0x41

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x42

.field static final TRANSACTION_getDataRoamingEnabled:I = 0x89

.field static final TRANSACTION_getDataRoamingEnabledUsingSubID:I = 0x8a

.field static final TRANSACTION_getDataServiceState:I = 0x92

.field static final TRANSACTION_getDataServiceStateUsingSubId:I = 0x93

.field static final TRANSACTION_getDataState:I = 0x31

.field static final TRANSACTION_getDataStateSimSlot:I = 0x32

.field static final TRANSACTION_getDefaultSim:I = 0x4a

.field static final TRANSACTION_getDeviceId:I = 0x81

.field static final TRANSACTION_getDisable2g:I = 0xd4

.field static final TRANSACTION_getEuimid:I = 0xce

.field static final TRANSACTION_getFeliCaUimLockStatus:I = 0x9b

.field static final TRANSACTION_getHandsetInfo:I = 0xab

.field static final TRANSACTION_getImei:I = 0x98

.field static final TRANSACTION_getIpAddressFromLinkProp:I = 0xa3

.field static final TRANSACTION_getLgt3GDataStatus:I = 0xad

.field static final TRANSACTION_getLgtOzStartPage:I = 0xae

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x6d

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x6c

.field static final TRANSACTION_getLocaleFromDefaultSim:I = 0x84

.field static final TRANSACTION_getLteCellInfo:I = 0xa8

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x46

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x47

.field static final TRANSACTION_getMeid:I = 0x97

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x6e

.field static final TRANSACTION_getMobileQualityInformation:I = 0xa2

.field static final TRANSACTION_getModemActivityInfo:I = 0x85

.field static final TRANSACTION_getMultiSimForegroundPhoneId:I = 0xc1

.field static final TRANSACTION_getMultiSimLastRejectIncomingCallPhoneId:I = 0xbf

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x2d

.field static final TRANSACTION_getNetworkType:I = 0x3f

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x40

.field static final TRANSACTION_getPcscfAddress:I = 0x63

.field static final TRANSACTION_getPhoneServiceState:I = 0xac

.field static final TRANSACTION_getPreferredNetworkType:I = 0x5b

.field static final TRANSACTION_getRadioAccessFamily:I = 0x75

.field static final TRANSACTION_getSdnAvailable:I = 0x9e

.field static final TRANSACTION_getSelectedApn:I = 0x8c

.field static final TRANSACTION_getServiceState:I = 0x90

.field static final TRANSACTION_getServiceStateUsingSubId:I = 0x91

.field static final TRANSACTION_getSimPinRetry:I = 0x99

.field static final TRANSACTION_getSimPinRetryForSubscriber:I = 0xb0

.field static final TRANSACTION_getSimPukRetry:I = 0x9d

.field static final TRANSACTION_getSimPukRetryForSubscriber:I = 0xb1

.field static final TRANSACTION_getSubIdForPhoneAccount:I = 0x82

.field static final TRANSACTION_getTetherApnRequired:I = 0x5c

.field static final TRANSACTION_getTimeInfo:I = 0xa6

.field static final TRANSACTION_getVoiceMessageCount:I = 0x3d

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x3e

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x43

.field static final TRANSACTION_getVoicePhoneServiceState:I = 0x8e

.field static final TRANSACTION_getVoicePhoneServiceStateUsingSubId:I = 0x8f

.field static final TRANSACTION_getWipiSysInfo:I = 0xa7

.field static final TRANSACTION_handlePinMmi:I = 0x1c

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x1d

.field static final TRANSACTION_hasIccCard:I = 0x44

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x45

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4d

.field static final TRANSACTION_iccCloseLogicalChannelUsingSlotId:I = 0x4e

.field static final TRANSACTION_iccExchangeSimIO:I = 0x53

.field static final TRANSACTION_iccExchangeSimIOUsingSlotId:I = 0x54

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x4b

.field static final TRANSACTION_iccOpenLogicalChannelUsingSlotId:I = 0x4c

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x51

.field static final TRANSACTION_iccTransmitApduBasicChannelUsingSlotId:I = 0x52

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4f

.field static final TRANSACTION_iccTransmitApduLogicalChannelUsingSlotId:I = 0x50

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x71

.field static final TRANSACTION_invokeOemRilRequestRawForSubscriber:I = 0xd3

.field static final TRANSACTION_isApnTypeAvailable:I = 0xcc

.field static final TRANSACTION_isApnTypeAvailableUsingSubId:I = 0xcd

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x2b

.field static final TRANSACTION_isDualBTConnection:I = 0xc6

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x7b

.field static final TRANSACTION_isIdle:I = 0xf

.field static final TRANSACTION_isIdleForSubscriber:I = 0x10

.field static final TRANSACTION_isImsCall:I = 0xc2

.field static final TRANSACTION_isImsRegistered:I = 0x7c

.field static final TRANSACTION_isOffhook:I = 0xb

.field static final TRANSACTION_isOffhookForSubscriber:I = 0xc

.field static final TRANSACTION_isRadioOn:I = 0x11

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0x12

.field static final TRANSACTION_isRinging:I = 0xe

.field static final TRANSACTION_isRingingForSubscriber:I = 0xd

.field static final TRANSACTION_isSimFDNEnabled:I = 0x87

.field static final TRANSACTION_isSimFDNEnabledForSubscriber:I = 0x88

.field static final TRANSACTION_isSimPinEnabled:I = 0x13

.field static final TRANSACTION_isTtyModeSupported:I = 0x7a

.field static final TRANSACTION_isVideoCall:I = 0x86

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x77

.field static final TRANSACTION_isVideoTelephonyAvailable:I = 0x7f

.field static final TRANSACTION_isVolteAvailable:I = 0x7e

.field static final TRANSACTION_isWifiCallingAvailable:I = 0x7d

.field static final TRANSACTION_isWorldPhone:I = 0x79

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x72

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x3b

.field static final TRANSACTION_notifyMissedCall:I = 0x1

.field static final TRANSACTION_notifyVoIPCallStateChangeIntoBT:I = 0xc5

.field static final TRANSACTION_nvReadItem:I = 0x56

.field static final TRANSACTION_nvResetConfig:I = 0x59

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x58

.field static final TRANSACTION_nvWriteItem:I = 0x57

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x55

.field static final TRANSACTION_sendRequestRawToRIL:I = 0xaa

.field static final TRANSACTION_sendRequestToRIL:I = 0xa1

.field static final TRANSACTION_setAirplaneMode:I = 0xd0

.field static final TRANSACTION_setBTUserWantsAudioOn:I = 0xc3

.field static final TRANSACTION_setBTUserWantsSwitchAudio:I = 0xc4

.field static final TRANSACTION_setCellInfoListRate:I = 0x49

.field static final TRANSACTION_setDataEnabled:I = 0x61

.field static final TRANSACTION_setDataRoamingEnabled:I = 0x8b

.field static final TRANSACTION_setDisable2g:I = 0xd5

.field static final TRANSACTION_setDmCmd:I = 0xaf

.field static final TRANSACTION_setEPSLOCI:I = 0xbd

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0xbc

.field static final TRANSACTION_setImsRegistrationState:I = 0x64

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x6b

.field static final TRANSACTION_setMultiSimForegroundPhoneId:I = 0xc0

.field static final TRANSACTION_setMultiSimLastRejectIncomingCallPhoneId:I = 0xbe

.field static final TRANSACTION_setNetworkBand:I = 0xcf

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x5d

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x5f

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x6f

.field static final TRANSACTION_setPreferredNetworkType:I = 0x60

.field static final TRANSACTION_setRadio:I = 0x20

.field static final TRANSACTION_setRadioCapability:I = 0x74

.field static final TRANSACTION_setRadioForSubscriber:I = 0x21

.field static final TRANSACTION_setRadioPower:I = 0x22

.field static final TRANSACTION_setRoamingOverride:I = 0x70

.field static final TRANSACTION_setSelectedApn:I = 0x8d

.field static final TRANSACTION_setTransmitPower:I = 0x96

.field static final TRANSACTION_setUimRemoteLockStatus:I = 0x9c

.field static final TRANSACTION_setVoiceMailNumber:I = 0x3c

.field static final TRANSACTION_shutdownMobileRadios:I = 0x73

.field static final TRANSACTION_silenceRinger:I = 0xa

.field static final TRANSACTION_sms_NSRI_decryptsms:I = 0xc8

.field static final TRANSACTION_sms_NSRI_decryptsmsintxside:I = 0xc9

.field static final TRANSACTION_sms_NSRI_encryptsms:I = 0xc7

.field static final TRANSACTION_startGlobalNetworkSearchTimer:I = 0xb5

.field static final TRANSACTION_startGlobalNoSvcChkTimer:I = 0xb7

.field static final TRANSACTION_startMobileQualityInformation:I = 0xa4

.field static final TRANSACTION_startVoiceLessOtaProvisioning:I = 0x80

.field static final TRANSACTION_stopGlobalNetworkSearchTimer:I = 0xb6

.field static final TRANSACTION_stopGlobalNoSvcChkTimer:I = 0xb8

.field static final TRANSACTION_stopMobileQualityInformation:I = 0xa5

.field static final TRANSACTION_supplyPerso:I = 0xb2

.field static final TRANSACTION_supplyPin:I = 0x14

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x15

.field static final TRANSACTION_supplyPinReportResult:I = 0x18

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x19

.field static final TRANSACTION_supplyPuk:I = 0x16

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x17

.field static final TRANSACTION_supplyPukReportResult:I = 0x1a

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x1b

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1e

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1f

.field static final TRANSACTION_transmitIccAPDU:I = 0x9a

.field static final TRANSACTION_updateServiceLocation:I = 0x23

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x24

.field static final TRANSACTION_validateMsisdn:I = 0xd1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_4

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_3
    return-object v0

    .line 34
    :cond_4
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_13

    .line 36
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_3

    .line 38
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 36
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
    .line 46
    sparse-switch p1, :sswitch_data_19b0

    .line 2297
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_7
    return v6

    .line 50
    :sswitch_8
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    const/4 v6, 0x1

    goto :goto_7

    .line 55
    :sswitch_11
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, "_arg3":J
    move-object/from16 v6, p0

    .line 64
    invoke-virtual/range {v6 .. v11}, notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v6, 0x1

    goto :goto_7

    .line 70
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":J
    :sswitch_32
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 73
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, dial(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v6, 0x1

    goto :goto_7

    .line 79
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_47
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 83
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 84
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, dialForSubscriber(ILjava/lang/String;)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v6, 0x1

    goto :goto_7

    .line 90
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_60
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 95
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, call(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v6, 0x1

    goto :goto_7

    .line 101
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_79
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 105
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 107
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 108
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 114
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_97
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, endCall()Z

    move-result v27

    .line 116
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v27, :cond_b0

    const/4 v6, 0x1

    :goto_a8
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 117
    :cond_b0
    const/4 v6, 0x0

    goto :goto_a8

    .line 122
    .end local v27    # "_result":Z
    :sswitch_b2
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 125
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, endCallForSubscriber(I)Z

    move-result v27

    .line 126
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v27, :cond_d1

    const/4 v6, 0x1

    :goto_c9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 127
    :cond_d1
    const/4 v6, 0x0

    goto :goto_c9

    .line 132
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_d3
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, answerRingingCall()V

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 139
    :sswitch_e3
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 142
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, answerRingingCallForSubscriber(I)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 148
    .end local v7    # "_arg0":I
    :sswitch_f9
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, silenceRinger()V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 155
    :sswitch_109
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, isOffhook(Ljava/lang/String;)Z

    move-result v27

    .line 159
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v27, :cond_128

    const/4 v6, 0x1

    :goto_120
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 160
    :cond_128
    const/4 v6, 0x0

    goto :goto_120

    .line 165
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_12a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 169
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 170
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, isOffhookForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 171
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v27, :cond_14d

    const/4 v6, 0x1

    :goto_145
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 172
    :cond_14d
    const/4 v6, 0x0

    goto :goto_145

    .line 177
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_14f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 181
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 182
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, isRingingForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 183
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v27, :cond_172

    const/4 v6, 0x1

    :goto_16a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 184
    :cond_172
    const/4 v6, 0x0

    goto :goto_16a

    .line 189
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_174
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, isRinging(Ljava/lang/String;)Z

    move-result v27

    .line 193
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v27, :cond_193

    const/4 v6, 0x1

    :goto_18b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 194
    :cond_193
    const/4 v6, 0x0

    goto :goto_18b

    .line 199
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_195
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 202
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, isIdle(Ljava/lang/String;)Z

    move-result v27

    .line 203
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v27, :cond_1b4

    const/4 v6, 0x1

    :goto_1ac
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 204
    :cond_1b4
    const/4 v6, 0x0

    goto :goto_1ac

    .line 209
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_1b6
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 213
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 214
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 215
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v27, :cond_1d9

    const/4 v6, 0x1

    :goto_1d1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 216
    :cond_1d9
    const/4 v6, 0x0

    goto :goto_1d1

    .line 221
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_1db
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, isRadioOn(Ljava/lang/String;)Z

    move-result v27

    .line 225
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v27, :cond_1fa

    const/4 v6, 0x1

    :goto_1f2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 226
    :cond_1fa
    const/4 v6, 0x0

    goto :goto_1f2

    .line 231
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_1fc
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 235
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 236
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 237
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v27, :cond_21f

    const/4 v6, 0x1

    :goto_217
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 238
    :cond_21f
    const/4 v6, 0x0

    goto :goto_217

    .line 243
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_221
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, isSimPinEnabled(Ljava/lang/String;)Z

    move-result v27

    .line 247
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v27, :cond_240

    const/4 v6, 0x1

    :goto_238
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 248
    :cond_240
    const/4 v6, 0x0

    goto :goto_238

    .line 253
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_242
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 256
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, supplyPin(Ljava/lang/String;)Z

    move-result v27

    .line 257
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v27, :cond_261

    const/4 v6, 0x1

    :goto_259
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 258
    :cond_261
    const/4 v6, 0x0

    goto :goto_259

    .line 263
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_263
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 267
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 268
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 269
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v27, :cond_286

    const/4 v6, 0x1

    :goto_27e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 270
    :cond_286
    const/4 v6, 0x0

    goto :goto_27e

    .line 275
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_288
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 280
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 281
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v27, :cond_2ab

    const/4 v6, 0x1

    :goto_2a3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 282
    :cond_2ab
    const/4 v6, 0x0

    goto :goto_2a3

    .line 287
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_2ad
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 291
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 293
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 294
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 295
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v27, :cond_2d4

    const/4 v6, 0x1

    :goto_2cc
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 296
    :cond_2d4
    const/4 v6, 0x0

    goto :goto_2cc

    .line 301
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_2d6
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v27

    .line 305
    .local v27, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 307
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 311
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":[I
    :sswitch_2f4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 315
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 316
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v27

    .line 317
    .restart local v27    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 319
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 323
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":[I
    :sswitch_316
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 328
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v27

    .line 329
    .restart local v27    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 331
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 335
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":[I
    :sswitch_338
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 339
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 341
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 342
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v27

    .line 343
    .restart local v27    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 345
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 349
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":[I
    :sswitch_35e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, handlePinMmi(Ljava/lang/String;)Z

    move-result v27

    .line 353
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v27, :cond_37d

    const/4 v6, 0x1

    :goto_375
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 354
    :cond_37d
    const/4 v6, 0x0

    goto :goto_375

    .line 359
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_37f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 363
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 364
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v27

    .line 365
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    if-eqz v27, :cond_3a2

    const/4 v6, 0x1

    :goto_39a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 366
    :cond_3a2
    const/4 v6, 0x0

    goto :goto_39a

    .line 371
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_3a4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, toggleRadioOnOff()V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 378
    :sswitch_3b4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 381
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, toggleRadioOnOffForSubscriber(I)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 387
    .end local v7    # "_arg0":I
    :sswitch_3ca
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3ec

    const/4 v7, 0x1

    .line 390
    .local v7, "_arg0":Z
    :goto_3d8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setRadio(Z)Z

    move-result v27

    .line 391
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v27, :cond_3ee

    const/4 v6, 0x1

    :goto_3e4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 389
    .end local v7    # "_arg0":Z
    .end local v27    # "_result":Z
    :cond_3ec
    const/4 v7, 0x0

    goto :goto_3d8

    .line 392
    .restart local v7    # "_arg0":Z
    .restart local v27    # "_result":Z
    :cond_3ee
    const/4 v6, 0x0

    goto :goto_3e4

    .line 397
    .end local v7    # "_arg0":Z
    .end local v27    # "_result":Z
    :sswitch_3f0
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 401
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_416

    const/4 v8, 0x1

    .line 402
    .local v8, "_arg1":Z
    :goto_402
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, setRadioForSubscriber(IZ)Z

    move-result v27

    .line 403
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    if-eqz v27, :cond_418

    const/4 v6, 0x1

    :goto_40e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 401
    .end local v8    # "_arg1":Z
    .end local v27    # "_result":Z
    :cond_416
    const/4 v8, 0x0

    goto :goto_402

    .line 404
    .restart local v8    # "_arg1":Z
    .restart local v27    # "_result":Z
    :cond_418
    const/4 v6, 0x0

    goto :goto_40e

    .line 409
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Z
    .end local v27    # "_result":Z
    :sswitch_41a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43c

    const/4 v7, 0x1

    .line 412
    .local v7, "_arg0":Z
    :goto_428
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setRadioPower(Z)Z

    move-result v27

    .line 413
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v27, :cond_43e

    const/4 v6, 0x1

    :goto_434
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 411
    .end local v7    # "_arg0":Z
    .end local v27    # "_result":Z
    :cond_43c
    const/4 v7, 0x0

    goto :goto_428

    .line 414
    .restart local v7    # "_arg0":Z
    .restart local v27    # "_result":Z
    :cond_43e
    const/4 v6, 0x0

    goto :goto_434

    .line 419
    .end local v7    # "_arg0":Z
    .end local v27    # "_result":Z
    :sswitch_440
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, updateServiceLocation()V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 426
    :sswitch_450
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 429
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, updateServiceLocationForSubscriber(I)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 435
    .end local v7    # "_arg0":I
    :sswitch_466
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, enableLocationUpdates()V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 442
    :sswitch_476
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 445
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, enableLocationUpdatesForSubscriber(I)V

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 451
    .end local v7    # "_arg0":I
    :sswitch_48c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p0 .. p0}, disableLocationUpdates()V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 458
    :sswitch_49c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 461
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, disableLocationUpdatesForSubscriber(I)V

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 467
    .end local v7    # "_arg0":I
    :sswitch_4b2
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p0 .. p0}, enableDataConnectivity()Z

    move-result v27

    .line 469
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    if-eqz v27, :cond_4cb

    const/4 v6, 0x1

    :goto_4c3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 470
    :cond_4cb
    const/4 v6, 0x0

    goto :goto_4c3

    .line 475
    .end local v27    # "_result":Z
    :sswitch_4cd
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p0 .. p0}, disableDataConnectivity()Z

    move-result v27

    .line 477
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    if-eqz v27, :cond_4e6

    const/4 v6, 0x1

    :goto_4de
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 478
    :cond_4e6
    const/4 v6, 0x0

    goto :goto_4de

    .line 483
    .end local v27    # "_result":Z
    :sswitch_4e8
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p0 .. p0}, isDataConnectivityPossible()Z

    move-result v27

    .line 485
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    if-eqz v27, :cond_501

    const/4 v6, 0x1

    :goto_4f9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 486
    :cond_501
    const/4 v6, 0x0

    goto :goto_4f9

    .line 491
    .end local v27    # "_result":Z
    :sswitch_503
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 494
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    .line 495
    .local v27, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    if-eqz v27, :cond_52a

    .line 497
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 503
    :goto_527
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 501
    :cond_52a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_527

    .line 507
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Landroid/os/Bundle;
    :sswitch_531
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 510
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v29

    .line 511
    .local v29, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 513
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 517
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v29    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_54f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p0 .. p0}, getCallState()I

    move-result v27

    .line 519
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 525
    .end local v27    # "_result":I
    :sswitch_567
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 528
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getCallStateForSubscriber(I)I

    move-result v27

    .line 529
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 535
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_585
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p0 .. p0}, getDataActivity()I

    move-result v27

    .line 537
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 543
    .end local v27    # "_result":I
    :sswitch_59d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p0 .. p0}, getDataState()I

    move-result v27

    .line 545
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 551
    .end local v27    # "_result":I
    :sswitch_5b5
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 554
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getDataStateSimSlot(I)I

    move-result v27

    .line 555
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 561
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_5d3
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, getActivePhoneType()I

    move-result v27

    .line 563
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 569
    .end local v27    # "_result":I
    :sswitch_5eb
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 572
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getActivePhoneTypeForSubscriber(I)I

    move-result v27

    .line 573
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 579
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_609
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 582
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getCdmaEriIconIndex(Ljava/lang/String;)I

    move-result v27

    .line 583
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 589
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_627
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 593
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 594
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 595
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 601
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_649
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getCdmaEriIconMode(Ljava/lang/String;)I

    move-result v27

    .line 605
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 611
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_667
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 615
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 616
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 617
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 623
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_689
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 626
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 627
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 633
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_6a7
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 637
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 638
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 639
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 645
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_6c9
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p0 .. p0}, needsOtaServiceProvisioning()Z

    move-result v27

    .line 647
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    if-eqz v27, :cond_6e2

    const/4 v6, 0x1

    :goto_6da
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 648
    :cond_6e2
    const/4 v6, 0x0

    goto :goto_6da

    .line 653
    .end local v27    # "_result":Z
    :sswitch_6e4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 657
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 659
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 660
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 661
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v27, :cond_70b

    const/4 v6, 0x1

    :goto_703
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 662
    :cond_70b
    const/4 v6, 0x0

    goto :goto_703

    .line 667
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_70d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p0 .. p0}, getVoiceMessageCount()I

    move-result v27

    .line 669
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 675
    .end local v27    # "_result":I
    :sswitch_725
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 678
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getVoiceMessageCountForSubscriber(I)I

    move-result v27

    .line 679
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 685
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_743
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p0 .. p0}, getNetworkType()I

    move-result v27

    .line 687
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 693
    .end local v27    # "_result":I
    :sswitch_75b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 697
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 698
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 699
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 705
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_77d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 708
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getDataNetworkType(Ljava/lang/String;)I

    move-result v27

    .line 709
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 715
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_79b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 719
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 720
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 721
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 723
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 727
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_7bd
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 731
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 732
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 733
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 739
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_7df
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p0 .. p0}, hasIccCard()Z

    move-result v27

    .line 741
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    if-eqz v27, :cond_7f8

    const/4 v6, 0x1

    :goto_7f0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 742
    :cond_7f8
    const/4 v6, 0x0

    goto :goto_7f0

    .line 747
    .end local v27    # "_result":Z
    :sswitch_7fa
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 750
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, hasIccCardUsingSlotId(I)Z

    move-result v27

    .line 751
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    if-eqz v27, :cond_819

    const/4 v6, 0x1

    :goto_811
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 752
    :cond_819
    const/4 v6, 0x0

    goto :goto_811

    .line 757
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_81b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 760
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getLteOnCdmaMode(Ljava/lang/String;)I

    move-result v27

    .line 761
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 767
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_839
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 771
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 772
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    move-result v27

    .line 773
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 779
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_85b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 782
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getAllCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v28

    .line 783
    .local v28, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 785
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 789
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_879
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 792
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setCellInfoListRate(I)V

    .line 793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 798
    .end local v7    # "_arg0":I
    :sswitch_88f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p0 .. p0}, getDefaultSim()I

    move-result v27

    .line 800
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 806
    .end local v27    # "_result":I
    :sswitch_8a7
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 809
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v27

    .line 810
    .local v27, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    if-eqz v27, :cond_8ce

    .line 812
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 818
    :goto_8cb
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 816
    :cond_8ce
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8cb

    .line 822
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_8d5
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 826
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 827
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, iccOpenLogicalChannelUsingSlotId(Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v27

    .line 828
    .restart local v27    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    if-eqz v27, :cond_900

    .line 830
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 836
    :goto_8fd
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 834
    :cond_900
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8fd

    .line 840
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v27    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_907
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 843
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, iccCloseLogicalChannel(I)Z

    move-result v27

    .line 844
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    if-eqz v27, :cond_926

    const/4 v6, 0x1

    :goto_91e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 845
    :cond_926
    const/4 v6, 0x0

    goto :goto_91e

    .line 850
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_928
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 854
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 855
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, iccCloseLogicalChannelUsingSlotId(II)Z

    move-result v27

    .line 856
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    if-eqz v27, :cond_94b

    const/4 v6, 0x1

    :goto_943
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 857
    :cond_94b
    const/4 v6, 0x0

    goto :goto_943

    .line 862
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_94d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 866
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 868
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 870
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 872
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 874
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 876
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg6":Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 877
    invoke-virtual/range {v12 .. v19}, iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 878
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 880
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 884
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_988
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 888
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 890
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 892
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 894
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 896
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 898
    .restart local v18    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 900
    .restart local v19    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "_arg7":I
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 901
    invoke-virtual/range {v12 .. v20}, iccTransmitApduLogicalChannelUsingSlotId(IIIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 902
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 904
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 908
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":Ljava/lang/String;
    .end local v20    # "_arg7":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_9c7
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 912
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 914
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 916
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 918
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 920
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, "_arg5":Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 921
    invoke-virtual/range {v12 .. v18}, iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 922
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 928
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_9fe
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 932
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 934
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 936
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 938
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 940
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 942
    .restart local v18    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg6":I
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 943
    invoke-virtual/range {v12 .. v19}, iccTransmitApduBasicChannelUsingSlotId(IIIIILjava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 944
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 946
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 950
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_a39
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 954
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 956
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 958
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 960
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 962
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg5":Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 963
    invoke-virtual/range {v12 .. v18}, iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object v27

    .line 964
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 966
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 970
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v27    # "_result":[B
    :sswitch_a70
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 974
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 976
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 978
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 980
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 982
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 984
    .restart local v18    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg6":I
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 985
    invoke-virtual/range {v12 .. v19}, iccExchangeSimIOUsingSlotId(IIIIILjava/lang/String;I)[B

    move-result-object v27

    .line 986
    .restart local v27    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 988
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 992
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":I
    .end local v27    # "_result":[B
    :sswitch_aab
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 995
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 996
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 998
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1002
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_ac9
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1005
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, nvReadItem(I)Ljava/lang/String;

    move-result-object v27

    .line 1006
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1008
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1012
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_ae7
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1016
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1017
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, nvWriteItem(ILjava/lang/String;)Z

    move-result v27

    .line 1018
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    if-eqz v27, :cond_b0a

    const/4 v6, 0x1

    :goto_b02
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1019
    :cond_b0a
    const/4 v6, 0x0

    goto :goto_b02

    .line 1024
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_b0c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1027
    .local v7, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, nvWriteCdmaPrl([B)Z

    move-result v27

    .line 1028
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    if-eqz v27, :cond_b2b

    const/4 v6, 0x1

    :goto_b23
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1029
    :cond_b2b
    const/4 v6, 0x0

    goto :goto_b23

    .line 1034
    .end local v7    # "_arg0":[B
    .end local v27    # "_result":Z
    :sswitch_b2d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1037
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, nvResetConfig(I)Z

    move-result v27

    .line 1038
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    if-eqz v27, :cond_b4c

    const/4 v6, 0x1

    :goto_b44
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1039
    :cond_b4c
    const/4 v6, 0x0

    goto :goto_b44

    .line 1044
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_b4e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1047
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getCalculatedPreferredNetworkType(Ljava/lang/String;)I

    move-result v27

    .line 1048
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1054
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_b6c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1057
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getPreferredNetworkType(I)I

    move-result v27

    .line 1058
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1064
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_b8a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual/range {p0 .. p0}, getTetherApnRequired()I

    move-result v27

    .line 1066
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1072
    .end local v27    # "_result":I
    :sswitch_ba2
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1075
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setNetworkSelectionModeAutomatic(I)V

    .line 1076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1081
    .end local v7    # "_arg0":I
    :sswitch_bb8
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1084
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v27

    .line 1085
    .local v27, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    if-eqz v27, :cond_bdf

    .line 1087
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/CellNetworkScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1093
    :goto_bdc
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1091
    :cond_bdf
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_bdc

    .line 1097
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :sswitch_be6
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1101
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c1c

    .line 1102
    sget-object v6, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/OperatorInfo;

    .line 1108
    .local v8, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    :goto_c01
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c1e

    const/4 v9, 0x1

    .line 1109
    .local v9, "_arg2":Z
    :goto_c08
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v27

    .line 1110
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    if-eqz v27, :cond_c20

    const/4 v6, 0x1

    :goto_c14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1105
    .end local v8    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    .end local v9    # "_arg2":Z
    .end local v27    # "_result":Z
    :cond_c1c
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_c01

    .line 1108
    :cond_c1e
    const/4 v9, 0x0

    goto :goto_c08

    .line 1111
    .restart local v9    # "_arg2":Z
    .restart local v27    # "_result":Z
    :cond_c20
    const/4 v6, 0x0

    goto :goto_c14

    .line 1116
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    .end local v9    # "_arg2":Z
    .end local v27    # "_result":Z
    :sswitch_c22
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1120
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1121
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, setPreferredNetworkType(II)Z

    move-result v27

    .line 1122
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    if-eqz v27, :cond_c45

    const/4 v6, 0x1

    :goto_c3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1123
    :cond_c45
    const/4 v6, 0x0

    goto :goto_c3d

    .line 1128
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_c47
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1132
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c64

    const/4 v8, 0x1

    .line 1133
    .local v8, "_arg1":Z
    :goto_c59
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, setDataEnabled(IZ)V

    .line 1134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1132
    .end local v8    # "_arg1":Z
    :cond_c64
    const/4 v8, 0x0

    goto :goto_c59

    .line 1139
    .end local v7    # "_arg0":I
    :sswitch_c66
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1142
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getDataEnabled(I)Z

    move-result v27

    .line 1143
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    if-eqz v27, :cond_c85

    const/4 v6, 0x1

    :goto_c7d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1144
    :cond_c85
    const/4 v6, 0x0

    goto :goto_c7d

    .line 1149
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_c87
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1153
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1154
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1155
    .local v27, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1157
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1161
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":[Ljava/lang/String;
    :sswitch_ca9
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_cc2

    const/4 v7, 0x1

    .line 1164
    .local v7, "_arg0":Z
    :goto_cb7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setImsRegistrationState(Z)V

    .line 1165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1163
    .end local v7    # "_arg0":Z
    :cond_cc2
    const/4 v7, 0x0

    goto :goto_cb7

    .line 1170
    :sswitch_cc4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1173
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getCdmaMdn(I)Ljava/lang/String;

    move-result-object v27

    .line 1174
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1176
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1180
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_ce2
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1183
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getCdmaMin(I)Ljava/lang/String;

    move-result-object v27

    .line 1184
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1186
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1190
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_d00
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p0 .. p0}, getCarrierPrivilegeStatus()I

    move-result v27

    .line 1192
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1198
    .end local v27    # "_result":I
    :sswitch_d18
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1201
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v27

    .line 1202
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1208
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_d36
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1211
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v27

    .line 1212
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1218
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_d54
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d82

    .line 1221
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1227
    .local v7, "_arg0":Landroid/content/Intent;
    :goto_d6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1228
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v30

    .line 1229
    .local v30, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1231
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1224
    .end local v7    # "_arg0":Landroid/content/Intent;
    .end local v8    # "_arg1":I
    .end local v30    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d82
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/content/Intent;
    goto :goto_d6b

    .line 1235
    .end local v7    # "_arg0":Landroid/content/Intent;
    :sswitch_d84
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1239
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1241
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1242
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v27

    .line 1243
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    if-eqz v27, :cond_dab

    const/4 v6, 0x1

    :goto_da3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1244
    :cond_dab
    const/4 v6, 0x0

    goto :goto_da3

    .line 1249
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_dad
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1253
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1254
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1255
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1257
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1261
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_dcf
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1265
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1266
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1267
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1269
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1273
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_df1
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1276
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1277
    .local v27, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1279
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1283
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":[Ljava/lang/String;
    :sswitch_e0f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1286
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v27

    .line 1287
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    if-eqz v27, :cond_e2e

    const/4 v6, 0x1

    :goto_e26
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1289
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1288
    :cond_e2e
    const/4 v6, 0x0

    goto :goto_e26

    .line 1293
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_e30
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 1297
    .local v21, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 1299
    .local v22, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 1301
    .local v24, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v26

    .line 1302
    .local v26, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v27

    .line 1303
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1304
    if-eqz v27, :cond_e63

    const/4 v6, 0x1

    :goto_e5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1305
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1304
    :cond_e63
    const/4 v6, 0x0

    goto :goto_e5b

    .line 1309
    .end local v21    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "_result":Z
    :sswitch_e65
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1313
    .local v7, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1314
    .local v23, "_arg1_length":I
    if-gez v23, :cond_e8f

    .line 1315
    const/4 v8, 0x0

    .line 1320
    .local v8, "_arg1":[B
    :goto_e77
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, invokeOemRilRequestRaw([B[B)I

    move-result v27

    .line 1321
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1323
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1324
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1318
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":I
    :cond_e8f
    move/from16 v0, v23

    new-array v8, v0, [B

    .restart local v8    # "_arg1":[B
    goto :goto_e77

    .line 1328
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":[B
    .end local v23    # "_arg1_length":I
    :sswitch_e94
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1329
    invoke-virtual/range {p0 .. p0}, needMobileRadioShutdown()Z

    move-result v27

    .line 1330
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    if-eqz v27, :cond_ead

    const/4 v6, 0x1

    :goto_ea5
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1332
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1331
    :cond_ead
    const/4 v6, 0x0

    goto :goto_ea5

    .line 1336
    .end local v27    # "_result":Z
    :sswitch_eaf
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p0 .. p0}, shutdownMobileRadios()V

    .line 1338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1339
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1343
    :sswitch_ebf
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1345
    sget-object v6, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/RadioAccessFamily;

    .line 1346
    .local v7, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    .line 1347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1352
    .end local v7    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    :sswitch_edb
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1356
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1357
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, getRadioAccessFamily(ILjava/lang/String;)I

    move-result v27

    .line 1358
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1359
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1364
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":I
    :sswitch_efd
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f16

    const/4 v7, 0x1

    .line 1367
    .local v7, "_arg0":Z
    :goto_f0b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, enableVideoCalling(Z)V

    .line 1368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1366
    .end local v7    # "_arg0":Z
    :cond_f16
    const/4 v7, 0x0

    goto :goto_f0b

    .line 1373
    :sswitch_f18
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1376
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, isVideoCallingEnabled(Ljava/lang/String;)Z

    move-result v27

    .line 1377
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1378
    if-eqz v27, :cond_f37

    const/4 v6, 0x1

    :goto_f2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1379
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1378
    :cond_f37
    const/4 v6, 0x0

    goto :goto_f2f

    .line 1383
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_f39
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p0 .. p0}, canChangeDtmfToneLength()Z

    move-result v27

    .line 1385
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    if-eqz v27, :cond_f52

    const/4 v6, 0x1

    :goto_f4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1387
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1386
    :cond_f52
    const/4 v6, 0x0

    goto :goto_f4a

    .line 1391
    .end local v27    # "_result":Z
    :sswitch_f54
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual/range {p0 .. p0}, isWorldPhone()Z

    move-result v27

    .line 1393
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    if-eqz v27, :cond_f6d

    const/4 v6, 0x1

    :goto_f65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1394
    :cond_f6d
    const/4 v6, 0x0

    goto :goto_f65

    .line 1399
    .end local v27    # "_result":Z
    :sswitch_f6f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1400
    invoke-virtual/range {p0 .. p0}, isTtyModeSupported()Z

    move-result v27

    .line 1401
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    if-eqz v27, :cond_f88

    const/4 v6, 0x1

    :goto_f80
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1402
    :cond_f88
    const/4 v6, 0x0

    goto :goto_f80

    .line 1407
    .end local v27    # "_result":Z
    :sswitch_f8a
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p0 .. p0}, isHearingAidCompatibilitySupported()Z

    move-result v27

    .line 1409
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    if-eqz v27, :cond_fa3

    const/4 v6, 0x1

    :goto_f9b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1411
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1410
    :cond_fa3
    const/4 v6, 0x0

    goto :goto_f9b

    .line 1415
    .end local v27    # "_result":Z
    :sswitch_fa5
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual/range {p0 .. p0}, isImsRegistered()Z

    move-result v27

    .line 1417
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    if-eqz v27, :cond_fbe

    const/4 v6, 0x1

    :goto_fb6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1419
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1418
    :cond_fbe
    const/4 v6, 0x0

    goto :goto_fb6

    .line 1423
    .end local v27    # "_result":Z
    :sswitch_fc0
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p0 .. p0}, isWifiCallingAvailable()Z

    move-result v27

    .line 1425
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    if-eqz v27, :cond_fd9

    const/4 v6, 0x1

    :goto_fd1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1426
    :cond_fd9
    const/4 v6, 0x0

    goto :goto_fd1

    .line 1431
    .end local v27    # "_result":Z
    :sswitch_fdb
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual/range {p0 .. p0}, isVolteAvailable()Z

    move-result v27

    .line 1433
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    if-eqz v27, :cond_ff4

    const/4 v6, 0x1

    :goto_fec
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1435
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1434
    :cond_ff4
    const/4 v6, 0x0

    goto :goto_fec

    .line 1439
    .end local v27    # "_result":Z
    :sswitch_ff6
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p0 .. p0}, isVideoTelephonyAvailable()Z

    move-result v27

    .line 1441
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    if-eqz v27, :cond_100f

    const/4 v6, 0x1

    :goto_1007
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1442
    :cond_100f
    const/4 v6, 0x0

    goto :goto_1007

    .line 1447
    .end local v27    # "_result":Z
    :sswitch_1011
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1451
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1452
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, startVoiceLessOtaProvisioning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1458
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_102b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1461
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1462
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1464
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1468
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_1049
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1073

    .line 1471
    sget-object v6, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/PhoneAccount;

    .line 1476
    .local v7, "_arg0":Landroid/telecom/PhoneAccount;
    :goto_1060
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v27

    .line 1477
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1479
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1474
    .end local v7    # "_arg0":Landroid/telecom/PhoneAccount;
    .end local v27    # "_result":I
    :cond_1073
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_1060

    .line 1483
    .end local v7    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_1075
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1486
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, factoryReset(I)V

    .line 1487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1488
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1492
    .end local v7    # "_arg0":I
    :sswitch_108b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p0 .. p0}, getLocaleFromDefaultSim()Ljava/lang/String;

    move-result-object v27

    .line 1494
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1495
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1496
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1500
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_10a3
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual/range {p0 .. p0}, getModemActivityInfo()Landroid/telephony/ModemActivityInfo;

    move-result-object v27

    .line 1502
    .local v27, "_result":Landroid/telephony/ModemActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1503
    if-eqz v27, :cond_10c4

    .line 1504
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1505
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/telephony/ModemActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1510
    :goto_10c1
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1508
    :cond_10c4
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10c1

    .line 1514
    .end local v27    # "_result":Landroid/telephony/ModemActivityInfo;
    :sswitch_10cb
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual/range {p0 .. p0}, isVideoCall()Z

    move-result v27

    .line 1516
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    if-eqz v27, :cond_10e4

    const/4 v6, 0x1

    :goto_10dc
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1517
    :cond_10e4
    const/4 v6, 0x0

    goto :goto_10dc

    .line 1522
    .end local v27    # "_result":Z
    :sswitch_10e6
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1523
    invoke-virtual/range {p0 .. p0}, isSimFDNEnabled()Z

    move-result v27

    .line 1524
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    if-eqz v27, :cond_10ff

    const/4 v6, 0x1

    :goto_10f7
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1526
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1525
    :cond_10ff
    const/4 v6, 0x0

    goto :goto_10f7

    .line 1530
    .end local v27    # "_result":Z
    :sswitch_1101
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1533
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, isSimFDNEnabledForSubscriber(I)Z

    move-result v27

    .line 1534
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    if-eqz v27, :cond_1120

    const/4 v6, 0x1

    :goto_1118
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1536
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1535
    :cond_1120
    const/4 v6, 0x0

    goto :goto_1118

    .line 1540
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_1122
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    invoke-virtual/range {p0 .. p0}, getDataRoamingEnabled()Z

    move-result v27

    .line 1542
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    if-eqz v27, :cond_113b

    const/4 v6, 0x1

    :goto_1133
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1543
    :cond_113b
    const/4 v6, 0x0

    goto :goto_1133

    .line 1548
    .end local v27    # "_result":Z
    :sswitch_113d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1551
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getDataRoamingEnabledUsingSubID(I)Z

    move-result v27

    .line 1552
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    if-eqz v27, :cond_115c

    const/4 v6, 0x1

    :goto_1154
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1553
    :cond_115c
    const/4 v6, 0x0

    goto :goto_1154

    .line 1558
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_115e
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1177

    const/4 v7, 0x1

    .line 1561
    .local v7, "_arg0":Z
    :goto_116c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setDataRoamingEnabled(Z)V

    .line 1562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1560
    .end local v7    # "_arg0":Z
    :cond_1177
    const/4 v7, 0x0

    goto :goto_116c

    .line 1567
    :sswitch_1179
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1568
    invoke-virtual/range {p0 .. p0}, getSelectedApn()Ljava/lang/String;

    move-result-object v27

    .line 1569
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1571
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1575
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_1191
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p0 .. p0}, setSelectedApn()V

    .line 1577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1582
    :sswitch_11a1
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    invoke-virtual/range {p0 .. p0}, getVoicePhoneServiceState()Landroid/telephony/ServiceState;

    move-result-object v27

    .line 1584
    .local v27, "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1585
    if-eqz v27, :cond_11c2

    .line 1586
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1587
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1592
    :goto_11bf
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1590
    :cond_11c2
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11bf

    .line 1596
    .end local v27    # "_result":Landroid/telephony/ServiceState;
    :sswitch_11c9
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1599
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getVoicePhoneServiceStateUsingSubId(I)Landroid/telephony/ServiceState;

    move-result-object v27

    .line 1600
    .restart local v27    # "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    if-eqz v27, :cond_11f0

    .line 1602
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1603
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1608
    :goto_11ed
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1606
    :cond_11f0
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11ed

    .line 1612
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Landroid/telephony/ServiceState;
    :sswitch_11f7
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual/range {p0 .. p0}, getServiceState()I

    move-result v27

    .line 1614
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1615
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1620
    .end local v27    # "_result":I
    :sswitch_120f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1623
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getServiceStateUsingSubId(I)I

    move-result v27

    .line 1624
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1625
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1630
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_122d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    invoke-virtual/range {p0 .. p0}, getDataServiceState()I

    move-result v27

    .line 1632
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1638
    .end local v27    # "_result":I
    :sswitch_1245
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1641
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getDataServiceStateUsingSubId(I)I

    move-result v27

    .line 1642
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1648
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_1263
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    invoke-virtual/range {p0 .. p0}, getAtr()[B

    move-result-object v27

    .line 1650
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1652
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1656
    .end local v27    # "_result":[B
    :sswitch_127b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1659
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getAtrUsingSlotId(I)[B

    move-result-object v27

    .line 1660
    .restart local v27    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1661
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1662
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1666
    .end local v7    # "_arg0":I
    .end local v27    # "_result":[B
    :sswitch_1299
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1669
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setTransmitPower(I)Z

    move-result v27

    .line 1670
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    if-eqz v27, :cond_12b8

    const/4 v6, 0x1

    :goto_12b0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1671
    :cond_12b8
    const/4 v6, 0x0

    goto :goto_12b0

    .line 1676
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_12ba
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {p0 .. p0}, getMeid()Ljava/lang/String;

    move-result-object v27

    .line 1678
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1680
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1684
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_12d2
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1685
    invoke-virtual/range {p0 .. p0}, getImei()Ljava/lang/String;

    move-result-object v27

    .line 1686
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1688
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1692
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_12ea
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual/range {p0 .. p0}, getSimPinRetry()I

    move-result v27

    .line 1694
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1696
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1700
    .end local v27    # "_result":I
    :sswitch_1302
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1704
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1706
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1708
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1710
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1712
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg5":Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 1713
    invoke-virtual/range {v12 .. v18}, transmitIccAPDU(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1714
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1715
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1716
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1720
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_1339
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1723
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getFeliCaUimLockStatus(I)I

    move-result v27

    .line 1724
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1725
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1730
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_1357
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1733
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setUimRemoteLockStatus(I)I

    move-result v27

    .line 1734
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1735
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1740
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_1375
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1741
    invoke-virtual/range {p0 .. p0}, getSimPukRetry()I

    move-result v27

    .line 1742
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1744
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1748
    .end local v27    # "_result":I
    :sswitch_138d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1749
    invoke-virtual/range {p0 .. p0}, getSdnAvailable()Z

    move-result v27

    .line 1750
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1751
    if-eqz v27, :cond_13a6

    const/4 v6, 0x1

    :goto_139e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1752
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1751
    :cond_13a6
    const/4 v6, 0x0

    goto :goto_139e

    .line 1756
    .end local v27    # "_result":Z
    :sswitch_13a8
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1757
    invoke-virtual/range {p0 .. p0}, IsInternationalRoaming()Z

    move-result v27

    .line 1758
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1759
    if-eqz v27, :cond_13c1

    const/4 v6, 0x1

    :goto_13b9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1759
    :cond_13c1
    const/4 v6, 0x0

    goto :goto_13b9

    .line 1764
    .end local v27    # "_result":Z
    :sswitch_13c3
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual/range {p0 .. p0}, IsDomesticRoaming()Z

    move-result v27

    .line 1766
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    if-eqz v27, :cond_13dc

    const/4 v6, 0x1

    :goto_13d4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1767
    :cond_13dc
    const/4 v6, 0x0

    goto :goto_13d4

    .line 1772
    .end local v27    # "_result":Z
    :sswitch_13de
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1776
    .local v7, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 1778
    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1779
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, sendRequestToRIL([B[BI)I

    move-result v27

    .line 1780
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1781
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1782
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1783
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1787
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":I
    .end local v27    # "_result":I
    :sswitch_1409
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1788
    invoke-virtual/range {p0 .. p0}, getMobileQualityInformation()Ljava/lang/String;

    move-result-object v27

    .line 1789
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1790
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1791
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1795
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_1421
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1798
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1799
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1800
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1801
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1805
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_143f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1806
    invoke-virtual/range {p0 .. p0}, startMobileQualityInformation()V

    .line 1807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1812
    :sswitch_144f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1813
    invoke-virtual/range {p0 .. p0}, stopMobileQualityInformation()V

    .line 1814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1815
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1819
    :sswitch_145f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1820
    invoke-virtual/range {p0 .. p0}, getTimeInfo()Ljava/lang/String;

    move-result-object v27

    .line 1821
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1822
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1823
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1827
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_1477
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual/range {p0 .. p0}, getWipiSysInfo()Ljava/lang/String;

    move-result-object v27

    .line 1829
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1830
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1831
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1835
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_148f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1836
    invoke-virtual/range {p0 .. p0}, getLteCellInfo()Ljava/lang/String;

    move-result-object v27

    .line 1837
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1839
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1843
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_14a7
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual/range {p0 .. p0}, getCurrentUATI()[B

    move-result-object v27

    .line 1845
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1847
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1851
    .end local v27    # "_result":[B
    :sswitch_14bf
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1855
    .local v7, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14ed

    .line 1856
    sget-object v6, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    .line 1861
    .local v8, "_arg1":Landroid/os/Message;
    :goto_14da
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, sendRequestRawToRIL([BLandroid/os/Message;)I

    move-result v27

    .line 1862
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1859
    .end local v8    # "_arg1":Landroid/os/Message;
    .end local v27    # "_result":I
    :cond_14ed
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Message;
    goto :goto_14da

    .line 1868
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":Landroid/os/Message;
    :sswitch_14ef
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1871
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1872
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1873
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1874
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1878
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_150d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    invoke-virtual/range {p0 .. p0}, getPhoneServiceState()I

    move-result v27

    .line 1880
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1881
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1882
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1886
    .end local v27    # "_result":I
    :sswitch_1525
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1889
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getLgt3GDataStatus(I)Ljava/lang/String;

    move-result-object v27

    .line 1890
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1891
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1892
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1896
    .end local v7    # "_arg0":I
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_1543
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p0 .. p0}, getLgtOzStartPage()Ljava/lang/String;

    move-result-object v27

    .line 1898
    .restart local v27    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1899
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1900
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1904
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_155b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1908
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 1909
    .local v8, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, setDmCmd(I[B)[I

    move-result-object v27

    .line 1910
    .local v27, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1911
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1912
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1916
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":[I
    :sswitch_157d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1919
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getSimPinRetryForSubscriber(I)I

    move-result v27

    .line 1920
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1922
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1926
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_159b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1929
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getSimPukRetryForSubscriber(I)I

    move-result v27

    .line 1930
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1931
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1932
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1936
    .end local v7    # "_arg0":I
    .end local v27    # "_result":I
    :sswitch_15b9
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1939
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, supplyPerso(Ljava/lang/String;)Z

    move-result v27

    .line 1940
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1941
    if-eqz v27, :cond_15d8

    const/4 v6, 0x1

    :goto_15d0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1942
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1941
    :cond_15d8
    const/4 v6, 0x0

    goto :goto_15d0

    .line 1946
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_15da
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1949
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, SimSlotOnOff(I)V

    .line 1950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1951
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1955
    .end local v7    # "_arg0":I
    :sswitch_15f0
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1609

    const/4 v7, 0x1

    .line 1958
    .local v7, "_arg0":Z
    :goto_15fe
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, SimSlotActivation(Z)V

    .line 1959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1960
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1957
    .end local v7    # "_arg0":Z
    :cond_1609
    const/4 v7, 0x0

    goto :goto_15fe

    .line 1964
    :sswitch_160b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    invoke-virtual/range {p0 .. p0}, startGlobalNetworkSearchTimer()V

    .line 1966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1971
    :sswitch_161b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual/range {p0 .. p0}, stopGlobalNetworkSearchTimer()V

    .line 1973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1974
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1978
    :sswitch_162b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1979
    invoke-virtual/range {p0 .. p0}, startGlobalNoSvcChkTimer()V

    .line 1980
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1981
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1985
    :sswitch_163b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1986
    invoke-virtual/range {p0 .. p0}, stopGlobalNoSvcChkTimer()V

    .line 1987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1988
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1992
    :sswitch_164b
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 1996
    .local v7, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 1997
    .restart local v8    # "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, calculateAkaResponse([B[B)Ljava/lang/String;

    move-result-object v27

    .line 1998
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1999
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2000
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2004
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_166d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 2008
    .restart local v7    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 2009
    .restart local v8    # "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v27

    .line 2010
    .local v27, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2011
    if-eqz v27, :cond_1698

    .line 2012
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2013
    const/4 v6, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2018
    :goto_1695
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2016
    :cond_1698
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1695

    .line 2022
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":Landroid/os/Bundle;
    :sswitch_169f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 2025
    .restart local v7    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, calculateNafExternalKey([B)[B

    move-result-object v27

    .line 2026
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2027
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2028
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2032
    .end local v7    # "_arg0":[B
    .end local v27    # "_result":[B
    :sswitch_16bd
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 2036
    .restart local v7    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2038
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 2039
    .local v9, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 2040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2041
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2045
    .end local v7    # "_arg0":[B
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_16db
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 2048
    .restart local v7    # "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setEPSLOCI([B)V

    .line 2049
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2050
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2054
    .end local v7    # "_arg0":[B
    :sswitch_16f1
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2057
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setMultiSimLastRejectIncomingCallPhoneId(I)V

    .line 2058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2059
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2063
    .end local v7    # "_arg0":I
    :sswitch_1707
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2064
    invoke-virtual/range {p0 .. p0}, getMultiSimLastRejectIncomingCallPhoneId()I

    move-result v27

    .line 2065
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2066
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2067
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2071
    .end local v27    # "_result":I
    :sswitch_171f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2074
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setMultiSimForegroundPhoneId(I)V

    .line 2075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2076
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2080
    .end local v7    # "_arg0":I
    :sswitch_1735
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2081
    invoke-virtual/range {p0 .. p0}, getMultiSimForegroundPhoneId()I

    move-result v27

    .line 2082
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2083
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2084
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2088
    .end local v27    # "_result":I
    :sswitch_174d
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2089
    invoke-virtual/range {p0 .. p0}, isImsCall()Z

    move-result v27

    .line 2090
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2091
    if-eqz v27, :cond_1766

    const/4 v6, 0x1

    :goto_175e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2091
    :cond_1766
    const/4 v6, 0x0

    goto :goto_175e

    .line 2096
    .end local v27    # "_result":Z
    :sswitch_1768
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1781

    const/4 v7, 0x1

    .line 2099
    .local v7, "_arg0":Z
    :goto_1776
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setBTUserWantsAudioOn(Z)V

    .line 2100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2101
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2098
    .end local v7    # "_arg0":Z
    :cond_1781
    const/4 v7, 0x0

    goto :goto_1776

    .line 2105
    :sswitch_1783
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    invoke-virtual/range {p0 .. p0}, setBTUserWantsSwitchAudio()V

    .line 2107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2108
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2112
    :sswitch_1793
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2113
    invoke-virtual/range {p0 .. p0}, notifyVoIPCallStateChangeIntoBT()V

    .line 2114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2119
    :sswitch_17a3
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2120
    invoke-virtual/range {p0 .. p0}, isDualBTConnection()Z

    move-result v27

    .line 2121
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2122
    if-eqz v27, :cond_17bc

    const/4 v6, 0x1

    :goto_17b4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2123
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2122
    :cond_17bc
    const/4 v6, 0x0

    goto :goto_17b4

    .line 2127
    .end local v27    # "_result":Z
    :sswitch_17be
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2131
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2133
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 2134
    .local v9, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, sms_NSRI_encryptsms(ILjava/lang/String;[B)[B

    move-result-object v27

    .line 2135
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2136
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2137
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2141
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":[B
    .end local v27    # "_result":[B
    :sswitch_17e4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2145
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 2146
    .local v8, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, sms_NSRI_decryptsms(I[B)[B

    move-result-object v27

    .line 2147
    .restart local v27    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2148
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2149
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2153
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":[B
    :sswitch_1806
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2157
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2159
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 2160
    .restart local v9    # "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B

    move-result-object v27

    .line 2161
    .restart local v27    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2162
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2163
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2167
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":[B
    .end local v27    # "_result":[B
    :sswitch_182c
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2168
    invoke-virtual/range {p0 .. p0}, checkNSRIUSIMstate_int()I

    move-result v27

    .line 2169
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2170
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2171
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2175
    .end local v27    # "_result":I
    :sswitch_1844
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2179
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 2180
    .local v8, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, NSRI_requestProc(I[B)[B

    move-result-object v27

    .line 2181
    .local v27, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2182
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2183
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2187
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v27    # "_result":[B
    :sswitch_1866
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2190
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v27

    .line 2191
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2192
    if-eqz v27, :cond_1885

    const/4 v6, 0x1

    :goto_187d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2193
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2192
    :cond_1885
    const/4 v6, 0x0

    goto :goto_187d

    .line 2197
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_1887
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2201
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2202
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, isApnTypeAvailableUsingSubId(Ljava/lang/String;I)Z

    move-result v27

    .line 2203
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2204
    if-eqz v27, :cond_18aa

    const/4 v6, 0x1

    :goto_18a2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2205
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2204
    :cond_18aa
    const/4 v6, 0x0

    goto :goto_18a2

    .line 2209
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_18ac
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2210
    invoke-virtual/range {p0 .. p0}, getEuimid()Ljava/lang/String;

    move-result-object v27

    .line 2211
    .local v27, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2212
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2213
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2217
    .end local v27    # "_result":Ljava/lang/String;
    :sswitch_18c4
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2221
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2223
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2224
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v27

    .line 2225
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2226
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2227
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2231
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v27    # "_result":I
    :sswitch_18ea
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2235
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_190f

    const/4 v8, 0x1

    .line 2236
    .local v8, "_arg1":Z
    :goto_18fc
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, setAirplaneMode(Ljava/lang/String;Z)I

    move-result v27

    .line 2237
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2238
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2239
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2235
    .end local v8    # "_arg1":Z
    .end local v27    # "_result":I
    :cond_190f
    const/4 v8, 0x0

    goto :goto_18fc

    .line 2243
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_1911
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    invoke-virtual/range {p0 .. p0}, validateMsisdn()I

    move-result v27

    .line 2245
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2246
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2247
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2251
    .end local v27    # "_result":I
    :sswitch_1929
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2252
    invoke-virtual/range {p0 .. p0}, getActiveFgCallState()Z

    move-result v27

    .line 2253
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2254
    if-eqz v27, :cond_1942

    const/4 v6, 0x1

    :goto_193a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2255
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2254
    :cond_1942
    const/4 v6, 0x0

    goto :goto_193a

    .line 2259
    .end local v27    # "_result":Z
    :sswitch_1944
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2263
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 2265
    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 2266
    .local v25, "_arg2_length":I
    if-gez v25, :cond_1972

    .line 2267
    const/4 v9, 0x0

    .line 2272
    .local v9, "_arg2":[B
    :goto_195a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v27

    .line 2273
    .local v27, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2274
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2275
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2276
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2270
    .end local v9    # "_arg2":[B
    .end local v27    # "_result":I
    :cond_1972
    move/from16 v0, v25

    new-array v9, v0, [B

    .restart local v9    # "_arg2":[B
    goto :goto_195a

    .line 2280
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":[B
    .end local v25    # "_arg2_length":I
    :sswitch_1977
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2281
    invoke-virtual/range {p0 .. p0}, getDisable2g()I

    move-result v27

    .line 2282
    .restart local v27    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2283
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2284
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2288
    .end local v27    # "_result":I
    :sswitch_198f
    const-string v6, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2291
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setDisable2g(I)Z

    move-result v27

    .line 2292
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2293
    if-eqz v27, :cond_19ae

    const/4 v6, 0x1

    :goto_19a6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2294
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 2293
    :cond_19ae
    const/4 v6, 0x0

    goto :goto_19a6

    .line 46
    :sswitch_data_19b0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_32
        0x3 -> :sswitch_47
        0x4 -> :sswitch_60
        0x5 -> :sswitch_79
        0x6 -> :sswitch_97
        0x7 -> :sswitch_b2
        0x8 -> :sswitch_d3
        0x9 -> :sswitch_e3
        0xa -> :sswitch_f9
        0xb -> :sswitch_109
        0xc -> :sswitch_12a
        0xd -> :sswitch_14f
        0xe -> :sswitch_174
        0xf -> :sswitch_195
        0x10 -> :sswitch_1b6
        0x11 -> :sswitch_1db
        0x12 -> :sswitch_1fc
        0x13 -> :sswitch_221
        0x14 -> :sswitch_242
        0x15 -> :sswitch_263
        0x16 -> :sswitch_288
        0x17 -> :sswitch_2ad
        0x18 -> :sswitch_2d6
        0x19 -> :sswitch_2f4
        0x1a -> :sswitch_316
        0x1b -> :sswitch_338
        0x1c -> :sswitch_35e
        0x1d -> :sswitch_37f
        0x1e -> :sswitch_3a4
        0x1f -> :sswitch_3b4
        0x20 -> :sswitch_3ca
        0x21 -> :sswitch_3f0
        0x22 -> :sswitch_41a
        0x23 -> :sswitch_440
        0x24 -> :sswitch_450
        0x25 -> :sswitch_466
        0x26 -> :sswitch_476
        0x27 -> :sswitch_48c
        0x28 -> :sswitch_49c
        0x29 -> :sswitch_4b2
        0x2a -> :sswitch_4cd
        0x2b -> :sswitch_4e8
        0x2c -> :sswitch_503
        0x2d -> :sswitch_531
        0x2e -> :sswitch_54f
        0x2f -> :sswitch_567
        0x30 -> :sswitch_585
        0x31 -> :sswitch_59d
        0x32 -> :sswitch_5b5
        0x33 -> :sswitch_5d3
        0x34 -> :sswitch_5eb
        0x35 -> :sswitch_609
        0x36 -> :sswitch_627
        0x37 -> :sswitch_649
        0x38 -> :sswitch_667
        0x39 -> :sswitch_689
        0x3a -> :sswitch_6a7
        0x3b -> :sswitch_6c9
        0x3c -> :sswitch_6e4
        0x3d -> :sswitch_70d
        0x3e -> :sswitch_725
        0x3f -> :sswitch_743
        0x40 -> :sswitch_75b
        0x41 -> :sswitch_77d
        0x42 -> :sswitch_79b
        0x43 -> :sswitch_7bd
        0x44 -> :sswitch_7df
        0x45 -> :sswitch_7fa
        0x46 -> :sswitch_81b
        0x47 -> :sswitch_839
        0x48 -> :sswitch_85b
        0x49 -> :sswitch_879
        0x4a -> :sswitch_88f
        0x4b -> :sswitch_8a7
        0x4c -> :sswitch_8d5
        0x4d -> :sswitch_907
        0x4e -> :sswitch_928
        0x4f -> :sswitch_94d
        0x50 -> :sswitch_988
        0x51 -> :sswitch_9c7
        0x52 -> :sswitch_9fe
        0x53 -> :sswitch_a39
        0x54 -> :sswitch_a70
        0x55 -> :sswitch_aab
        0x56 -> :sswitch_ac9
        0x57 -> :sswitch_ae7
        0x58 -> :sswitch_b0c
        0x59 -> :sswitch_b2d
        0x5a -> :sswitch_b4e
        0x5b -> :sswitch_b6c
        0x5c -> :sswitch_b8a
        0x5d -> :sswitch_ba2
        0x5e -> :sswitch_bb8
        0x5f -> :sswitch_be6
        0x60 -> :sswitch_c22
        0x61 -> :sswitch_c47
        0x62 -> :sswitch_c66
        0x63 -> :sswitch_c87
        0x64 -> :sswitch_ca9
        0x65 -> :sswitch_cc4
        0x66 -> :sswitch_ce2
        0x67 -> :sswitch_d00
        0x68 -> :sswitch_d18
        0x69 -> :sswitch_d36
        0x6a -> :sswitch_d54
        0x6b -> :sswitch_d84
        0x6c -> :sswitch_dad
        0x6d -> :sswitch_dcf
        0x6e -> :sswitch_df1
        0x6f -> :sswitch_e0f
        0x70 -> :sswitch_e30
        0x71 -> :sswitch_e65
        0x72 -> :sswitch_e94
        0x73 -> :sswitch_eaf
        0x74 -> :sswitch_ebf
        0x75 -> :sswitch_edb
        0x76 -> :sswitch_efd
        0x77 -> :sswitch_f18
        0x78 -> :sswitch_f39
        0x79 -> :sswitch_f54
        0x7a -> :sswitch_f6f
        0x7b -> :sswitch_f8a
        0x7c -> :sswitch_fa5
        0x7d -> :sswitch_fc0
        0x7e -> :sswitch_fdb
        0x7f -> :sswitch_ff6
        0x80 -> :sswitch_1011
        0x81 -> :sswitch_102b
        0x82 -> :sswitch_1049
        0x83 -> :sswitch_1075
        0x84 -> :sswitch_108b
        0x85 -> :sswitch_10a3
        0x86 -> :sswitch_10cb
        0x87 -> :sswitch_10e6
        0x88 -> :sswitch_1101
        0x89 -> :sswitch_1122
        0x8a -> :sswitch_113d
        0x8b -> :sswitch_115e
        0x8c -> :sswitch_1179
        0x8d -> :sswitch_1191
        0x8e -> :sswitch_11a1
        0x8f -> :sswitch_11c9
        0x90 -> :sswitch_11f7
        0x91 -> :sswitch_120f
        0x92 -> :sswitch_122d
        0x93 -> :sswitch_1245
        0x94 -> :sswitch_1263
        0x95 -> :sswitch_127b
        0x96 -> :sswitch_1299
        0x97 -> :sswitch_12ba
        0x98 -> :sswitch_12d2
        0x99 -> :sswitch_12ea
        0x9a -> :sswitch_1302
        0x9b -> :sswitch_1339
        0x9c -> :sswitch_1357
        0x9d -> :sswitch_1375
        0x9e -> :sswitch_138d
        0x9f -> :sswitch_13a8
        0xa0 -> :sswitch_13c3
        0xa1 -> :sswitch_13de
        0xa2 -> :sswitch_1409
        0xa3 -> :sswitch_1421
        0xa4 -> :sswitch_143f
        0xa5 -> :sswitch_144f
        0xa6 -> :sswitch_145f
        0xa7 -> :sswitch_1477
        0xa8 -> :sswitch_148f
        0xa9 -> :sswitch_14a7
        0xaa -> :sswitch_14bf
        0xab -> :sswitch_14ef
        0xac -> :sswitch_150d
        0xad -> :sswitch_1525
        0xae -> :sswitch_1543
        0xaf -> :sswitch_155b
        0xb0 -> :sswitch_157d
        0xb1 -> :sswitch_159b
        0xb2 -> :sswitch_15b9
        0xb3 -> :sswitch_15da
        0xb4 -> :sswitch_15f0
        0xb5 -> :sswitch_160b
        0xb6 -> :sswitch_161b
        0xb7 -> :sswitch_162b
        0xb8 -> :sswitch_163b
        0xb9 -> :sswitch_164b
        0xba -> :sswitch_166d
        0xbb -> :sswitch_169f
        0xbc -> :sswitch_16bd
        0xbd -> :sswitch_16db
        0xbe -> :sswitch_16f1
        0xbf -> :sswitch_1707
        0xc0 -> :sswitch_171f
        0xc1 -> :sswitch_1735
        0xc2 -> :sswitch_174d
        0xc3 -> :sswitch_1768
        0xc4 -> :sswitch_1783
        0xc5 -> :sswitch_1793
        0xc6 -> :sswitch_17a3
        0xc7 -> :sswitch_17be
        0xc8 -> :sswitch_17e4
        0xc9 -> :sswitch_1806
        0xca -> :sswitch_182c
        0xcb -> :sswitch_1844
        0xcc -> :sswitch_1866
        0xcd -> :sswitch_1887
        0xce -> :sswitch_18ac
        0xcf -> :sswitch_18c4
        0xd0 -> :sswitch_18ea
        0xd1 -> :sswitch_1911
        0xd2 -> :sswitch_1929
        0xd3 -> :sswitch_1944
        0xd4 -> :sswitch_1977
        0xd5 -> :sswitch_198f
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
