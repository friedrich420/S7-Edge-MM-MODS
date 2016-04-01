.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$1;,
        Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;,
        Landroid/telephony/TelephonyManager$MultiSimVariants;,
        Landroid/telephony/TelephonyManager$WifiCallingChoices;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "android.telephony.action.CONFIGURE_VOICEMAIL"

.field public static final ACTION_EMERGENCY_ASSISTANCE:Ljava/lang/String; = "android.telephony.action.EMERGENCY_ASSISTANCE"

.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_PRECISE_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_CALL_STATE"

.field public static final ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CAPABLE_TYPE_DOWNLOADBOOSTER:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_ERROR_LOADING_RULES:I = -0x2

.field public static final CARRIER_PRIVILEGE_STATUS_HAS_ACCESS:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_NO_ACCESS:I = 0x0

.field public static final CARRIER_PRIVILEGE_STATUS_RULES_NOT_LOADED:I = -0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field private static final DBG:Z

.field public static final DM_CMD_DELETE_LOG:I = 0x8

.field public static final DM_CMD_EVENT_SET:I = 0x2

.field public static final DM_CMD_HDV_ALARM_EVENT:I = 0x7

.field public static final DM_CMD_LOG_SET:I = 0x1

.field public static final DM_CMD_MEM_CHECK:I = 0x5

.field public static final DM_CMD_MEM_SET:I = 0x4

.field public static final DM_CMD_SAVE_LOG:I = 0x6

.field public static final DM_CMD_STATE_CHANGE_SET:I = 0x3

.field private static final DOD_SKT_APP_SIGNATURE:Ljava/lang/String; = "3082019b30820104a00302010202044c6b473a300d06092a864886f70d010105050030123110300e06035504031307616e64726f6964301e170d3130303831383032333634325a170d3430303831303032333634325a30123110300e06035504031307616e64726f696430819f300d06092a864886f70d010101050003818d00308189028181008e22b5c794e4621f5acf64431605f6f03301e8af027353d1952f3cd6acb5ce50a02bbc85822bf21ee5ee84410ed5c847233de58790d3309799e6e3e91eff8cb8db56ae7b64f691e3a522f78ec869b093720236152410bce1242bbe567fa9c2e1e4efdeb8feabe027d264501fe0ea65777b49b0bed6b806bd888c195394fd2a230203010001300d06092a864886f70d010105050003818100760b171ab6383e2b4170136ebb253e8226d2af2d31c3196c4914c92cea6e91072827b581a639a427fd4302842c5e2be9418d5226745d6ed6cef06904505c7a6ef51897368251a46fc9aae61fc4778ccb85432c801d64cd818f436e686753cccd4aa76e3bcfe3355a73c4bc1e5b239e453fc739b52959cd7de0e617e4072017b0"

.field private static final DOD_SKT_APP_SIGNATURE2:Ljava/lang/String; = "3082033b30820223a00302010202046949927c300d06092a864886f70d01010b0500304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e3020170d3133303731373034303731315a180f32313133303632333034303731315a304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e30820122300d06092a864886f70d01010105000382010f003082010a02820101009054ef68216a1db045aa95d5b71120701ae32b55f692ba4a033e4fd8531d7614ce0a8dc058cf2d11857f68138a3579f5f81eb7fcf6abc721e215868fd2866fae01f69967340267497410520a2cfffca58585cad43dfc5ece54de5c253a2d1e7391a09abeaca1cd2e2db7fb4d045f43ab1c4df0621b1e914322d2f1743d465021d540715b1ea7dafb9d3f25b77812f5998ad3a6befa48bb3ef46acfc50b8f093e2c42611ce1084221a28c6a26c96cb2a78c779e2edc41f859b8638b5c060ec608d92564e1ee355b6cf400888c7bd3fc6b3bd38bf4512d23153cb90a9c1b3c7c221cd15ffbd84abea143f4665bdab5fb969d1332e29499b487810c3324cf1927b10203010001a321301f301d0603551d0e041604149f6ccd79ff1fc86191fd86973cbe8ad3498752a6300d06092a864886f70d01010b05000382010100465ded5885849010ba16c05af54a55a4783db87fe46d3a2411866ca9819f7e734132c513ba370bec8bc657f5b507e8a6632e3cdcdd750b04c059f3e8ef999cd35c8ebc467351e7f16093672c267f4688640f0700d8bbf6f3340aeb447714267e8a4adb91773df43975e62b5ad24065719f3aec825b955442db1b88d6bde48ebed00431915f23991b58c1b24e7033f26f752ddd0c3a16dd4c5a2764055d5e09ae839e2c21404fdd5e90163f4e06305755700f883f11fd50a3277775b76373f6acac68a94faf3a29a798cfc8e869e786d5790e363adbd87037de537ffb2870591e3b5672bf7adaa0c86491041878d8277296fcf6089b5e8b1188c64d0d0bbd6db7"

.field public static final EMERGENCY_ASSISTANCE_ENABLED:Z = false

.field public static final EXTRA_BACKGROUND_CALL_STATE:Ljava/lang/String; = "background_state"

.field public static final EXTRA_DATA_APN:Ljava/lang/String; = "apn"

.field public static final EXTRA_DATA_APN_TYPE:Ljava/lang/String; = "apnType"

.field public static final EXTRA_DATA_CHANGE_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_DATA_FAILURE_CAUSE:Ljava/lang/String; = "failCause"

.field public static final EXTRA_DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_DATA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_DATA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "disconnect_cause"

.field public static final EXTRA_FOREGROUND_CALL_STATE:Ljava/lang/String; = "foreground_state"

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_PRECISE_DISCONNECT_CAUSE:Ljava/lang/String; = "precise_disconnect_cause"

.field public static final EXTRA_RINGING_CALL_STATE:Ljava/lang/String; = "ringing_state"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final EXTRA_VOIP_CALLSTATE:Ljava/lang/String; = "is_voip_callstate"

.field private static final KNIGHT_LOG_FILE_NAME:Ljava/lang/String; = "/data/log/knightBuff.tmp"

.field private static final LTE_ON_CDMA_FILE_PATH:Ljava/lang/String; = "/efs/carrier/CdmaOnly"

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_DC:I = 0x1e

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_TDLTE:I = 0x1f

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field private static final PREFIX_TABLE:[Ljava/lang/String;

.field private static final SHIP_BUILD:Z

.field public static final SIM_ACTIVATION_RESULT_CANCELED:I = 0x4

.field public static final SIM_ACTIVATION_RESULT_COMPLETE:I = 0x0

.field public static final SIM_ACTIVATION_RESULT_FAILED:I = 0x3

.field public static final SIM_ACTIVATION_RESULT_IN_PROGRESS:I = 0x2

.field public static final SIM_ACTIVATION_RESULT_NOT_SUPPORTED:I = 0x1

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x8

.field public static final SIM_STATE_DETECTED:I = 0xc

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_NETWORK_SUBSET_LOCKED:I = 0xa

.field public static final SIM_STATE_NOT_READY:I = 0x6

.field public static final SIM_STATE_PERM_DISABLED:I = 0x7

.field public static final SIM_STATE_PERSO_LOCKED:I = 0x9

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_SIM_SERVICE_PROVIDER_LOCKED:I = 0xb

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static final TAG_DM_LOGGING:Ljava/lang/String; = "DmLoggingService"

.field private static final UKNIGHT_LGT_APP_SIGNATURE:Ljava/lang/String; = "3082019d30820106a00302010202044f3193c6300d06092a864886f70d010105050030133111300f060355040a0c084c475f55706c7573301e170d3132303230373231313233385a170d3432303133303231313233385a30133111300f060355040a0c084c475f55706c757330819f300d06092a864886f70d010101050003818d0030818902818100872b7051b6c30272b6c200b809a90a4f7fa148bdb554a4b29df536018f256c624c6781006655a30eef98152781353b48da3aa739d8e0bdc2fcee10789438454bce9dcf081a3a8757ecb6f2985bcdec0b83e7ed46dc35ac36e3820442740b0b6c6e05ac17d49502708070e1137914eb26d2e63c9235efbb6d930a353c004228490203010001300d06092a864886f70d0101050500038181004157e820571e50c367497ab98c05375a7d8e40ea67ff3df8858226322faf91e5c12521266402ce9d2e946d25b0833cc7c4b39a2b28cae46e184b16f973a885fd2f607decafcb814ad326739a35d3703c140ac5bdbb18f1598f997e1ae52fcefeee88f3419db99379e63caa981a632d41a23549a0a03e843bf285ad6cdbcaa6f4"

.field private static final UKNIGHT_PACKAGE_NAME:Ljava/lang/String; = "com.lguplus.uknight2"

.field private static final UKNIGHT_TOKEN:I = 0x177c

.field public static final VOIPCALL_STATE_IDLE:I = 0x3

.field public static final VOIPCALL_STATE_OFFHOOK:I = 0x5

.field public static final VOIPCALL_STATE_RINGING:I = 0x4

.field public static final VVM_TYPE_CVVM:Ljava/lang/String; = "vvm_type_cvvm"

.field public static final VVM_TYPE_OMTP:Ljava/lang/String; = "vvm_type_omtp"

.field public static isCDMAMessage:Z = false

.field private static isRtreFileRead:Z = false

.field public static isSelecttelecomDF:Z = false

.field private static mConfigNetworkTypeCapability:Ljava/lang/String; = null

.field private static final mDmLoggingPidFile:Ljava/lang/String; = "/data/log/dmlog_pid"

.field public static mImsLineNumber:Ljava/lang/String;

.field private static mRtreVal:Ljava/lang/String;

.field private static multiSimConfig:Ljava/lang/String;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_b1

    move v0, v1

    :goto_d
    sput-boolean v0, DBG:Z

    .line 123
    const-string/jumbo v0, "true"

    const-string/jumbo v3, "ro.product_ship"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, SHIP_BUILD:Z

    .line 127
    sput-object v5, mRtreVal:Ljava/lang/String;

    .line 128
    sput-boolean v2, isRtreFileRead:Z

    .line 130
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, multiSimConfig:Ljava/lang/String;

    .line 173
    sput-boolean v2, isSelecttelecomDF:Z

    .line 175
    sput-boolean v2, isCDMAMessage:Z

    .line 179
    sput-object v5, mImsLineNumber:Ljava/lang/String;

    .line 202
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Landroid/telephony/TelephonyManager;

    .line 406
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 412
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 418
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 1274
    invoke-static {}, getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, sKernelCmdLine:Ljava/lang/String;

    .line 1277
    const-string v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, sProductTypePattern:Ljava/util/regex/Pattern;

    .line 1281
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, sLteOnCdmaProductType:Ljava/lang/String;

    .line 6129
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "010"

    aput-object v3, v0, v2

    const-string v2, "SKT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "010"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KTF"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STI"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HSP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LGT"

    aput-object v2, v0, v1

    sput-object v0, PREFIX_TABLE:[Ljava/lang/String;

    return-void

    :cond_b1
    move v0, v2

    .line 122
    goto/16 :goto_d
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_25

    .line 185
    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 189
    :goto_b
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 191
    sget-object v1, sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_24

    .line 192
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 195
    :cond_24
    return-void

    .line 187
    :cond_25
    iput-object p1, p0, mContext:Landroid/content/Context;

    goto :goto_b
.end method

.method private ByteToInt([B)I
    .registers 4
    .param p1, "b"    # [B

    .prologue
    .line 6850
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static IsCDMAmessage()Z
    .registers 1

    .prologue
    .line 6097
    sget-boolean v0, isCDMAMessage:Z

    return v0
.end method

.method public static appendId(Ljava/lang/String;J)Ljava/lang/String;
    .registers 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 5252
    invoke-static {}, getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, getPhoneCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_e

    .line 5268
    .end local p0    # "text":Ljava/lang/String;
    :goto_d
    return-object p0

    .line 5256
    .restart local p0    # "text":Ljava/lang/String;
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5258
    .local v1, "str":Ljava/lang/StringBuilder;
    cmp-long v2, p1, v4

    if-ltz v2, :cond_30

    invoke-static {}, getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, getPhoneCount()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_30

    .line 5259
    cmp-long v2, p1, v4

    if-eqz v2, :cond_2b

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5268
    :cond_2b
    :goto_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    .line 5261
    :cond_30
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Id is error (text : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5263
    :try_start_58
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "appendId() exception"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_60

    .line 5264
    :catch_60
    move-exception v0

    .line 5265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method private checkIsSprintSimCard()Z
    .registers 5

    .prologue
    .line 1490
    invoke-static {}, getDefaultPhone()I

    move-result v1

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v1, v2, v3}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1491
    .local v0, "simoperator":Ljava/lang/String;
    const-string v1, "310120"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "310000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "311490"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "311870"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "312530"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1493
    :cond_34
    const/4 v1, 0x1

    .line 1495
    :goto_35
    return v1

    :cond_36
    const/4 v1, 0x0

    goto :goto_35
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 207
    sget-object v0, sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static getDefaultPhone()I
    .registers 1

    .prologue
    .line 3974
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private static getDefaultSubscription()I
    .registers 1

    .prologue
    .line 3967
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method public static getFirst()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 3087
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getImsLine1Number()Ljava/lang/String;
    .registers 3

    .prologue
    .line 7913
    sget-boolean v0, SHIP_BUILD:Z

    if-eqz v0, :cond_e

    .line 7914
    const-string v0, "TelephonyManager"

    const-string v1, "getImsLine1Number"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7919
    :goto_b
    sget-object v0, mImsLineNumber:Ljava/lang/String;

    return-object v0

    .line 7916
    :cond_e
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsLine1Number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, mImsLineNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4057
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4058
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 4059
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4060
    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_1d

    array-length v2, v1

    if-ge p2, v2, :cond_1d

    aget-object v2, v1, p2

    if-eqz v2, :cond_1d

    .line 4062
    :try_start_15
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v2

    return v2

    .line 4063
    :catch_1c
    move-exception v2

    .line 4068
    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_1d
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5403
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_16} :catch_18

    move-result v3

    .line 5425
    :cond_17
    :goto_17
    return v3

    .line 5404
    :catch_18
    move-exception v1

    .line 5406
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_19
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 5407
    .local v3, "val":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5412
    move v0, v3

    .line 5413
    .local v0, "default_val":I
    const-string/jumbo v6, "mobile_data"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 5414
    const-string/jumbo v6, "true"

    const-string/jumbo v7, "ro.com.android.mobiledata"

    const-string/jumbo v8, "true"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    move v0, v4

    .line 5421
    :cond_4f
    :goto_4f
    if-eq v0, v3, :cond_17

    .line 5422
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_54
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_19 .. :try_end_54} :catch_55

    goto :goto_17

    .line 5426
    .end local v0    # "default_val":I
    .end local v3    # "val":I
    :catch_55
    move-exception v2

    .line 5427
    .local v2, "exc":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v4, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v4, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "exc":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "default_val":I
    .restart local v3    # "val":I
    :cond_5c
    move v0, v5

    .line 5414
    goto :goto_4f

    .line 5416
    :cond_5e
    :try_start_5e
    const-string v6, "data_roaming"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 5417
    const-string/jumbo v6, "true"

    const-string/jumbo v7, "ro.com.android.dataroaming"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_75
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5e .. :try_end_75} :catch_55

    move-result v6

    if-eqz v6, :cond_7a

    move v0, v4

    :goto_79
    goto :goto_4f

    :cond_7a
    move v0, v5

    goto :goto_79
.end method

.method public static getLteOnCdmaModeStatic()I
    .registers 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 1297
    const-string v5, ""

    .line 1299
    .local v5, "productType":Ljava/lang/String;
    const-string/jumbo v7, "telephony.lteOnCdmaDevice"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1301
    .local v0, "curVal":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_ConfigNvSim"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 1303
    const/4 v6, -0x1

    .line 1304
    .local v6, "retVal":I
    const/4 v2, 0x0

    .line 1305
    .local v2, "in":Ljava/io/BufferedReader;
    sget-boolean v7, isRtreFileRead:Z

    if-nez v7, :cond_52

    .line 1307
    :try_start_1d
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/efs/carrier/CdmaOnly"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_73
    .catchall {:try_start_1d .. :try_end_29} :catchall_8a

    .line 1308
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_29
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    sput-object v7, mRtreVal:Ljava/lang/String;

    .line 1309
    const/4 v7, 0x1

    sput-boolean v7, isRtreFileRead:Z

    .line 1310
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LTE_ON_CDMA_FILE_PATH, mRtreVal = /efs/carrier/CdmaOnly"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, mRtreVal:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4c} :catch_113
    .catchall {:try_start_29 .. :try_end_4c} :catchall_10f

    .line 1315
    if-eqz v3, :cond_51

    .line 1316
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_69

    :cond_51
    move-object v2, v3

    .line 1323
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_52
    :goto_52
    sget-object v7, mRtreVal:Ljava/lang/String;

    if-eqz v7, :cond_ad

    .line 1324
    const-string v7, "0"

    sget-object v8, mRtreVal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 1325
    const/4 v6, 0x1

    .line 1326
    const-string v7, "TelephonyManager"

    const-string v8, "RTRE True"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    .end local v2    # "in":Ljava/io/BufferedReader;
    :cond_68
    :goto_68
    return v6

    .line 1318
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_69
    move-exception v1

    .line 1319
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "TelephonyManager"

    const-string v8, "Error in Buffer reader"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 1321
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_52

    .line 1311
    .end local v1    # "e":Ljava/io/IOException;
    :catch_73
    move-exception v1

    .line 1312
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_74
    :try_start_74
    const-string v7, "TelephonyManager"

    const-string v8, "RTRE File doesnt exist"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_8a

    .line 1315
    if-eqz v2, :cond_52

    .line 1316
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_52

    .line 1318
    :catch_81
    move-exception v1

    .line 1319
    const-string v7, "TelephonyManager"

    const-string v8, "Error in Buffer reader"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 1314
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_8a
    move-exception v7

    .line 1315
    :goto_8b
    if-eqz v2, :cond_90

    .line 1316
    :try_start_8d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    .line 1320
    :cond_90
    :goto_90
    throw v7

    .line 1318
    :catch_91
    move-exception v1

    .line 1319
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "TelephonyManager"

    const-string v9, "Error in Buffer reader"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 1327
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9a
    const-string v7, "1"

    sget-object v8, mRtreVal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 1328
    const/4 v6, 0x0

    .line 1329
    const-string v7, "TelephonyManager"

    const-string v8, "RTRE False"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 1334
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v6    # "retVal":I
    :cond_ad
    move v6, v0

    .line 1335
    .restart local v6    # "retVal":I
    if-ne v6, v10, :cond_cb

    .line 1336
    sget-object v7, sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v8, sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1337
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_10d

    .line 1338
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1339
    sget-object v7, sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10b

    .line 1340
    const/4 v6, 0x1

    .line 1349
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_cb
    :goto_cb
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLteOnCdmaMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curVal="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " product_type=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' lteOnCdmaProductType=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_68

    .line 1342
    .restart local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_10b
    const/4 v6, 0x0

    goto :goto_cb

    .line 1345
    :cond_10d
    const/4 v6, 0x0

    goto :goto_cb

    .line 1314
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_10f
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_8b

    .line 1311
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_113
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_74
.end method

.method public static getMainOperatorName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 8068
    sget-object v1, mConfigNetworkTypeCapability:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 8069
    const-string v1, "UNKNOWN"

    .line 8077
    .local v0, "value":[Ljava/lang/String;
    :goto_a
    return-object v1

    .line 8072
    .end local v0    # "value":[Ljava/lang/String;
    :cond_b
    sget-object v1, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8073
    .restart local v0    # "value":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1a

    .line 8074
    const-string v1, "UNKNOWN"

    goto :goto_a

    .line 8077
    :cond_1a
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_a
.end method

.method public static getNetworkClass(I)I
    .registers 2
    .param p0, "networkType"    # I

    .prologue
    .line 1804
    packed-switch p0, :pswitch_data_c

    .line 1827
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1811
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1822
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 1825
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 1804
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .prologue
    .line 1851
    packed-switch p0, :pswitch_data_5a

    .line 1899
    :pswitch_3
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 1853
    :pswitch_6
    const-string v0, "GPRS"

    goto :goto_5

    .line 1855
    :pswitch_9
    const-string v0, "EDGE"

    goto :goto_5

    .line 1857
    :pswitch_c
    const-string v0, "UMTS"

    goto :goto_5

    .line 1859
    :pswitch_f
    const-string v0, "HSDPA"

    goto :goto_5

    .line 1861
    :pswitch_12
    const-string v0, "HSUPA"

    goto :goto_5

    .line 1863
    :pswitch_15
    const-string v0, "HSPA"

    goto :goto_5

    .line 1865
    :pswitch_18
    const-string v0, "CDMA"

    goto :goto_5

    .line 1867
    :pswitch_1b
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_5

    .line 1869
    :pswitch_1e
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_5

    .line 1871
    :pswitch_21
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_5

    .line 1873
    :pswitch_24
    const-string v0, "CDMA - 1xRTT"

    goto :goto_5

    .line 1875
    :pswitch_27
    const-string v0, "KDI"

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1876
    const-string v0, "4G"

    goto :goto_5

    .line 1877
    :cond_34
    const-string v0, "SBM"

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1878
    const-string v0, "4G"

    goto :goto_5

    .line 1880
    :cond_41
    const-string v0, "LTE"

    goto :goto_5

    .line 1883
    :pswitch_44
    const-string v0, "CDMA - eHRPD"

    goto :goto_5

    .line 1885
    :pswitch_47
    const-string v0, "iDEN"

    goto :goto_5

    .line 1887
    :pswitch_4a
    const-string v0, "HSPA+"

    goto :goto_5

    .line 1889
    :pswitch_4d
    const-string v0, "GSM"

    goto :goto_5

    .line 1891
    :pswitch_50
    const-string v0, "TD_SCDMA"

    goto :goto_5

    .line 1893
    :pswitch_53
    const-string v0, "IWLAN"

    goto :goto_5

    .line 1896
    :pswitch_56
    const-string v0, "DC"

    goto :goto_5

    .line 1851
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_24
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_47
        :pswitch_21
        :pswitch_27
        :pswitch_44
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_56
    .end packed-switch
.end method

.method private getOpPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 216
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getPhoneType(I)I
    .registers 5
    .param p0, "networkMode"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1192
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_CdmalteTelephonyCommon"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1194
    const/16 v2, 0xa

    if-ne p0, v2, :cond_13

    .line 1241
    :cond_12
    :goto_12
    :pswitch_12
    return v0

    .line 1199
    :cond_13
    packed-switch p0, :pswitch_data_22

    move v0, v1

    .line 1241
    goto :goto_12

    :pswitch_18
    move v0, v1

    .line 1223
    goto :goto_12

    .line 1235
    :pswitch_1a
    invoke-static {}, getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_12

    move v0, v1

    .line 1238
    goto :goto_12

    .line 1199
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_18
        :pswitch_18
        :pswitch_1a
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .registers 2

    .prologue
    .line 1166
    invoke-static {}, getDefaultPhone()I

    move-result v0

    invoke-direct {p0, v0}, getPhoneTypeFromNetworkType(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .registers 5
    .param p1, "phoneId"    # I

    .prologue
    .line 1174
    const-string/jumbo v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 1176
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, getPhoneType(I)I

    move-result v1

    .line 1178
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private getPhoneTypeFromProperty()I
    .registers 2

    .prologue
    .line 1152
    invoke-static {}, getDefaultPhone()I

    move-result v0

    invoke-direct {p0, v0}, getPhoneTypeFromProperty(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromProperty(I)I
    .registers 5
    .param p1, "phoneId"    # I

    .prologue
    .line 1157
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_11

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1160
    :cond_11
    invoke-direct {p0, p1}, getPhoneTypeFromNetworkType(I)I

    move-result v1

    .line 1162
    :goto_15
    return v1

    :cond_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_15
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .registers 10

    .prologue
    .line 1250
    const-string v1, ""

    .line 1251
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1253
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_3d
    .catchall {:try_start_3 .. :try_end_a} :catchall_5e

    .line 1254
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_c
    new-array v0, v7, [B

    .line 1255
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1256
    .local v3, "count":I
    if-lez v3, :cond_1b

    .line 1257
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_6a
    .catchall {:try_start_c .. :try_end_1a} :catchall_67

    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    .line 1262
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_1b
    if-eqz v6, :cond_6d

    .line 1264
    :try_start_1d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_3a

    move-object v5, v6

    .line 1269
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_21
    :goto_21
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-object v1

    .line 1265
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_3a
    move-exception v7

    move-object v5, v6

    .line 1266
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_21

    .line 1259
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    :catch_3d
    move-exception v4

    .line 1260
    .local v4, "e":Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    const-string v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_5e

    .line 1262
    if-eqz v5, :cond_21

    .line 1264
    :try_start_58
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_21

    .line 1265
    :catch_5c
    move-exception v7

    goto :goto_21

    .line 1262
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_5e
    move-exception v7

    :goto_5f
    if-eqz v5, :cond_64

    .line 1264
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 1266
    :cond_64
    :goto_64
    throw v7

    .line 1265
    :catch_65
    move-exception v8

    goto :goto_64

    .line 1262
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_67
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_5f

    .line 1259
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_6a
    move-exception v4

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_3e

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_6d
    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_21
.end method

.method private static getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "ua"    # Ljava/lang/String;
    .param p1, "mdn"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 6134
    const-string/jumbo v0, "ril.currentplmn"

    const-string v1, "domestic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oversea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 6143
    :goto_16
    return-object p0

    .line 6138
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_42

    .line 6139
    const-string v0, "I%c%c%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    .line 6141
    :cond_42
    const-string v0, "I%c%c%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_16
.end method

.method public static getSecondary()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getServiceUserAgent()C
    .registers 3

    .prologue
    .line 6157
    const/16 v0, 0x30

    .line 6159
    .local v0, "cNetworkType":C
    invoke-static {}, isWIFIConnected()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6160
    const/16 v0, 0x44

    .line 6192
    :goto_a
    return v0

    .line 6162
    :cond_b
    invoke-static {}, getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, getNetworkType()I

    move-result v1

    .line 6164
    .local v1, "nNetworkType":I
    packed-switch v1, :pswitch_data_2c

    .line 6189
    :pswitch_16
    const/16 v0, 0x36

    goto :goto_a

    .line 6166
    :pswitch_19
    const/16 v0, 0x42

    .line 6167
    goto :goto_a

    .line 6169
    :pswitch_1c
    const/16 v0, 0x43

    .line 6170
    goto :goto_a

    .line 6172
    :pswitch_1f
    const/16 v0, 0x38

    .line 6173
    goto :goto_a

    .line 6175
    :pswitch_22
    const/16 v0, 0x39

    .line 6176
    goto :goto_a

    .line 6183
    :pswitch_25
    const/16 v0, 0x36

    .line 6184
    goto :goto_a

    .line 6186
    :pswitch_28
    const/16 v0, 0x46

    .line 6187
    goto :goto_a

    .line 6164
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1c
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_1f
        :pswitch_22
        :pswitch_16
        :pswitch_16
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method private getSktImsiM()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 6204
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSktImsiM()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 6209
    :goto_9
    return-object v1

    .line 6205
    :catch_a
    move-exception v0

    .line 6206
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 6207
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 6209
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method private getSktIrm()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 6222
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSktIrm()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 6227
    :goto_9
    return-object v1

    .line 6223
    :catch_a
    move-exception v0

    .line 6224
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 6225
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 6227
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public static getSubOperatorName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 8082
    sget-object v1, mConfigNetworkTypeCapability:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 8083
    const-string v1, "UNKNOWN"

    .line 8091
    .local v0, "value":[Ljava/lang/String;
    :goto_a
    return-object v1

    .line 8086
    .end local v0    # "value":[Ljava/lang/String;
    :cond_b
    sget-object v1, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8087
    .restart local v0    # "value":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1a

    .line 8088
    const-string v1, "UNKNOWN"

    goto :goto_a

    .line 8091
    :cond_1a
    const/4 v1, 0x1

    aget-object v1, v0, v1

    goto :goto_a
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .prologue
    .line 2909
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .registers 2

    .prologue
    .line 3094
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 4128
    const/4 v1, 0x0

    .line 4129
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4130
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1e

    .line 4131
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4132
    .local v2, "values":[Ljava/lang/String;
    if-ltz p0, :cond_1e

    array-length v3, v2

    if-ge p0, v3, :cond_1e

    aget-object v3, v2, p0

    if-eqz v3, :cond_1e

    .line 4133
    aget-object v1, v2, p0

    .line 4136
    .end local v2    # "values":[Ljava/lang/String;
    :cond_1e
    if-nez v1, :cond_21

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_20
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_21
    move-object p2, v1

    goto :goto_20
.end method

.method public static getUAField()Ljava/lang/String;
    .registers 31

    .prologue
    .line 6236
    const/16 v22, 0x0

    .line 6237
    .local v22, "numPrefix":Ljava/lang/String;
    const-string v3, ""

    .line 6238
    .local v3, "UserAgent":Ljava/lang/String;
    const-string v13, ""

    .line 6239
    .local v13, "min8":Ljava/lang/String;
    const-string v12, ""

    .line 6240
    .local v12, "mdn":Ljava/lang/String;
    const/16 v26, 0x0

    .line 6242
    .local v26, "sbDeviceInfo":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 6243
    .local v8, "fileReader":Ljava/io/FileReader;
    const/16 v23, 0x0

    .line 6246
    .local v23, "reader":Ljava/io/BufferedReader;
    :try_start_d
    new-instance v16, Ljava/io/File;

    const-string v28, "/system/skt/ua/uafield.dat"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6247
    .local v16, "myFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileReader;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_64
    .catchall {:try_start_d .. :try_end_1f} :catchall_78

    .line 6248
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .local v9, "fileReader":Ljava/io/FileReader;
    :try_start_1f
    new-instance v24, Ljava/io/BufferedReader;

    move-object/from16 v0, v24

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_2ce
    .catchall {:try_start_1f .. :try_end_26} :catchall_2bc

    .line 6249
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .local v24, "reader":Ljava/io/BufferedReader;
    :try_start_26
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_2d2
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2c0

    .line 6250
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .local v27, "sbDeviceInfo":Ljava/lang/StringBuffer;
    :try_start_2f
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "ua -"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6251
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4f} :catch_2d8
    .catchall {:try_start_2f .. :try_end_4f} :catchall_2c6

    .line 6256
    :try_start_4f
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    .line 6257
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_55} :catch_5f

    .line 6262
    :goto_55
    if-nez v27, :cond_8a

    .line 6263
    const/16 v28, 0x0

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .line 6326
    .end local v16    # "myFile":Ljava/io/File;
    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :goto_5e
    return-object v28

    .line 6258
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "myFile":Ljava/io/File;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catch_5f
    move-exception v7

    .line 6259
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_55

    .line 6252
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v9    # "fileReader":Ljava/io/FileReader;
    .end local v16    # "myFile":Ljava/io/File;
    .end local v24    # "reader":Ljava/io/BufferedReader;
    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catch_64
    move-exception v6

    .line 6253
    .local v6, "e":Ljava/lang/Exception;
    :goto_65
    :try_start_65
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_78

    .line 6256
    :try_start_68
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    .line 6257
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6e} :catch_73

    .line 6262
    :goto_6e
    if-nez v26, :cond_8f

    .line 6263
    const/16 v28, 0x0

    goto :goto_5e

    .line 6258
    :catch_73
    move-exception v7

    .line 6259
    .restart local v7    # "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e

    .line 6255
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_78
    move-exception v28

    .line 6256
    :goto_79
    :try_start_79
    invoke-virtual/range {v23 .. v23}, Ljava/io/BufferedReader;->close()V

    .line 6257
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7f} :catch_84

    .line 6262
    :goto_7f
    if-nez v26, :cond_89

    .line 6263
    const/16 v28, 0x0

    goto :goto_5e

    .line 6258
    :catch_84
    move-exception v7

    .line 6259
    .restart local v7    # "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7f

    .line 6263
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_89
    throw v28

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "myFile":Ljava/io/File;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :cond_8a
    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .line 6267
    .end local v16    # "myFile":Ljava/io/File;
    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :cond_8f
    const-string/jumbo v28, "oversea"

    const-string/jumbo v29, "ril.currentplmn"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 6268
    .local v10, "is_roaming":Z
    invoke-static {}, getServiceUserAgent()C

    move-result v19

    .line 6270
    .local v19, "networkType":C
    const/16 v28, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 6272
    const-string v28, "gsm.operator.numeric"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 6273
    .local v18, "networkOperator":Ljava/lang/String;
    invoke-static {}, getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 6274
    .local v4, "cell":Landroid/telephony/gsm/GsmCellLocation;
    if-nez v4, :cond_c8

    .line 6275
    const-string v28, "TelephonyManager"

    const-string v29, "No Sim or Flight mode"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6276
    const/16 v28, 0x0

    goto :goto_5e

    .line 6279
    :cond_c8
    :try_start_c8
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    .line 6280
    .local v5, "cid":I
    const v28, 0xff00

    and-int v28, v28, v5

    shr-int/lit8 v28, v28, 0x8

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 6281
    .local v20, "nodeB":B
    shr-int/lit8 v28, v5, 0x10

    and-int/lit8 v28, v28, 0x1f

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v25, v0

    .line 6282
    .local v25, "rnc":B
    shr-int/lit8 v28, v5, 0x15

    and-int/lit8 v28, v28, 0x7f

    move/from16 v0, v28

    int-to-byte v15, v0

    .line 6284
    .local v15, "msd":B
    if-nez v10, :cond_1cd

    .line 6285
    invoke-static {}, getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-direct/range {v28 .. v28}, getSktImsiM()Ljava/lang/String;

    move-result-object v12

    .line 6290
    :goto_f2
    sget-object v28, PREFIX_TABLE:[Ljava/lang/String;

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v29

    add-int/lit8 v29, v29, -0x30

    aget-object v22, v28, v29

    .line 6292
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0xb

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1d7

    .line 6293
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 6303
    :goto_11e
    const/16 v28, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 6304
    .local v14, "mnc":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6305
    .local v11, "mcc":Ljava/lang/String;
    const/16 v17, 0x0

    .line 6307
    .local v17, "networkInfo":Ljava/lang/String;
    const/16 v28, 0x46

    move/from16 v0, v19

    move/from16 v1, v28

    if-ne v0, v1, :cond_234

    .line 6308
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ";ECI;"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 6313
    :goto_174
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6315
    if-eqz v22, :cond_1ab

    .line 6316
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6318
    :cond_1ab
    invoke-static {v3, v12}, getRoamingUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6319
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "getUAField():"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v28, v3

    .line 6326
    goto/16 :goto_5e

    .line 6287
    .end local v11    # "mcc":Ljava/lang/String;
    .end local v14    # "mnc":Ljava/lang/String;
    .end local v17    # "networkInfo":Ljava/lang/String;
    :cond_1cd
    invoke-static {}, getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-direct/range {v28 .. v28}, getSktIrm()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_f2

    .line 6294
    :cond_1d7
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_220

    .line 6295
    if-nez v10, :cond_20c

    .line 6296
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "0"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_11e

    .line 6298
    :cond_20c
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_11e

    .line 6300
    :cond_220
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_11e

    .line 6310
    .restart local v11    # "mcc":Ljava/lang/String;
    .restart local v14    # "mnc":Ljava/lang/String;
    .restart local v17    # "networkInfo":Ljava/lang/String;
    :cond_234
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v29, v20, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    rem-int/lit8 v29, v20, 0xa

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 6311
    .local v21, "nodeBStr":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_297
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_297} :catch_29a

    move-result-object v17

    goto/16 :goto_174

    .line 6320
    .end local v5    # "cid":I
    .end local v11    # "mcc":Ljava/lang/String;
    .end local v14    # "mnc":Ljava/lang/String;
    .end local v15    # "msd":B
    .end local v17    # "networkInfo":Ljava/lang/String;
    .end local v20    # "nodeB":B
    .end local v21    # "nodeBStr":Ljava/lang/String;
    .end local v25    # "rnc":B
    :catch_29a
    move-exception v6

    .line 6321
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v28, "TelephonyManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No Sim or No MSISDN -"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6322
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 6323
    const/16 v28, 0x0

    goto/16 :goto_5e

    .line 6255
    .end local v4    # "cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "is_roaming":Z
    .end local v18    # "networkOperator":Ljava/lang/String;
    .end local v19    # "networkType":C
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "myFile":Ljava/io/File;
    :catchall_2bc
    move-exception v28

    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_79

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    :catchall_2c0
    move-exception v28

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_79

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catchall_2c6
    move-exception v28

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    goto/16 :goto_79

    .line 6252
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    :catch_2ce
    move-exception v6

    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_65

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    :catch_2d2
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_65

    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "reader":Ljava/io/BufferedReader;
    .end local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    :catch_2d8
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v23    # "reader":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "fileReader":Ljava/io/FileReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v26, v27

    .end local v27    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    .restart local v26    # "sbDeviceInfo":Ljava/lang/StringBuffer;
    goto/16 :goto_65
.end method

.method private getValuefromCSC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 7979
    move-object v0, p1

    .line 7981
    .local v0, "CSC_PATH":Ljava/lang/String;
    move-object v1, p2

    .line 7982
    .local v1, "Tag":Ljava/lang/String;
    const/4 v9, 0x0

    .line 7983
    .local v9, "retVal":Ljava/lang/String;
    const/4 v7, 0x0

    .line 7986
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7987
    .local v5, "f":Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_e} :catch_13

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 7992
    .end local v5    # "f":Ljava/io/File;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :goto_f
    if-nez v7, :cond_18

    .line 7993
    const/4 v12, 0x0

    .line 8031
    :goto_12
    return-object v12

    .line 7988
    :catch_13
    move-exception v3

    .line 7989
    .local v3, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_f

    .line 7996
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    :cond_18
    move-object v10, v7

    .line 8000
    .local v10, "stream":Ljava/io/InputStream;
    :try_start_19
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 8001
    .local v6, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 8002
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 8004
    .local v11, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v12, "UTF-8"

    invoke-interface {v11, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 8005
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 8007
    .local v4, "eventType":I
    :goto_2e
    const/4 v12, 0x1

    if-eq v4, v12, :cond_50

    .line 8008
    const/4 v12, 0x2

    if-ne v4, v12, :cond_47

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_47

    .line 8010
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8011
    const/4 v4, 0x1

    .line 8012
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    goto :goto_2e

    .line 8014
    :cond_47
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_4a} :catch_4c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_4a} :catch_57

    move-result v4

    goto :goto_2e

    .line 8017
    .end local v4    # "eventType":I
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v11    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4c
    move-exception v2

    .line 8018
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 8023
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_50
    :goto_50
    if-eqz v10, :cond_55

    .line 8025
    :try_start_52
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_5c

    :cond_55
    :goto_55
    move-object v12, v9

    .line 8031
    goto :goto_12

    .line 8019
    :catch_57
    move-exception v2

    .line 8020
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 8026
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5c
    move-exception v2

    .line 8027
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55
.end method

.method private intToByteArray(I)[B
    .registers 7
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x4

    .line 6842
    new-array v0, v4, [B

    .line 6843
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v4, :cond_16

    .line 6844
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v2, v3, 0x8

    .line 6845
    .local v2, "offset":I
    ushr-int v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 6843
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6847
    .end local v2    # "offset":I
    :cond_16
    return-object v0
.end method

.method private isCdmaOrLteRat(I)Z
    .registers 3
    .param p1, "radioTech"    # I

    .prologue
    .line 1472
    const/4 v0, 0x0

    .line 1473
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_8

    .line 1486
    :goto_4
    :pswitch_4
    return v0

    .line 1481
    :pswitch_5
    const/4 v0, 0x1

    .line 1482
    goto :goto_4

    .line 1473
    nop

    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isDmLoggingPID()Z
    .registers 4

    .prologue
    .line 6796
    const-string/jumbo v1, "ril.dmlog.completed"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6797
    .local v0, "dmDaemonState":Ljava/lang/String;
    const-string/jumbo v1, "portError"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string/jumbo v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public static isSelectTelecomDF()Z
    .registers 1

    .prologue
    .line 6102
    sget-boolean v0, isSelecttelecomDF:Z

    return v0
.end method

.method public static isUsaCdmaModel()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 8096
    sget-object v1, mConfigNetworkTypeCapability:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8104
    :cond_9
    :goto_9
    return v0

    .line 8100
    :cond_a
    sget-object v1, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v2, "-GLB-USA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1e

    sget-object v1, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v2, "-CDM-USA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9

    .line 8101
    :cond_1e
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static isWIFIConnected()Z
    .registers 2

    .prologue
    .line 6147
    const-string v1, "gsm.wifiConnected.active"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6149
    .local v0, "wifiConnected":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6150
    const/4 v1, 0x1

    .line 6152
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .registers 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 4088
    const-string v0, ""

    .line 4089
    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4090
    .local v4, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4092
    .local v3, "v":Ljava/lang/String;
    const v5, 0x7fffffff

    if-ne p2, v5, :cond_26

    .line 4093
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "putIntAtIndex index == MAX_VALUE index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4095
    :cond_26
    if-gez p2, :cond_42

    .line 4096
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "putIntAtIndex index < 0 index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4098
    :cond_42
    if-eqz v3, :cond_4a

    .line 4099
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4103
    :cond_4a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4b
    if-ge v1, p2, :cond_70

    .line 4104
    const-string v2, ""

    .line 4105
    .local v2, "str":Ljava/lang/String;
    if-eqz v4, :cond_56

    array-length v5, v4

    if-ge v1, v5, :cond_56

    .line 4106
    aget-object v2, v4, v1

    .line 4108
    :cond_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4103
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 4111
    .end local v2    # "str":Ljava/lang/String;
    :cond_70
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4114
    if-eqz v4, :cond_a4

    .line 4115
    add-int/lit8 v1, p2, 0x1

    :goto_85
    array-length v5, v4

    if-ge v1, v5, :cond_a4

    .line 4116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4115
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 4119
    :cond_a4
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static setImsLine1Number(Ljava/lang/String;)V
    .registers 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 7900
    sget-boolean v0, SHIP_BUILD:Z

    if-eqz v0, :cond_f

    .line 7901
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "setImsLine1Number"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7906
    :goto_c
    sput-object p0, mImsLineNumber:Ljava/lang/String;

    .line 7907
    return-void

    .line 7903
    :cond_f
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsLine1Number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public static setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3989
    const-string v3, ""

    .line 3990
    .local v3, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3991
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3993
    .local v2, "prop":Ljava/lang/String;
    if-nez p2, :cond_b

    .line 3994
    const-string p2, ""

    .line 3997
    :cond_b
    if-eqz v2, :cond_13

    .line 3998
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4001
    :cond_13
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_51

    .line 4002
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: invalid phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " property="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " prop="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    :goto_50
    return-void

    .line 4007
    :cond_51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_52
    if-ge v0, p0, :cond_77

    .line 4008
    const-string v4, ""

    .line 4009
    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_5d

    array-length v5, v1

    if-ge v0, v5, :cond_5d

    .line 4010
    aget-object v4, v1, v0

    .line 4012
    :cond_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4007
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 4015
    .end local v4    # "str":Ljava/lang/String;
    :cond_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4016
    if-eqz v1, :cond_ab

    .line 4017
    add-int/lit8 v0, p0, 0x1

    :goto_8c
    array-length v5, v1

    if-ge v0, v5, :cond_ab

    .line 4018
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4017
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 4022
    :cond_ab
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_bb

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x5b

    if-le v5, v6, :cond_f4

    .line 4024
    :cond_bb
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: property to long phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " property="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " propVal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50

    .line 4029
    :cond_f4
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: success phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " property="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " propVal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50
.end method

.method private validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 6803
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_b} :catch_83

    move-result-object v4

    .line 6811
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_10
    if-ge v2, v3, :cond_c0

    aget-object v5, v0, v2

    .line 6812
    .local v5, "signature":Landroid/content/pm/Signature;
    const-string v8, "SKT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 6813
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_5e

    .line 6814
    const-string v8, "DmLoggingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6815
    const-string v8, "DmLoggingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " -"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6818
    :cond_5e
    const-string v8, "3082019b30820104a00302010202044c6b473a300d06092a864886f70d010105050030123110300e06035504031307616e64726f6964301e170d3130303831383032333634325a170d3430303831303032333634325a30123110300e06035504031307616e64726f696430819f300d06092a864886f70d010101050003818d00308189028181008e22b5c794e4621f5acf64431605f6f03301e8af027353d1952f3cd6acb5ce50a02bbc85822bf21ee5ee84410ed5c847233de58790d3309799e6e3e91eff8cb8db56ae7b64f691e3a522f78ec869b093720236152410bce1242bbe567fa9c2e1e4efdeb8feabe027d264501fe0ea65777b49b0bed6b806bd888c195394fd2a230203010001300d06092a864886f70d010105050003818100760b171ab6383e2b4170136ebb253e8226d2af2d31c3196c4914c92cea6e91072827b581a639a427fd4302842c5e2be9418d5226745d6ed6cef06904505c7a6ef51897368251a46fc9aae61fc4778ccb85432c801d64cd818f436e686753cccd4aa76e3bcfe3355a73c4bc1e5b239e453fc739b52959cd7de0e617e4072017b0"

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_76

    const-string v8, "3082033b30820223a00302010202046949927c300d06092a864886f70d01010b0500304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e3020170d3133303731373034303731315a180f32313133303632333034303731315a304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e30820122300d06092a864886f70d01010105000382010f003082010a02820101009054ef68216a1db045aa95d5b71120701ae32b55f692ba4a033e4fd8531d7614ce0a8dc058cf2d11857f68138a3579f5f81eb7fcf6abc721e215868fd2866fae01f69967340267497410520a2cfffca58585cad43dfc5ece54de5c253a2d1e7391a09abeaca1cd2e2db7fb4d045f43ab1c4df0621b1e914322d2f1743d465021d540715b1ea7dafb9d3f25b77812f5998ad3a6befa48bb3ef46acfc50b8f093e2c42611ce1084221a28c6a26c96cb2a78c779e2edc41f859b8638b5c060ec608d92564e1ee355b6cf400888c7bd3fc6b3bd38bf4512d23153cb90a9c1b3c7c221cd15ffbd84abea143f4665bdab5fb969d1332e29499b487810c3324cf1927b10203010001a321301f301d0603551d0e041604149f6ccd79ff1fc86191fd86973cbe8ad3498752a6300d06092a864886f70d01010b05000382010100465ded5885849010ba16c05af54a55a4783db87fe46d3a2411866ca9819f7e734132c513ba370bec8bc657f5b507e8a6632e3cdcdd750b04c059f3e8ef999cd35c8ebc467351e7f16093672c267f4688640f0700d8bbf6f3340aeb447714267e8a4adb91773df43975e62b5ad24065719f3aec825b955442db1b88d6bde48ebed00431915f23991b58c1b24e7033f26f752ddd0c3a16dd4c5a2764055d5e09ae839e2c21404fdd5e90163f4e06305755700f883f11fd50a3277775b76373f6acac68a94faf3a29a798cfc8e869e786d5790e363adbd87037de537ffb2870591e3b5672bf7adaa0c86491041878d8277296fcf6089b5e8b1188c64d0d0bbd6db7"

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 6820
    :cond_76
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_82

    .line 6821
    const-string v7, "DmLoggingService"

    const-string/jumbo v8, "validateAppSignatureForPackage(), - DOD SIGNATURE !!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6838
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :cond_82
    :goto_82
    return v6

    .line 6804
    :catch_83
    move-exception v1

    .line 6805
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_a1

    .line 6806
    const-string v6, "DmLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateAppSignatureForPackage(), exception - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a1
    move v6, v7

    .line 6808
    goto :goto_82

    .line 6826
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "signature":Landroid/content/pm/Signature;
    :cond_a3
    const-string v8, "3082019d30820106a00302010202044f3193c6300d06092a864886f70d010105050030133111300f060355040a0c084c475f55706c7573301e170d3132303230373231313233385a170d3432303133303231313233385a30133111300f060355040a0c084c475f55706c757330819f300d06092a864886f70d010101050003818d0030818902818100872b7051b6c30272b6c200b809a90a4f7fa148bdb554a4b29df536018f256c624c6781006655a30eef98152781353b48da3aa739d8e0bdc2fcee10789438454bce9dcf081a3a8757ecb6f2985bcdec0b83e7ed46dc35ac36e3820442740b0b6c6e05ac17d49502708070e1137914eb26d2e63c9235efbb6d930a353c004228490203010001300d06092a864886f70d0101050500038181004157e820571e50c367497ab98c05375a7d8e40ea67ff3df8858226322faf91e5c12521266402ce9d2e946d25b0833cc7c4b39a2b28cae46e184b16f973a885fd2f607decafcb814ad326739a35d3703c140ac5bdbb18f1598f997e1ae52fcefeee88f3419db99379e63caa981a632d41a23549a0a03e843bf285ad6cdbcaa6f4"

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 6827
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_82

    .line 6828
    const-string v7, "DmLoggingService"

    const-string/jumbo v8, "validateAppSignatureForPackage(), -KNIGHT SIGNATURE !!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 6811
    :cond_bc
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 6835
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :cond_c0
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_cc

    .line 6836
    const-string v6, "DmLoggingService"

    const-string/jumbo v8, "validateAppSignatureForPackage(), - Not SIGNATURE ."

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    move v6, v7

    .line 6838
    goto :goto_82
.end method


# virtual methods
.method public answerRingingCall()V
    .registers 5

    .prologue
    .line 4779
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4780
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 4781
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4785
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 4782
    :catch_a
    move-exception v0

    .line 4783
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#answerRingingCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public answerRingingCall(I)V
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 4792
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4793
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 4794
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCallForSubscriber(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4798
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 4795
    :catch_a
    move-exception v0

    .line 4796
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#answerRingingCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public calculateAkaResponse([B[B)Ljava/lang/String;
    .registers 6
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v1, 0x0

    .line 7627
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->calculateAkaResponse([B[B)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 7631
    :goto_9
    return-object v1

    .line 7628
    :catch_a
    move-exception v0

    .line 7629
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7630
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7631
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;
    .registers 7
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v2, 0x0

    .line 7692
    const/4 v0, 0x0

    .line 7695
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_2
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_9} :catch_f

    move-result-object v0

    .line 7702
    if-nez v0, :cond_11

    .line 7705
    :goto_c
    return-object v2

    .line 7696
    :catch_d
    move-exception v1

    .line 7697
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_c

    .line 7698
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v1

    .line 7699
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_c

    .line 7705
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_11
    new-instance v2, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;

    invoke-direct {v2, p0, v0}, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Bundle;)V

    goto :goto_c
.end method

.method public calculateNafExternalKey([B)[B
    .registers 5
    .param p1, "nafId"    # [B

    .prologue
    const/4 v1, 0x0

    .line 7712
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->calculateNafExternalKey([B)[B
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 7716
    :goto_9
    return-object v1

    .line 7713
    :catch_a
    move-exception v0

    .line 7714
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7715
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7716
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public call(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 4728
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4729
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 4730
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4734
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 4731
    :catch_a
    move-exception v0

    .line 4732
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#call"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 4715
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4716
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 4717
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4721
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 4718
    :catch_a
    move-exception v0

    .line 4719
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#call"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public canChangeDtmfToneLength()Z
    .registers 5

    .prologue
    .line 5324
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5325
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5326
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->canChangeDtmfToneLength()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_15

    move-result v2

    .line 5333
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5328
    :catch_b
    move-exception v0

    .line 5329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5333
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const/4 v2, 0x0

    goto :goto_a

    .line 5330
    :catch_15
    move-exception v0

    .line 5331
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "TelephonyManager"

    const-string v3, "Permission error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4638
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4639
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 4640
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_15

    move-result v2

    .line 4646
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4641
    :catch_b
    move-exception v0

    .line 4642
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "checkCarrierPrivilegesForPackage RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4646
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const/4 v2, 0x0

    goto :goto_a

    .line 4643
    :catch_15
    move-exception v0

    .line 4644
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string v3, "checkCarrierPrivilegesForPackage NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4653
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4654
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 4655
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_15

    move-result v2

    .line 4661
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4656
    :catch_b
    move-exception v0

    .line 4657
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "checkCarrierPrivilegesForPackageAnyPhone RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4661
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const/4 v2, 0x0

    goto :goto_a

    .line 4658
    :catch_15
    move-exception v0

    .line 4659
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string v3, "checkCarrierPrivilegesForPackageAnyPhone NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public closeLockChannel(I)Z
    .registers 6
    .param p1, "channel"    # I

    .prologue
    .line 7484
    const/4 v1, 0x0

    .line 7486
    .local v1, "result":Z
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_13

    move-result v1

    .line 7492
    :goto_9
    return v1

    .line 7487
    :catch_a
    move-exception v0

    .line 7488
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "closeLockChannel(), RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 7489
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 7490
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string v3, "closeLockChannel(), NullPointerException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public dial(ILjava/lang/String;)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 4702
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4703
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 4704
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->dialForSubscriber(ILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4708
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 4705
    :catch_a
    move-exception v0

    .line 4706
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#dial"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public dial(Ljava/lang/String;)V
    .registers 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 4689
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4690
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 4691
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4695
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 4692
    :catch_a
    move-exception v0

    .line 4693
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#dial"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public disableDataConnectivity()Z
    .registers 5

    .prologue
    .line 5170
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5171
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5172
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 5176
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5173
    :catch_b
    move-exception v0

    .line 5174
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5176
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 1027
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, disableLocationUpdates(I)V

    .line 1028
    return-void
.end method

.method public disableLocationUpdates(I)V
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 1033
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1034
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 1035
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesForSubscriber(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1039
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 1037
    :catch_a
    move-exception v1

    goto :goto_9

    .line 1036
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public enableDataConnectivity()Z
    .registers 5

    .prologue
    .line 5157
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5158
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5159
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 5163
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5160
    :catch_b
    move-exception v0

    .line 5161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5163
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 993
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, enableLocationUpdates(I)V

    .line 994
    return-void
.end method

.method public enableLocationUpdates(I)V
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 1009
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1010
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 1011
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesForSubscriber(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1015
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 1013
    :catch_a
    move-exception v1

    goto :goto_9

    .line 1012
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public enableVideoCalling(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 5296
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5297
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 5298
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableVideoCalling(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 5302
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 5299
    :catch_a
    move-exception v0

    .line 5300
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#enableVideoCalling"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public endCall()Z
    .registers 6

    .prologue
    .line 4741
    sget-boolean v2, SHIP_BUILD:Z

    if-nez v2, :cond_c

    .line 4742
    const-string v2, "TelephonyManager"

    const-string v3, "endCall"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/telephony/Rlog;->dumpCallStack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4746
    :cond_c
    :try_start_c
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4747
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1f

    .line 4748
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result v2

    .line 4752
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_16
    return v2

    .line 4749
    :catch_17
    move-exception v0

    .line 4750
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#endCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4752
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public endCall(I)Z
    .registers 7
    .param p1, "subId"    # I

    .prologue
    .line 4760
    sget-boolean v2, SHIP_BUILD:Z

    if-nez v2, :cond_c

    .line 4761
    const-string v2, "TelephonyManager"

    const-string v3, "endCall(subId)"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/telephony/Rlog;->dumpCallStack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4765
    :cond_c
    :try_start_c
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4766
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1f

    .line 4767
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->endCallForSubscriber(I)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_17

    move-result v2

    .line 4771
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_16
    return v2

    .line 4768
    :catch_17
    move-exception v0

    .line 4769
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#endCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4771
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public factoryReset(I)V
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 5855
    :try_start_0
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "factoryReset: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5856
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5857
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_21

    .line 5858
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->factoryReset(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    .line 5861
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_21
    :goto_21
    return-void

    .line 5859
    :catch_22
    move-exception v1

    goto :goto_21
.end method

.method public feliCaUimLock(I[ILjava/lang/String;)Ljava/lang/String;
    .registers 26
    .param p1, "changestate"    # I
    .param p2, "cmd"    # [I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 7342
    const/16 v18, 0x0

    .line 7343
    .local v18, "result":Ljava/lang/String;
    const/16 v16, 0x0

    .line 7344
    .local v16, "resAPDU":I
    const/16 v17, -0x1

    .line 7345
    .local v17, "resType":I
    const/4 v10, 0x1

    .line 7346
    .local v10, "RESP_EF_LOCK_LOCK_USER":I
    const/4 v11, 0x2

    .line 7347
    .local v11, "RESP_EF_LOCK_UNLOCK_USER":I
    const/4 v8, 0x0

    .line 7348
    .local v8, "EF_LOCK_OFF":I
    const/4 v9, 0x1

    .line 7349
    .local v9, "EF_LOCK_ON":I
    const/4 v15, 0x0

    .line 7350
    .local v15, "mEFLockUser":I
    const/4 v14, 0x0

    .line 7352
    .local v14, "mEFLockRemote":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    move-object/from16 v19, v18

    .line 7412
    .end local v18    # "result":Ljava/lang/String;
    .local v19, "result":Ljava/lang/String;
    :goto_1a
    return-object v19

    .line 7358
    .end local v19    # "result":Ljava/lang/String;
    .restart local v18    # "result":Ljava/lang/String;
    :cond_1b
    :try_start_1b
    const-string v1, "TelephonyManager"

    const-string v2, "feliCaUimLock(), start"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7360
    invoke-direct/range {p0 .. p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    const/4 v5, 0x3

    aget v5, p2, v5

    const/4 v6, 0x4

    aget v6, p2, v6

    move-object/from16 v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 7362
    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v20

    .line 7363
    .local v20, "sw1":I
    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v21

    .line 7365
    .local v21, "sw2":I
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feliCaUimLock(), return : sw1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ sw2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7366
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_148

    .line 7367
    move/from16 v17, v10

    .line 7371
    :goto_84
    const/16 v1, 0x90

    move/from16 v0, v20

    if-ne v0, v1, :cond_14f

    if-nez v21, :cond_14f

    .line 7372
    const v16, 0x9000

    .line 7373
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_14c

    .line 7374
    move v15, v9

    .line 7391
    :goto_95
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7392
    .local v13, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "responseType"

    move/from16 v0, v17

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7393
    const-string/jumbo v1, "responseApdu"

    move/from16 v0, v16

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7394
    const-string v1, "efLockUser"

    invoke-virtual {v13, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7395
    const-string v1, "efLockRemote"

    invoke-virtual {v13, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7396
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_137

    .line 7397
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify   [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7398
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APDU res [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7399
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserLock [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7400
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteLock [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7402
    :cond_137
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7403
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, getFeliCaUimLockStatus(I)I
    :try_end_144
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_144} :catch_190
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_144} :catch_19b

    .end local v13    # "intent":Landroid/content/Intent;
    .end local v20    # "sw1":I
    .end local v21    # "sw2":I
    :goto_144
    move-object/from16 v19, v18

    .line 7412
    .end local v18    # "result":Ljava/lang/String;
    .restart local v19    # "result":Ljava/lang/String;
    goto/16 :goto_1a

    .line 7369
    .end local v19    # "result":Ljava/lang/String;
    .restart local v18    # "result":Ljava/lang/String;
    .restart local v20    # "sw1":I
    .restart local v21    # "sw2":I
    :cond_148
    move/from16 v17, v11

    goto/16 :goto_84

    .line 7376
    :cond_14c
    move v15, v8

    goto/16 :goto_95

    .line 7379
    :cond_14f
    const/16 v1, 0x69

    move/from16 v0, v20

    if-ne v0, v1, :cond_15f

    const/16 v1, 0x82

    move/from16 v0, v21

    if-ne v0, v1, :cond_15f

    .line 7380
    const/16 v16, 0x6982

    goto/16 :goto_95

    .line 7381
    :cond_15f
    const/16 v1, 0x69

    move/from16 v0, v20

    if-ne v0, v1, :cond_16f

    const/16 v1, 0x83

    move/from16 v0, v21

    if-ne v0, v1, :cond_16f

    .line 7382
    const/16 v16, 0x6983

    goto/16 :goto_95

    .line 7383
    :cond_16f
    const/16 v1, 0x69

    move/from16 v0, v20

    if-ne v0, v1, :cond_17f

    const/16 v1, 0x85

    move/from16 v0, v21

    if-ne v0, v1, :cond_17f

    .line 7384
    const/16 v16, 0x6985

    goto/16 :goto_95

    .line 7385
    :cond_17f
    const/16 v1, 0x6d

    move/from16 v0, v20

    if-ne v0, v1, :cond_18b

    if-nez v21, :cond_18b

    .line 7386
    const/16 v16, 0x6d00

    goto/16 :goto_95

    .line 7388
    :cond_18b
    const v16, 0xffff

    goto/16 :goto_95

    .line 7404
    .end local v20    # "sw1":I
    .end local v21    # "sw2":I
    :catch_190
    move-exception v12

    .line 7406
    .local v12, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "feliCaUimLock(), RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7407
    const/16 v18, 0x0

    .line 7411
    goto :goto_144

    .line 7408
    .end local v12    # "ex":Landroid/os/RemoteException;
    :catch_19b
    move-exception v12

    .line 7409
    .local v12, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyManager"

    const-string v2, "feliCaUimLock(), NullPointerException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7410
    const/16 v18, 0x0

    goto :goto_144
.end method

.method public getAllCellInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3368
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3369
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 3375
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return-object v2

    .line 3371
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_13

    move-result-object v2

    goto :goto_7

    .line 3372
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_11
    move-exception v0

    .line 3373
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 3374
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 3375
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getBtid()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7649
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getBtid()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 7653
    :goto_9
    return-object v1

    .line 7650
    :catch_a
    move-exception v0

    .line 7651
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7652
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7653
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getCallState()I
    .registers 5

    .prologue
    .line 2950
    :try_start_0
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 2951
    .local v1, "telecom":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_13

    .line 2952
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getCallState()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 2957
    .end local v1    # "telecom":Lcom/android/internal/telecom/ITelecomService;
    :goto_a
    return v2

    .line 2954
    :catch_b
    move-exception v0

    .line 2955
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelecomService#getCallState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2957
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getCallState(I)I
    .registers 5
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2969
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2970
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 2978
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return v2

    .line 2972
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSubscriber(I)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result v2

    goto :goto_7

    .line 2973
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v0

    .line 2975
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2976
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 2978
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4667
    invoke-static {}, getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, p1, v0}, getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4674
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4675
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 4676
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_15

    move-result-object v2

    .line 4682
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v2

    .line 4677
    :catch_b
    move-exception v0

    .line 4678
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getCarrierPackageNamesForIntentAndPhone RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4682
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const/4 v2, 0x0

    goto :goto_a

    .line 4679
    :catch_15
    move-exception v0

    .line 4680
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string v3, "getCarrierPackageNamesForIntentAndPhone NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public getCdmaEriIconIndex()I
    .registers 2

    .prologue
    .line 3148
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getCdmaEriIconIndex(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, -0x1

    .line 3160
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3161
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 3168
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return v2

    .line 3163
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_13

    move-result v2

    goto :goto_7

    .line 3164
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_11
    move-exception v0

    .line 3166
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 3167
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 3168
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getCdmaEriIconMode()I
    .registers 2

    .prologue
    .line 3183
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getCdmaEriIconMode(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, -0x1

    .line 3198
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3199
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 3206
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return v2

    .line 3201
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_13

    move-result v2

    goto :goto_7

    .line 3202
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_11
    move-exception v0

    .line 3204
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 3205
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 3206
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3219
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getCdmaEriText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3232
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3233
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 3240
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return-object v2

    .line 3235
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_13

    move-result-object v2

    goto :goto_7

    .line 3236
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_11
    move-exception v0

    .line 3238
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 3239
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 3240
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getCdmaMdn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4595
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getCdmaMdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 4602
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4603
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 4609
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return-object v2

    .line 4605
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMdn(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 4606
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v0

    .line 4607
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 4608
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 4609
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getCdmaMin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4616
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getCdmaMin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 4623
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4624
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 4630
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return-object v2

    .line 4626
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMin(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 4627
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v0

    .line 4628
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 4629
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 4630
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 958
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 959
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v3, :cond_10

    .line 960
    const-string v5, "TelephonyManager"

    const-string v6, "getCellLocation returning null because telephony is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 979
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    :goto_f
    return-object v1

    .line 963
    .restart local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/ITelephony;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 964
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 965
    const-string v5, "TelephonyManager"

    const-string v6, "getCellLocation returning null because bundle is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 966
    goto :goto_f

    .line 968
    :cond_29
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 969
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 970
    const-string v5, "TelephonyManager"

    const-string v6, "getCellLocation returning null because CellLocation is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3a} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_3a} :catch_57

    move-object v1, v4

    .line 971
    goto :goto_f

    .line 974
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_3c
    move-exception v2

    .line 975
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 976
    goto :goto_f

    .line 977
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_57
    move-exception v2

    .line 978
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCellLocation returning null due to NullPointerException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 979
    goto :goto_f
.end method

.method public getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 4381
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4382
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 4383
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_15

    move-result-object v2

    .line 4389
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v2

    .line 4384
    :catch_b
    move-exception v0

    .line 4385
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getCellNetworkScanResults RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4389
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const/4 v2, 0x0

    goto :goto_a

    .line 4386
    :catch_15
    move-exception v0

    .line 4387
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string v3, "getCellNetworkScanResults NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2658
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getCompleteVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2672
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2673
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2680
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2675
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 2676
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 2677
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2678
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 2680
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getCurrentPhoneType()I
    .registers 2

    .prologue
    .line 1087
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPhoneType(I)I
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v3, -0x1

    .line 1103
    if-ne p1, v3, :cond_11

    .line 1106
    const/4 v1, 0x0

    .line 1111
    .local v1, "phoneId":I
    :goto_4
    :try_start_4
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1112
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_16

    if-eq p1, v3, :cond_16

    .line 1113
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSubscriber(I)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_f} :catch_21

    move-result v3

    .line 1125
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_10
    return v3

    .line 1108
    .end local v1    # "phoneId":I
    :cond_11
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .restart local v1    # "phoneId":I
    goto :goto_4

    .line 1116
    .restart local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    :try_start_16
    invoke-direct {p0, v1}, getPhoneTypeFromProperty(I)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_19} :catch_21

    move-result v3

    goto :goto_10

    .line 1118
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_1b
    move-exception v0

    .line 1121
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v1}, getPhoneTypeFromProperty(I)I

    move-result v3

    goto :goto_10

    .line 1122
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_21
    move-exception v0

    .line 1125
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0, v1}, getPhoneTypeFromProperty(I)I

    move-result v3

    goto :goto_10
.end method

.method public getDataActivity()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3008
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3009
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 3017
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return v2

    .line 3011
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result v2

    goto :goto_7

    .line 3012
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v0

    .line 3014
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 3015
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 3017
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getDataEnabled()Z
    .registers 2

    .prologue
    .line 5230
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0, v0}, getDataEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getDataEnabled(I)Z
    .registers 8
    .param p1, "subId"    # I

    .prologue
    .line 5236
    const/4 v1, 0x0

    .line 5238
    .local v1, "retVal":Z
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5239
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_b

    .line 5240
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_2d

    move-result v1

    .line 5245
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_b
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataEnabled: retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5246
    return v1

    .line 5241
    :catch_24
    move-exception v0

    .line 5242
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    const-string v4, "Error calling ITelephony#getDataEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 5243
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2d
    move-exception v3

    goto :goto_b
.end method

.method public getDataNetworkType()I
    .registers 2

    .prologue
    .line 1717
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getDataNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataNetworkType(I)I
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1734
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1735
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_f

    .line 1736
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_12

    move-result v2

    .line 1746
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    :goto_f
    return v2

    .line 1741
    :catch_10
    move-exception v0

    .line 1743
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_f

    .line 1744
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 1746
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_f
.end method

.method public getDataRoamingEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5978
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataRoamingEnabled()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 5982
    :goto_9
    return v1

    .line 5979
    :catch_a
    move-exception v0

    .line 5980
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 5981
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 5982
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDataRoamingEnabled(I)Z
    .registers 5
    .param p1, "lSubId"    # I

    .prologue
    const/4 v1, 0x0

    .line 5991
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataRoamingEnabledUsingSubID(I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 5995
    :goto_9
    return v1

    .line 5992
    :catch_a
    move-exception v0

    .line 5993
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 5994
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 5995
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getDataServiceState()I
    .registers 3

    .prologue
    .line 6060
    const/4 v0, 0x0

    .line 6062
    .local v0, "state":I
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataServiceState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 6066
    :goto_9
    return v0

    .line 6064
    :catch_a
    move-exception v1

    goto :goto_9

    .line 6063
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public getDataServiceState(I)I
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 6074
    const/4 v0, 0x0

    .line 6076
    .local v0, "state":I
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDataServiceStateUsingSubId(I)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 6080
    :goto_9
    return v0

    .line 6078
    :catch_a
    move-exception v1

    goto :goto_9

    .line 6077
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public getDataServiceState(J)I
    .registers 6
    .param p1, "subId"    # J

    .prologue
    .line 6090
    long-to-int v0, p1

    .line 6091
    .local v0, "sub":I
    invoke-virtual {p0, v0}, getDataServiceState(I)I

    move-result v1

    return v1
.end method

.method public getDataState()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3047
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3048
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 3055
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return v2

    .line 3050
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result v2

    goto :goto_7

    .line 3051
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v0

    .line 3053
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 3054
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 3055
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getDataState(I)I
    .registers 5
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3071
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3072
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 3079
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return v2

    .line 3074
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getDataStateSimSlot(I)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result v2

    goto :goto_7

    .line 3075
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v0

    .line 3077
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 3078
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 3079
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getDefaultSim()I
    .registers 2

    .prologue
    .line 3980
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 809
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 810
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 816
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return-object v2

    .line 812
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_15

    move-result-object v2

    goto :goto_7

    .line 813
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_13
    move-exception v0

    .line 814
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 815
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_15
    move-exception v0

    .line 816
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .registers 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 832
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 833
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 839
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 835
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_15

    move-result-object v2

    goto :goto_7

    .line 836
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_13
    move-exception v0

    .line 837
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 838
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_15
    move-exception v0

    .line 839
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 760
    invoke-static {}, getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .registers 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 777
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 778
    .local v2, "subId":[I
    if-eqz v2, :cond_a

    array-length v4, v2

    if-nez v4, :cond_b

    .line 796
    :cond_a
    :goto_a
    return-object v3

    .line 782
    :cond_b
    const-string v4, "SPR"

    invoke-static {}, getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 784
    invoke-static {}, getLteOnCdmaModeStatic()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_25

    .line 785
    const-string v3, "gsm.version.baseband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 789
    :cond_25
    :try_start_25
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 790
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-eqz v1, :cond_a

    .line 792
    const/4 v4, 0x0

    aget v4, v2, v4

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_37} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_37} :catch_3b

    move-result-object v3

    goto :goto_a

    .line 793
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_39
    move-exception v0

    .line 794
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_a

    .line 795
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3b
    move-exception v0

    .line 796
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_a
.end method

.method public getDisable2g()I
    .registers 5

    .prologue
    .line 8040
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8041
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 8042
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDisable2g()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 8046
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 8043
    :catch_b
    move-exception v0

    .line 8044
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getDisable2g"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8046
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, -0x1

    goto :goto_a
.end method

.method public getEuimid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 7953
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getEuimid()Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 7956
    :goto_8
    return-object v1

    .line 7954
    :catch_9
    move-exception v0

    .line 7955
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "error calling itelephony#getEuimid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7956
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getFeliCaUimLockStatus(I)I
    .registers 7
    .param p1, "option"    # I

    .prologue
    .line 7421
    const/4 v1, 0x0

    .line 7423
    .local v1, "result":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v1

    .line 7437
    :goto_e
    return v2

    .line 7427
    :cond_f
    :try_start_f
    const-string v2, "TelephonyManager"

    const-string v3, "getFeliCaUimLockStatus(), start"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7428
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getFeliCaUimLockStatus(I)I

    move-result v1

    .line 7429
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFeliCaUimLockStatus(), result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_36} :catch_38
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_36} :catch_42

    move v2, v1

    .line 7437
    goto :goto_e

    .line 7430
    :catch_38
    move-exception v0

    .line 7431
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getFeliCaUimLockStatus(), RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7432
    const/4 v2, -0x1

    goto :goto_e

    .line 7433
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_42
    move-exception v0

    .line 7434
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string v3, "getFeliCaUimLockStatus(), NullPointerException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7435
    const/4 v2, -0x2

    goto :goto_e
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2365
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2366
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2373
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2368
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_15

    move-result-object v2

    goto :goto_7

    .line 2369
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_13
    move-exception v0

    .line 2370
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2371
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_15
    move-exception v0

    .line 2373
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2389
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2390
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2397
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2392
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_15

    move-result-object v2

    goto :goto_7

    .line 2393
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_13
    move-exception v0

    .line 2394
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2395
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_15
    move-exception v0

    .line 2397
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4265
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 4266
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 4273
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 4268
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 4269
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 4270
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 4271
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 4273
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "appType"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 4286
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    .prologue
    .line 851
    invoke-virtual {p0}, getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei(I)Ljava/lang/String;
    .registers 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 864
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 866
    .local v2, "subId":[I
    :try_start_5
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 867
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_c

    .line 873
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_b
    return-object v3

    .line 869
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_c
    const/4 v4, 0x0

    aget v4, v2, v4

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_18} :catch_1c

    move-result-object v3

    goto :goto_b

    .line 870
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_1a
    move-exception v0

    .line 871
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_b

    .line 872
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1c
    move-exception v0

    .line 873
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_b
.end method

.method public getImsRegisteredFeature()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5945
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImsRegisteredFeature()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 5950
    :goto_9
    return v1

    .line 5946
    :catch_a
    move-exception v0

    .line 5947
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 5948
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 5950
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimAid()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7671
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimAid()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 7675
    :goto_9
    return-object v1

    .line 7672
    :catch_a
    move-exception v0

    .line 7673
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7674
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7675
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getIsimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I
    .param p2, "nonce"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4242
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 4243
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 4250
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 4245
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimChallengeResponseForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 4246
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 4247
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 4248
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 4250
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4219
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 4220
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 4227
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 4222
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 4223
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 4224
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 4225
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 4227
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getIsimDomain()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2833
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2834
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2841
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2836
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 2837
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 2838
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2839
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 2841
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2852
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2853
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2860
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2855
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomainForSubscriber(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 2856
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 2857
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2858
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 2860
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getIsimImpi()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2795
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2796
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2803
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2798
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 2799
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 2800
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2801
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 2803
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2814
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2815
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2822
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2817
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpiForSubscriber(I)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 2818
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 2819
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2820
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 2822
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2872
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2873
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2880
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2875
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 2876
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 2877
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2878
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 2880
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .registers 5
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2892
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2893
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2900
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2895
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpuForSubscriber(I)[Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 2896
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 2897
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2898
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 2900
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getIsimIst()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4177
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 4178
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 4185
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 4180
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 4181
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 4182
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 4183
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 4185
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 4197
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 4198
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 4205
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 4200
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_7

    .line 4201
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_d
    move-exception v0

    .line 4202
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 4203
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 4205
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getKeyLifetime()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7660
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getKeyLifetime()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 7664
    :goto_9
    return-object v1

    .line 7661
    :catch_a
    move-exception v0

    .line 7662
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7663
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7664
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLGUplusKnightInfo()Ljava/util/HashMap;
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 6650
    const-string v6, "LGT"

    const-string v7, "EUR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    :cond_17
    move-object v4, v5

    .line 6699
    :goto_18
    return-object v4

    .line 6656
    :cond_19
    const/4 v3, 0x0

    .line 6657
    .local v3, "mLGUplusKnightInfo":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6659
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1f
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/ITelephony;->getMobileQualityInformation()Ljava/lang/String;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_110

    move-result-object v3

    .line 6666
    const/4 v0, 0x0

    .line 6668
    .local v0, "Values":[Ljava/lang/String;
    :try_start_28
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_12c

    move-result-object v0

    .line 6673
    const-string v5, "getLGUplusKnightInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6675
    const-string v5, "IMSI"

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6676
    const-string v5, "GUTI"

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6677
    const-string v5, "IP"

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6678
    const-string v5, "Antenna Bar"

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6679
    const-string v5, "NV Mode"

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6680
    const-string v5, "Service State"

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6681
    const-string v5, "LAC"

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6682
    const-string v5, "TAC"

    const/4 v6, 0x7

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6683
    const-string v5, "Band"

    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6684
    const-string v5, "Bandwidth"

    const/16 v6, 0x9

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6685
    const-string v5, "PCI"

    const/16 v6, 0xa

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6686
    const-string v5, "TX"

    const/16 v6, 0xb

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6687
    const-string v5, "RSSI"

    const/16 v6, 0xc

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6688
    const-string v5, "RSRP"

    const/16 v6, 0xd

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6689
    const-string v5, "RSRQ"

    const/16 v6, 0xe

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6690
    const-string v5, "SINR"

    const/16 v6, 0xf

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6691
    const-string v5, "EARFCN downlink"

    const/16 v6, 0x10

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6692
    const-string v5, "EARFCN uplink"

    const/16 v6, 0x11

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6693
    const-string v5, "EMM cause"

    const/16 v6, 0x12

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6694
    const-string v5, "EMM state"

    const/16 v6, 0x13

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6695
    const-string v5, "EMM connection state"

    const/16 v6, 0x14

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6696
    const-string v5, "Default Bearer count"

    const/16 v6, 0x15

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6697
    const-string v5, "Dedicated Bearer count"

    const/16 v6, 0x16

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_18

    .line 6660
    .end local v0    # "Values":[Ljava/lang/String;
    :catch_110
    move-exception v2

    .line 6661
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v6, "TelephonyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMobileQualityInformation() - Exception occured : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 6662
    goto/16 :goto_18

    .line 6669
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "Values":[Ljava/lang/String;
    :catch_12c
    move-exception v1

    .line 6670
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "TelephonyManager"

    const-string v7, "getLGUplusKnightInfo() - Values is not valid"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 6671
    goto/16 :goto_18
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2520
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getLine1AlphaTagForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagForSubscriber(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2535
    const/4 v0, 0x0

    .line 2537
    .local v0, "alphaTag":Ljava/lang/String;
    :try_start_2
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 2538
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_10

    .line 2539
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_f} :catch_2a

    move-result-object v0

    .line 2544
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    :goto_10
    if-eqz v0, :cond_13

    .line 2556
    .end local v0    # "alphaTag":Ljava/lang/String;
    :goto_12
    return-object v0

    .line 2548
    .restart local v0    # "alphaTag":Ljava/lang/String;
    :cond_13
    :try_start_13
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2549
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_1b

    move-object v0, v4

    .line 2550
    goto :goto_12

    .line 2551
    :cond_1b
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_22} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_22} :catch_27

    move-result-object v0

    goto :goto_12

    .line 2552
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_24
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    move-object v0, v4

    .line 2553
    goto :goto_12

    .line 2554
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_27
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    move-object v0, v4

    .line 2556
    goto :goto_12

    .line 2542
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_2a
    move-exception v5

    goto :goto_10

    .line 2541
    :catch_2c
    move-exception v5

    goto :goto_10
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2416
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnablePrivacyDataGuard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2417
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgUimAccessChecker;->checkPrivacy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2419
    const/4 v0, 0x0

    .line 2425
    :goto_15
    return-object v0

    :cond_16
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getLine1NumberForSubscriber(I)Ljava/lang/String;
    .registers 8
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2443
    const/4 v2, 0x0

    .line 2445
    .local v2, "number":Ljava/lang/String;
    :try_start_2
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 2446
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_12

    .line 2447
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Lcom/android/internal/telephony/ITelephony;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_11} :catch_2e

    move-result-object v2

    .line 2451
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    :goto_12
    if-eqz v2, :cond_15

    .line 2463
    .end local v2    # "number":Ljava/lang/String;
    :goto_14
    return-object v2

    .line 2455
    .restart local v2    # "number":Ljava/lang/String;
    :cond_15
    :try_start_15
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2456
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_1d

    move-object v2, v4

    .line 2457
    goto :goto_14

    .line 2458
    :cond_1d
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_26} :catch_28
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_26} :catch_2b

    move-result-object v2

    goto :goto_14

    .line 2459
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_28
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    move-object v2, v4

    .line 2460
    goto :goto_14

    .line 2461
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_2b
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    move-object v2, v4

    .line 2463
    goto :goto_14

    .line 2449
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_2e
    move-exception v5

    goto :goto_12

    .line 2448
    :catch_30
    move-exception v5

    goto :goto_12
.end method

.method public getLine1NumberType(I)Ljava/lang/String;
    .registers 5
    .param p1, "SimType"    # I

    .prologue
    const/4 v1, 0x0

    .line 7793
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberType(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 7798
    :goto_9
    return-object v1

    .line 7794
    :catch_a
    move-exception v0

    .line 7795
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7796
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7798
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5867
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5868
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_c

    .line 5869
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getLocaleFromDefaultSim()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 5873
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v1

    .line 5871
    :catch_b
    move-exception v1

    .line 5873
    :cond_c
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getLteOnCdmaMode()I
    .registers 2

    .prologue
    .line 2250
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getLteOnCdmaMode(I)I

    move-result v0

    return v0
.end method

.method public getLteOnCdmaMode(I)I
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, -0x1

    .line 2269
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2270
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 2278
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return v2

    .line 2272
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_13

    move-result v2

    goto :goto_7

    .line 2273
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_11
    move-exception v0

    .line 2275
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2276
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 2278
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getMeid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 918
    invoke-virtual {p0}, getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid(I)Ljava/lang/String;
    .registers 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 931
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 933
    .local v1, "subId":[I
    :try_start_5
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMeidForSubscriber(I)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_f} :catch_13

    move-result-object v2

    .line 937
    :goto_10
    return-object v2

    .line 934
    :catch_11
    move-exception v0

    .line 935
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_10

    .line 936
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 937
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_10
.end method

.method public getMergedSubscriberIds()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 2570
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2571
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_10

    .line 2572
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 2576
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return-object v1

    .line 2574
    :catch_f
    move-exception v1

    .line 2576
    :cond_10
    :goto_10
    const/4 v1, 0x0

    goto :goto_e

    .line 2573
    :catch_12
    move-exception v1

    goto :goto_10
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .registers 10

    .prologue
    .line 3471
    const-string v3, "http://wap.samsungmobile.com/uaprof/uaprof.rdf"

    .line 3472
    .local v3, "sUaProfUrl":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 3479
    .local v0, "cscFeature":Lcom/sec/android/app/CscFeature;
    const-string v7, "/system/csc/customer.xml"

    const-string v8, "MessageUaProfUrl"

    invoke-direct {p0, v7, v8}, getValuefromCSC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3481
    .local v2, "mmsUap_url":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 3482
    move-object v3, v2

    .line 3486
    :cond_11
    const-string v7, "CscFeature_Message_UaProfUrl"

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3488
    .local v1, "cscUapUrl":Ljava/lang/String;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_20

    .line 3489
    move-object v3, v1

    .line 3493
    :cond_20
    const-string v7, "CscFeature_RIL_MmsUapBuildid"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 3495
    const-string/jumbo v7, "ro.csc.sales_code"

    const-string v8, "NONE"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3496
    .local v4, "salesCode":Ljava/lang/String;
    const-string v7, "ATT"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a0

    .line 3497
    const-string/jumbo v7, "ro.cdma.home.operator.alpha"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3498
    .local v5, "sellerID":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.version.incremental"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3500
    .local v6, "version":Ljava/lang/String;
    const-string v7, "Sprint"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 3501
    const-string v5, "SPRINT"

    .line 3513
    :cond_52
    :goto_52
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_63

    .line 3514
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 3517
    :cond_63
    const-string v7, "SPR"

    invoke-static {}, getMainOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d5

    .line 3518
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".rdf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3526
    .end local v4    # "salesCode":Ljava/lang/String;
    .end local v5    # "sellerID":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :cond_a0
    :goto_a0
    if-eqz v3, :cond_f9

    .line 3531
    .end local v3    # "sUaProfUrl":Ljava/lang/String;
    :goto_a2
    return-object v3

    .line 3503
    .restart local v3    # "sUaProfUrl":Ljava/lang/String;
    .restart local v4    # "salesCode":Ljava/lang/String;
    .restart local v5    # "sellerID":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_a3
    const-string v7, "Virgin"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b3

    const-string v7, "Virgin Mobile"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 3504
    :cond_b3
    const-string v5, "VIRGIN"

    goto :goto_52

    .line 3505
    :cond_b6
    const-string v7, "Boost"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c6

    const-string v7, "Boost Mobile"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c9

    .line 3506
    :cond_c6
    const-string v5, "BOOST"

    goto :goto_52

    .line 3507
    :cond_c9
    const-string v7, "Samsung"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 3508
    const-string v5, "MVNO"

    goto/16 :goto_52

    .line 3521
    :cond_d5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".rdf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a0

    .line 3530
    .end local v4    # "salesCode":Ljava/lang/String;
    .end local v5    # "sellerID":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :cond_f9
    iget-object v7, p0, mContext:Landroid/content/Context;

    if-nez v7, :cond_ff

    const/4 v3, 0x0

    goto :goto_a2

    .line 3531
    :cond_ff
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040039

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a2
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .registers 11

    .prologue
    .line 3406
    const-string v4, "SAMSUNG-ANDROID-MMS/uaprof"

    .line 3409
    .local v4, "sUserAgent":Ljava/lang/String;
    const-string v8, "/system/csc/customer.xml"

    const-string v9, "MessageUserAgent"

    invoke-direct {p0, v8, v9}, getValuefromCSC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3411
    .local v2, "mmsUa":Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 3412
    move-object v4, v2

    .line 3416
    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 3417
    .local v0, "cscFeature":Lcom/sec/android/app/CscFeature;
    const-string v8, "CscFeature_Message_UserAgent"

    invoke-virtual {v0, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3418
    .local v1, "cscUa":Ljava/lang/String;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_20

    .line 3419
    move-object v4, v1

    .line 3422
    :cond_20
    const-string v8, "CscFeature_RIL_MmsUapBuildid"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 3424
    const-string/jumbo v8, "ro.cdma.home.operator.alpha"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3425
    .local v5, "sellerID":Ljava/lang/String;
    const-string/jumbo v8, "ro.build.version.incremental"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3426
    .local v7, "version":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3428
    .local v3, "model":Ljava/lang/String;
    const-string v8, "USAATTUserAgent"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 3429
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Mozilla/5.0 SMM-MMS/1.2.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3457
    .end local v3    # "model":Ljava/lang/String;
    .end local v5    # "sellerID":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :cond_5e
    :goto_5e
    if-eqz v4, :cond_ff

    .line 3462
    .end local v4    # "sUserAgent":Ljava/lang/String;
    :goto_60
    return-object v4

    .line 3431
    .restart local v3    # "model":Ljava/lang/String;
    .restart local v4    # "sUserAgent":Ljava/lang/String;
    .restart local v5    # "sellerID":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_61
    const-string v8, "Sprint"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 3433
    const-string v5, "SPRINT"

    .line 3434
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SAMSUNG_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3451
    :goto_84
    const-string v8, "SPR"

    invoke-static {}, getMainOperatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 3452
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5e

    .line 3437
    :cond_ae
    move-object v6, v5

    .line 3438
    .local v6, "sellerPrefix":Ljava/lang/String;
    const-string v8, "Virgin"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_bf

    const-string v8, "Virgin Mobile"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_dd

    .line 3439
    :cond_bf
    const-string v6, "VMUB"

    .line 3440
    const-string v5, "VIRGIN"

    .line 3448
    :cond_c3
    :goto_c3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_84

    .line 3441
    :cond_dd
    const-string v8, "Boost"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ed

    const-string v8, "Boost Mobile"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f2

    .line 3442
    :cond_ed
    const-string v6, "BST"

    .line 3443
    const-string v5, "BOOST"

    goto :goto_c3

    .line 3444
    :cond_f2
    const-string v8, "Samsung"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c3

    .line 3445
    const-string v6, "Wholesale"

    .line 3446
    const-string v5, "MVNO"

    goto :goto_c3

    .line 3461
    .end local v3    # "model":Ljava/lang/String;
    .end local v5    # "sellerID":Ljava/lang/String;
    .end local v6    # "sellerPrefix":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :cond_ff
    iget-object v8, p0, mContext:Landroid/content/Context;

    if-nez v8, :cond_106

    const/4 v4, 0x0

    goto/16 :goto_60

    .line 3462
    :cond_106
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040038

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_60
.end method

.method public getMobileQualityInfo()Ljava/util/HashMap;
    .registers 12

    .prologue
    .line 6385
    const-string v8, "SKT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "KTT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 6387
    const/4 v7, 0x0

    .line 6613
    :cond_15
    :goto_15
    return-object v7

    .line 6390
    :cond_16
    const/4 v6, 0x0

    .line 6391
    .local v6, "mMobileInfo":Ljava/lang/String;
    const/4 v5, 0x0

    .line 6392
    .local v5, "mMobileIP":Ljava/lang/String;
    const/4 v0, 0x0

    .line 6393
    .local v0, "Values":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 6396
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1e
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->getMobileQualityInformation()Ljava/lang/String;

    move-result-object v6

    .line 6397
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2b} :catch_138

    move-result-object v0

    .line 6404
    :try_start_2c
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    const-string v9, "MOBILE"

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_35} :catch_154

    move-result-object v5

    .line 6411
    sget-boolean v8, SHIP_BUILD:Z

    if-nez v8, :cond_83

    .line 6412
    const-string v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mMobileInfo["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] length("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6413
    const-string v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mMobileIP["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6416
    :cond_83
    const-string v8, "KTT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e8

    .line 6417
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8e
    array-length v8, v0

    if-ge v3, v8, :cond_15

    .line 6418
    const/4 v4, 0x0

    .line 6419
    .local v4, "mElements":[Ljava/lang/String;
    aget-object v8, v0, v3

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6420
    const-string v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMobileQualityInfo mElements["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6421
    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_170

    .line 6422
    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6434
    :goto_e7
    if-nez v3, :cond_134

    const-string v8, "LTE"

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_134

    .line 6435
    const-string v8, "TelephonyManager"

    const-string v9, "getMobileQualityInfo callType VOLTE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6436
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "voicecall_type"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 6437
    .local v1, "callType":I
    if-nez v1, :cond_1e5

    .line 6438
    const/4 v1, 0x1

    .line 6442
    :goto_10c
    const-string v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMobileQualityInfo callType["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6443
    const-string v8, "VOLTE"

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6417
    .end local v1    # "callType":I
    :cond_134
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8e

    .line 6398
    .end local v3    # "i":I
    .end local v4    # "mElements":[Ljava/lang/String;
    :catch_138
    move-exception v2

    .line 6399
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMobileQualityInformation() - RemoteException occured : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6400
    const/4 v7, 0x0

    goto/16 :goto_15

    .line 6405
    .end local v2    # "ex":Landroid/os/RemoteException;
    :catch_154
    move-exception v2

    .line 6406
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getIpAddressFromLinkProp() - RemoteException occured : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6407
    const/4 v7, 0x0

    goto/16 :goto_15

    .line 6424
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v4    # "mElements":[Ljava/lang/String;
    :cond_170
    const-string v8, "1"

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18e

    .line 6425
    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e7

    .line 6426
    :cond_18e
    const-string v8, "2"

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a4

    .line 6427
    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e7

    .line 6428
    :cond_1a4
    const-string v8, "3"

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c2

    .line 6429
    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e7

    .line 6431
    :cond_1c2
    const-string v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMobileQualityInfo Wrong Type["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    .line 6440
    .restart local v1    # "callType":I
    :cond_1e5
    const/4 v1, 0x0

    goto/16 :goto_10c

    .line 6450
    .end local v1    # "callType":I
    .end local v3    # "i":I
    .end local v4    # "mElements":[Ljava/lang/String;
    :cond_1e8
    const/4 v8, 0x0

    aget-object v8, v0, v8

    const-string v9, "WCDMA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a3

    .line 6451
    const-string/jumbo v8, "network_mode"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6452
    const-string/jumbo v8, "mcc"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6453
    const-string/jumbo v8, "mnc"

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6454
    const-string v8, "downlink_channel"

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6455
    const-string/jumbo v8, "uplink_channel"

    const/4 v9, 0x4

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6456
    const-string v8, "KTT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32f

    .line 6457
    const-string v8, "cell_id"

    const/4 v9, 0x5

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6461
    :goto_251
    const-string/jumbo v8, "rssi"

    const/4 v9, 0x6

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6462
    const/4 v8, 0x7

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_341

    .line 6463
    const-string/jumbo v8, "tx_power"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6467
    :goto_274
    const-string/jumbo v8, "ul_interference"

    const/16 v9, 0x8

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6468
    const-string v8, "activeset_psc"

    const/16 v9, 0x9

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6469
    const-string v8, "activeset_rscp"

    const/16 v9, 0xa

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6470
    const-string v8, "activeset_ecio"

    const/16 v9, 0xb

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6471
    const/16 v8, 0xc

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_354

    .line 6472
    const-string/jumbo v8, "neighborset_psc"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6476
    :goto_2cc
    const/16 v8, 0xd

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_368

    .line 6477
    const-string/jumbo v8, "neighborset_rscp"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6481
    :goto_2df
    const/16 v8, 0xe

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37c

    .line 6482
    const-string/jumbo v8, "neighborset_ecio"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6486
    :goto_2f2
    const-string v8, "cqi"

    const/16 v9, 0xf

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6487
    const/16 v8, 0x10

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_390

    .line 6488
    const-string v8, "bler"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6493
    :goto_315
    const-string v8, "KTT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 6494
    array-length v8, v0

    const/16 v9, 0x11

    if-le v8, v9, :cond_15

    .line 6495
    const-string v8, "etc"

    const/16 v9, 0x11

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 6459
    :cond_32f
    const-string v8, "cell_id"

    const/4 v9, 0x5

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_251

    .line 6465
    :cond_341
    const-string/jumbo v8, "tx_power"

    const/4 v9, 0x7

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_274

    .line 6474
    :cond_354
    const-string/jumbo v8, "neighborset_psc"

    const/16 v9, 0xc

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2cc

    .line 6479
    :cond_368
    const-string/jumbo v8, "neighborset_rscp"

    const/16 v9, 0xd

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2df

    .line 6484
    :cond_37c
    const-string/jumbo v8, "neighborset_ecio"

    const/16 v9, 0xe

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2f2

    .line 6490
    :cond_390
    const-string v8, "bler"

    const/16 v9, 0x10

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_315

    .line 6499
    :cond_3a3
    const-string/jumbo v8, "network_mode"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6500
    const-string/jumbo v8, "mcc"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6501
    const-string/jumbo v8, "mnc"

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6502
    const-string/jumbo v8, "tac"

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6503
    const-string v8, "earfcn_downlink"

    const/4 v9, 0x4

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6504
    const-string v8, "earfcn_uplink"

    const/4 v9, 0x5

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6505
    const-string v8, "band"

    const/4 v9, 0x6

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6506
    const-string v8, "bandwidth"

    const/4 v9, 0x7

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6507
    const-string v8, "KTT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_697

    .line 6508
    const-string v8, "cell_id"

    const/16 v9, 0x8

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6512
    :goto_432
    const-string/jumbo v8, "pci"

    const/16 v9, 0x9

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6513
    const-string/jumbo v8, "rssi"

    const/16 v9, 0xa

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6514
    const-string/jumbo v8, "rsrp"

    const/16 v9, 0xb

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6515
    const-string/jumbo v8, "rsrq"

    const/16 v9, 0xc

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6516
    const/16 v8, 0xd

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6aa

    .line 6517
    const-string/jumbo v8, "tx_power"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6521
    :goto_48d
    const-string/jumbo v8, "sinr"

    const/16 v9, 0xe

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6522
    const-string/jumbo v8, "rrc"

    const/16 v9, 0xf

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6524
    const-string v8, "ip"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6525
    const-string v8, "cqi"

    const/16 v9, 0x11

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6527
    const-string v8, "SKT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6be

    array-length v8, v0

    const/16 v9, 0x21

    if-lt v8, v9, :cond_6be

    .line 6528
    const-string/jumbo v8, "ri"

    const/16 v9, 0x12

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6529
    const-string v8, "ca"

    const/16 v9, 0x13

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6530
    const-string/jumbo v8, "s_pci"

    const/16 v9, 0x14

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6531
    const-string/jumbo v8, "s_freq"

    const/16 v9, 0x15

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6532
    const-string/jumbo v8, "s_bandwidth"

    const/16 v9, 0x16

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6533
    const-string/jumbo v8, "s_rsrp"

    const/16 v9, 0x17

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6534
    const-string/jumbo v8, "s_rsrq"

    const/16 v9, 0x18

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6535
    const-string/jumbo v8, "s_sinr"

    const/16 v9, 0x19

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6536
    const-string/jumbo v8, "s2_ca"

    const/16 v9, 0x1a

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6537
    const-string/jumbo v8, "s2_pci"

    const/16 v9, 0x1b

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6538
    const-string/jumbo v8, "s2_freq"

    const/16 v9, 0x1c

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6539
    const-string/jumbo v8, "s2_bandwidth"

    const/16 v9, 0x1d

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6540
    const-string/jumbo v8, "s2_rsrp"

    const/16 v9, 0x1e

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6541
    const-string/jumbo v8, "s2_rsrq"

    const/16 v9, 0x1f

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6542
    const-string/jumbo v8, "s2_sinr"

    const/16 v9, 0x20

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6565
    :cond_5db
    :goto_5db
    const-string v8, "SKT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    array-length v8, v0

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_15

    .line 6566
    const/16 v8, 0x21

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_77b

    .line 6567
    const-string/jumbo v8, "neighborset_pci"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6571
    :goto_5fd
    const/16 v8, 0x22

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78f

    .line 6572
    const-string/jumbo v8, "neighborset_rsrp"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6576
    :goto_610
    const/16 v8, 0x23

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7a3

    .line 6577
    const-string/jumbo v8, "neighborset_rsrq"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6581
    :goto_623
    const/16 v8, 0x24

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b7

    .line 6582
    const-string/jumbo v8, "neighborset_pci_2"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6586
    :goto_636
    const/16 v8, 0x25

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7cb

    .line 6587
    const-string/jumbo v8, "neighborset_rsrp_2"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6591
    :goto_649
    const/16 v8, 0x26

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7df

    .line 6592
    const-string/jumbo v8, "neighborset_rsrq_2"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6596
    :goto_65c
    const/16 v8, 0x27

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f3

    .line 6597
    const-string/jumbo v8, "neighborset_pci_3"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6601
    :goto_66f
    const/16 v8, 0x28

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_807

    .line 6602
    const-string/jumbo v8, "neighborset_rsrp_3"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6606
    :goto_682
    const/16 v8, 0x29

    aget-object v8, v0, v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_81b

    .line 6607
    const-string/jumbo v8, "neighborset_rsrq_3"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 6510
    :cond_697
    const-string v8, "cell_id"

    const/16 v9, 0x8

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_432

    .line 6519
    :cond_6aa
    const-string/jumbo v8, "tx_power"

    const/16 v9, 0xd

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_48d

    .line 6543
    :cond_6be
    const/4 v8, 0x0

    aget-object v8, v0, v8

    const-string v9, "LTE-A"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_732

    .line 6544
    const-string/jumbo v8, "network_mode"

    const-string v9, "LTE"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6545
    const-string/jumbo v8, "ri"

    const/16 v9, 0x12

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6546
    const-string v8, "ca"

    const/16 v9, 0x13

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6547
    const-string/jumbo v8, "s_pci"

    const/16 v9, 0x14

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6548
    const-string/jumbo v8, "s_freq"

    const/16 v9, 0x15

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6549
    const-string v8, "KTT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5db

    .line 6550
    array-length v8, v0

    const/16 v9, 0x16

    if-le v8, v9, :cond_5db

    .line 6551
    const-string v8, "etc"

    const/16 v9, 0x16

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5db

    .line 6555
    :cond_732
    const-string/jumbo v8, "ri"

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6556
    const-string v8, "ca"

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6557
    const-string/jumbo v8, "s_pci"

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, -0x1

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6558
    const-string/jumbo v8, "s_freq"

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, -0x1

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6559
    const-string v8, "KTT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5db

    .line 6560
    array-length v8, v0

    const/16 v9, 0x12

    if-le v8, v9, :cond_5db

    .line 6561
    const-string v8, "etc"

    const/16 v9, 0x12

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5db

    .line 6569
    :cond_77b
    const-string/jumbo v8, "neighborset_pci"

    const/16 v9, 0x21

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5fd

    .line 6574
    :cond_78f
    const-string/jumbo v8, "neighborset_rsrp"

    const/16 v9, 0x22

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_610

    .line 6579
    :cond_7a3
    const-string/jumbo v8, "neighborset_rsrq"

    const/16 v9, 0x23

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_623

    .line 6584
    :cond_7b7
    const-string/jumbo v8, "neighborset_pci_2"

    const/16 v9, 0x24

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_636

    .line 6589
    :cond_7cb
    const-string/jumbo v8, "neighborset_rsrp_2"

    const/16 v9, 0x25

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_649

    .line 6594
    :cond_7df
    const-string/jumbo v8, "neighborset_rsrq_2"

    const/16 v9, 0x26

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_65c

    .line 6599
    :cond_7f3
    const-string/jumbo v8, "neighborset_pci_3"

    const/16 v9, 0x27

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_66f

    .line 6604
    :cond_807
    const-string/jumbo v8, "neighborset_rsrp_3"

    const/16 v9, 0x28

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_682

    .line 6609
    :cond_81b
    const-string/jumbo v8, "neighborset_rsrq_3"

    const/16 v9, 0x29

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15
.end method

.method public getMobileQualityInformation()Ljava/util/HashMap;
    .registers 3

    .prologue
    .line 6369
    const-string v0, "TelephonyManager"

    const-string v1, "getMobileQualityInformation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6370
    invoke-virtual {p0}, getMobileQualityInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMobileQualityInformation2()Ljava/util/HashMap;
    .registers 3

    .prologue
    .line 6377
    const-string v0, "TelephonyManager"

    const-string v1, "getMobileQualityInformation2"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6378
    invoke-virtual {p0}, getMobileQualityInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getModemActivityInfo()Landroid/telephony/ModemActivityInfo;
    .registers 5

    .prologue
    .line 5882
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5883
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5884
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getModemActivityInfo()Landroid/telephony/ModemActivityInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 5889
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v2

    .line 5886
    :catch_b
    move-exception v0

    .line 5887
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getModemActivityInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5889
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2589
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2604
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2605
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2612
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2607
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_13

    move-result-object v2

    goto :goto_7

    .line 2608
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v0

    .line 2609
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2610
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 2612
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;
    .registers 3

    .prologue
    .line 246
    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 249
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 255
    :goto_11
    return-object v1

    .line 250
    :cond_12
    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 251
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    goto :goto_11

    .line 252
    :cond_1d
    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 253
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    goto :goto_11

    .line 255
    :cond_29
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    goto :goto_11
.end method

.method public getMultiSimForegroundPhoneId()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7758
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMultiSimForegroundPhoneId()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 7762
    :goto_9
    return v1

    .line 7759
    :catch_a
    move-exception v0

    .line 7760
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7761
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7762
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getMultiSimLastRejectIncomingCallPhoneId()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7736
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMultiSimLastRejectIncomingCallPhoneId()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 7740
    :goto_9
    return v1

    .line 7737
    :catch_a
    move-exception v0

    .line 7738
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7739
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7740
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getNai()Ljava/lang/String;
    .registers 2

    .prologue
    .line 883
    invoke-virtual {p0}, getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, getNai(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNai(I)Ljava/lang/String;
    .registers 10
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 893
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 895
    .local v3, "subId":[I
    :try_start_5
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 896
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_d

    move-object v2, v4

    .line 906
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_c
    :goto_c
    return-object v2

    .line 898
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_d
    const/4 v5, 0x0

    aget v5, v3, v5

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/android/internal/telephony/IPhoneSubInfo;->getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 899
    .local v2, "nai":Ljava/lang/String;
    const-string v5, "TelephonyManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 900
    const-string v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Nai = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_3b} :catch_3f

    goto :goto_c

    .line 903
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v2    # "nai":Ljava/lang/String;
    :catch_3c
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    move-object v2, v4

    .line 904
    goto :goto_c

    .line 905
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3f
    move-exception v0

    .local v0, "ex":Ljava/lang/NullPointerException;
    move-object v2, v4

    .line 906
    goto :goto_c
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1055
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1056
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 1062
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return-object v2

    .line 1058
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_15

    move-result-object v2

    goto :goto_7

    .line 1059
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_13
    move-exception v0

    .line 1060
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 1061
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_15
    move-exception v0

    .line 1062
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1531
    invoke-static {}, getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1563
    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    .line 1564
    const-string v0, "TelephonyManager"

    const-string v1, "INVALID_PHONE_INDEX ==> DEFAULT_PHONE_INDEX"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 p1, 0x0

    .line 1568
    :cond_b
    const-string v0, "gsm.operator.iso-country"

    const-string v1, ""

    invoke-static {p1, v0, v1}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 1546
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1547
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1422
    invoke-static {}, getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForPhone(I)Ljava/lang/String;
    .registers 6
    .param p1, "phoneId"    # I

    .prologue
    .line 1453
    sget-object v1, mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v1, :cond_64

    sget-object v1, mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v2, "SPR-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1454
    invoke-virtual {p0}, getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_64

    .line 1456
    invoke-direct {p0}, checkIsSprintSimCard()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p0}, getNetworkType()I

    move-result v1

    invoke-direct {p0, v1}, isCdmaOrLteRat(I)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p0}, isNetworkRoaming()Z

    move-result v1

    if-nez v1, :cond_54

    .line 1457
    const-string/jumbo v1, "ro.cdma.home.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "homeOperatorNumeric":Ljava/lang/String;
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_64

    .line 1459
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkOperator sprint sim + cdma home/lte home = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    .end local v0    # "homeOperatorNumeric":Ljava/lang/String;
    :goto_53
    return-object v0

    .line 1463
    :cond_54
    const-string v1, "TelephonyManager"

    const-string v2, "getNetworkOperator network value"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    const-string v1, "gsm.operator.numeric.real"

    const-string v2, ""

    invoke-static {p1, v1, v2}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 1468
    :cond_64
    const-string v1, "gsm.operator.numeric"

    const-string v2, ""

    invoke-static {p1, v1, v2}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_53
.end method

.method public getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 1437
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1438
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1369
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .registers 10
    .param p1, "subId"    # I

    .prologue
    const/4 v7, 0x2

    .line 1383
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1384
    .local v2, "phoneId":I
    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v2, v5, v6}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1385
    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1386
    .local v4, "simOperatorNumeric":Ljava/lang/String;
    const-string/jumbo v5, "ro.csc.sales_code"

    const-string v6, "NONE"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1388
    .local v3, "salesCode":Ljava/lang/String;
    const-string v5, "SPR"

    invoke-static {}, getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 1389
    invoke-virtual {p0}, getCurrentPhoneType()I

    move-result v5

    if-ne v5, v7, :cond_4a

    .line 1390
    const-string/jumbo v5, "ro.cdma.home.operator.alpha"

    const-string v6, ""

    invoke-static {v2, v5, v6}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1391
    .local v0, "homeOperatorAlpha":Ljava/lang/String;
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_4a

    .line 1393
    const-string v5, "Chameleon"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 1394
    const-string v0, "Samsung"

    .line 1411
    .end local v0    # "homeOperatorAlpha":Ljava/lang/String;
    :goto_49
    return-object v0

    .line 1401
    :cond_4a
    const-string v5, "gsm.operator.numeric.real"

    invoke-static {v2, v5, v1}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1402
    const-string v5, "44020"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 1403
    const-string v0, "SoftBank"

    goto :goto_49

    .line 1407
    :cond_5b
    const-string v5, "IUS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    const-string v5, "334090"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    const-string v5, "334090"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 1408
    const-string v0, "Iusacell"

    goto :goto_49

    .line 1411
    :cond_76
    const-string v5, "gsm.operator.alpha"

    const-string v6, ""

    invoke-static {v2, v5, v6}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49
.end method

.method public getNetworkType()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1626
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1627
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 1628
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_e

    move-result v2

    .line 1638
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_b
    return v2

    .line 1633
    :catch_c
    move-exception v0

    .line 1635
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_b

    .line 1636
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_e
    move-exception v0

    .line 1638
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_b
.end method

.method public getNetworkType(I)I
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1673
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1674
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_f

    .line 1675
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_12

    move-result v2

    .line 1685
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    :goto_f
    return v2

    .line 1680
    :catch_10
    move-exception v0

    .line 1682
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_f

    .line 1683
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 1685
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_f
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1839
    invoke-virtual {p0}, getNetworkType()I

    move-result v0

    invoke-static {v0}, getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOtaSpNumberSchema(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 5633
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5634
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 5647
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5648
    const-string/jumbo v0, "ro.cdma.otaspnumschema"

    invoke-static {p1, v0, p2}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5652
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_d
    return-object p2
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4297
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4298
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_b

    .line 4299
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 4302
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v2

    .line 4300
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14

    move-result-object v2

    goto :goto_a

    .line 4301
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_14
    move-exception v0

    .line 4302
    .local v0, "e":Landroid/os/RemoteException;
    new-array v2, v3, [Ljava/lang/String;

    goto :goto_a
.end method

.method public getPhoneCount()I
    .registers 4

    .prologue
    .line 266
    const/4 v0, 0x1

    .line 267
    .local v0, "phoneCount":I
    sget-object v1, Landroid/telephony/TelephonyManager$1;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {p0}, getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_18

    .line 279
    :goto_10
    return v0

    .line 269
    :pswitch_11
    const/4 v0, 0x1

    .line 270
    goto :goto_10

    .line 273
    :pswitch_13
    const/4 v0, 0x2

    .line 274
    goto :goto_10

    .line 276
    :pswitch_15
    const/4 v0, 0x3

    goto :goto_10

    .line 267
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_11
        :pswitch_13
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method

.method public getPhoneType()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1139
    invoke-virtual {p0}, isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1148
    :cond_7
    :goto_7
    return v1

    .line 1142
    :cond_8
    const/4 v0, 0x0

    .line 1143
    .local v0, "product":Ljava/lang/String;
    const-string/jumbo v2, "ro.product.name"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    const-string v2, ".*ldu.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1148
    invoke-virtual {p0}, getCurrentPhoneType()I

    move-result v1

    goto :goto_7
.end method

.method public getPreferredNetworkType(I)I
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 4334
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4335
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 4336
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType(I)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_15

    move-result v2

    .line 4342
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4337
    :catch_b
    move-exception v0

    .line 4338
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "getPreferredNetworkType RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4342
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const/4 v2, -0x1

    goto :goto_a

    .line 4339
    :catch_15
    move-exception v0

    .line 4340
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string v3, "getPreferredNetworkType NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public getPsismsc()[B
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7845
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getPsismsc()[B
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 7849
    :goto_9
    return-object v1

    .line 7846
    :catch_a
    move-exception v0

    .line 7847
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7848
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7849
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getRand()[B
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7638
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRand()[B
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 7642
    :goto_9
    return-object v1

    .line 7639
    :catch_a
    move-exception v0

    .line 7640
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7641
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7642
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSdnAvailable()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 7576
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSdnAvailable()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 7582
    :goto_9
    return v1

    .line 7577
    :catch_a
    move-exception v0

    .line 7579
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7580
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7582
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSelectedApn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6017
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceState()I
    .registers 3

    .prologue
    .line 6033
    const/4 v0, 0x0

    .line 6035
    .local v0, "state":I
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 6039
    :goto_9
    return v0

    .line 6037
    :catch_a
    move-exception v1

    goto :goto_9

    .line 6036
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public getServiceState(I)I
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 6046
    const/4 v0, 0x0

    .line 6048
    .local v0, "state":I
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getServiceStateUsingSubId(I)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 6052
    :goto_9
    return v0

    .line 6050
    :catch_a
    move-exception v1

    goto :goto_9

    .line 6049
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public getSimCount()I
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 4143
    invoke-virtual {p0}, isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4144
    const/4 v0, 0x2

    .line 4150
    :cond_8
    :goto_8
    return v0

    .line 4146
    :cond_9
    invoke-static {}, getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_8

    .line 4147
    const-string v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCount(): persist.radio.multisim.config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "persist.radio.multisim.config"

    const-string v4, "NULL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2165
    invoke-static {}, getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .prologue
    .line 2176
    invoke-virtual {p0, p1}, getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 2197
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, ""

    invoke-static {p1, v0, v1}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 2187
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2188
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2051
    invoke-virtual {p0}, getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .registers 3
    .param p1, "subId"    # I

    .prologue
    .line 2066
    invoke-virtual {p0, p1}, getSimOperatorNumericForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2129
    const-string v0, "VZW"

    invoke-static {}, getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2131
    const-string v0, "Verizon"

    .line 2133
    :goto_e
    return-object v0

    :cond_f
    invoke-static {}, getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public getSimOperatorNameForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 2157
    const-string v0, "gsm.sim.operator.alpha"

    const-string v1, ""

    invoke-static {p1, v0, v1}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 2147
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2148
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNumeric()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2079
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 2080
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 2081
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    .line 2082
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 2083
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    .line 2084
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 2085
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 2089
    :cond_22
    invoke-virtual {p0, v0}, getSimOperatorNumericForSubscription(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNumericForPhone(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 2117
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {p1, v0, v1}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNumericForSubscription(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 2104
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2105
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2209
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2223
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2224
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2231
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2226
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_15

    move-result-object v2

    goto :goto_7

    .line 2227
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_13
    move-exception v0

    .line 2228
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2229
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_15
    move-exception v0

    .line 2231
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getSimState()I
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 2000
    invoke-virtual {p0}, getDefaultSim()I

    move-result v2

    .line 2003
    .local v2, "slotIdx":I
    if-gez v2, :cond_78

    .line 2006
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {p0}, getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_52

    .line 2007
    invoke-virtual {p0, v0}, getSimState(I)I

    move-result v1

    .line 2008
    .local v1, "simState":I
    if-eq v1, v3, :cond_4f

    .line 2009
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimState: default sim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sim state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "slotIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return state as unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    const/4 v3, 0x0

    .line 2018
    .end local v0    # "i":I
    .end local v1    # "simState":I
    :goto_4e
    return v3

    .line 2006
    .restart local v0    # "i":I
    .restart local v1    # "simState":I
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2014
    .end local v1    # "simState":I
    :cond_52
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimState: default sim:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", all SIMs absent, return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "state as absent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 2018
    .end local v0    # "i":I
    :cond_78
    invoke-virtual {p0, v2}, getSimState(I)I

    move-result v3

    goto :goto_4e
.end method

.method public getSimState(I)I
    .registers 3
    .param p1, "slotIdx"    # I

    .prologue
    .line 2038
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIdx(I)I

    move-result v0

    .line 2039
    .local v0, "simState":I
    return v0
.end method

.method public getSimTrayCount()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 4157
    const/4 v1, 0x0

    .line 4159
    .local v1, "revision":I
    :try_start_2
    const-string/jumbo v2, "ro.revision"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4160
    const/16 v2, 0x8

    if-lt v1, v2, :cond_18

    const-string/jumbo v2, "ro.multisim.simslotcount"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_15} :catch_19

    move-result v2

    if-le v2, v5, :cond_18

    .line 4166
    :cond_18
    :goto_18
    return v5

    .line 4163
    :catch_19
    move-exception v0

    .line 4164
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimTrayCount() Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getSmsReceiveCapable(Z)Z
    .registers 4
    .param p1, "defaultValue"    # Z

    .prologue
    .line 5664
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5665
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, getSmsReceiveCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public getSmsReceiveCapableForPhone(IZ)Z
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 5678
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5679
    const-string/jumbo v0, "telephony.sms.receive"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 5683
    .end local p2    # "defaultValue":Z
    :cond_19
    return p2
.end method

.method public getSmsSendCapable(Z)Z
    .registers 4
    .param p1, "defaultValue"    # Z

    .prologue
    .line 5695
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5696
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, getSmsSendCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public getSmsSendCapableForPhone(IZ)Z
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 5709
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5710
    const-string/jumbo v0, "telephony.sms.send"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 5714
    .end local p2    # "defaultValue":Z
    :cond_19
    return p2
.end method

.method public getSponImsi()[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5898
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSponImsi()[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 5903
    :goto_9
    return-object v1

    .line 5899
    :catch_a
    move-exception v0

    .line 5900
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 5901
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 5903
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .registers 5
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .prologue
    .line 5836
    const/4 v0, -0x1

    .line 5838
    .local v0, "retval":I
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5839
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 5840
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 5845
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_b
    return v0

    .line 5842
    :catch_c
    move-exception v2

    goto :goto_b
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2296
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2312
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2313
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2320
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2315
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_15

    move-result-object v2

    goto :goto_7

    .line 2316
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_13
    move-exception v0

    .line 2317
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2318
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_15
    move-exception v0

    .line 2320
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getSubscriberIdDm(I)Ljava/lang/String;
    .registers 3
    .param p1, "networkType"    # I

    .prologue
    .line 2333
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, getSubscriberIdDm(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdDm(II)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I
    .param p2, "networkType"    # I

    .prologue
    const/4 v1, 0x0

    .line 2347
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdDm(II)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 2352
    :goto_9
    return-object v1

    .line 2348
    :catch_a
    move-exception v0

    .line 2349
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 2350
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 2352
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getSubscriberIdType(I)Ljava/lang/String;
    .registers 5
    .param p1, "SimType"    # I

    .prologue
    const/4 v1, 0x0

    .line 7814
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdType(I)Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result-object v1

    .line 7819
    :goto_9
    return-object v1

    .line 7815
    :catch_a
    move-exception v0

    .line 7816
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7817
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7819
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public getTetherApnRequired()I
    .registers 5

    .prologue
    .line 4480
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4481
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 4482
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getTetherApnRequired()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_15

    move-result v2

    .line 4488
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4483
    :catch_b
    move-exception v0

    .line 4484
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "hasMatchedTetherApnSetting RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4488
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const/4 v2, 0x2

    goto :goto_a

    .line 4485
    :catch_15
    move-exception v0

    .line 4486
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string v3, "hasMatchedTetherApnSetting NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2761
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2776
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2777
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2784
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2779
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_13

    move-result-object v2

    goto :goto_7

    .line 2780
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v0

    .line 2781
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2782
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 2784
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2623
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2637
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    .line 2638
    .local v1, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v1, :cond_8

    .line 2645
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :goto_7
    return-object v2

    .line 2640
    .restart local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_8
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_13

    move-result-object v2

    goto :goto_7

    .line 2641
    .end local v1    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_11
    move-exception v0

    .line 2642
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2643
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_13
    move-exception v0

    .line 2645
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getVoiceMessageCount()I
    .registers 2

    .prologue
    .line 2728
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getVoiceMessageCount(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount(I)I
    .registers 5
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2741
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2742
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 2749
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return v2

    .line 2744
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountForSubscriber(I)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result v2

    goto :goto_7

    .line 2745
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v0

    .line 2746
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 2747
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 2749
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public getVoiceNetworkType()I
    .registers 2

    .prologue
    .line 1759
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType(I)I
    .registers 6
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1772
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1773
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_f

    .line 1774
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_12

    move-result v2

    .line 1784
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    :goto_f
    return v2

    .line 1779
    :catch_10
    move-exception v0

    .line 1781
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_f

    .line 1782
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_12
    move-exception v0

    .line 1784
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_f
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .registers 6
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 5052
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5053
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5054
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 5058
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5055
    :catch_b
    move-exception v0

    .line 5056
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5058
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 5065
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5066
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5067
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 5071
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5068
    :catch_b
    move-exception v0

    .line 5069
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5071
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public hasCall(Ljava/lang/String;)Z
    .registers 5
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 5963
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->hasCall(Ljava/lang/String;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 5967
    :goto_9
    return v1

    .line 5964
    :catch_a
    move-exception v0

    .line 5965
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 5966
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 5967
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public hasCarrierPrivileges()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4515
    :try_start_2
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4516
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_19

    .line 4517
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatus()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_b} :catch_1b

    move-result v4

    if-ne v4, v2, :cond_f

    .line 4523
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return v2

    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_f
    move v2, v3

    .line 4517
    goto :goto_e

    .line 4518
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_11
    move-exception v0

    .line 4519
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v4, "hasCarrierPrivileges RemoteException"

    invoke-static {v2, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    move v2, v3

    .line 4523
    goto :goto_e

    .line 4520
    :catch_1b
    move-exception v0

    .line 4521
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string v4, "hasCarrierPrivileges NPE"

    invoke-static {v2, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public hasIccCard()Z
    .registers 2

    .prologue
    .line 1960
    invoke-virtual {p0}, getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .registers 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1973
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1974
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 1982
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return v2

    .line 1976
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotId(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result v2

    goto :goto_7

    .line 1977
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v0

    .line 1979
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 1980
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 1982
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public hasIsim()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7827
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->hasIsim()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 7831
    :goto_9
    return v1

    .line 7828
    :catch_a
    move-exception v0

    .line 7829
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7830
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7831
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public iccCloseLogicalChannel(I)Z
    .registers 4
    .param p1, "channel"    # I

    .prologue
    .line 3599
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3600
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_c

    .line 3601
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 3605
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v1

    .line 3603
    :catch_b
    move-exception v1

    .line 3605
    :cond_c
    :goto_c
    const/4 v1, 0x0

    goto :goto_a

    .line 3602
    :catch_e
    move-exception v1

    goto :goto_c
.end method

.method public iccCloseLogicalChannel(II)Z
    .registers 5
    .param p1, "channel"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 3627
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3628
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_c

    .line 3629
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannelUsingSlotId(II)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 3633
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v1

    .line 3631
    :catch_b
    move-exception v1

    .line 3633
    :cond_c
    :goto_c
    const/4 v1, 0x0

    goto :goto_a

    .line 3630
    :catch_e
    move-exception v1

    goto :goto_c
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .registers 14
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 3792
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3793
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 3794
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIO(IIIIILjava/lang/String;)[B
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 3798
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_10
    return-object v1

    .line 3796
    :catch_11
    move-exception v1

    .line 3798
    :cond_12
    :goto_12
    const/4 v1, 0x0

    goto :goto_10

    .line 3795
    :catch_14
    move-exception v1

    goto :goto_12
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;I)[B
    .registers 16
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;
    .param p7, "slotId"    # I

    .prologue
    .line 3822
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3823
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    .line 3824
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIOUsingSlotId(IIIIILjava/lang/String;I)[B
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v1

    .line 3829
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_11
    return-object v1

    .line 3827
    :catch_12
    move-exception v1

    .line 3829
    :cond_13
    :goto_13
    const/4 v1, 0x0

    goto :goto_11

    .line 3826
    :catch_15
    move-exception v1

    goto :goto_13
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 4
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 3549
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3550
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_c

    .line 3551
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3555
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v1

    .line 3553
    :catch_b
    move-exception v1

    .line 3555
    :cond_c
    :goto_c
    const/4 v1, 0x0

    goto :goto_a

    .line 3552
    :catch_e
    move-exception v1

    goto :goto_c
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 5
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 3575
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3576
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_c

    .line 3577
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannelUsingSlotId(Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3581
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v1

    .line 3579
    :catch_b
    move-exception v1

    .line 3581
    :cond_c
    :goto_c
    const/4 v1, 0x0

    goto :goto_a

    .line 3578
    :catch_e
    move-exception v1

    goto :goto_c
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    .line 3729
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3730
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_12

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 3731
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 3736
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_10
    return-object v1

    .line 3734
    :catch_11
    move-exception v1

    .line 3736
    :cond_12
    :goto_12
    const-string v1, ""

    goto :goto_10

    .line 3733
    :catch_15
    move-exception v1

    goto :goto_12
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;I)Ljava/lang/String;
    .registers 16
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "slotId"    # I

    .prologue
    .line 3764
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3765
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    .line 3766
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannelUsingSlotId(IIIIILjava/lang/String;I)Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v1

    .line 3771
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_11
    return-object v1

    .line 3769
    :catch_12
    move-exception v1

    .line 3771
    :cond_13
    :goto_13
    const-string v1, ""

    goto :goto_11

    .line 3768
    :catch_16
    move-exception v1

    goto :goto_13
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 3660
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3661
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 3662
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v1

    .line 3667
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_11
    return-object v1

    .line 3665
    :catch_12
    move-exception v1

    .line 3667
    :cond_13
    :goto_13
    const-string v1, ""

    goto :goto_11

    .line 3664
    :catch_16
    move-exception v1

    goto :goto_13
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;I)Ljava/lang/String;
    .registers 18
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "slotId"    # I

    .prologue
    .line 3697
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3698
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 3699
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannelUsingSlotId(IIIIIILjava/lang/String;I)Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    .line 3704
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_14
    return-object v1

    .line 3702
    :catch_15
    move-exception v1

    .line 3704
    :cond_16
    :goto_16
    const-string v1, ""

    goto :goto_14

    .line 3701
    :catch_19
    move-exception v1

    goto :goto_16
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .registers 5
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B

    .prologue
    .line 5283
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5284
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_c

    .line 5285
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 5289
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v1

    .line 5287
    :catch_b
    move-exception v1

    .line 5289
    :cond_c
    :goto_c
    const/4 v1, -0x1

    goto :goto_a

    .line 5286
    :catch_e
    move-exception v1

    goto :goto_c
.end method

.method public isApnTypeAvailable(Ljava/lang/String;)Z
    .registers 5
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 7942
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isApnTypeAvailable(Ljava/lang/String;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 7946
    :goto_8
    return v1

    .line 7943
    :catch_9
    move-exception v0

    .line 7944
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isApnTypeAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7946
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isDataConnectivityPossible()Z
    .registers 5

    .prologue
    .line 5183
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5184
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5185
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 5189
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5186
    :catch_b
    move-exception v0

    .line 5187
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isDataConnectivityPossible"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5189
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isExtraCapable(I)Z
    .registers 7
    .param p1, "capableType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3319
    if-ne p1, v2, :cond_3b

    .line 3321
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 3323
    const-string/jumbo v3, "ro.csc.sales_code"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3324
    .local v0, "salesCode":Ljava/lang/String;
    const-string v3, "TelephonyManager"

    const-string v4, "isExtraCapable(Download Booster) : all features are enabled"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    const-string v3, "XAS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 3326
    const-string v3, "312530"

    invoke-virtual {p0}, getSimOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 3327
    const-string v2, "TelephonyManager"

    const-string v3, "isExtraCapable(Download Booster) : blocked for Sprint Prepaid"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_3b
    :goto_3b
    return v1

    .restart local v0    # "salesCode":Ljava/lang/String;
    :cond_3c
    move v1, v2

    .line 3331
    goto :goto_3b

    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_3e
    move v1, v2

    .line 3334
    goto :goto_3b
.end method

.method public isGbaSupported()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7599
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isGbaSupported()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 7603
    :goto_9
    return v1

    .line 7600
    :catch_a
    move-exception v0

    .line 7601
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7602
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7603
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isHearingAidCompatibilitySupported()Z
    .registers 5

    .prologue
    .line 5382
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5383
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5384
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isHearingAidCompatibilitySupported()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_15

    move-result v2

    .line 5391
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5386
    :catch_b
    move-exception v0

    .line 5387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5391
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const/4 v2, 0x0

    goto :goto_a

    .line 5388
    :catch_15
    move-exception v0

    .line 5389
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "TelephonyManager"

    const-string v3, "Permission error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public isIdle()Z
    .registers 5

    .prologue
    .line 4871
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4872
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 4873
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 4877
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return v2

    .line 4874
    :catch_f
    move-exception v0

    .line 4875
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isIdle"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4877
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x1

    goto :goto_e
.end method

.method public isIdle(I)Z
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 4885
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4886
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 4887
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 4891
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return v2

    .line 4888
    :catch_f
    move-exception v0

    .line 4889
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isIdle"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4891
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x1

    goto :goto_e
.end method

.method public isImsRegistered()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5438
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5439
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 5445
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return v2

    .line 5441
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result v2

    goto :goto_7

    .line 5442
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v0

    .line 5443
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 5444
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 5445
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public isMultiSimEnabled()Z
    .registers 3

    .prologue
    .line 289
    sget-object v0, multiSimConfig:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, multiSimConfig:Ljava/lang/String;

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public isNetworkRoaming()Z
    .registers 2

    .prologue
    .line 1504
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .registers 5
    .param p1, "subId"    # I

    .prologue
    .line 1517
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1518
    .local v0, "phoneId":I
    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isOffhook()Z
    .registers 5

    .prologue
    .line 4815
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4816
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 4817
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 4821
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return v2

    .line 4818
    :catch_f
    move-exception v0

    .line 4819
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isOffhook"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4821
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public isOffhook(I)Z
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 4829
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4830
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 4831
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhookForSubscriber(ILjava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 4835
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return v2

    .line 4832
    :catch_f
    move-exception v0

    .line 4833
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isOffhook"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4835
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public isRadioOn()Z
    .registers 5

    .prologue
    .line 4899
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4900
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 4901
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn(Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 4905
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return v2

    .line 4902
    :catch_f
    move-exception v0

    .line 4903
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isRadioOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4905
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public isRadioOn(I)Z
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 4913
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4914
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 4915
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 4919
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return v2

    .line 4916
    :catch_f
    move-exception v0

    .line 4917
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isRadioOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4919
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public isRinging()Z
    .registers 5

    .prologue
    .line 4843
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4844
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 4845
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 4849
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return v2

    .line 4846
    :catch_f
    move-exception v0

    .line 4847
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isRinging"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4849
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public isRinging(I)Z
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 4857
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4858
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 4859
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->isRingingForSubscriber(ILjava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 4863
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return v2

    .line 4860
    :catch_f
    move-exception v0

    .line 4861
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isRinging"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4863
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public isSimFDNEnabled()Z
    .registers 2

    .prologue
    .line 6113
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, isSimFDNEnabledForSubscriber(I)Z

    move-result v0

    return v0
.end method

.method public isSimFDNEnabledForSubscriber(I)Z
    .registers 4
    .param p1, "subId"    # I

    .prologue
    .line 6118
    const/4 v0, 0x0

    .line 6120
    .local v0, "enabled":Z
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isSimFDNEnabledForSubscriber(I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_9

    .line 6124
    :goto_8
    return v0

    .line 6122
    :catch_9
    move-exception v1

    goto :goto_8

    .line 6121
    :catch_b
    move-exception v1

    goto :goto_8
.end method

.method public isSimPinEnabled()Z
    .registers 5

    .prologue
    .line 4927
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4928
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 4929
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isSimPinEnabled(Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 4933
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return v2

    .line 4930
    :catch_f
    move-exception v0

    .line 4931
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isSimPinEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4933
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public isSmoveripSupported()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7864
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isSmoveripSupported()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 7868
    :goto_9
    return v1

    .line 7865
    :catch_a
    move-exception v0

    .line 7866
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 7867
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 7868
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isSmsCapable()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3274
    iget-object v5, p0, mContext:Landroid/content/Context;

    if-nez v5, :cond_8

    move v7, v6

    .line 3304
    :cond_7
    :goto_7
    return v7

    .line 3276
    :cond_8
    const/4 v2, 0x0

    .line 3277
    .local v2, "isCdmaTablet":Z
    const/4 v1, 0x0

    .line 3278
    .local v1, "isAtt":Z
    invoke-static {}, isUsaCdmaModel()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 3279
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v5

    if-nez v5, :cond_21

    move v2, v6

    .line 3282
    :cond_17
    :goto_17
    if-eqz v2, :cond_23

    .line 3283
    const-string v5, "TelephonyManager"

    const-string v6, "US CDMA Tablet Model"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_21
    move v2, v7

    .line 3279
    goto :goto_17

    .line 3285
    :cond_23
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_7f

    const-string v5, "ATT"

    invoke-static {}, getMainOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 3286
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3287
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_7

    .line 3290
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 3291
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 3294
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3295
    .local v4, "topActivity":Landroid/content/ComponentName;
    if-eqz v4, :cond_7

    .line 3298
    const-string v5, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTopPackageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    const-string v5, "com.android.vending"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v7, v6

    .line 3300
    goto :goto_7

    .line 3304
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "topActivity":Landroid/content/ComponentName;
    :cond_7f
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112005e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    goto/16 :goto_7
.end method

.method public isTtyModeSupported()Z
    .registers 5

    .prologue
    .line 5362
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5363
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5364
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isTtyModeSupported()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_15

    move-result v2

    .line 5371
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5366
    :catch_b
    move-exception v0

    .line 5367
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isTtyModeSupported"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5371
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const/4 v2, 0x0

    goto :goto_a

    .line 5368
    :catch_15
    move-exception v0

    .line 5369
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "TelephonyManager"

    const-string v3, "Permission error calling ITelephony#isTtyModeSupported"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public isVideoCall()Z
    .registers 7

    .prologue
    .line 7881
    const/4 v1, 0x0

    .line 7883
    .local v1, "retVal":Z
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 7884
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_b

    .line 7885
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVideoCall()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_2d

    move-result v1

    .line 7890
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_b
    :goto_b
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVideoCall: retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7891
    return v1

    .line 7886
    :catch_24
    move-exception v0

    .line 7887
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    const-string v4, "Error calling ITelephony#isVideoCall"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 7888
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2d
    move-exception v3

    goto :goto_b
.end method

.method public isVideoCallingEnabled()Z
    .registers 5

    .prologue
    .line 5308
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5309
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_17

    .line 5310
    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isVideoCallingEnabled(Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v2

    .line 5314
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_e
    return v2

    .line 5311
    :catch_f
    move-exception v0

    .line 5312
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isVideoCallingEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5314
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public isVideoTelephonyAvailable()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5469
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVideoTelephonyAvailable()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 5473
    :goto_9
    return v1

    .line 5470
    :catch_a
    move-exception v0

    .line 5471
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 5472
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 5473
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isVoiceCapable()Z
    .registers 3

    .prologue
    .line 3259
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 3260
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_5
.end method

.method public isVolteAvailable()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5455
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVolteAvailable()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 5459
    :goto_9
    return v1

    .line 5456
    :catch_a
    move-exception v0

    .line 5457
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 5458
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 5459
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isVolteRegistered()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5915
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isVolteRegistered()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 5920
    :goto_9
    return v1

    .line 5916
    :catch_a
    move-exception v0

    .line 5917
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 5918
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 5920
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isWfcRegistered()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5930
    :try_start_1
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isWfcRegistered()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 5935
    :goto_9
    return v1

    .line 5931
    :catch_a
    move-exception v0

    .line 5932
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 5933
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 5935
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isWifiCallingAvailable()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 5483
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingAvailable()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_c

    move-result v1

    .line 5487
    :goto_9
    return v1

    .line 5484
    :catch_a
    move-exception v0

    .line 5485
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_9

    .line 5486
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v0

    .line 5487
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public isWorldPhone()Z
    .registers 5

    .prologue
    .line 5343
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5344
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5345
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isWorldPhone()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_15

    move-result v2

    .line 5352
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5347
    :catch_b
    move-exception v0

    .line 5348
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isWorldPhone"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5352
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const/4 v2, 0x0

    goto :goto_a

    .line 5349
    :catch_15
    move-exception v0

    .line 5350
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "TelephonyManager"

    const-string v3, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 10
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 3127
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 3137
    :goto_4
    return-void

    .line 3129
    :cond_5
    :try_start_5
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 3130
    .local v6, "notifyNow":Ljava/lang/Boolean;
    sget-object v0, sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget v1, p1, Landroid/telephony/PhoneStateListener;->mSubId:I

    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_22} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_22} :catch_27

    goto :goto_4

    .line 3132
    .end local v6    # "notifyNow":Ljava/lang/Boolean;
    :catch_23
    move-exception v0

    goto :goto_4

    .line 3129
    :cond_25
    const/4 v0, 0x0

    goto :goto_c

    .line 3134
    :catch_27
    move-exception v0

    goto :goto_4
.end method

.method public needsOtaServiceProvisioning()Z
    .registers 5

    .prologue
    .line 5196
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5197
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5198
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 5202
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5199
    :catch_b
    move-exception v0

    .line 5200
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#needsOtaServiceProvisioning"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5202
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .registers 6
    .param p1, "itemID"    # I

    .prologue
    .line 3872
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3873
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 3874
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvReadItem(I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_17

    move-result-object v2

    .line 3880
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v2

    .line 3875
    :catch_b
    move-exception v0

    .line 3876
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "nvReadItem RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3880
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    const-string v2, ""

    goto :goto_a

    .line 3877
    :catch_17
    move-exception v0

    .line 3878
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "nvReadItem NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public nvResetConfig(I)Z
    .registers 6
    .param p1, "resetType"    # I

    .prologue
    .line 3952
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3953
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 3954
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvResetConfig(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_16

    move-result v2

    .line 3960
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 3955
    :catch_b
    move-exception v0

    .line 3956
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "nvResetConfig RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3960
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    const/4 v2, 0x0

    goto :goto_a

    .line 3957
    :catch_16
    move-exception v0

    .line 3958
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "nvResetConfig NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public nvWriteCdmaPrl([B)Z
    .registers 6
    .param p1, "preferredRoamingList"    # [B

    .prologue
    .line 3925
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3926
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 3927
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvWriteCdmaPrl([B)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_16

    move-result v2

    .line 3933
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 3928
    :catch_b
    move-exception v0

    .line 3929
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "nvWriteCdmaPrl RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3933
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    const/4 v2, 0x0

    goto :goto_a

    .line 3930
    :catch_16
    move-exception v0

    .line 3931
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "nvWriteCdmaPrl NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .registers 7
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 3899
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3900
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 3901
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->nvWriteItem(ILjava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_16

    move-result v2

    .line 3907
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 3902
    :catch_b
    move-exception v0

    .line 3903
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "nvWriteItem RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3907
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    const/4 v2, 0x0

    goto :goto_a

    .line 3904
    :catch_16
    move-exception v0

    .line 3905
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "nvWriteItem NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public oem_ssa_alarm_event([B)[B
    .registers 12
    .param p1, "setCmd"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 7256
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    move-object v3, v4

    .line 7313
    :goto_10
    return-object v3

    .line 7261
    :cond_11
    invoke-direct {p0}, isDmLoggingPID()Z

    move-result v5

    if-nez v5, :cond_21

    .line 7262
    const-string v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 7263
    goto :goto_10

    .line 7266
    :cond_21
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 7267
    .local v0, "client":Ljava/lang/String;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_4e

    if-eqz v0, :cond_4e

    .line 7268
    const-string v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oem_ssa_alarm_event(), client -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7271
    :cond_4e
    if-eqz v0, :cond_58

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    :cond_58
    move-object v3, v4

    .line 7272
    goto :goto_10

    .line 7275
    :cond_5a
    const/4 v2, 0x0

    .line 7276
    .local v2, "ret":[I
    const/4 v3, 0x0

    .line 7278
    .local v3, "retByte":[B
    if-nez p1, :cond_80

    .line 7279
    new-array p1, v9, [B

    .line 7280
    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SHANNON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7e

    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 7281
    :cond_7e
    aput-byte v8, p1, v8

    .line 7287
    :cond_80
    :goto_80
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_aa

    .line 7288
    const-string v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oem_ssa_alarm_event(), [0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", len :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7292
    :cond_aa
    :try_start_aa
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6, p1}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_b2} :catch_ef
    .catch Ljava/lang/NullPointerException; {:try_start_aa .. :try_end_b2} :catch_f3

    move-result-object v2

    .line 7299
    if-eqz v2, :cond_fb

    .line 7300
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_e0

    .line 7301
    const-string v4, "DmLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oem_ssa_alarm_event(), ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7303
    :cond_e0
    const/4 v4, 0x2

    new-array v3, v4, [B

    .line 7304
    aget v4, v2, v8

    if-nez v4, :cond_f7

    .line 7305
    aput-byte v8, v3, v8

    goto/16 :goto_10

    .line 7283
    :cond_eb
    const/4 v5, -0x1

    aput-byte v5, p1, v8

    goto :goto_80

    .line 7293
    :catch_ef
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    move-object v3, v4

    .line 7294
    goto/16 :goto_10

    .line 7295
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_f3
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 7296
    goto/16 :goto_10

    .line 7307
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_f7
    aput-byte v9, v3, v8

    goto/16 :goto_10

    .line 7310
    :cond_fb
    const-string v4, "DmLoggingService"

    const-string/jumbo v5, "oem_ssa_alarm_event(), ret = null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7311
    const/4 v3, 0x0

    goto/16 :goto_10
.end method

.method public oem_ssa_check_mem()[I
    .registers 2

    .prologue
    .line 7335
    invoke-virtual {p0}, uknight_mem_check()[I

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_get_data()[B
    .registers 2

    .prologue
    .line 7321
    invoke-virtual {p0}, uknight_get_data()[B

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_hdv_alarm_event([B)[B
    .registers 12
    .param p1, "setCmd"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 7513
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    move-object v3, v4

    .line 7565
    :goto_10
    return-object v3

    .line 7517
    :cond_11
    invoke-direct {p0}, isDmLoggingPID()Z

    move-result v5

    if-nez v5, :cond_21

    .line 7518
    const-string v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 7519
    goto :goto_10

    .line 7522
    :cond_21
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 7523
    .local v0, "client":Ljava/lang/String;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_4e

    if-eqz v0, :cond_4e

    .line 7524
    const-string v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oem_ssa_hdv_alarm_event(), client -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7527
    :cond_4e
    if-eqz v0, :cond_58

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    :cond_58
    move-object v3, v4

    .line 7528
    goto :goto_10

    .line 7531
    :cond_5a
    const/4 v2, 0x0

    .line 7532
    .local v2, "ret":[I
    const/4 v3, 0x0

    .line 7534
    .local v3, "retByte":[B
    if-nez p1, :cond_63

    .line 7535
    new-array p1, v9, [B

    .line 7536
    const/4 v5, -0x1

    aput-byte v5, p1, v8

    .line 7539
    :cond_63
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_8d

    .line 7540
    const-string v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oem_ssa_hdv_alarm_event(), [0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", len :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7544
    :cond_8d
    :try_start_8d
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {v5, v6, p1}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_95} :catch_ce
    .catch Ljava/lang/NullPointerException; {:try_start_8d .. :try_end_95} :catch_d2

    move-result-object v2

    .line 7551
    if-eqz v2, :cond_da

    .line 7552
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_c3

    .line 7553
    const-string v4, "DmLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oem_ssa_hdv_alarm_event(), ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7555
    :cond_c3
    const/4 v4, 0x2

    new-array v3, v4, [B

    .line 7556
    aget v4, v2, v8

    if-nez v4, :cond_d6

    .line 7557
    aput-byte v8, v3, v8

    goto/16 :goto_10

    .line 7545
    :catch_ce
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    move-object v3, v4

    .line 7546
    goto/16 :goto_10

    .line 7547
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_d2
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 7548
    goto/16 :goto_10

    .line 7559
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_d6
    aput-byte v9, v3, v8

    goto/16 :goto_10

    .line 7562
    :cond_da
    const-string v4, "DmLoggingService"

    const-string/jumbo v5, "oem_ssa_hdv_alarm_event(), ret = null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7563
    const/4 v3, 0x0

    goto/16 :goto_10
.end method

.method public oem_ssa_set_event([B)[B
    .registers 4
    .param p1, "setCmd"    # [B

    .prologue
    .line 7245
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_c

    .line 7246
    const-string v0, "DmLoggingService"

    const-string/jumbo v1, "oem_ssa_set_event() +"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7248
    :cond_c
    invoke-virtual {p0, p1}, uknight_event_set([B)[B

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_set_log([B)[B
    .registers 4
    .param p1, "maskCode"    # [B

    .prologue
    .line 7233
    const-string/jumbo v0, "ril.modem.board"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHANNON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "ril.modem.board"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 7234
    const-string v0, "DmLoggingService"

    const-string/jumbo v1, "oem_ssa_set_log( ) - NULL!! "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7235
    const/4 v0, 0x0

    .line 7237
    :goto_27
    return-object v0

    :cond_28
    invoke-virtual {p0, p1}, uknight_log_set([B)[B

    move-result-object v0

    goto :goto_27
.end method

.method public oem_ssa_set_log([B[B)[B
    .registers 7
    .param p1, "startCode"    # [B
    .param p2, "maskCode"    # [B

    .prologue
    const/4 v3, 0x0

    .line 7216
    const-string/jumbo v1, "ril.modem.board"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHANNON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "ril.modem.board"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 7217
    :cond_1f
    const-string v1, "DmLoggingService"

    const-string/jumbo v2, "oem_ssa_set_log( , ) - NULL!! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7218
    const/4 v1, 0x0

    .line 7226
    :goto_28
    return-object v1

    .line 7220
    :cond_29
    const/4 v0, 0x0

    .line 7221
    .local v0, "setCmd":[B
    if-eqz p1, :cond_3c

    if-eqz p2, :cond_3c

    .line 7222
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 7223
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 7224
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 7226
    :cond_3c
    invoke-virtual {p0, v0}, uknight_log_set([B)[B

    move-result-object v1

    goto :goto_28
.end method

.method public oem_ssa_set_mem(I)Z
    .registers 3
    .param p1, "percent"    # I

    .prologue
    .line 7328
    invoke-virtual {p0, p1}, uknight_mem_set(I)Z

    move-result v0

    return v0
.end method

.method public openLockChannel(Ljava/lang/String;)I
    .registers 7
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 7468
    const/4 v0, -0x1

    .line 7470
    .local v0, "channel":I
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v2

    .line 7471
    .local v2, "mOpen":Landroid/telephony/IccOpenLogicalChannelResponse;
    if-eqz v2, :cond_f

    .line 7472
    invoke-virtual {v2}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_1a

    move-result v0

    .line 7479
    .end local v2    # "mOpen":Landroid/telephony/IccOpenLogicalChannelResponse;
    :cond_f
    :goto_f
    return v0

    .line 7474
    :catch_10
    move-exception v1

    .line 7475
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    const-string/jumbo v4, "openLockChannel(), RemoteException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 7476
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1a
    move-exception v1

    .line 7477
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    const-string/jumbo v4, "openLockChannel(), NullPointerException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 3848
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3849
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_c

    .line 3850
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3854
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v1

    .line 3852
    :catch_b
    move-exception v1

    .line 3854
    :cond_c
    :goto_c
    const-string v1, ""

    goto :goto_a

    .line 3851
    :catch_f
    move-exception v1

    goto :goto_c
.end method

.method public setAirplaneMode(Ljava/lang/String;Z)I
    .registers 8
    .param p1, "passcode"    # Ljava/lang/String;
    .param p2, "mode"    # Z

    .prologue
    .line 6352
    const/4 v1, 0x0

    .line 6353
    .local v1, "ret_val":I
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setAirplaneMode(Ljava/lang/String;Z)I

    move-result v1

    .line 6355
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAirplaneMode ret_val:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_22} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_22} :catch_2e

    .line 6362
    .end local v1    # "ret_val":I
    :goto_22
    return v1

    .line 6357
    .restart local v1    # "ret_val":I
    :catch_23
    move-exception v0

    .line 6358
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setAirplaneMode RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6362
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2c
    const/4 v1, -0x1

    goto :goto_22

    .line 6359
    :catch_2e
    move-exception v0

    .line 6360
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setAirplaneMode NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public setBasebandVersion(Ljava/lang/String;)V
    .registers 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 5578
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5579
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, setBasebandVersionForPhone(ILjava/lang/String;)V

    .line 5580
    return-void
.end method

.method public setBasebandVersionForPhone(ILjava/lang/String;)V
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 5590
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 5591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm.version.baseband"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_21

    const-string v1, ""

    :goto_15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5593
    .local v0, "prop":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5595
    .end local v0    # "prop":Ljava/lang/String;
    :cond_20
    return-void

    .line 5591
    :cond_21
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_15
.end method

.method public setCellInfoListRate(I)V
    .registers 4
    .param p1, "rateInMillis"    # I

    .prologue
    .line 3393
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3394
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 3395
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    .line 3399
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 3397
    :catch_a
    move-exception v1

    goto :goto_9

    .line 3396
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public setDataEnabled(IZ)V
    .registers 8
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 5217
    :try_start_0
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataEnabled: enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CallingPid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5220
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_30

    .line 5221
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDataEnabled(IZ)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    .line 5225
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_30
    :goto_30
    return-void

    .line 5222
    :catch_31
    move-exception v0

    .line 5223
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#setDataEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method public setDataEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 5208
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, setDataEnabled(IZ)V

    .line 5209
    return-void
.end method

.method public setDataNetworkType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 5813
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5814
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, setDataNetworkTypeForPhone(II)V

    .line 5815
    return-void
.end method

.method public setDataNetworkTypeForPhone(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .prologue
    .line 5824
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5825
    const-string v0, "gsm.network.type"

    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5829
    :cond_f
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 6005
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 6009
    :goto_7
    return-void

    .line 6007
    :catch_8
    move-exception v0

    goto :goto_7

    .line 6006
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public setDisable2g(I)Z
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 8054
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8055
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 8056
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setDisable2g(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_16

    move-result v2

    .line 8062
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 8057
    :catch_b
    move-exception v0

    .line 8058
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setDisable2g RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8062
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    const/4 v2, 0x0

    goto :goto_a

    .line 8059
    :catch_16
    move-exception v0

    .line 8060
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setDisable2g NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public setEPSLOCI([B)V
    .registers 4
    .param p1, "newEpsloci"    # [B

    .prologue
    .line 7771
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setEPSLOCI([B)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_a

    .line 7777
    :goto_7
    return-void

    .line 7772
    :catch_8
    move-exception v0

    .line 7773
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 7774
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_a
    move-exception v0

    .line 7775
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .prologue
    .line 7682
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 7688
    :goto_7
    return-void

    .line 7685
    :catch_8
    move-exception v0

    goto :goto_7

    .line 7683
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public setImsRegistrationState(Z)V
    .registers 4
    .param p1, "registered"    # Z

    .prologue
    .line 4314
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4315
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 4316
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setImsRegistrationState(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4319
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 4317
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method public setLine1NumberForDisplay(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2481
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 2501
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2502
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_c

    .line 2503
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 2507
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v1

    .line 2505
    :catch_b
    move-exception v1

    .line 2507
    :cond_c
    :goto_c
    const/4 v1, 0x0

    goto :goto_a

    .line 2504
    :catch_e
    move-exception v1

    goto :goto_c
.end method

.method public setMultiSimForegroundPhoneId(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 7747
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setMultiSimForegroundPhoneId(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_a

    .line 7753
    :goto_7
    return-void

    .line 7748
    :catch_8
    move-exception v0

    .line 7749
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 7750
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_a
    move-exception v0

    .line 7751
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public setMultiSimLastRejectIncomingCallPhoneId(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 7725
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setMultiSimLastRejectIncomingCallPhoneId(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_a

    .line 7731
    :goto_7
    return-void

    .line 7726
    :catch_8
    move-exception v0

    .line 7727
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 7728
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_a
    move-exception v0

    .line 7729
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method

.method public setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .param p1, "passcode"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "band"    # I

    .prologue
    .line 6334
    const/4 v1, 0x0

    .line 6335
    .local v1, "ret_val":I
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 6337
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNetworkBand ret_val:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_22} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_22} :catch_2e

    .line 6344
    .end local v1    # "ret_val":I
    :goto_22
    return v1

    .line 6339
    .restart local v1    # "ret_val":I
    :catch_23
    move-exception v0

    .line 6340
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setNetworkBand RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6344
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2c
    const/4 v1, -0x1

    goto :goto_22

    .line 6341
    :catch_2e
    move-exception v0

    .line 6342
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setNetworkBand NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public setNetworkCountryIso(Ljava/lang/String;)V
    .registers 3
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 5789
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5790
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 5791
    return-void
.end method

.method public setNetworkCountryIsoForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .prologue
    .line 5801
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5802
    const-string v0, "gsm.operator.iso-country"

    invoke-static {p1, v0, p2}, setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5805
    :cond_b
    return-void
.end method

.method public setNetworkOperatorName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5723
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5724
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 5725
    return-void
.end method

.method public setNetworkOperatorNameForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 5734
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5735
    const-string v0, "gsm.operator.alpha"

    invoke-static {p1, v0, p2}, setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5737
    :cond_b
    return-void
.end method

.method public setNetworkOperatorNumeric(Ljava/lang/String;)V
    .registers 3
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 5745
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5746
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 5747
    return-void
.end method

.method public setNetworkOperatorNumericForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    .line 5756
    const-string v0, "gsm.operator.numeric"

    invoke-static {p1, v0, p2}, setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5757
    return-void
.end method

.method public setNetworkRoaming(Z)V
    .registers 3
    .param p1, "isRoaming"    # Z

    .prologue
    .line 5765
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5766
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, setNetworkRoamingForPhone(IZ)V

    .line 5767
    return-void
.end method

.method public setNetworkRoamingForPhone(IZ)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z

    .prologue
    .line 5776
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5777
    const-string v1, "gsm.operator.isroaming"

    if-eqz p2, :cond_11

    const-string/jumbo v0, "true"

    :goto_d
    invoke-static {p1, v1, v0}, setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5780
    :cond_10
    return-void

    .line 5777
    :cond_11
    const-string v0, "false"

    goto :goto_d
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 4356
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4357
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 4358
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeAutomatic(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_14

    .line 4364
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 4359
    :catch_a
    move-exception v0

    .line 4360
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setNetworkSelectionModeAutomatic RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 4361
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 4362
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setNetworkSelectionModeAutomatic NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    .registers 8
    .param p1, "subId"    # I
    .param p2, "operator"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "persistSelection"    # Z

    .prologue
    .line 4405
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4406
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 4407
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_16

    move-result v2

    .line 4413
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4408
    :catch_b
    move-exception v0

    .line 4409
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setNetworkSelectionModeManual RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4413
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    const/4 v2, 0x0

    goto :goto_a

    .line 4410
    :catch_16
    move-exception v0

    .line 4411
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setNetworkSelectionModeManual NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .registers 6
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 4542
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4543
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 4544
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setOperatorBrandOverride(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_16

    move-result v2

    .line 4550
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4545
    :catch_b
    move-exception v0

    .line 4546
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setOperatorBrandOverride RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4550
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    const/4 v2, 0x0

    goto :goto_a

    .line 4547
    :catch_16
    move-exception v0

    .line 4548
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setOperatorBrandOverride NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public setPcoValue(I)V
    .registers 3
    .param p1, "newPco"    # I

    .prologue
    .line 7931
    :try_start_0
    invoke-direct {p0}, getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->setPcoValue(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 7935
    :goto_7
    return-void

    .line 7933
    :catch_8
    move-exception v0

    goto :goto_7

    .line 7932
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public setPhoneType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 5605
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5606
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, setPhoneType(II)V

    .line 5607
    return-void
.end method

.method public setPhoneType(II)V
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .prologue
    .line 5618
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5619
    const-string v0, "gsm.current.phone-type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5622
    :cond_f
    return-void
.end method

.method public setPreferredNetworkType(II)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 4431
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4432
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 4433
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_16

    move-result v2

    .line 4439
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4434
    :catch_b
    move-exception v0

    .line 4435
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setPreferredNetworkType RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4439
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    const/4 v2, 0x0

    goto :goto_a

    .line 4436
    :catch_16
    move-exception v0

    .line 4437
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setPreferredNetworkType NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public setPreferredNetworkTypeToGlobal()Z
    .registers 4

    .prologue
    .line 4453
    invoke-static {}, isUsaCdmaModel()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 4454
    const-string/jumbo v1, "persist.ril.radiocapa.tdscdma"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4455
    .local v0, "supportTdscdma":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 4456
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setPreferredNetworkTypeToGlobal - Use extended global mode network type for TDSCDMA"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4457
    invoke-static {}, getDefaultSubscription()I

    move-result v1

    const/16 v2, 0x16

    invoke-virtual {p0, v1, v2}, setPreferredNetworkType(II)Z

    move-result v1

    .line 4466
    .end local v0    # "supportTdscdma":Ljava/lang/String;
    :goto_2a
    return v1

    .line 4463
    :cond_2b
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setPreferredNetworkTypeToGlobal"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    invoke-static {}, getDefaultSubscription()I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, setPreferredNetworkType(II)Z

    move-result v1

    goto :goto_2a
.end method

.method public setRadio(IZ)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z

    .prologue
    .line 5118
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5119
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5120
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(IZ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 5124
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5121
    :catch_b
    move-exception v0

    .line 5122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#setRadio"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5124
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public setRadio(Z)Z
    .registers 6
    .param p1, "turnOn"    # Z

    .prologue
    .line 5104
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5105
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5106
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 5110
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5107
    :catch_b
    move-exception v0

    .line 5108
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#setRadio"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5110
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public setRadioPower(Z)Z
    .registers 6
    .param p1, "turnOn"    # Z

    .prologue
    .line 5132
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5133
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5134
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 5138
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 5135
    :catch_b
    move-exception v0

    .line 5136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#setRadioPower"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5138
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4576
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4577
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_14

    .line 4578
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_16

    move-result v2

    .line 4585
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4580
    :catch_b
    move-exception v0

    .line 4581
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setRoamingOverride RemoteException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4585
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    const/4 v2, 0x0

    goto :goto_a

    .line 4582
    :catch_16
    move-exception v0

    .line 4583
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setRoamingOverride NPE"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public setSelectedApn()V
    .registers 1

    .prologue
    .line 6026
    return-void
.end method

.method public setSimCountryIso(Ljava/lang/String;)V
    .registers 3
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 5537
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5538
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 5539
    return-void
.end method

.method public setSimCountryIsoForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .prologue
    .line 5547
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {p1, v0, p2}, setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5549
    return-void
.end method

.method public setSimOperatorName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5517
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5518
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 5519
    return-void
.end method

.method public setSimOperatorNameForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 5527
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {p1, v0, p2}, setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5529
    return-void
.end method

.method public setSimOperatorNumeric(Ljava/lang/String;)V
    .registers 3
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 5497
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5498
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 5499
    return-void
.end method

.method public setSimOperatorNumericForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    .line 5507
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {p1, v0, p2}, setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5509
    return-void
.end method

.method public setSimState(Ljava/lang/String;)V
    .registers 3
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 5557
    invoke-static {}, getDefaultPhone()I

    move-result v0

    .line 5558
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, setSimStateForPhone(ILjava/lang/String;)V

    .line 5559
    return-void
.end method

.method public setSimStateForPhone(ILjava/lang/String;)V
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 5567
    const-string v0, "gsm.sim.state"

    invoke-static {p1, v0, p2}, setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 5569
    return-void
.end method

.method public setUimRemoteLockStatus(I)I
    .registers 7
    .param p1, "option"    # I

    .prologue
    .line 7445
    const/4 v1, 0x0

    .line 7447
    .local v1, "result":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v1

    .line 7461
    :goto_e
    return v2

    .line 7451
    :cond_f
    :try_start_f
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setUimRemoteLockStatus(), start"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7452
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setUimRemoteLockStatus(I)I

    move-result v1

    .line 7453
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUimRemoteLockStatus(), result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_38} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_38} :catch_45

    move v2, v1

    .line 7461
    goto :goto_e

    .line 7454
    :catch_3a
    move-exception v0

    .line 7455
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setUimRemoteLockStatus(), RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7456
    const/4 v2, -0x1

    goto :goto_e

    .line 7457
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_45
    move-exception v0

    .line 7458
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setUimRemoteLockStatus(), NullPointerException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7459
    const/4 v2, -0x2

    goto :goto_e
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 2710
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2711
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_c

    .line 2712
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 2716
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v1

    .line 2714
    :catch_b
    move-exception v1

    .line 2716
    :cond_c
    :goto_c
    const/4 v1, 0x0

    goto :goto_a

    .line 2713
    :catch_e
    move-exception v1

    goto :goto_c
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2694
    invoke-static {}, getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .registers 4

    .prologue
    .line 4805
    :try_start_0
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-direct {p0}, getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 4809
    :goto_b
    return-void

    .line 4806
    :catch_c
    move-exception v0

    .line 4807
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public startMobileQualityInformation()V
    .registers 3

    .prologue
    .line 6620
    const-string v0, "TelephonyManager"

    const-string v1, "block startMobileQualityInformation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6629
    return-void
.end method

.method public stopMobileQualityInformation()V
    .registers 3

    .prologue
    .line 6635
    const-string v0, "TelephonyManager"

    const-string v1, "block stopMobileQualityInformation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6644
    return-void
.end method

.method public supplyPin(ILjava/lang/String;)Z
    .registers 7
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 4954
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4955
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 4956
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(ILjava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 4960
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4957
    :catch_b
    move-exception v0

    .line 4958
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#supplyPin"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4960
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 4940
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4941
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 4942
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 4946
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4943
    :catch_b
    move-exception v0

    .line 4944
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#supplyPin"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4946
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public supplyPinReportResult(ILjava/lang/String;)[I
    .registers 7
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 5010
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5011
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5012
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 5016
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v2

    .line 5013
    :catch_b
    move-exception v0

    .line 5014
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#supplyPinReportResult"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5016
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    new-array v2, v2, [I

    goto :goto_a
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .registers 6
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 4996
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4997
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 4998
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 5002
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v2

    .line 4999
    :catch_b
    move-exception v0

    .line 5000
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#supplyPinReportResult"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5002
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    new-array v2, v2, [I

    goto :goto_a
.end method

.method public supplyPuk(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 4982
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4983
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 4984
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 4988
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4985
    :catch_b
    move-exception v0

    .line 4986
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#supplyPuk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4988
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 4968
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4969
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 4970
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 4974
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return v2

    .line 4971
    :catch_b
    move-exception v0

    .line 4972
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#supplyPuk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4974
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public supplyPukReportResult(ILjava/lang/String;Ljava/lang/String;)[I
    .registers 8
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 5038
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5039
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5040
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 5044
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v2

    .line 5041
    :catch_b
    move-exception v0

    .line 5042
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#]"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5044
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    new-array v2, v2, [I

    goto :goto_a
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 7
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 5024
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5025
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_13

    .line 5026
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 5030
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_a
    return-object v2

    .line 5027
    :catch_b
    move-exception v0

    .line 5028
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#]"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5030
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v2, 0x0

    new-array v2, v2, [I

    goto :goto_a
.end method

.method public toggleRadioOnOff()V
    .registers 5

    .prologue
    .line 5078
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5079
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 5080
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 5084
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 5081
    :catch_a
    move-exception v0

    .line 5082
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public toggleRadioOnOff(I)V
    .registers 6
    .param p1, "subId"    # I

    .prologue
    .line 5091
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5092
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 5093
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOffForSubscriber(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 5097
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 5094
    :catch_a
    move-exception v0

    .line 5095
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public transmitLockChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 7497
    const/4 v9, 0x0

    .line 7499
    .local v9, "response":Ljava/lang/String;
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move v1, p3

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_11} :catch_1d

    move-result-object v9

    .line 7505
    :goto_12
    return-object v9

    .line 7500
    :catch_13
    move-exception v8

    .line 7501
    .local v8, "ex":Landroid/os/RemoteException;
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "transmitLockChannel(), RemoteException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 7502
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_1d
    move-exception v8

    .line 7503
    .local v8, "ex":Ljava/lang/NullPointerException;
    const-string v0, "TelephonyManager"

    const-string/jumbo v1, "transmitLockChannel(), NullPointerException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public uknight_event_set([B)[B
    .registers 13
    .param p1, "setCmd"    # [B

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 6918
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    move-object v3, v4

    .line 6970
    :goto_11
    return-object v3

    .line 6923
    :cond_12
    invoke-direct {p0}, isDmLoggingPID()Z

    move-result v5

    if-nez v5, :cond_22

    .line 6924
    const-string v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 6925
    goto :goto_11

    .line 6928
    :cond_22
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 6929
    .local v0, "client":Ljava/lang/String;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_4e

    if-eqz v0, :cond_4e

    .line 6930
    const-string v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_set(), client -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6933
    :cond_4e
    const/4 v2, 0x0

    .line 6934
    .local v2, "ret":[I
    new-array v3, v10, [B

    .line 6936
    .local v3, "retByte":[B
    if-eqz v0, :cond_5b

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5d

    :cond_5b
    move-object v3, v4

    .line 6937
    goto :goto_11

    .line 6940
    :cond_5d
    if-nez p1, :cond_81

    .line 6941
    new-array p1, v9, [B

    .line 6942
    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SHANNON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7f

    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 6943
    :cond_7f
    aput-byte v8, p1, v8

    .line 6950
    :cond_81
    :goto_81
    :try_start_81
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6, p1}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_89} :catch_c2
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_89} :catch_c6

    move-result-object v2

    .line 6957
    if-eqz v2, :cond_ce

    .line 6958
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_b6

    .line 6959
    const-string v4, "DmLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event_set(), ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6961
    :cond_b6
    aget v4, v2, v8

    if-nez v4, :cond_ca

    .line 6962
    aput-byte v8, v3, v8

    goto/16 :goto_11

    .line 6945
    :cond_be
    const/4 v5, -0x1

    aput-byte v5, p1, v8

    goto :goto_81

    .line 6951
    :catch_c2
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    move-object v3, v4

    .line 6952
    goto/16 :goto_11

    .line 6953
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_c6
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 6954
    goto/16 :goto_11

    .line 6964
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_ca
    aput-byte v9, v3, v8

    goto/16 :goto_11

    .line 6967
    :cond_ce
    const-string v4, "DmLoggingService"

    const-string v5, "event_set(), ret = null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6968
    const/4 v3, 0x0

    goto/16 :goto_11
.end method

.method public uknight_get_data()[B
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 7086
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    move-object v2, v8

    .line 7166
    :goto_e
    return-object v2

    .line 7091
    :cond_f
    invoke-direct {p0}, isDmLoggingPID()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 7092
    const-string v9, "DmLoggingService"

    const-string/jumbo v10, "ps not initialized!"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    .line 7093
    goto :goto_e

    .line 7096
    :cond_1f
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 7097
    .local v1, "client":Ljava/lang/String;
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_4c

    if-eqz v1, :cond_4c

    .line 7098
    const-string v9, "DmLoggingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "uknight_get_data(), client -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7101
    :cond_4c
    if-eqz v1, :cond_56

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v9, v1}, validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_58

    :cond_56
    move-object v2, v8

    .line 7102
    goto :goto_e

    .line 7106
    :cond_58
    :try_start_58
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_61} :catch_7f
    .catch Ljava/lang/NullPointerException; {:try_start_58 .. :try_end_61} :catch_82

    .line 7113
    const/4 v6, 0x0

    .line 7114
    .local v6, "fileIS":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 7116
    .local v2, "dmBuf":[B
    :try_start_63
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/log/knightBuff.tmp"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7118
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_8b

    .line 7119
    const-string v9, "DmLoggingService"

    const-string/jumbo v10, "uknight_get_data(), log not exist! "

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_78} :catch_d6
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_78} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_78} :catch_106
    .catchall {:try_start_63 .. :try_end_78} :catchall_11e

    .line 7149
    if-eqz v6, :cond_7d

    .line 7151
    :try_start_7a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_85

    :cond_7d
    :goto_7d
    move-object v2, v8

    .line 7155
    goto :goto_e

    .line 7107
    .end local v2    # "dmBuf":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileIS":Ljava/io/FileInputStream;
    :catch_7f
    move-exception v4

    .local v4, "ex":Landroid/os/RemoteException;
    move-object v2, v8

    .line 7108
    goto :goto_e

    .line 7109
    .end local v4    # "ex":Landroid/os/RemoteException;
    :catch_82
    move-exception v4

    .local v4, "ex":Ljava/lang/NullPointerException;
    move-object v2, v8

    .line 7110
    goto :goto_e

    .line 7152
    .end local v4    # "ex":Ljava/lang/NullPointerException;
    .restart local v2    # "dmBuf":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fileIS":Ljava/io/FileInputStream;
    :catch_85
    move-exception v3

    .line 7153
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 7154
    const/4 v2, 0x0

    goto :goto_7d

    .line 7123
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8b
    :try_start_8b
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v0, v8

    .line 7124
    .local v0, "bufSize":I
    if-lez v0, :cond_bc

    .line 7125
    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/data/log/knightBuff.tmp"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_99} :catch_d6
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_99} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_99} :catch_106
    .catchall {:try_start_8b .. :try_end_99} :catchall_11e

    .line 7126
    .end local v6    # "fileIS":Ljava/io/FileInputStream;
    .local v7, "fileIS":Ljava/io/FileInputStream;
    :try_start_99
    new-array v2, v0, [B

    .line 7127
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 7129
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_bb

    .line 7130
    const-string v8, "DmLoggingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uknight_get_data(), buff size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_bb} :catch_137
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_bb} :catch_134
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_bb} :catch_131
    .catchall {:try_start_99 .. :try_end_bb} :catchall_12e

    :cond_bb
    move-object v6, v7

    .line 7149
    .end local v7    # "fileIS":Ljava/io/FileInputStream;
    .restart local v6    # "fileIS":Ljava/io/FileInputStream;
    :cond_bc
    if-eqz v6, :cond_c1

    .line 7151
    :try_start_be
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_d0

    .line 7160
    .end local v0    # "bufSize":I
    .end local v5    # "file":Ljava/io/File;
    :cond_c1
    :goto_c1
    :try_start_c1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_cb} :catch_cd
    .catch Ljava/lang/NullPointerException; {:try_start_c1 .. :try_end_cb} :catch_12b

    goto/16 :goto_e

    .line 7161
    :catch_cd
    move-exception v8

    goto/16 :goto_e

    .line 7152
    .restart local v0    # "bufSize":I
    .restart local v5    # "file":Ljava/io/File;
    :catch_d0
    move-exception v3

    .line 7153
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 7154
    const/4 v2, 0x0

    .line 7155
    goto :goto_c1

    .line 7134
    .end local v0    # "bufSize":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    :catch_d6
    move-exception v3

    .line 7135
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_d7
    :try_start_d7
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 7136
    const-string v8, "DmLoggingService"

    const-string v9, "FileNotFoundException"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catchall {:try_start_d7 .. :try_end_e1} :catchall_11e

    .line 7137
    const/4 v2, 0x0

    .line 7149
    if-eqz v6, :cond_c1

    .line 7151
    :try_start_e4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_c1

    .line 7152
    :catch_e8
    move-exception v3

    .line 7153
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 7154
    const/4 v2, 0x0

    .line 7155
    goto :goto_c1

    .line 7138
    .end local v3    # "e":Ljava/io/IOException;
    :catch_ee
    move-exception v3

    .line 7140
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_ef
    :try_start_ef
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 7141
    const-string v8, "DmLoggingService"

    const-string v9, "IOException"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_ef .. :try_end_f9} :catchall_11e

    .line 7142
    const/4 v2, 0x0

    .line 7149
    if-eqz v6, :cond_c1

    .line 7151
    :try_start_fc
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_100

    goto :goto_c1

    .line 7152
    :catch_100
    move-exception v3

    .line 7153
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 7154
    const/4 v2, 0x0

    .line 7155
    goto :goto_c1

    .line 7143
    .end local v3    # "e":Ljava/io/IOException;
    :catch_106
    move-exception v3

    .line 7145
    .local v3, "e":Ljava/lang/Exception;
    :goto_107
    :try_start_107
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 7146
    const-string v8, "DmLoggingService"

    const-string v9, "Exception"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_107 .. :try_end_111} :catchall_11e

    .line 7147
    const/4 v2, 0x0

    .line 7149
    if-eqz v6, :cond_c1

    .line 7151
    :try_start_114
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_118

    goto :goto_c1

    .line 7152
    :catch_118
    move-exception v3

    .line 7153
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 7154
    const/4 v2, 0x0

    .line 7155
    goto :goto_c1

    .line 7149
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_11e
    move-exception v8

    :goto_11f
    if-eqz v6, :cond_124

    .line 7151
    :try_start_121
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_125

    .line 7155
    :cond_124
    :goto_124
    throw v8

    .line 7152
    :catch_125
    move-exception v3

    .line 7153
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 7154
    const/4 v2, 0x0

    goto :goto_124

    .line 7162
    .end local v3    # "e":Ljava/io/IOException;
    :catch_12b
    move-exception v8

    goto/16 :goto_e

    .line 7149
    .end local v6    # "fileIS":Ljava/io/FileInputStream;
    .restart local v0    # "bufSize":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fileIS":Ljava/io/FileInputStream;
    :catchall_12e
    move-exception v8

    move-object v6, v7

    .end local v7    # "fileIS":Ljava/io/FileInputStream;
    .restart local v6    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_11f

    .line 7143
    .end local v6    # "fileIS":Ljava/io/FileInputStream;
    .restart local v7    # "fileIS":Ljava/io/FileInputStream;
    :catch_131
    move-exception v3

    move-object v6, v7

    .end local v7    # "fileIS":Ljava/io/FileInputStream;
    .restart local v6    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_107

    .line 7138
    .end local v6    # "fileIS":Ljava/io/FileInputStream;
    .restart local v7    # "fileIS":Ljava/io/FileInputStream;
    :catch_134
    move-exception v3

    move-object v6, v7

    .end local v7    # "fileIS":Ljava/io/FileInputStream;
    .restart local v6    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_ef

    .line 7134
    .end local v6    # "fileIS":Ljava/io/FileInputStream;
    .restart local v7    # "fileIS":Ljava/io/FileInputStream;
    :catch_137
    move-exception v3

    move-object v6, v7

    .end local v7    # "fileIS":Ljava/io/FileInputStream;
    .restart local v6    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_d7
.end method

.method public uknight_log_set([B)[B
    .registers 12
    .param p1, "setCmd"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 6858
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    move-object v3, v4

    .line 6910
    :goto_10
    return-object v3

    .line 6863
    :cond_11
    invoke-direct {p0}, isDmLoggingPID()Z

    move-result v5

    if-nez v5, :cond_21

    .line 6864
    const-string v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 6865
    goto :goto_10

    .line 6868
    :cond_21
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 6869
    .local v0, "client":Ljava/lang/String;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_4d

    if-eqz v0, :cond_4d

    .line 6870
    const-string v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "log_set(), client -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6873
    :cond_4d
    const/4 v2, 0x0

    .line 6874
    .local v2, "ret":[I
    const/4 v5, 0x2

    new-array v3, v5, [B

    .line 6876
    .local v3, "retByte":[B
    if-eqz v0, :cond_5b

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5d

    :cond_5b
    move-object v3, v4

    .line 6877
    goto :goto_10

    .line 6880
    :cond_5d
    if-nez p1, :cond_81

    .line 6881
    new-array p1, v9, [B

    .line 6882
    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SHANNON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7f

    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 6883
    :cond_7f
    aput-byte v8, p1, v8

    .line 6890
    :cond_81
    :goto_81
    :try_start_81
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6, p1}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_89} :catch_c2
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_89} :catch_c6

    move-result-object v2

    .line 6897
    if-eqz v2, :cond_ce

    .line 6898
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_b6

    .line 6899
    const-string v4, "DmLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "log_set(), ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6901
    :cond_b6
    aget v4, v2, v8

    if-nez v4, :cond_ca

    .line 6902
    aput-byte v8, v3, v8

    goto/16 :goto_10

    .line 6885
    :cond_be
    const/4 v5, -0x1

    aput-byte v5, p1, v8

    goto :goto_81

    .line 6891
    :catch_c2
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    move-object v3, v4

    .line 6892
    goto/16 :goto_10

    .line 6893
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_c6
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 6894
    goto/16 :goto_10

    .line 6904
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_ca
    aput-byte v9, v3, v8

    goto/16 :goto_10

    .line 6907
    :cond_ce
    const-string v4, "DmLoggingService"

    const-string v5, "log_set(), ret = null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6908
    const/4 v3, 0x0

    goto/16 :goto_10
.end method

.method public uknight_mem_check()[I
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 7174
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object v2, v3

    .line 7208
    :cond_e
    :goto_e
    return-object v2

    .line 7179
    :cond_f
    invoke-direct {p0}, isDmLoggingPID()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 7180
    const-string v4, "DmLoggingService"

    const-string/jumbo v5, "ps not initialized!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 7181
    goto :goto_e

    .line 7184
    :cond_1f
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 7185
    .local v0, "client":Ljava/lang/String;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_4c

    if-eqz v0, :cond_4c

    .line 7186
    const-string v4, "DmLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uknight_mem_check(), client -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7189
    :cond_4c
    if-eqz v0, :cond_56

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v0}, validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_58

    :cond_56
    move-object v2, v3

    .line 7190
    goto :goto_e

    .line 7193
    :cond_58
    const/4 v2, 0x0

    .line 7195
    .local v2, "ret":[I
    :try_start_59
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I

    move-result-object v2

    .line 7196
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_e

    .line 7197
    if-eqz v2, :cond_98

    .line 7198
    const-string v4, "DmLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uknight_mem_check(), ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 7203
    :catch_94
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    move-object v2, v3

    .line 7204
    goto/16 :goto_e

    .line 7200
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_98
    const-string v4, "DmLoggingService"

    const-string/jumbo v5, "uknight_mem_check(), ret = null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_a0} :catch_94
    .catch Ljava/lang/NullPointerException; {:try_start_59 .. :try_end_a0} :catch_a2

    goto/16 :goto_e

    .line 7205
    :catch_a2
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    move-object v2, v3

    .line 7206
    goto/16 :goto_e
.end method

.method public uknight_mem_set(I)Z
    .registers 11
    .param p1, "percent"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7032
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 7077
    :cond_e
    :goto_e
    return v4

    .line 7037
    :cond_f
    invoke-direct {p0}, isDmLoggingPID()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 7038
    const-string v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 7042
    :cond_1e
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 7043
    .local v0, "client":Ljava/lang/String;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_4b

    if-eqz v0, :cond_4b

    .line 7044
    const-string v6, "DmLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uknight_mem_set(), client -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7047
    :cond_4b
    if-eqz v0, :cond_e

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v0}, validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 7051
    const/4 v2, 0x0

    .line 7052
    .local v2, "ret":[I
    new-array v3, v5, [B

    .line 7054
    .local v3, "setCmd":[B
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_75

    .line 7055
    const-string v6, "DmLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uknight_mem_set(), percent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7058
    :cond_75
    int-to-byte v6, p1

    aput-byte v6, v3, v4

    .line 7060
    :try_start_78
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v6, v7, v3}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_80} :catch_8c
    .catch Ljava/lang/NullPointerException; {:try_start_78 .. :try_end_80} :catch_8e

    move-result-object v2

    .line 7067
    if-nez v2, :cond_91

    .line 7068
    const-string v5, "DmLoggingService"

    const-string/jumbo v6, "uknight_mem_set(), ret = null!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 7061
    :catch_8c
    move-exception v1

    .line 7062
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_e

    .line 7063
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_8e
    move-exception v1

    .line 7064
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto/16 :goto_e

    .line 7071
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_91
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_bc

    .line 7072
    const-string v6, "DmLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uknight_mem_set(), ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7074
    :cond_bc
    aget v6, v2, v4

    if-nez v6, :cond_e

    move v4, v5

    .line 7075
    goto/16 :goto_e
.end method

.method public uknight_state_change_set(I)Z
    .registers 11
    .param p1, "eventCode"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6978
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 7023
    :cond_e
    :goto_e
    return v4

    .line 6983
    :cond_f
    invoke-direct {p0}, isDmLoggingPID()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 6984
    const-string v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 6988
    :cond_1e
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 6989
    .local v0, "client":Ljava/lang/String;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_4b

    if-eqz v0, :cond_4b

    .line 6990
    const-string v6, "DmLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state_change_set(), client -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6993
    :cond_4b
    if-eqz v0, :cond_e

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v0}, validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 6997
    const/4 v2, 0x0

    .line 6998
    .local v2, "ret":[I
    const/4 v3, 0x0

    .line 7000
    .local v3, "setCmd":[B
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_74

    .line 7001
    const-string v6, "DmLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state_change_set(), eventCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7004
    :cond_74
    invoke-direct {p0, p1}, intToByteArray(I)[B

    move-result-object v3

    .line 7006
    :try_start_78
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7, v3}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_80} :catch_8c
    .catch Ljava/lang/NullPointerException; {:try_start_78 .. :try_end_80} :catch_8e

    move-result-object v2

    .line 7013
    if-nez v2, :cond_91

    .line 7014
    const-string v5, "DmLoggingService"

    const-string/jumbo v6, "state_change_set(), ret = null!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 7007
    :catch_8c
    move-exception v1

    .line 7008
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_e

    .line 7009
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_8e
    move-exception v1

    .line 7010
    .local v1, "ex":Ljava/lang/NullPointerException;
    goto/16 :goto_e

    .line 7017
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_91
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_bc

    .line 7018
    const-string v6, "DmLoggingService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state_change_set(), ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7020
    :cond_bc
    aget v6, v2, v4

    if-nez v6, :cond_e

    move v4, v5

    .line 7021
    goto/16 :goto_e
.end method

.method public updateServiceLocation()V
    .registers 5

    .prologue
    .line 5145
    :try_start_0
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5146
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 5147
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 5151
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_9
    :goto_9
    return-void

    .line 5148
    :catch_a
    move-exception v0

    .line 5149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#updateServiceLocation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public validateMsisdn()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 7964
    :try_start_1
    invoke-direct {p0}, getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 7965
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_8

    .line 7971
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_7
    return v2

    .line 7967
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->validateMsisdn()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_f

    move-result v2

    goto :goto_7

    .line 7968
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_d
    move-exception v0

    .line 7969
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_7

    .line 7970
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v0

    .line 7971
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_7
.end method
