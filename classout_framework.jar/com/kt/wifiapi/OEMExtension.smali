.class public Lcom/kt/wifiapi/OEMExtension;
.super Ljava/lang/Object;
.source "OEMExtension.java"


# static fields
.field private static final BLE_STR:Ljava/lang/String; = "ble="

.field private static final BSSID_STR:Ljava/lang/String; = "bssid="

.field static final DBG:Z

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final END_STR:Ljava/lang/String; = "####"

.field public static final FEATURE_KT_WIFIAPI_OEM_DISCONNECTION_PRIORITY:I = 0x2

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_AKA_NOTIFICATON:I = 0x10

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_NOTIFICATON:I = 0x8

.field public static final FEATURE_KT_WIFIAPI_OEM_ERROR_NOTIFICATON:I = 0x4

.field public static final FEATURE_KT_WIFIAPI_OEM_MANUAL_CONNECTION:I = 0x1

.field public static final FEATURE_KT_WIFIAPI_OEM_SCAN_RESULT_EXTENSION:I = 0x20

.field private static final FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final FREQ_STR:Ljava/lang/String; = "freq="

.field private static final ID_STR:Ljava/lang/String; = "id="

.field private static final LEVEL_STR:Ljava/lang/String; = "level="

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field private static final TAG:Ljava/lang/String; = "OEMExtension"

.field private static final VSI_STR:Ljava/lang/String; = "vsi="

.field public static final WIFI_SKIP_AUTO_CONNECTION:Ljava/lang/String; = "wifi_skip_auto_conn"

.field private static instance:Lcom/kt/wifiapi/OEMExtension;

.field private static isFirstGetManualConnection:Z

.field private static mContext:Landroid/content/Context;

.field private static mManualConnection:Z

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mGWSScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 44
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1b

    move v0, v1

    :goto_9
    sput-boolean v0, DBG:Z

    .line 62
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, scanResultPattern:Ljava/util/regex/Pattern;

    .line 64
    const/4 v0, 0x0

    sput-object v0, instance:Lcom/kt/wifiapi/OEMExtension;

    .line 65
    sput-boolean v1, mManualConnection:Z

    .line 66
    sput-boolean v2, isFirstGetManualConnection:Z

    return-void

    :cond_1b
    move v0, v2

    .line 44
    goto :goto_9
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sput-object p1, mContext:Landroid/content/Context;

    .line 71
    sget-object v0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, mScanResultCache:Landroid/util/LruCache;

    .line 73
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kt/wifiapi/OEMExtension;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1e

    const-string v0, "OEMExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEMExtension::getInstance() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, instance:Lcom/kt/wifiapi/OEMExtension;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1e
    sget-object v0, instance:Lcom/kt/wifiapi/OEMExtension;

    if-nez v0, :cond_29

    .line 77
    new-instance v0, Lcom/kt/wifiapi/OEMExtension;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, instance:Lcom/kt/wifiapi/OEMExtension;

    .line 79
    :cond_29
    sget-object v0, instance:Lcom/kt/wifiapi/OEMExtension;

    return-object v0
.end method


# virtual methods
.method public getDisconnectionPriority()I
    .registers 7

    .prologue
    .line 168
    const/4 v2, -0x1

    .line 170
    .local v2, "result":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 171
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x54

    iput v3, v1, Landroid/os/Message;->what:I

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "priority"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    iget-object v3, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 178
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3a

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDisconnectionPriority() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_3a
    return v2
.end method

.method public getFeature()I
    .registers 2

    .prologue
    .line 84
    const/16 v0, 0x3f

    .line 91
    .local v0, "ret":I
    return v0
.end method

.method public getGWSScanResultsEx()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    const-string v1, "OEMExtension"

    const-string v2, "getGWSScanResultsEx()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 187
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 189
    iget-object v1, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, setScanResultsEx(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getInternetCheckOption(I)I
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 305
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 306
    .local v0, "msg":Landroid/os/Message;
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_27

    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInternetCheckOption() Network ID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_27
    const/16 v1, 0x22

    iput v1, v0, Landroid/os/Message;->what:I

    .line 309
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 311
    iget-object v1, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method public getManualConnection()Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "ret":Z
    const/4 v1, -0x1

    .line 120
    .local v1, "result":I
    sget-boolean v4, isFirstGetManualConnection:Z

    if-eqz v4, :cond_1d

    .line 121
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 123
    .local v0, "msg":Landroid/os/Message;
    const/16 v4, 0x20

    iput v4, v0, Landroid/os/Message;->what:I

    .line 124
    iget-object v4, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 126
    if-ne v1, v5, :cond_3d

    .line 127
    sput-boolean v5, mManualConnection:Z

    .line 134
    :goto_1b
    sput-boolean v3, isFirstGetManualConnection:Z

    .line 137
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1d
    sget-boolean v2, mManualConnection:Z

    .line 138
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3b

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getManualConnection() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    move v3, v2

    .line 139
    :cond_3c
    :goto_3c
    return v3

    .line 128
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_3d
    if-nez v1, :cond_42

    .line 129
    sput-boolean v3, mManualConnection:Z

    goto :goto_1b

    .line 131
    :cond_42
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_3c

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get callSECApi(SKIP_AUTO_CONNECTION) fail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public isReconnectEnabled(I)Z
    .registers 9
    .param p1, "networkId"    # I

    .prologue
    .line 315
    const/4 v3, 0x0

    .line 316
    .local v3, "ret":Z
    const/4 v2, -0x1

    .line 318
    .local v2, "result":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 319
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x53

    iput v4, v1, Landroid/os/Message;->what:I

    .line 320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "netId"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 322
    const-string v4, "autojoin"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 325
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_40

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReconnectEnabled() : networkId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_40
    iget-object v4, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 328
    const/4 v4, 0x1

    if-ne v2, v4, :cond_68

    .line 329
    const/4 v3, 0x1

    .line 337
    :goto_4a
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_66

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReconnectEnabled() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    move v4, v3

    .line 338
    :goto_67
    return v4

    .line 330
    :cond_68
    if-nez v2, :cond_6c

    .line 331
    const/4 v3, 0x0

    goto :goto_4a

    .line 333
    :cond_6c
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_8e

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get callSECApi(isReconnectEnabled) fail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_8e
    const/4 v4, 0x0

    goto :goto_67
.end method

.method public setDisconnectionPriority(I)Z
    .registers 8
    .param p1, "value"    # I

    .prologue
    .line 148
    const/4 v2, -0x1

    .line 150
    .local v2, "result":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 151
    .local v1, "msg":Landroid/os/Message;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_29

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisconnectionPriority() : value("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_29
    const/16 v3, 0x54

    iput v3, v1, Landroid/os/Message;->what:I

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "priority"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 158
    iget-object v3, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 159
    if-nez v2, :cond_44

    .line 160
    const/4 v3, 0x1

    .line 163
    :goto_43
    return v3

    .line 162
    :cond_44
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_67

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set callSECApi(setDisconnectionPriority) fail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_67
    const/4 v3, 0x0

    goto :goto_43
.end method

.method public setInternetCheckOption(II)I
    .registers 7
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 294
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 295
    .local v0, "msg":Landroid/os/Message;
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_32

    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInternetCheckOption() Network ID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") value("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_32
    const/16 v1, 0x23

    iput v1, v0, Landroid/os/Message;->what:I

    .line 298
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 299
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 301
    iget-object v1, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    return v1
.end method

.method public setManualConnection(Z)Z
    .registers 8
    .param p1, "value"    # Z

    .prologue
    .line 95
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 96
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, -0x1

    .line 98
    .local v2, "result":I
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_23

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setManualConnection() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_23
    const/16 v3, 0x20

    iput v3, v1, Landroid/os/Message;->what:I

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "enable"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    iget-object v3, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 107
    if-nez v2, :cond_3f

    .line 108
    sput-boolean p1, mManualConnection:Z

    .line 109
    const/4 v3, 0x1

    .line 112
    :goto_3e
    return v3

    .line 111
    :cond_3f
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_62

    const-string v3, "OEMExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set callSECApi(SKIP_AUTO_CONNECTION) fail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_62
    const/4 v3, 0x0

    goto :goto_3e
.end method

.method public setReconnectEnabled(IZ)Z
    .registers 10
    .param p1, "networkId"    # I
    .param p2, "reconnect"    # Z

    .prologue
    .line 342
    const/4 v2, -0x1

    .line 343
    .local v2, "result":I
    const/4 v3, 0x0

    .line 345
    .local v3, "value":I
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 346
    .local v1, "msg":Landroid/os/Message;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_34

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setReconnectEnabled() Network ID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") value("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_34
    const/16 v4, 0x53

    iput v4, v1, Landroid/os/Message;->what:I

    .line 349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "netId"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    if-eqz p2, :cond_5c

    .line 352
    const/4 v3, 0x1

    .line 356
    :goto_46
    const-string v4, "autojoin"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 359
    iget-object v4, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 360
    iget-object v4, p0, mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 361
    if-nez v2, :cond_5e

    .line 362
    const/4 v4, 0x1

    .line 365
    :goto_5b
    return v4

    .line 354
    :cond_5c
    const/4 v3, 0x0

    goto :goto_46

    .line 364
    :cond_5e
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_81

    const-string v4, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set callSECApi(setReconnectEnabled) fail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_81
    const/4 v4, 0x0

    goto :goto_5b
.end method

.method public setScanResultsEx(Ljava/lang/String;)Ljava/util/List;
    .registers 30
    .param p1, "scanResults"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    if-eqz p1, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 205
    :cond_8
    const/16 v17, 0x0

    .line 290
    :cond_a
    return-object v17

    .line 208
    :cond_b
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v17, "gwsScanList":Ljava/util/List;, "Ljava/util/List<Lcom/kt/wifiapi/GWSScanResult;>;"
    const-string v25, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 211
    .local v22, "lines":[Ljava/lang/String;
    const-string v5, ""

    .line 212
    .local v5, "bssid":Ljava/lang/String;
    const/16 v24, 0x0

    .line 213
    .local v24, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v7, 0x0

    .line 214
    .local v7, "level":I
    const/4 v8, 0x0

    .line 215
    .local v8, "freq":I
    const-string v6, ""

    .line 216
    .local v6, "flags":Ljava/lang/String;
    const-string/jumbo v9, "null"

    .line 217
    .local v9, "BSSLoadElement":Ljava/lang/String;
    const-string/jumbo v10, "null"

    .line 218
    .local v10, "vendorSpecificOUI":Ljava/lang/String;
    const-string/jumbo v11, "null"

    .line 220
    .local v11, "vendorSpecificContents":Ljava/lang/String;
    const-string v25, "bssid="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v14

    .line 221
    .local v14, "bssidStrLen":I
    const-string v25, "flags="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v16

    .line 222
    .local v16, "flagLen":I
    const-string v25, "ble="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v13

    .line 223
    .local v13, "bleLen":I
    const-string/jumbo v25, "vsi="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v23

    .line 225
    .local v23, "vsiLen":I
    move-object/from16 v12, v22

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_4b
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    aget-object v21, v12, v18

    .line 226
    .local v21, "line":Ljava/lang/String;
    const-string v25, "bssid="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_75

    .line 227
    new-instance v5, Ljava/lang/String;

    .end local v5    # "bssid":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v14

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v5, v0, v14, v1}, Ljava/lang/String;-><init>([BII)V

    .line 225
    .restart local v5    # "bssid":Ljava/lang/String;
    :cond_72
    :goto_72
    add-int/lit8 v18, v18, 0x1

    goto :goto_4b

    .line 228
    :cond_75
    const-string v25, "freq="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_97

    .line 230
    :try_start_81
    const-string v25, "freq="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_92} :catch_94

    move-result v8

    goto :goto_72

    .line 231
    :catch_94
    move-exception v15

    .line 232
    .local v15, "e":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    .line 233
    goto :goto_72

    .line 234
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_97
    const-string v25, "level="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_bd

    .line 236
    :try_start_a3
    const-string v25, "level="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_b4} :catch_ba

    move-result v7

    .line 240
    if-lez v7, :cond_72

    add-int/lit16 v7, v7, -0x100

    goto :goto_72

    .line 241
    :catch_ba
    move-exception v15

    .line 242
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 243
    goto :goto_72

    .line 244
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_bd
    const-string v25, "flags="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_df

    .line 245
    new-instance v6, Ljava/lang/String;

    .end local v6    # "flags":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v16

    move-object/from16 v0, v25

    move/from16 v1, v16

    move/from16 v2, v26

    invoke-direct {v6, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .restart local v6    # "flags":Ljava/lang/String;
    goto :goto_72

    .line 246
    :cond_df
    const-string/jumbo v25, "ssid="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_101

    .line 247
    const-string/jumbo v25, "ssid="

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v24

    goto/16 :goto_72

    .line 248
    :cond_101
    const-string v25, "ble="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_122

    .line 249
    new-instance v9, Ljava/lang/String;

    .end local v9    # "BSSLoadElement":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v26, v26, v13

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v9, v0, v13, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v9    # "BSSLoadElement":Ljava/lang/String;
    goto/16 :goto_72

    .line 250
    :cond_122
    const-string/jumbo v25, "vsi="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_15b

    .line 251
    new-instance v10, Ljava/lang/String;

    .end local v10    # "vendorSpecificOUI":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    const/16 v26, 0x6

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v26

    invoke-direct {v10, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 252
    .restart local v10    # "vendorSpecificOUI":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11    # "vendorSpecificContents":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    add-int/lit8 v26, v23, 0x6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v27

    sub-int v27, v27, v23

    add-int/lit8 v27, v27, -0x6

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v11, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .restart local v11    # "vendorSpecificContents":Ljava/lang/String;
    goto/16 :goto_72

    .line 253
    :cond_15b
    const-string v25, "===="

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_173

    const-string v25, "####"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_72

    .line 254
    :cond_173
    if-eqz v5, :cond_1bd

    .line 255
    if-eqz v24, :cond_1cf

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "ssid":Ljava/lang/String;
    :goto_17b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 257
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kt/wifiapi/GWSScanResult;

    .line 258
    .local v3, "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    if-eqz v3, :cond_1d5

    .line 259
    iput v7, v3, Lcom/kt/wifiapi/GWSScanResult;->level:I

    .line 261
    if-eqz v24, :cond_1d2

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v25

    :goto_1aa
    move-object/from16 v0, v25

    iput-object v0, v3, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    .line 262
    iput-object v6, v3, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    .line 263
    iput v8, v3, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    .line 264
    iput-object v9, v3, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    .line 265
    iput-object v10, v3, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 266
    iput-object v11, v3, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    .line 267
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .end local v4    # "ssid":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    :cond_1bd
    :goto_1bd
    const/4 v5, 0x0

    .line 277
    const/4 v7, 0x0

    .line 278
    const/4 v8, 0x0

    .line 279
    const-string v6, ""

    .line 280
    const/16 v24, 0x0

    .line 281
    const-string/jumbo v9, "null"

    .line 282
    const-string/jumbo v10, "null"

    .line 283
    const-string/jumbo v11, "null"

    goto/16 :goto_72

    .line 255
    :cond_1cf
    const-string v4, "<unknown ssid>"

    goto :goto_17b

    .line 261
    .restart local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    .restart local v4    # "ssid":Ljava/lang/String;
    .restart local v19    # "key":Ljava/lang/String;
    :cond_1d2
    const-string v25, "<unknown ssid>"

    goto :goto_1aa

    .line 269
    :cond_1d5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_1bd

    .line 270
    new-instance v3, Lcom/kt/wifiapi/GWSScanResult;

    .end local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    invoke-direct/range {v3 .. v11}, Lcom/kt/wifiapi/GWSScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .restart local v3    # "scanResult":Lcom/kt/wifiapi/GWSScanResult;
    move-object/from16 v0, p0

    iget-object v0, v0, mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1bd
.end method
