.class public Lcom/sec/epdg/EpdgContentReader;
.super Ljava/lang/Object;
.source "EpdgContentReader.java"


# static fields
.field private static final COLUMN_ALWAYSON_APNTYPE:Ljava/lang/String; = "alwayson_apntype"

.field private static final COLUMN_ALWAYS_ON_APN_RETRY_ENABLED:Ljava/lang/String; = "retry_enabled_for_always_on_apn"

.field private static final COLUMN_APN:Ljava/lang/String; = "apnname"

.field private static final COLUMN_ATTACH_PDN:Ljava/lang/String; = "attach_pdn"

.field private static final COLUMN_AUTH_TYPE:Ljava/lang/String; = "authtype"

.field private static final COLUMN_BROADCAST_HO_RESULT:Ljava/lang/String; = "broadcast_ho_result"

.field private static final COLUMN_CONN_NAME:Ljava/lang/String; = "connname"

.field private static final COLUMN_DPD_ALLOWED_IN_CONNECTED_MODE:Ljava/lang/String; = "is_dpd_allowed_in_connected_mode"

.field private static final COLUMN_DYNAMIC_FQDN_ENABLED:Ljava/lang/String; = "dynamic_fqdn"

.field private static final COLUMN_DYNAMIC_USER_FQDN_ENABLED:Ljava/lang/String; = "dynamic_userfqdn"

.field private static final COLUMN_EMERGENCY_APNTYPE:Ljava/lang/String; = "emergency_apntype"

.field private static final COLUMN_EPDG_SERVER_IP:Ljava/lang/String; = "epdgserverip"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_IDI_IMSI:Ljava/lang/String; = "idiimsi"

.field private static final COLUMN_IDI_MAC:Ljava/lang/String; = "idimac"

.field private static final COLUMN_IKE_CONNECTION_TIMEOUT:Ljava/lang/String; = "ikeconnectiontimeout"

.field private static final COLUMN_IKE_DPD_TIMEOUT:Ljava/lang/String; = "ikedpdtimeout"

.field private static final COLUMN_IKE_EAP_TYPE:Ljava/lang/String; = "ikeeaptype"

.field private static final COLUMN_IKE_ENCRYPTION:Ljava/lang/String; = "ikeencryption"

.field private static final COLUMN_IKE_GROUP:Ljava/lang/String; = "ikegroup"

.field private static final COLUMN_IKE_INTEGRITY:Ljava/lang/String; = "ikeintegrity"

.field private static final COLUMN_IKE_LIFE:Ljava/lang/String; = "ikelife"

.field private static final COLUMN_IKE_NAT_VALUE:Ljava/lang/String; = "ikenatvalue"

.field private static final COLUMN_IKE_VERSION:Ljava/lang/String; = "ikeversion"

.field private static final COLUMN_IKE_VIRTUAL_ADAPTER_NAME:Ljava/lang/String; = "ikevirtualadaptername"

.field private static final COLUMN_IKE_WINDOW_SIZE:Ljava/lang/String; = "ikewindowsize"

.field private static final COLUMN_IMEI_VENDOR_ATTRIBUTE:Ljava/lang/String; = "imei"

.field private static final COLUMN_IMEI_VENDOR_ATTR_TYPE:Ljava/lang/String; = "imeivendorattr"

.field private static final COLUMN_IPSEC_ENCRYPTION:Ljava/lang/String; = "ipsecencryption"

.field private static final COLUMN_IPSEC_GROUP:Ljava/lang/String; = "ipsecgroup"

.field private static final COLUMN_IPSEC_INTEGRITY:Ljava/lang/String; = "ipsecintegrity"

.field private static final COLUMN_IPSEC_LIFETYPE:Ljava/lang/String; = "ipseclifetime"

.field private static final COLUMN_IPSEC_LIFE_VALUE:Ljava/lang/String; = "ipseclifevalue"

.field private static final COLUMN_IS_IPV6_ENABLED:Ljava/lang/String; = "is_ipv6_enabled"

.field private static final COLUMN_IS_IPV6_PREFERRED:Ljava/lang/String; = "is_ipv6_preferred"

.field private static final COLUMN_IS_THROTTLE_ENABLED:Ljava/lang/String; = "is_throttle_enabled"

.field private static final COLUMN_KEEP_ALIVE_TIMER:Ljava/lang/String; = "internet_pdn_keep_alive_timer"

.field private static final COLUMN_MOBIKE:Ljava/lang/String; = "mobike"

.field private static final COLUMN_ON_DEMAND_PDN_HANDOFF:Ljava/lang/String; = "ondemand_pdn_handoff"

.field private static final COLUMN_OPERATOR_NUMERIC:Ljava/lang/String; = "operatornumeric"

.field private static final COLUMN_OWN_IDENTITY:Ljava/lang/String; = "ownidentity"

.field private static final COLUMN_OWN_URI_TYPE:Ljava/lang/String; = "ownuritype"

.field private static final COLUMN_PCSCFV4_VENDOR_ATTR:Ljava/lang/String; = "pcscfv4vendorattr"

.field private static final COLUMN_PCSCFV6_VENDOR_ATTR:Ljava/lang/String; = "pcscfv6vendorattr"

.field private static final COLUMN_PERIODIC_DPD_TIMER:Ljava/lang/String; = "periodicdpdtimer"

.field private static final COLUMN_PFS:Ljava/lang/String; = "pfs"

.field private static final COLUMN_REMOTE_IDENTITY:Ljava/lang/String; = "remoteidentity"

.field private static final COLUMN_REMOTE_URI_TYPE:Ljava/lang/String; = "remoteuritype"

.field private static final COLUMN_SMARTWIFI_CDMA_RSSI:Ljava/lang/String; = "smartwificdmarssi"

.field private static final COLUMN_SMARTWIFI_LTE_RSRP1:Ljava/lang/String; = "smartwifirsrp1"

.field private static final COLUMN_SMARTWIFI_LTE_RSRP2:Ljava/lang/String; = "smartwifirsrp2"

.field private static final COLUMN_SMARTWIFI_LTE_RSRP3:Ljava/lang/String; = "smartwifirsrp3"

.field private static final COLUMN_SMARTWIFI_PKT_LOSS_PERCENT:Ljava/lang/String; = "smartpktlosspercent"

.field private static final COLUMN_SMARTWIFI_RSSI_A:Ljava/lang/String; = "smartwifirssia"

.field private static final COLUMN_SMARTWIFI_RSSI_B:Ljava/lang/String; = "smartwifirssib"

.field private static final COLUMN_SMARTWIFI_RSSI_C:Ljava/lang/String; = "smartwifirssic"

.field private static final COLUMN_SMARTWIFI_RSSI_ROVEIN_WIFIONLY:Ljava/lang/String; = "smartwifirssiroveinwifionly"

.field private static final COLUMN_SMARTWIFI_RSSI_ROVEOUT_WIFIONLY:Ljava/lang/String; = "smartwifirssiroveoutwifionly"

.field private static final COLUMN_SMARTWIFI_TIMER:Ljava/lang/String; = "smartwifitimer"

.field private static final COLUMN_SMART_WIFI_ANS_INTEGRATION:Ljava/lang/String; = "smart_wifi_ans_integration"

.field private static final COLUMN_SMART_WIFI_RTCP_INTEGRATION:Ljava/lang/String; = "smart_wifi_rtcp_integration"

.field private static final COLUMN_SUBNET_TYPE:Ljava/lang/String; = "subnettype"

.field private static final COLUMN_SYS_SEL_TIMER:Ljava/lang/String; = "sysseltimer"

.field private static final COLUMN_TEPDG_1X_SCAN_TIMER:Ljava/lang/String; = "tepdg1xScantimer"

.field private static final COLUMN_TEPDG_1X_TIMER:Ljava/lang/String; = "tepdg1xtimer"

.field private static final COLUMN_TEPDG_LTE_TIMER:Ljava/lang/String; = "tepdgltetimer"

.field private static final COLUMN_TEST_NETWORK_INTERFACE_NUMBER:Ljava/lang/String; = "netinterfacenum"

.field private static final COLUMN_THRESHOLD_2G_ROVE_IN:Ljava/lang/String; = "threshold2grovein"

.field private static final COLUMN_THRESHOLD_2G_ROVE_OUT:Ljava/lang/String; = "threshold2groveout"

.field private static final COLUMN_THRESHOLD_3G_ROVE_IN:Ljava/lang/String; = "threshold3grovein"

.field private static final COLUMN_THRESHOLD_3G_ROVE_OUT:Ljava/lang/String; = "threshold3groveout"

.field private static final COLUMN_THRESHOLD_4G_ROVE_IN:Ljava/lang/String; = "threshold4grovein"

.field private static final COLUMN_THRESHOLD_4G_ROVE_OUT:Ljava/lang/String; = "threshold4groveout"

.field private static final COLUMN_TUNNEL_TYPE:Ljava/lang/String; = "tunneltype"

.field private static final COLUMN_USER_AUTH_TYPE:Ljava/lang/String; = "userauthtype"

.field private static final COLUMN_VENDOR_ATTRIBUTE:Ljava/lang/String; = "vendorattribute"

.field private static final COLUMN_VOWIFI_PREF:Ljava/lang/String; = "vowifi_pref"

.field private static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/todo"

.field private static final TABLE_IWLANSETTINGS:Ljava/lang/String; = "iwlansetting"

.field private static final TAG:Ljava/lang/String; = "[DBREADER]"

.field private static mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;


# instance fields
.field colName:Ljava/lang/String;

.field private epdgSettings:Lcom/sec/epdg/EpdgSettings;

.field private iWlanApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, iWlanApns:Ljava/util/ArrayList;

    .line 23
    invoke-static {}, Lcom/sec/epdg/EpdgSettings;->getInstance()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    iput-object v0, p0, epdgSettings:Lcom/sec/epdg/EpdgSettings;

    .line 102
    return-void
.end method

.method private addEpdgSetting(Landroid/database/Cursor;)V
    .registers 91
    .param p1, "messagesCursor"    # Landroid/database/Cursor;

    .prologue
    .line 834
    const-string/jumbo v86, "smartwifirssia"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 836
    .local v80, "strWifiRssiA":Ljava/lang/String;
    invoke-static/range {v80 .. v80}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 837
    .local v2, "wifiRssiA":I
    const-string/jumbo v86, "smartwifirssib"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v81

    .line 839
    .local v81, "strWifiRssiB":Ljava/lang/String;
    invoke-static/range {v81 .. v81}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 840
    .local v3, "wifiRssiB":I
    const-string/jumbo v86, "smartwifirssic"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v82

    .line 842
    .local v82, "strWifiRssiC":Ljava/lang/String;
    invoke-static/range {v82 .. v82}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 843
    .local v4, "wifiRssiC":I
    const-string/jumbo v86, "smartwifirssiroveinwifionly"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v83

    .line 845
    .local v83, "strWifiRssiRoveInWifiOnly":Ljava/lang/String;
    invoke-static/range {v83 .. v83}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 846
    .local v5, "wifiRssiRoveInWifiOnly":I
    const-string/jumbo v86, "smartwifirssiroveoutwifionly"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v84

    .line 848
    .local v84, "strWifiRssiRoveOutWifiOnly":Ljava/lang/String;
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 849
    .local v6, "wifiRssiRoveOutWifiOnly":I
    const-string/jumbo v86, "smartwifirsrp1"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v63

    .line 851
    .local v63, "strLteRsrp1":Ljava/lang/String;
    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 852
    .local v7, "lteRsrp1":I
    const-string/jumbo v86, "smartwifirsrp2"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 854
    .local v64, "strLteRsrp2":Ljava/lang/String;
    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 855
    .local v8, "lteRsrp2":I
    const-string/jumbo v86, "smartwifirsrp3"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 857
    .local v65, "strLteRsrp3":Ljava/lang/String;
    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 858
    .local v9, "lteRsrp3":I
    const-string/jumbo v86, "smartwificdmarssi"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 860
    .local v47, "strCdmaRssi":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 861
    .local v10, "cdmaRssi":I
    const-string/jumbo v86, "smartpktlosspercent"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v68

    .line 863
    .local v68, "strPktLossPercent":Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 864
    .local v11, "pktLossPercent":I
    const-string/jumbo v86, "threshold4grovein"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v78

    .line 866
    .local v78, "strThreshold4gRoveIn":Ljava/lang/String;
    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 867
    .local v12, "threshold4gRoveIn":I
    const-string/jumbo v86, "threshold4groveout"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v79

    .line 869
    .local v79, "strThreshold4gRoveOut":Ljava/lang/String;
    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 870
    .local v13, "threshold4gRoveOut":I
    const-string/jumbo v86, "threshold3grovein"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v76

    .line 872
    .local v76, "strThreshold3gRoveIn":Ljava/lang/String;
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 873
    .local v14, "threshold3gRoveIn":I
    const-string/jumbo v86, "threshold3groveout"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v77

    .line 875
    .local v77, "strThreshold3gRoveOut":Ljava/lang/String;
    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 876
    .local v15, "threshold3gRoveOut":I
    const-string/jumbo v86, "threshold2grovein"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v74

    .line 878
    .local v74, "strThreshold2gRoveIn":Ljava/lang/String;
    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 879
    .local v16, "threshold2gRoveIn":I
    const-string/jumbo v86, "threshold2groveout"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v75

    .line 881
    .local v75, "strThreshold2gRoveOut":Ljava/lang/String;
    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 882
    .local v17, "threshold2gRoveOut":I
    const-string/jumbo v86, "sysseltimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v70

    .line 884
    .local v70, "strSysSelTimer":Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 885
    .local v18, "sysSelTimer":I
    const-string/jumbo v86, "tepdgltetimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v73

    .line 887
    .local v73, "strTepdgLteTimer":Ljava/lang/String;
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 888
    .local v19, "tepdgLteTimer":I
    const-string/jumbo v86, "tepdg1xtimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v72

    .line 890
    .local v72, "strTepdg1xTimer":Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 891
    .local v20, "tepdg1xTimer":I
    const-string/jumbo v86, "tepdg1xScantimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v71

    .line 893
    .local v71, "strTepdg1xScanTimer":Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 894
    .local v21, "tepdg1xScanTimer":I
    const-string/jumbo v86, "idimac"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 896
    .local v49, "strIdiMac":Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 897
    .local v22, "idiMac":I
    const-string/jumbo v86, "idiimsi"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 899
    .local v48, "strIdiImsi":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 900
    .local v23, "idiImsi":I
    const-string/jumbo v86, "retry_enabled_for_always_on_apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 902
    .local v54, "strIsDataRetryEnabled":Ljava/lang/String;
    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_78d

    const/16 v24, 0x1

    .line 903
    .local v24, "isRetryEnabledForAlwaysOnApn":Z
    :goto_21b
    const-string/jumbo v86, "smartwifitimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v69

    .line 905
    .local v69, "strSmartWifiTimer":Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 906
    .local v25, "smartWifiTimer":I
    const-string/jumbo v86, "internet_pdn_keep_alive_timer"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v85

    .line 908
    .local v85, "strkeepAliveTimer":Ljava/lang/String;
    invoke-static/range {v85 .. v85}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 910
    .local v26, "keepAliveTimer":I
    const-string/jumbo v86, "epdgserverip"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 912
    .local v27, "epdgServerIp":Ljava/lang/String;
    const-string/jumbo v86, "dynamic_fqdn"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 914
    .local v55, "strIsDynamicFqdn":Ljava/lang/String;
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_791

    const/16 v28, 0x1

    .line 916
    .local v28, "isDynamicFqdn":Z
    :goto_27d
    const-string/jumbo v86, "dynamic_userfqdn"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 918
    .local v56, "strIsDynamicUserFqdn":Ljava/lang/String;
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_795

    const/16 v29, 0x1

    .line 920
    .local v29, "isDynamicUserFqdn":Z
    :goto_29e
    const-string/jumbo v86, "smart_wifi_ans_integration"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 922
    .local v51, "strIsAnsIntegrationEnabled":Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_799

    const/16 v30, 0x1

    .line 924
    .local v30, "isAnsIntegrationEnabled":Z
    :goto_2bf
    const-string/jumbo v86, "smart_wifi_rtcp_integration"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v60

    .line 926
    .local v60, "strIsRtcpIntegrationEnabled":Ljava/lang/String;
    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_79d

    const/16 v31, 0x1

    .line 929
    .local v31, "isRtcpIntegrationEnabled":Z
    :goto_2e0
    const-string v86, "broadcast_ho_result"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 931
    .local v52, "strIsBroadcastHONotiEnabled":Ljava/lang/String;
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_7a1

    const/16 v32, 0x1

    .line 933
    .local v32, "isBroadcastHONotiEnabled":Z
    :goto_300
    const-string v86, "attach_pdn"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 935
    .local v33, "attachPdn":Ljava/lang/String;
    const-string v86, "alwayson_apntype"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 938
    .local v34, "alwaysOnApn":Ljava/lang/String;
    const-string/jumbo v86, "vowifi_pref"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 940
    .local v62, "strIsVowifiOn":Ljava/lang/String;
    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_7a5

    const/16 v35, 0x1

    .line 942
    .local v35, "isVowifiOn":Z
    :goto_345
    const-string/jumbo v86, "ondemand_pdn_handoff"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 944
    .local v59, "strIsOnDemandPdnHandoff":Ljava/lang/String;
    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_7a9

    const/16 v36, 0x1

    .line 946
    .local v36, "isOnDemandPdnHandoff":Z
    :goto_366
    const-string/jumbo v86, "is_throttle_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 948
    .local v61, "strIsThrottlingEnabled":Ljava/lang/String;
    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_7ad

    const/16 v37, 0x1

    .line 950
    .local v37, "isThrottlingEnabled":Z
    :goto_387
    const-string/jumbo v86, "pcscfv4vendorattr"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v66

    .line 952
    .local v66, "strPcscfv4":Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    .line 954
    .local v38, "pcscfv4attr":I
    const-string/jumbo v86, "pcscfv6vendorattr"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v67

    .line 956
    .local v67, "strPcscfv6":Ljava/lang/String;
    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 960
    .local v39, "pcscfv6attr":I
    const-string/jumbo v86, "imeivendorattr"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 962
    .local v46, "imeiVendorAttrTypeStr":Ljava/lang/String;
    if-nez v46, :cond_7b1

    .line 963
    const/16 v40, 0x0

    .line 968
    .local v40, "imeiVendorAttrType":I
    :goto_3cc
    const-string/jumbo v86, "netinterfacenum"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 970
    .local v50, "strInterfaceNum":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 972
    .local v41, "interfaceNum":I
    const-string/jumbo v86, "emergency_apntype"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 975
    .local v42, "emergencyApnType":Ljava/lang/String;
    const-string/jumbo v86, "is_dpd_allowed_in_connected_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 977
    .local v53, "strIsConnectedDpdAllow":Ljava/lang/String;
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_7b7

    const/16 v43, 0x1

    .line 979
    .local v43, "isConnectedModeDpdAllow":Z
    :goto_417
    const-string/jumbo v86, "is_ipv6_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 981
    .local v57, "strIsIpv6Enabled":Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_7bb

    const/16 v44, 0x1

    .line 983
    .local v44, "isIpv6Enabled":Z
    :goto_438
    const-string/jumbo v86, "is_ipv6_preferred"

    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v86

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 985
    .local v58, "strIsIpv6Preferred":Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    const/16 v87, 0x1

    move/from16 v0, v86

    move/from16 v1, v87

    if-ne v0, v1, :cond_7bf

    const/16 v45, 0x1

    .line 987
    .local v45, "isIpv6Preferred":Z
    :goto_459
    invoke-static/range {v2 .. v45}, Lcom/sec/epdg/EpdgSettings;->getInstance(IIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZ)Lcom/sec/epdg/EpdgSettings;

    move-result-object v86

    move-object/from16 v0, v86

    move-object/from16 v1, p0

    iput-object v0, v1, epdgSettings:Lcom/sec/epdg/EpdgSettings;

    .line 996
    const-string v87, "[DBREADER]"

    new-instance v86, Ljava/lang/StringBuilder;

    invoke-direct/range {v86 .. v86}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v88, "epdgsettings read successfully :  Wifi Level : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Wifi RSSI B : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Wifi RSSI C : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Wifi RSSI Rove In (WifiOnly) : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Wifi RSSI Rove Out (WifiOnly) : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Lte RSRP 1 : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Lte RSRP 2 : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Lte RSRP 3 : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Cdma Rssi : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Pkt Loss Percent : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " 4G Rove In Out :"

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, ", "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " 3G Rove In Out :"

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, ", "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " 2G Rove In Out :"

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, ", "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Sys Sel Timer : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " TepdgLte timer : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Tepdg1x timer : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Tepdg1xScan timer : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " IDi MAC : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v86

    if-eqz v86, :cond_7c3

    const-string/jumbo v86, "suppressed in user binary"

    :goto_5ca
    move-object/from16 v0, v88

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " IDi IMSI : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v86

    if-eqz v86, :cond_7c9

    const-string/jumbo v86, "suppressed in user binary"

    :goto_5e5
    move-object/from16 v0, v88

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Data retry enabled: "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " SmartWifi Timer : "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Internet Keep-Alive Timer "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " EPDG Server IP "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v88

    if-eqz v88, :cond_635

    const-string v27, "Suppressed in user binary"

    .end local v27    # "epdgServerIp":Ljava/lang/String;
    :cond_635
    move-object/from16 v0, v86

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " dynamic_fqdn "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " dynamic_userfqdn "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Smart WiFi ANS Integration "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Smart WiFi RTCP Integration "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Broadcast HO result "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Attach PDN "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " alwaysOn Apn "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Testing On demand PDN Handoff "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Vowifi "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " IsThrottlingEnabled: "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " pcscfv4attr: "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " pcscfv6attr: "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " imeiVendorAttrType: "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " interfaceNum: rmnet"

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " emergencyApnType"

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " Dpd allow in connected mode"

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " IsIpv6Enabled: "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    const-string v88, " IsIpv6Preferred: "

    move-object/from16 v0, v86

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v86

    move-object/from16 v0, v86

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v86

    invoke-virtual/range {v86 .. v86}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v86

    move-object/from16 v0, v87

    move-object/from16 v1, v86

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    return-void

    .line 902
    .end local v24    # "isRetryEnabledForAlwaysOnApn":Z
    .end local v25    # "smartWifiTimer":I
    .end local v26    # "keepAliveTimer":I
    .end local v28    # "isDynamicFqdn":Z
    .end local v29    # "isDynamicUserFqdn":Z
    .end local v30    # "isAnsIntegrationEnabled":Z
    .end local v31    # "isRtcpIntegrationEnabled":Z
    .end local v32    # "isBroadcastHONotiEnabled":Z
    .end local v33    # "attachPdn":Ljava/lang/String;
    .end local v34    # "alwaysOnApn":Ljava/lang/String;
    .end local v35    # "isVowifiOn":Z
    .end local v36    # "isOnDemandPdnHandoff":Z
    .end local v37    # "isThrottlingEnabled":Z
    .end local v38    # "pcscfv4attr":I
    .end local v39    # "pcscfv6attr":I
    .end local v40    # "imeiVendorAttrType":I
    .end local v41    # "interfaceNum":I
    .end local v42    # "emergencyApnType":Ljava/lang/String;
    .end local v43    # "isConnectedModeDpdAllow":Z
    .end local v44    # "isIpv6Enabled":Z
    .end local v45    # "isIpv6Preferred":Z
    .end local v46    # "imeiVendorAttrTypeStr":Ljava/lang/String;
    .end local v50    # "strInterfaceNum":Ljava/lang/String;
    .end local v51    # "strIsAnsIntegrationEnabled":Ljava/lang/String;
    .end local v52    # "strIsBroadcastHONotiEnabled":Ljava/lang/String;
    .end local v53    # "strIsConnectedDpdAllow":Ljava/lang/String;
    .end local v55    # "strIsDynamicFqdn":Ljava/lang/String;
    .end local v56    # "strIsDynamicUserFqdn":Ljava/lang/String;
    .end local v57    # "strIsIpv6Enabled":Ljava/lang/String;
    .end local v58    # "strIsIpv6Preferred":Ljava/lang/String;
    .end local v59    # "strIsOnDemandPdnHandoff":Ljava/lang/String;
    .end local v60    # "strIsRtcpIntegrationEnabled":Ljava/lang/String;
    .end local v61    # "strIsThrottlingEnabled":Ljava/lang/String;
    .end local v62    # "strIsVowifiOn":Ljava/lang/String;
    .end local v66    # "strPcscfv4":Ljava/lang/String;
    .end local v67    # "strPcscfv6":Ljava/lang/String;
    .end local v69    # "strSmartWifiTimer":Ljava/lang/String;
    .end local v85    # "strkeepAliveTimer":Ljava/lang/String;
    :cond_78d
    const/16 v24, 0x0

    goto/16 :goto_21b

    .line 914
    .restart local v24    # "isRetryEnabledForAlwaysOnApn":Z
    .restart local v25    # "smartWifiTimer":I
    .restart local v26    # "keepAliveTimer":I
    .restart local v27    # "epdgServerIp":Ljava/lang/String;
    .restart local v55    # "strIsDynamicFqdn":Ljava/lang/String;
    .restart local v69    # "strSmartWifiTimer":Ljava/lang/String;
    .restart local v85    # "strkeepAliveTimer":Ljava/lang/String;
    :cond_791
    const/16 v28, 0x0

    goto/16 :goto_27d

    .line 918
    .restart local v28    # "isDynamicFqdn":Z
    .restart local v56    # "strIsDynamicUserFqdn":Ljava/lang/String;
    :cond_795
    const/16 v29, 0x0

    goto/16 :goto_29e

    .line 922
    .restart local v29    # "isDynamicUserFqdn":Z
    .restart local v51    # "strIsAnsIntegrationEnabled":Ljava/lang/String;
    :cond_799
    const/16 v30, 0x0

    goto/16 :goto_2bf

    .line 926
    .restart local v30    # "isAnsIntegrationEnabled":Z
    .restart local v60    # "strIsRtcpIntegrationEnabled":Ljava/lang/String;
    :cond_79d
    const/16 v31, 0x0

    goto/16 :goto_2e0

    .line 931
    .restart local v31    # "isRtcpIntegrationEnabled":Z
    .restart local v52    # "strIsBroadcastHONotiEnabled":Ljava/lang/String;
    :cond_7a1
    const/16 v32, 0x0

    goto/16 :goto_300

    .line 940
    .restart local v32    # "isBroadcastHONotiEnabled":Z
    .restart local v33    # "attachPdn":Ljava/lang/String;
    .restart local v34    # "alwaysOnApn":Ljava/lang/String;
    .restart local v62    # "strIsVowifiOn":Ljava/lang/String;
    :cond_7a5
    const/16 v35, 0x0

    goto/16 :goto_345

    .line 944
    .restart local v35    # "isVowifiOn":Z
    .restart local v59    # "strIsOnDemandPdnHandoff":Ljava/lang/String;
    :cond_7a9
    const/16 v36, 0x0

    goto/16 :goto_366

    .line 948
    .restart local v36    # "isOnDemandPdnHandoff":Z
    .restart local v61    # "strIsThrottlingEnabled":Ljava/lang/String;
    :cond_7ad
    const/16 v37, 0x0

    goto/16 :goto_387

    .line 965
    .restart local v37    # "isThrottlingEnabled":Z
    .restart local v38    # "pcscfv4attr":I
    .restart local v39    # "pcscfv6attr":I
    .restart local v46    # "imeiVendorAttrTypeStr":Ljava/lang/String;
    .restart local v66    # "strPcscfv4":Ljava/lang/String;
    .restart local v67    # "strPcscfv6":Ljava/lang/String;
    :cond_7b1
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    .restart local v40    # "imeiVendorAttrType":I
    goto/16 :goto_3cc

    .line 977
    .restart local v41    # "interfaceNum":I
    .restart local v42    # "emergencyApnType":Ljava/lang/String;
    .restart local v50    # "strInterfaceNum":Ljava/lang/String;
    .restart local v53    # "strIsConnectedDpdAllow":Ljava/lang/String;
    :cond_7b7
    const/16 v43, 0x0

    goto/16 :goto_417

    .line 981
    .restart local v43    # "isConnectedModeDpdAllow":Z
    .restart local v57    # "strIsIpv6Enabled":Ljava/lang/String;
    :cond_7bb
    const/16 v44, 0x0

    goto/16 :goto_438

    .line 985
    .restart local v44    # "isIpv6Enabled":Z
    .restart local v58    # "strIsIpv6Preferred":Ljava/lang/String;
    :cond_7bf
    const/16 v45, 0x0

    goto/16 :goto_459

    .line 996
    .restart local v45    # "isIpv6Preferred":Z
    :cond_7c3
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v86

    goto/16 :goto_5ca

    :cond_7c9
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v86

    goto/16 :goto_5e5
.end method

.method private addIwlanApn(Landroid/database/Cursor;)V
    .registers 64
    .param p1, "messagesCursor"    # Landroid/database/Cursor;

    .prologue
    .line 220
    const/16 v52, 0x0

    .line 222
    .local v52, "iwlanapn":Lcom/sec/epdg/IWlanApnSetting;
    const-string v60, "connname"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "iWlanSettingName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 226
    .local v3, "ipsecUserAuthval":Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;
    const-string/jumbo v60, "userauthtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 228
    .local v44, "ipsecUserAuthvalStr":Ljava/lang/String;
    const-string/jumbo v60, "true"

    move-object/from16 v0, v60

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_398

    .line 229
    sget-object v3, Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;->ENABLED:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    .line 233
    :cond_37
    :goto_37
    const/4 v4, 0x0

    .line 234
    .local v4, "pfsval":Lcom/sec/epdg/IWlanEnum$PfsState;
    const-string/jumbo v60, "pfs"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 236
    .local v56, "pfsvalStr":Ljava/lang/String;
    const-string/jumbo v60, "true"

    move-object/from16 v0, v60

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_3a9

    .line 237
    sget-object v4, Lcom/sec/epdg/IWlanEnum$PfsState;->ENABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    .line 241
    :cond_5a
    :goto_5a
    const/4 v5, 0x0

    .line 242
    .local v5, "iptype":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    const-string/jumbo v60, "subnettype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 244
    .local v51, "iptypeStr":Ljava/lang/String;
    const-string v60, "IPV4"

    move-object/from16 v0, v51

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3ba

    .line 245
    sget-object v5, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 251
    :goto_7c
    const/4 v6, 0x0

    .line 252
    .local v6, "ownUriType":Lcom/sec/epdg/IWlanEnum$IdentityType;
    const-string/jumbo v60, "ownuritype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 254
    .local v54, "ownUriTypeStr":Ljava/lang/String;
    const-string v60, "IPV4_ADDR"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3ce

    .line 255
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 267
    :cond_9e
    :goto_9e
    const-string/jumbo v60, "ownidentity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "ownUri":Ljava/lang/String;
    const/4 v8, 0x0

    .line 271
    .local v8, "remoteuritype":Lcom/sec/epdg/IWlanEnum$IdentityType;
    const-string/jumbo v60, "remoteuritype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 273
    .local v57, "remoteuritypeStr":Ljava/lang/String;
    const-string v60, "IPV4_ADDR"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_41e

    .line 274
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 286
    :cond_d3
    :goto_d3
    const-string/jumbo v60, "remoteidentity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 289
    .local v9, "remoteUri":Ljava/lang/String;
    const-string v60, "apnname"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 292
    .local v10, "apnType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 293
    .local v11, "ipsecauthtype":Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    const-string v60, "authtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 295
    .local v45, "ipsecauthtypeStr":Ljava/lang/String;
    const-string v60, "EAP"

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_46e

    .line 296
    sget-object v11, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    .line 302
    :cond_119
    :goto_119
    const/4 v12, 0x0

    .line 303
    .local v12, "adapterConf":Lcom/sec/epdg/IWlanEnum$AdapterConf;
    sget-object v12, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .line 305
    const/4 v13, 0x0

    .line 306
    .local v13, "tunnelmode":Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    const-string/jumbo v60, "tunneltype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 308
    .local v59, "tunnelmodeStr":Ljava/lang/String;
    const-string v60, "IPSEC_RAC"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_48e

    .line 309
    sget-object v13, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->IPSEC_RAC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    .line 313
    :cond_13a
    :goto_13a
    const/4 v14, 0x0

    .line 314
    .local v14, "ipsecencryptiontype":Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    const-string/jumbo v60, "ipsecencryption"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 316
    .local v47, "ipsecencryptiontypeStr":Ljava/lang/String;
    const-string v60, "IPSEC_ENCRYPTION_3DES_CBC"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_49a

    .line 317
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    .line 356
    :cond_15c
    :goto_15c
    const/4 v15, 0x0

    .line 357
    .local v15, "ipsecintegrity":Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    const-string/jumbo v60, "ipsecintegrity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 359
    .local v48, "ipsecintegrityStr":Ljava/lang/String;
    const-string v60, "IPSEC_INTEGRITY_HMAC_MD5_96"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_56a

    .line 360
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 388
    :cond_17e
    :goto_17e
    const/16 v16, 0x0

    .line 389
    .local v16, "ipsecdhgroup":Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    const-string/jumbo v60, "ipsecgroup"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 391
    .local v46, "ipsecdhgroupStr":Ljava/lang/String;
    const-string v60, "IPSEC_GROUP_MODP_768"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_63a

    .line 392
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    .line 428
    :cond_1a1
    :goto_1a1
    const/16 v17, 0x0

    .line 429
    .local v17, "ipseclifetype":Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    const-string/jumbo v60, "ipseclifetime"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 431
    .local v49, "ipseclifetypeStr":Ljava/lang/String;
    const-string v60, "IPSEC_LIFE_TYPE_SECONDS"

    move-object/from16 v0, v49

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_74a

    .line 432
    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    .line 437
    :cond_1c4
    :goto_1c4
    const-string/jumbo v60, "ipseclifevalue"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 439
    .local v50, "ipseclifevalStr":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 441
    .local v18, "ipseclifeval":I
    const/16 v19, 0x0

    .line 442
    .local v19, "ikeversion":Lcom/sec/epdg/IWlanEnum$Ikeversion;
    const-string/jumbo v60, "ikeversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 444
    .local v41, "ikeversionStr":Ljava/lang/String;
    const-string v60, "IKE_VERSION_1"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_75a

    .line 445
    sget-object v19, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_1:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .line 449
    :cond_1fe
    :goto_1fe
    const/16 v20, 0x0

    .line 450
    .local v20, "ikeencryption":Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    const-string/jumbo v60, "ikeencryption"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 452
    .local v37, "ikeencryptionStr":Ljava/lang/String;
    const-string v60, "IKE_ENCRYPTION_3DES_CBC"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_76a

    .line 453
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    .line 481
    :cond_221
    :goto_221
    const/16 v21, 0x0

    .line 482
    .local v21, "ikeintegrity":Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    const-string/jumbo v60, "ikeintegrity"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 484
    .local v38, "ikeintegrityStr":Ljava/lang/String;
    const-string v60, "IKE_INTEGRITY_HMAC_MD5_96"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_83a

    .line 485
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    .line 505
    :cond_244
    :goto_244
    const/16 v22, 0x0

    .line 506
    .local v22, "ikedhgroup":Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    const-string/jumbo v60, "ikegroup"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 508
    .local v35, "ikedhgroupStr":Ljava/lang/String;
    const-string v60, "IKE_GROUP_MODP_768"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_8ca

    .line 509
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    .line 548
    :cond_267
    :goto_267
    const-string/jumbo v60, "ikelife"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 550
    .local v39, "ikelifeStr":Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 553
    .local v23, "ikelife":I
    const-string/jumbo v60, "ikewindowsize"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 555
    .local v42, "ikewindowStr":Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 558
    .local v24, "ikewindow":I
    const-string/jumbo v60, "ikeconnectiontimeout"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 560
    .local v34, "ikeconntimeoutStr":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 563
    .local v25, "ikeconntimeout":I
    const-string/jumbo v60, "ikedpdtimeout"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 565
    .local v36, "ikedpdtimeoutStr":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 567
    .local v26, "ikedpdtimeout":I
    const/16 v27, 0x0

    .line 568
    .local v27, "eaptype":Lcom/sec/epdg/IWlanEnum$IkeEapType;
    const-string/jumbo v60, "ikeeaptype"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 570
    .local v33, "eaptypeStr":Ljava/lang/String;
    const-string v60, "EAP_METHOD_MD5_CHALLENGE"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_9ea

    .line 571
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .line 580
    :cond_2e6
    :goto_2e6
    const-string/jumbo v60, "ikenatvalue"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 582
    .local v40, "ikenatvalStr":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 584
    .local v28, "ikenatval":I
    const/16 v29, 0x0

    .line 585
    .local v29, "pcscfVendorAt":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    const-string/jumbo v60, "vendorattribute"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 587
    .local v55, "pcscfVendorAtStr":Ljava/lang/String;
    const-string v60, "NONE"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_a1a

    .line 588
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    .line 596
    :cond_320
    :goto_320
    const/16 v31, 0x0

    .line 597
    .local v31, "mobikeval":Lcom/sec/epdg/IWlanEnum$Mobike;
    const-string/jumbo v60, "mobike"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 599
    .local v53, "mobikevalStr":Ljava/lang/String;
    const-string/jumbo v60, "true"

    move-object/from16 v0, v60

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_a4a

    .line 600
    sget-object v31, Lcom/sec/epdg/IWlanEnum$Mobike;->ENABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    .line 604
    :cond_344
    :goto_344
    const/16 v32, 0x0

    .line 605
    .local v32, "imeiVendorAt":Lcom/sec/epdg/IWlanEnum$Imei;
    const-string/jumbo v60, "imei"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 607
    .local v43, "imeiVendorAtStr":Ljava/lang/String;
    const-string v60, "NONE"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_a5b

    .line 608
    sget-object v32, Lcom/sec/epdg/IWlanEnum$Imei;->NONE:Lcom/sec/epdg/IWlanEnum$Imei;

    .line 612
    :cond_367
    :goto_367
    const-string/jumbo v60, "periodicdpdtimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 615
    .local v58, "strPeriodicDpdTimer":Ljava/lang/String;
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 617
    .local v30, "periodicDpdTimer":I
    invoke-static/range {v2 .. v32}, Lcom/sec/epdg/IWlanApnSetting;->getIWlanApnSettingInstance(Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/IWlanEnum$PfsState;Lcom/sec/epdg/IWlanEnum$IPSecIpType;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/IWlanEnum$AdapterConf;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;ILcom/sec/epdg/IWlanEnum$PcscfConf;ILcom/sec/epdg/IWlanEnum$Mobike;Lcom/sec/epdg/IWlanEnum$Imei;)Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v52

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, iWlanApns:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    const-string v60, "[DBREADER]"

    const-string/jumbo v61, "iwlanapn added successfully"

    invoke-static/range {v60 .. v61}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void

    .line 230
    .end local v4    # "pfsval":Lcom/sec/epdg/IWlanEnum$PfsState;
    .end local v5    # "iptype":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .end local v6    # "ownUriType":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .end local v7    # "ownUri":Ljava/lang/String;
    .end local v8    # "remoteuritype":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .end local v9    # "remoteUri":Ljava/lang/String;
    .end local v10    # "apnType":Ljava/lang/String;
    .end local v11    # "ipsecauthtype":Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .end local v12    # "adapterConf":Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .end local v13    # "tunnelmode":Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .end local v14    # "ipsecencryptiontype":Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .end local v15    # "ipsecintegrity":Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .end local v16    # "ipsecdhgroup":Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .end local v17    # "ipseclifetype":Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .end local v18    # "ipseclifeval":I
    .end local v19    # "ikeversion":Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .end local v20    # "ikeencryption":Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .end local v21    # "ikeintegrity":Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .end local v22    # "ikedhgroup":Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .end local v23    # "ikelife":I
    .end local v24    # "ikewindow":I
    .end local v25    # "ikeconntimeout":I
    .end local v26    # "ikedpdtimeout":I
    .end local v27    # "eaptype":Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .end local v28    # "ikenatval":I
    .end local v29    # "pcscfVendorAt":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .end local v30    # "periodicDpdTimer":I
    .end local v31    # "mobikeval":Lcom/sec/epdg/IWlanEnum$Mobike;
    .end local v32    # "imeiVendorAt":Lcom/sec/epdg/IWlanEnum$Imei;
    .end local v33    # "eaptypeStr":Ljava/lang/String;
    .end local v34    # "ikeconntimeoutStr":Ljava/lang/String;
    .end local v35    # "ikedhgroupStr":Ljava/lang/String;
    .end local v36    # "ikedpdtimeoutStr":Ljava/lang/String;
    .end local v37    # "ikeencryptionStr":Ljava/lang/String;
    .end local v38    # "ikeintegrityStr":Ljava/lang/String;
    .end local v39    # "ikelifeStr":Ljava/lang/String;
    .end local v40    # "ikenatvalStr":Ljava/lang/String;
    .end local v41    # "ikeversionStr":Ljava/lang/String;
    .end local v42    # "ikewindowStr":Ljava/lang/String;
    .end local v43    # "imeiVendorAtStr":Ljava/lang/String;
    .end local v45    # "ipsecauthtypeStr":Ljava/lang/String;
    .end local v46    # "ipsecdhgroupStr":Ljava/lang/String;
    .end local v47    # "ipsecencryptiontypeStr":Ljava/lang/String;
    .end local v48    # "ipsecintegrityStr":Ljava/lang/String;
    .end local v49    # "ipseclifetypeStr":Ljava/lang/String;
    .end local v50    # "ipseclifevalStr":Ljava/lang/String;
    .end local v51    # "iptypeStr":Ljava/lang/String;
    .end local v53    # "mobikevalStr":Ljava/lang/String;
    .end local v54    # "ownUriTypeStr":Ljava/lang/String;
    .end local v55    # "pcscfVendorAtStr":Ljava/lang/String;
    .end local v56    # "pfsvalStr":Ljava/lang/String;
    .end local v57    # "remoteuritypeStr":Ljava/lang/String;
    .end local v58    # "strPeriodicDpdTimer":Ljava/lang/String;
    .end local v59    # "tunnelmodeStr":Ljava/lang/String;
    :cond_398
    const-string/jumbo v60, "false"

    move-object/from16 v0, v60

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_37

    .line 231
    sget-object v3, Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;->DISABLED:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    goto/16 :goto_37

    .line 238
    .restart local v4    # "pfsval":Lcom/sec/epdg/IWlanEnum$PfsState;
    .restart local v56    # "pfsvalStr":Ljava/lang/String;
    :cond_3a9
    const-string/jumbo v60, "false"

    move-object/from16 v0, v60

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_5a

    .line 239
    sget-object v4, Lcom/sec/epdg/IWlanEnum$PfsState;->DISABLED:Lcom/sec/epdg/IWlanEnum$PfsState;

    goto/16 :goto_5a

    .line 246
    .restart local v5    # "iptype":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .restart local v51    # "iptypeStr":Ljava/lang/String;
    :cond_3ba
    const-string v60, "IPV6"

    move-object/from16 v0, v51

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3ca

    .line 247
    sget-object v5, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto/16 :goto_7c

    .line 249
    :cond_3ca
    sget-object v5, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto/16 :goto_7c

    .line 256
    .restart local v6    # "ownUriType":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .restart local v54    # "ownUriTypeStr":Ljava/lang/String;
    :cond_3ce
    const-string v60, "IPV6_ADDR"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3de

    .line 257
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_9e

    .line 258
    :cond_3de
    const-string v60, "FQDN"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3ee

    .line 259
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_9e

    .line 260
    :cond_3ee
    const-string v60, "USER_FQDN"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_3fe

    .line 261
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_9e

    .line 262
    :cond_3fe
    const-string v60, "DN"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_40e

    .line 263
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_9e

    .line 264
    :cond_40e
    const-string v60, "KEY_ID"

    move-object/from16 v0, v54

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_9e

    .line 265
    sget-object v6, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_9e

    .line 275
    .restart local v7    # "ownUri":Ljava/lang/String;
    .restart local v8    # "remoteuritype":Lcom/sec/epdg/IWlanEnum$IdentityType;
    .restart local v57    # "remoteuritypeStr":Ljava/lang/String;
    :cond_41e
    const-string v60, "IPV6_ADDR"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_42e

    .line 276
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_d3

    .line 277
    :cond_42e
    const-string v60, "FQDN"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_43e

    .line 278
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_d3

    .line 279
    :cond_43e
    const-string v60, "USER_FQDN"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_44e

    .line 280
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_d3

    .line 281
    :cond_44e
    const-string v60, "DN"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_45e

    .line 282
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_d3

    .line 283
    :cond_45e
    const-string v60, "KEY_ID"

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_d3

    .line 284
    sget-object v8, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    goto/16 :goto_d3

    .line 297
    .restart local v9    # "remoteUri":Ljava/lang/String;
    .restart local v10    # "apnType":Ljava/lang/String;
    .restart local v11    # "ipsecauthtype":Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .restart local v45    # "ipsecauthtypeStr":Ljava/lang/String;
    :cond_46e
    const-string v60, "Pre Shared"

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_47e

    .line 298
    sget-object v11, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto/16 :goto_119

    .line 299
    :cond_47e
    const-string v60, "Public Key"

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_119

    .line 300
    sget-object v11, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    goto/16 :goto_119

    .line 310
    .restart local v12    # "adapterConf":Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .restart local v13    # "tunnelmode":Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .restart local v59    # "tunnelmodeStr":Ljava/lang/String;
    :cond_48e
    const-string v60, "L2TP_OVER_IPSEC"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_13a

    .line 311
    sget-object v13, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->L2TP_OVER_IPSEC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    goto/16 :goto_13a

    .line 318
    .restart local v14    # "ipsecencryptiontype":Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .restart local v47    # "ipsecencryptiontypeStr":Ljava/lang/String;
    :cond_49a
    const-string v60, "IPSEC_ENCRYPTION_AES_CBC_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4aa

    .line 320
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 321
    :cond_4aa
    const-string v60, "IPSEC_ENCRYPTION_AES_CBC_192"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4ba

    .line 323
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 324
    :cond_4ba
    const-string v60, "IPSEC_ENCRYPTION_AES_CBC_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4ca

    .line 326
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 327
    :cond_4ca
    const-string v60, "IPSEC_ENCRYPTION_AES_CTR_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4da

    .line 329
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 330
    :cond_4da
    const-string v60, "IPSEC_ENCRYPTION_AES_CTR_192"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4ea

    .line 332
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 333
    :cond_4ea
    const-string v60, "IPSEC_ENCRYPTION_AES_CTR_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_4fa

    .line 335
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 336
    :cond_4fa
    const-string v60, "IPSEC_ENCRYPTION_AES_GCM_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_50a

    .line 338
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 339
    :cond_50a
    const-string v60, "IPSEC_ENCRYPTION_AES_GCM_192"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_51a

    .line 341
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 342
    :cond_51a
    const-string v60, "IPSEC_ENCRYPTION_AES_GCM_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_52a

    .line 344
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 345
    :cond_52a
    const-string v60, "IPSEC_ENCRYPTION_BASIC"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_53a

    .line 346
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 347
    :cond_53a
    const-string v60, "IPSEC_ENCRYPTION_ANY"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_54a

    .line 348
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 349
    :cond_54a
    const-string v60, "IPSEC_ENCRYPTION_SUITE_B_GCM_128"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_55a

    .line 351
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 352
    :cond_55a
    const-string v60, "IPSEC_ENCRYPTION_SUITE_B_GCM_256"

    move-object/from16 v0, v47

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_15c

    .line 354
    sget-object v14, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    goto/16 :goto_15c

    .line 361
    .restart local v15    # "ipsecintegrity":Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .restart local v48    # "ipsecintegrityStr":Ljava/lang/String;
    :cond_56a
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA1_96"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_57a

    .line 362
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 363
    :cond_57a
    const-string v60, "IPSEC_INTEGRITY_AES_XCBC_MAC_96"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_58a

    .line 364
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 365
    :cond_58a
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA_256_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_59a

    .line 366
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 367
    :cond_59a
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA_384_192"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5aa

    .line 368
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 369
    :cond_5aa
    const-string v60, "IPSEC_INTEGRITY_HMAC_SHA_512_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5ba

    .line 370
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 371
    :cond_5ba
    const-string v60, "IPSEC_INTEGRITY_AES_GMAC_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5ca

    .line 372
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 373
    :cond_5ca
    const-string v60, "IPSEC_INTEGRITY_AES_GMAC_192"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5da

    .line 374
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 375
    :cond_5da
    const-string v60, "IPSEC_INTEGRITY_AES_GMAC_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5ea

    .line 376
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 377
    :cond_5ea
    const-string v60, "IPSEC_INTEGRITY_BASIC"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_5fa

    .line 378
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 379
    :cond_5fa
    const-string v60, "IPSEC_INTEGRITY_ANY"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_60a

    .line 380
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 381
    :cond_60a
    const-string v60, "IPSEC_INTEGRITY_NULL"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_61a

    .line 382
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 383
    :cond_61a
    const-string v60, "IPSEC_INTEGRITY_SUITE_B_GCM_128"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_62a

    .line 384
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 385
    :cond_62a
    const-string v60, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_17e

    .line 386
    sget-object v15, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    goto/16 :goto_17e

    .line 393
    .restart local v16    # "ipsecdhgroup":Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .restart local v46    # "ipsecdhgroupStr":Ljava/lang/String;
    :cond_63a
    const-string v60, "IPSEC_GROUP_MODP_1024"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_64a

    .line 394
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 395
    :cond_64a
    const-string v60, "IPSEC_GROUP_MODP_1536"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_65a

    .line 396
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 397
    :cond_65a
    const-string v60, "IPSEC_GROUP_MODP_2048"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_66a

    .line 398
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 399
    :cond_66a
    const-string v60, "IPSEC_GROUP_MODP_3072"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_67a

    .line 400
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 401
    :cond_67a
    const-string v60, "IPSEC_GROUP_MODP_4096"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_68a

    .line 402
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 403
    :cond_68a
    const-string v60, "IPSEC_GROUP_MODP_6144"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_69a

    .line 404
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 405
    :cond_69a
    const-string v60, "IPSEC_GROUP_MODP_8192"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6aa

    .line 406
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 407
    :cond_6aa
    const-string v60, "IPSEC_GROUP_ECP_256"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6ba

    .line 408
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 409
    :cond_6ba
    const-string v60, "IPSEC_GROUP_ECP_384"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6ca

    .line 410
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 411
    :cond_6ca
    const-string v60, "IPSEC_GROUP_ECP_521"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6da

    .line 412
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 413
    :cond_6da
    const-string v60, "IPSEC_GROUP_MODP_1024_160"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6ea

    .line 414
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 415
    :cond_6ea
    const-string v60, "IPSEC_GROUP_MODP_2048_224"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_6fa

    .line 416
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 417
    :cond_6fa
    const-string v60, "IPSEC_GROUP_MODP_2048_256"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_70a

    .line 418
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 419
    :cond_70a
    const-string v60, "IPSEC_GROUP_ECP_192"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_71a

    .line 420
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 421
    :cond_71a
    const-string v60, "IPSEC_GROUP_ECP_224"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_72a

    .line 422
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 423
    :cond_72a
    const-string v60, "IPSEC_GROUP_ANY"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_73a

    .line 424
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 425
    :cond_73a
    const-string v60, "IPSEC_GROUP_ANY_OR_NONE"

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1a1

    .line 426
    sget-object v16, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    goto/16 :goto_1a1

    .line 433
    .restart local v17    # "ipseclifetype":Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .restart local v49    # "ipseclifetypeStr":Ljava/lang/String;
    :cond_74a
    const-string v60, "IPSEC_LIFE_TYPE_KILOBYTES"

    move-object/from16 v0, v49

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1c4

    .line 434
    sget-object v17, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    goto/16 :goto_1c4

    .line 446
    .restart local v18    # "ipseclifeval":I
    .restart local v19    # "ikeversion":Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .restart local v41    # "ikeversionStr":Ljava/lang/String;
    .restart local v50    # "ipseclifevalStr":Ljava/lang/String;
    :cond_75a
    const-string v60, "IKE_VERSION_2"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_1fe

    .line 447
    sget-object v19, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    goto/16 :goto_1fe

    .line 454
    .restart local v20    # "ikeencryption":Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .restart local v37    # "ikeencryptionStr":Ljava/lang/String;
    :cond_76a
    const-string v60, "IKE_ENCRYPTION_AES_CBC_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_77a

    .line 455
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 456
    :cond_77a
    const-string v60, "IKE_ENCRYPTION_AES_CBC_192"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_78a

    .line 457
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 458
    :cond_78a
    const-string v60, "IKE_ENCRYPTION_AES_CBC_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_79a

    .line 459
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 460
    :cond_79a
    const-string v60, "IKE_ENCRYPTION_AES_CTR_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7aa

    .line 461
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 462
    :cond_7aa
    const-string v60, "IKE_ENCRYPTION_AES_CTR_192"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7ba

    .line 463
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 464
    :cond_7ba
    const-string v60, "IKE_ENCRYPTION_AES_CTR_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7ca

    .line 465
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 466
    :cond_7ca
    const-string v60, "IKE_ENCRYPTION_AES_GCM_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7da

    .line 467
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 468
    :cond_7da
    const-string v60, "IKE_ENCRYPTION_AES_GCM_192"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7ea

    .line 469
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 470
    :cond_7ea
    const-string v60, "IKE_ENCRYPTION_AES_GCM_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7fa

    .line 471
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 472
    :cond_7fa
    const-string v60, "IKE_ENCRYPTION_BASIC"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_80a

    .line 473
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 474
    :cond_80a
    const-string v60, "IKE_ENCRYPTION_ANY"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_81a

    .line 475
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 476
    :cond_81a
    const-string v60, "IKE_ENCRYPTION_SUITE_B_GCM_128"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_82a

    .line 477
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 478
    :cond_82a
    const-string v60, "IKE_ENCRYPTION_SUITE_B_GCM_256"

    move-object/from16 v0, v37

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_221

    .line 479
    sget-object v20, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    goto/16 :goto_221

    .line 486
    .restart local v21    # "ikeintegrity":Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .restart local v38    # "ikeintegrityStr":Ljava/lang/String;
    :cond_83a
    const-string v60, "IKE_INTEGRITY_HMAC_SHA1_96"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_84a

    .line 487
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_244

    .line 488
    :cond_84a
    const-string v60, "IKE_INTEGRITY_AES_XCBC_MAC_96"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_85a

    .line 489
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_244

    .line 490
    :cond_85a
    const-string v60, "IKE_INTEGRITY_HMAC_SHA_256_128"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_86a

    .line 491
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_244

    .line 492
    :cond_86a
    const-string v60, "IKE_INTEGRITY_HMAC_SHA_384_192"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_87a

    .line 493
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_244

    .line 494
    :cond_87a
    const-string v60, "IKE_INTEGRITY_HMAC_SHA_512_256"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_88a

    .line 495
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_244

    .line 496
    :cond_88a
    const-string v60, "IKE_INTEGRITY_BASIC"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_89a

    .line 497
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_244

    .line 498
    :cond_89a
    const-string v60, "IKE_INTEGRITY_ANY"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_8aa

    .line 499
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_244

    .line 500
    :cond_8aa
    const-string v60, "IKE_INTEGRITY_SUITE_B_GCM_128"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_8ba

    .line 501
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_244

    .line 502
    :cond_8ba
    const-string v60, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    move-object/from16 v0, v38

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_244

    .line 503
    sget-object v21, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    goto/16 :goto_244

    .line 510
    .restart local v22    # "ikedhgroup":Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .restart local v35    # "ikedhgroupStr":Ljava/lang/String;
    :cond_8ca
    const-string v60, "IKE_GROUP_MODP_1024"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_8da

    .line 511
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 512
    :cond_8da
    const-string v60, "IKE_GROUP_MODP_1536"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_8ea

    .line 513
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 514
    :cond_8ea
    const-string v60, "IKE_GROUP_MODP_2048"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_8fa

    .line 515
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 516
    :cond_8fa
    const-string v60, "IKE_GROUP_MODP_3072"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_90a

    .line 517
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 518
    :cond_90a
    const-string v60, "IKE_GROUP_MODP_4096"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_91a

    .line 519
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 520
    :cond_91a
    const-string v60, "IKE_GROUP_MODP_6144"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_92a

    .line 521
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 522
    :cond_92a
    const-string v60, "IKE_GROUP_MODP_8192"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_93a

    .line 523
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 524
    :cond_93a
    const-string v60, "IKE_GROUP_ECP_256"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_94a

    .line 525
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 526
    :cond_94a
    const-string v60, "IKE_GROUP_ECP_384"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_95a

    .line 527
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 528
    :cond_95a
    const-string v60, "IKE_GROUP_ECP_521"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_96a

    .line 529
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 530
    :cond_96a
    const-string v60, "IKE_GROUP_MODP_1024_160"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_97a

    .line 531
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 532
    :cond_97a
    const-string v60, "IKE_GROUP_MODP_2048_224"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_98a

    .line 533
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 534
    :cond_98a
    const-string v60, "IKE_GROUP_MODP_2048_256"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_99a

    .line 535
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 536
    :cond_99a
    const-string v60, "IKE_GROUP_ECP_192"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_9aa

    .line 537
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 538
    :cond_9aa
    const-string v60, "IKE_GROUP_ECP_224"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_9ba

    .line 539
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 540
    :cond_9ba
    const-string v60, "IKE_GROUP_ANY"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_9ca

    .line 541
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 542
    :cond_9ca
    const-string v60, "IKE_GROUP_SUITE_B_GCM_128"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_9da

    .line 543
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 544
    :cond_9da
    const-string v60, "IKE_GROUP_SUITE_B_GCM_256"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_267

    .line 545
    sget-object v22, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    goto/16 :goto_267

    .line 572
    .restart local v23    # "ikelife":I
    .restart local v24    # "ikewindow":I
    .restart local v25    # "ikeconntimeout":I
    .restart local v26    # "ikedpdtimeout":I
    .restart local v27    # "eaptype":Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .restart local v33    # "eaptypeStr":Ljava/lang/String;
    .restart local v34    # "ikeconntimeoutStr":Ljava/lang/String;
    .restart local v36    # "ikedpdtimeoutStr":Ljava/lang/String;
    .restart local v39    # "ikelifeStr":Ljava/lang/String;
    .restart local v42    # "ikewindowStr":Ljava/lang/String;
    :cond_9ea
    const-string v60, "EAP_METHOD_SIM"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_9fa

    .line 573
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_SIM:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_2e6

    .line 574
    :cond_9fa
    const-string v60, "EAP_METHOD_AKA"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_a0a

    .line 575
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_2e6

    .line 576
    :cond_a0a
    const-string v60, "EAP_METHOD_MSCHAPV2"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_2e6

    .line 577
    sget-object v27, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    goto/16 :goto_2e6

    .line 589
    .restart local v28    # "ikenatval":I
    .restart local v29    # "pcscfVendorAt":Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .restart local v40    # "ikenatvalStr":Ljava/lang/String;
    .restart local v55    # "pcscfVendorAtStr":Ljava/lang/String;
    :cond_a1a
    const-string v60, "P-CSCF-V4"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_a2a

    .line 590
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_320

    .line 591
    :cond_a2a
    const-string v60, "P-CSCF-V6"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_a3a

    .line 592
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_320

    .line 593
    :cond_a3a
    const-string v60, "P-CSCF-V4V6"

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_320

    .line 594
    sget-object v29, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_V4V6:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    goto/16 :goto_320

    .line 601
    .restart local v31    # "mobikeval":Lcom/sec/epdg/IWlanEnum$Mobike;
    .restart local v53    # "mobikevalStr":Ljava/lang/String;
    :cond_a4a
    const-string/jumbo v60, "false"

    move-object/from16 v0, v60

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    if-eqz v60, :cond_344

    .line 602
    sget-object v31, Lcom/sec/epdg/IWlanEnum$Mobike;->DISABLED:Lcom/sec/epdg/IWlanEnum$Mobike;

    goto/16 :goto_344

    .line 609
    .restart local v32    # "imeiVendorAt":Lcom/sec/epdg/IWlanEnum$Imei;
    .restart local v43    # "imeiVendorAtStr":Ljava/lang/String;
    :cond_a5b
    const-string v60, "DEVICEIMEI"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_367

    .line 610
    sget-object v32, Lcom/sec/epdg/IWlanEnum$Imei;->DEVICE_IMEI:Lcom/sec/epdg/IWlanEnum$Imei;

    goto/16 :goto_367
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/EpdgContentReader;
    .registers 2

    .prologue
    .line 105
    const-class v1, Lcom/sec/epdg/EpdgContentReader;

    monitor-enter v1

    :try_start_3
    sget-object v0, mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    if-nez v0, :cond_e

    .line 106
    new-instance v0, Lcom/sec/epdg/EpdgContentReader;

    invoke-direct {v0}, <init>()V

    sput-object v0, mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    .line 108
    :cond_e
    sget-object v0, mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createIWlanApnList(Landroid/content/Context;)V
    .registers 15
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "iwlansettings"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "todos"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 116
    .local v1, "uri":Landroid/net/Uri;
    const/16 v3, 0x20

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "operatornumeric"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "connname"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "apnname"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "authtype"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "subnettype"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "userauthtype"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "pfs"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "ownuritype"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "ownidentity"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "remoteuritype"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "remoteidentity"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "tunneltype"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "ipsecencryption"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "ipsecintegrity"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "ipsecgroup"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "ipseclifetime"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "ipseclifevalue"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "ikeversion"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "ikeencryption"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "ikeintegrity"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "ikegroup"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "ikeeaptype"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "ikelife"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "ikewindowsize"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "ikedpdtimeout"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "ikeconnectiontimeout"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "ikenatvalue"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "ikevirtualadaptername"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "vendorattribute"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "imei"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "mobike"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "periodicdpdtimer"

    aput-object v4, v2, v3

    .line 128
    .local v2, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 129
    .local v9, "operatorNumeric":Ljava/lang/String;
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 131
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v11, :cond_289

    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, "imsi":Ljava/lang/String;
    const/4 v10, -0x1

    .line 134
    .local v10, "subscription":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_221

    .line 135
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {p1, v3}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 139
    :goto_11b
    if-eqz v7, :cond_25e

    const-string v3, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_25e

    .line 140
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI is correct, moving further for operator. IMSI is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_142

    const-string/jumbo v7, "suppressed in user binary"

    .end local v7    # "imsi":Ljava/lang/String;
    :cond_142
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_227

    .line 143
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 147
    :goto_15f
    if-eqz v9, :cond_230

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_230

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_230

    .line 149
    const-string v4, "[DBREADER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatorNumeric is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_22d

    const-string/jumbo v3, "suppressed in user binary"

    :goto_186
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b0
    .catchall {:try_start_1 .. :try_end_1b0} :catchall_25b

    move-result-object v8

    .line 167
    .local v8, "messagesCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 170
    .local v12, "useDummyDefault":Z
    if-eqz v8, :cond_298

    :try_start_1b4
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_298

    .line 171
    :goto_1ba
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2a1

    .line 172
    invoke-direct {p0, v8}, addIwlanApn(Landroid/database/Cursor;)V
    :try_end_1c3
    .catch Ljava/lang/NumberFormatException; {:try_start_1b4 .. :try_end_1c3} :catch_1c4
    .catch Ljava/lang/IllegalStateException; {:try_start_1b4 .. :try_end_1c3} :catch_2a9
    .catchall {:try_start_1b4 .. :try_end_1c3} :catchall_2cd

    goto :goto_1ba

    .line 178
    :catch_1c4
    move-exception v6

    .line 179
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_1c5
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 180
    const-string v3, "[DBREADER]"

    const-string/jumbo v4, "iwlanapn settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d0
    .catchall {:try_start_1c5 .. :try_end_1d0} :catchall_2cd

    .line 185
    if-eqz v8, :cond_1d6

    .line 186
    :try_start_1d2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 187
    const/4 v8, 0x0

    .line 191
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_1d6
    :goto_1d6
    const/4 v3, 0x1

    if-ne v12, v3, :cond_21f

    .line 192
    const-string v9, "00101"

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1fa
    .catchall {:try_start_1d2 .. :try_end_1fa} :catchall_25b

    move-result-object v8

    .line 196
    if-eqz v8, :cond_2d5

    :try_start_1fd
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2d5

    .line 197
    :goto_203
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_302

    .line 198
    invoke-direct {p0, v8}, addIwlanApn(Landroid/database/Cursor;)V
    :try_end_20c
    .catch Ljava/lang/NumberFormatException; {:try_start_1fd .. :try_end_20c} :catch_20d
    .catch Ljava/lang/IllegalStateException; {:try_start_1fd .. :try_end_20c} :catch_2de
    .catchall {:try_start_1fd .. :try_end_20c} :catchall_30a

    goto :goto_203

    .line 204
    :catch_20d
    move-exception v6

    .line 205
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    :try_start_20e
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 206
    const-string v3, "[DBREADER]"

    const-string/jumbo v4, "iwlanapn settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_219
    .catchall {:try_start_20e .. :try_end_219} :catchall_30a

    .line 211
    if-eqz v8, :cond_21f

    .line 212
    :try_start_21b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_21e
    .catchall {:try_start_21b .. :try_end_21e} :catchall_25b

    .line 213
    const/4 v8, 0x0

    .line 217
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_21f
    :goto_21f
    monitor-exit p0

    return-void

    .line 137
    .end local v8    # "messagesCursor":Landroid/database/Cursor;
    .end local v12    # "useDummyDefault":Z
    .restart local v7    # "imsi":Ljava/lang/String;
    :cond_221
    :try_start_221
    invoke-static {p1, v10}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_11b

    .line 145
    .end local v7    # "imsi":Ljava/lang/String;
    :cond_227
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_15f

    :cond_22d
    move-object v3, v9

    .line 149
    goto/16 :goto_186

    .line 152
    :cond_230
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatorNumeric is not correct, posting exception. operatorNumeric is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_247

    const-string/jumbo v9, "suppressed in user binary"

    .end local v9    # "operatorNumeric":Ljava/lang/String;
    :cond_247
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "operatorNumeric is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_25b
    .catchall {:try_start_221 .. :try_end_25b} :catchall_25b

    .line 113
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v10    # "subscription":I
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_25b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 157
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "imsi":Ljava/lang/String;
    .restart local v9    # "operatorNumeric":Ljava/lang/String;
    .restart local v10    # "subscription":I
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_25e
    :try_start_25e
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imsi is not correct, posting exception. Imsi is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_275

    const-string/jumbo v7, "suppressed in user binary"

    .end local v7    # "imsi":Ljava/lang/String;
    :cond_275
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "imsi is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    .end local v10    # "subscription":I
    :cond_289
    const-string v3, "[DBREADER]"

    const-string v4, "Telephony manager instance is null, posting exception"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Telephony manager instance is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_298
    .catchall {:try_start_25e .. :try_end_298} :catchall_25b

    .line 175
    .restart local v8    # "messagesCursor":Landroid/database/Cursor;
    .restart local v10    # "subscription":I
    .restart local v12    # "useDummyDefault":Z
    :cond_298
    :try_start_298
    const-string v3, "[DBREADER]"

    const-string/jumbo v4, "iwlansettings - message cursor is null or entries returned <= 0"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a0
    .catch Ljava/lang/NumberFormatException; {:try_start_298 .. :try_end_2a0} :catch_1c4
    .catch Ljava/lang/IllegalStateException; {:try_start_298 .. :try_end_2a0} :catch_2a9
    .catchall {:try_start_298 .. :try_end_2a0} :catchall_2cd

    .line 176
    const/4 v12, 0x1

    .line 185
    :cond_2a1
    if-eqz v8, :cond_1d6

    .line 186
    :try_start_2a3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2a6
    .catchall {:try_start_2a3 .. :try_end_2a6} :catchall_25b

    .line 187
    const/4 v8, 0x0

    goto/16 :goto_1d6

    .line 181
    :catch_2a9
    move-exception v6

    .line 182
    .local v6, "e":Ljava/lang/IllegalStateException;
    :try_start_2aa
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 183
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c5
    .catchall {:try_start_2aa .. :try_end_2c5} :catchall_2cd

    .line 185
    if-eqz v8, :cond_1d6

    .line 186
    :try_start_2c7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 187
    const/4 v8, 0x0

    goto/16 :goto_1d6

    .line 185
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catchall_2cd
    move-exception v3

    if-eqz v8, :cond_2d4

    .line 186
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 187
    const/4 v8, 0x0

    :cond_2d4
    throw v3
    :try_end_2d5
    .catchall {:try_start_2c7 .. :try_end_2d5} :catchall_25b

    .line 201
    :cond_2d5
    :try_start_2d5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "iwlansettings - message cursor is null or entries returned <= 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2de
    .catch Ljava/lang/NumberFormatException; {:try_start_2d5 .. :try_end_2de} :catch_20d
    .catch Ljava/lang/IllegalStateException; {:try_start_2d5 .. :try_end_2de} :catch_2de
    .catchall {:try_start_2d5 .. :try_end_2de} :catchall_30a

    .line 207
    :catch_2de
    move-exception v6

    .line 208
    .restart local v6    # "e":Ljava/lang/IllegalStateException;
    :try_start_2df
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 209
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2fa
    .catchall {:try_start_2df .. :try_end_2fa} :catchall_30a

    .line 211
    if-eqz v8, :cond_21f

    .line 212
    :try_start_2fc
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    const/4 v8, 0x0

    goto/16 :goto_21f

    .line 211
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_302
    if-eqz v8, :cond_21f

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    const/4 v8, 0x0

    goto/16 :goto_21f

    .line 211
    :catchall_30a
    move-exception v3

    if-eqz v8, :cond_311

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 213
    const/4 v8, 0x0

    :cond_311
    throw v3
    :try_end_312
    .catchall {:try_start_2fc .. :try_end_312} :catchall_25b
.end method

.method public getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .registers 2

    .prologue
    .line 1033
    sget-object v0, mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    iget-object v0, v0, epdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-object v0
.end method

.method public getIWlanApnList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    sget-object v0, mEpdgReadInstance:Lcom/sec/epdg/EpdgContentReader;

    iget-object v0, v0, iWlanApns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized readEpdgSettings(Landroid/content/Context;)V
    .registers 15
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 723
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 724
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "iwlansettings"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "todos"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "epdgsettings"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 726
    .local v1, "uri":Landroid/net/Uri;
    const/16 v3, 0x2d

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "operatornumeric"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "smartwifirssia"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "smartwifirssib"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "smartwifirssic"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "smartwifirssiroveinwifionly"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "smartwifirssiroveoutwifionly"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "smartwifirsrp1"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "smartwifirsrp2"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "smartwifirsrp3"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "smartwificdmarssi"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "smartpktlosspercent"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "threshold4grovein"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "threshold4groveout"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "threshold3grovein"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "threshold3groveout"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "threshold2grovein"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "threshold2groveout"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "sysseltimer"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "tepdgltetimer"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "tepdg1xtimer"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "tepdg1xScantimer"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "idimac"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "idiimsi"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "retry_enabled_for_always_on_apn"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "smartwifitimer"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "internet_pdn_keep_alive_timer"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "epdgserverip"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "dynamic_fqdn"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "dynamic_userfqdn"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "smart_wifi_ans_integration"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "smart_wifi_rtcp_integration"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "broadcast_ho_result"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "attach_pdn"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "alwayson_apntype"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "vowifi_pref"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "ondemand_pdn_handoff"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "is_throttle_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "pcscfv4vendorattr"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "pcscfv6vendorattr"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "imeivendorattr"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "netinterfacenum"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "emergency_apntype"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "is_dpd_allowed_in_connected_mode"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "is_ipv6_enabled"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "is_ipv6_preferred"

    aput-object v4, v2, v3

    .line 741
    .local v2, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 742
    .local v9, "operatorNumeric":Ljava/lang/String;
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 744
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v11, :cond_2eb

    .line 745
    const/4 v7, 0x0

    .line 746
    .local v7, "imsi":Ljava/lang/String;
    const/4 v10, -0x1

    .line 747
    .local v10, "subscription":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_283

    .line 748
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-static {p1, v3}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 752
    :goto_17d
    if-eqz v7, :cond_2c0

    const-string v3, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_2c0

    .line 753
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI is correct, moving further for operator. IMSI is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_1a4

    const-string/jumbo v7, "suppressed in user binary"

    .end local v7    # "imsi":Ljava/lang/String;
    :cond_1a4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_289

    .line 756
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 760
    :goto_1c1
    if-eqz v9, :cond_292

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_292

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_292

    .line 762
    const-string v4, "[DBREADER]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatorNumeric is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_28f

    const-string/jumbo v3, "suppressed in user binary"

    :goto_1e8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_212
    .catchall {:try_start_1 .. :try_end_212} :catchall_2bd

    move-result-object v8

    .line 781
    .local v8, "messagesCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 784
    .local v12, "useDummyDefault":Z
    if-eqz v8, :cond_2fa

    :try_start_216
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2fa

    .line 785
    :goto_21c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_302

    .line 786
    invoke-direct {p0, v8}, addEpdgSetting(Landroid/database/Cursor;)V
    :try_end_225
    .catch Ljava/lang/NumberFormatException; {:try_start_216 .. :try_end_225} :catch_226
    .catch Ljava/lang/IllegalStateException; {:try_start_216 .. :try_end_225} :catch_30a
    .catchall {:try_start_216 .. :try_end_225} :catchall_32e

    goto :goto_21c

    .line 792
    :catch_226
    move-exception v6

    .line 793
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_227
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 794
    const-string v3, "[DBREADER]"

    const-string/jumbo v4, "epdg settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_232
    .catchall {:try_start_227 .. :try_end_232} :catchall_32e

    .line 799
    if-eqz v8, :cond_238

    .line 800
    :try_start_234
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 801
    const/4 v8, 0x0

    .line 805
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_238
    :goto_238
    const/4 v3, 0x1

    if-ne v12, v3, :cond_281

    .line 806
    const-string v9, "00101"

    .line 807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operatornumeric=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25c
    .catchall {:try_start_234 .. :try_end_25c} :catchall_2bd

    move-result-object v8

    .line 810
    if-eqz v8, :cond_336

    :try_start_25f
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_336

    .line 811
    :goto_265
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_362

    .line 812
    invoke-direct {p0, v8}, addEpdgSetting(Landroid/database/Cursor;)V
    :try_end_26e
    .catch Ljava/lang/NumberFormatException; {:try_start_25f .. :try_end_26e} :catch_26f
    .catch Ljava/lang/IllegalStateException; {:try_start_25f .. :try_end_26e} :catch_33e
    .catchall {:try_start_25f .. :try_end_26e} :catchall_36a

    goto :goto_265

    .line 818
    :catch_26f
    move-exception v6

    .line 819
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    :try_start_270
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 820
    const-string v3, "[DBREADER]"

    const-string/jumbo v4, "epdg settings corrupted"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27b
    .catchall {:try_start_270 .. :try_end_27b} :catchall_36a

    .line 825
    if-eqz v8, :cond_281

    .line 826
    :try_start_27d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_280
    .catchall {:try_start_27d .. :try_end_280} :catchall_2bd

    .line 827
    const/4 v8, 0x0

    .line 831
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_281
    :goto_281
    monitor-exit p0

    return-void

    .line 750
    .end local v8    # "messagesCursor":Landroid/database/Cursor;
    .end local v12    # "useDummyDefault":Z
    .restart local v7    # "imsi":Ljava/lang/String;
    :cond_283
    :try_start_283
    invoke-static {p1, v10}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_17d

    .line 758
    .end local v7    # "imsi":Ljava/lang/String;
    :cond_289
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1c1

    :cond_28f
    move-object v3, v9

    .line 762
    goto/16 :goto_1e8

    .line 765
    :cond_292
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatorNumeric is not correct, posting exception. operatorNumeric is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_2a9

    const-string/jumbo v9, "suppressed in user binary"

    .end local v9    # "operatorNumeric":Ljava/lang/String;
    :cond_2a9
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "operatorNumeric is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2bd
    .catchall {:try_start_283 .. :try_end_2bd} :catchall_2bd

    .line 723
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v10    # "subscription":I
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_2bd
    move-exception v3

    monitor-exit p0

    throw v3

    .line 770
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "imsi":Ljava/lang/String;
    .restart local v9    # "operatorNumeric":Ljava/lang/String;
    .restart local v10    # "subscription":I
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2c0
    :try_start_2c0
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imsi is not correct, posting exception. Imsi is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v5

    if-eqz v5, :cond_2d7

    const-string/jumbo v7, "suppressed in user binary"

    .end local v7    # "imsi":Ljava/lang/String;
    :cond_2d7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "imsi is not correct"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 775
    .end local v10    # "subscription":I
    :cond_2eb
    const-string v3, "[DBREADER]"

    const-string v4, "Telephony manager instance is null, posting exception"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Telephony manager instance is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2fa
    .catchall {:try_start_2c0 .. :try_end_2fa} :catchall_2bd

    .line 789
    .restart local v8    # "messagesCursor":Landroid/database/Cursor;
    .restart local v10    # "subscription":I
    .restart local v12    # "useDummyDefault":Z
    :cond_2fa
    :try_start_2fa
    const-string v3, "[DBREADER]"

    const-string v4, "EpdgSettings - message cursor is null or entries returned <= 0"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_301
    .catch Ljava/lang/NumberFormatException; {:try_start_2fa .. :try_end_301} :catch_226
    .catch Ljava/lang/IllegalStateException; {:try_start_2fa .. :try_end_301} :catch_30a
    .catchall {:try_start_2fa .. :try_end_301} :catchall_32e

    .line 790
    const/4 v12, 0x1

    .line 799
    :cond_302
    if-eqz v8, :cond_238

    .line 800
    :try_start_304
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_307
    .catchall {:try_start_304 .. :try_end_307} :catchall_2bd

    .line 801
    const/4 v8, 0x0

    goto/16 :goto_238

    .line 795
    :catch_30a
    move-exception v6

    .line 796
    .local v6, "e":Ljava/lang/IllegalStateException;
    :try_start_30b
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 797
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_326
    .catchall {:try_start_30b .. :try_end_326} :catchall_32e

    .line 799
    if-eqz v8, :cond_238

    .line 800
    :try_start_328
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 801
    const/4 v8, 0x0

    goto/16 :goto_238

    .line 799
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catchall_32e
    move-exception v3

    if-eqz v8, :cond_335

    .line 800
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 801
    const/4 v8, 0x0

    :cond_335
    throw v3
    :try_end_336
    .catchall {:try_start_328 .. :try_end_336} :catchall_2bd

    .line 815
    :cond_336
    :try_start_336
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "EpdgSettings - message cursor is null or entries returned <= 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_33e
    .catch Ljava/lang/NumberFormatException; {:try_start_336 .. :try_end_33e} :catch_26f
    .catch Ljava/lang/IllegalStateException; {:try_start_336 .. :try_end_33e} :catch_33e
    .catchall {:try_start_336 .. :try_end_33e} :catchall_36a

    .line 821
    :catch_33e
    move-exception v6

    .line 822
    .restart local v6    # "e":Ljava/lang/IllegalStateException;
    :try_start_33f
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 823
    const-string v3, "[DBREADER]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35a
    .catchall {:try_start_33f .. :try_end_35a} :catchall_36a

    .line 825
    if-eqz v8, :cond_281

    .line 826
    :try_start_35c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 827
    const/4 v8, 0x0

    goto/16 :goto_281

    .line 825
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_362
    if-eqz v8, :cond_281

    .line 826
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 827
    const/4 v8, 0x0

    goto/16 :goto_281

    .line 825
    :catchall_36a
    move-exception v3

    if-eqz v8, :cond_371

    .line 826
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 827
    const/4 v8, 0x0

    :cond_371
    throw v3
    :try_end_372
    .catchall {:try_start_35c .. :try_end_372} :catchall_2bd
.end method
