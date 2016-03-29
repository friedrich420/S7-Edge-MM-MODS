.class public Lcom/android/settings/rcs/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/rcs/RcsUtils$CustomCscParser;,
        Lcom/android/settings/rcs/RcsUtils$RcsFeatures;,
        Lcom/android/settings/rcs/RcsUtils$RcsFeature;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/settings/rcs/RcsUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOmcSupport:Z

.field private mRcsFeatures:Lcom/android/settings/rcs/RcsUtils$RcsFeatures;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/settings/rcs/RcsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/rcs/RcsUtils;->sInstance:Lcom/android/settings/rcs/RcsUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    .line 94
    if-nez p1, :cond_0

    .line 95
    sget-object v1, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v2, "The given context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/support_omc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/rcs/RcsUtils;->mIsOmcSupport:Z

    .line 108
    new-instance v1, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v1, p0}, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;-><init>(Lcom/android/settings/rcs/RcsUtils;)V

    iput-object v1, p0, Lcom/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    goto :goto_0

    .line 106
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getEnabledRcsFromMps(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 222
    const/4 v5, 0x0

    .line 228
    .local v5, "value":Ljava/lang/String;
    new-instance v3, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;

    const-string v7, "/system/csc/customer.xml"

    invoke-direct {v3, v7}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;-><init>(Ljava/lang/String;)V

    .line 230
    .local v3, "parser":Lcom/android/settings/rcs/RcsUtils$CustomCscParser;
    const-string v7, "Settings.IMSSetting"

    invoke-virtual {v3, v7}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 231
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_1

    .line 232
    sget-object v7, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getEnabledRcsFromMps: No Settings.IMSSetting node"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    :goto_0
    return-object v6

    .line 235
    :cond_1
    const-string v7, "Setting"

    invoke-virtual {v3, v1, v7}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 236
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_2

    .line 237
    sget-object v7, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getEnabledRcsFromMps: No Setting node"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 243
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "NetworkName"

    invoke-virtual {v3, v7, v8}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 246
    .local v4, "tempNode":Lorg/w3c/dom/Node;
    invoke-virtual {v3, v4}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 247
    sget-object v7, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getEnabledRcsFromMps: Found matched node for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    const-string v8, "RCS"

    invoke-virtual {v3, v7, v8}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 250
    if-eqz v4, :cond_4

    .line 251
    const-string v7, "EnableRCS"

    invoke-virtual {v3, v4, v7}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 257
    invoke-virtual {v3, v4}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 259
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 260
    :cond_3
    sget-object v7, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getEnabledRcsFromMps: EnableRCS is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_4
    sget-object v7, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getEnabledRcsFromMps: No RCS node"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 241
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/rcs/RcsUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    sget-object v0, Lcom/android/settings/rcs/RcsUtils;->sInstance:Lcom/android/settings/rcs/RcsUtils;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/settings/rcs/RcsUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/rcs/RcsUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/rcs/RcsUtils;->sInstance:Lcom/android/settings/rcs/RcsUtils;

    .line 87
    :cond_0
    sget-object v0, Lcom/android/settings/rcs/RcsUtils;->sInstance:Lcom/android/settings/rcs/RcsUtils;

    return-object v0
.end method

.method private getMccMnc()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 113
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "networkOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    .end local v0    # "networkOperator":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "networkOperator":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNetworkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 128
    const/4 v5, 0x0

    .line 130
    .local v5, "value":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 131
    :cond_0
    sget-object v7, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getNetworkName: MCCMNC is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-object v6

    .line 135
    :cond_1
    new-instance v3, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;

    const-string v7, "/system/csc/customer.xml"

    invoke-direct {v3, v7}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, "parser":Lcom/android/settings/rcs/RcsUtils$CustomCscParser;
    const-string v7, "GeneralInfo"

    invoke-virtual {v3, v7}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 138
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_2

    .line 139
    sget-object v7, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getNetworkName: No GenralInfo node"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_2
    const-string v7, "NetworkInfo"

    invoke-virtual {v3, v1, v7}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 144
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_3

    .line 145
    sget-object v7, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getNetworkName: No NetworkInfo node"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 151
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "MCCMNC"

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 154
    .local v4, "tempNode":Lorg/w3c/dom/Node;
    invoke-virtual {v3, v4}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 155
    sget-object v6, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNetworkName: Found matched network name by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string v7, "NetworkName"

    invoke-virtual {v3, v6, v7}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 158
    invoke-virtual {v3, v4}, Lcom/android/settings/rcs/RcsUtils$CustomCscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .end local v4    # "tempNode":Lorg/w3c/dom/Node;
    :cond_4
    move-object v6, v5

    .line 164
    goto :goto_0

    .line 149
    .restart local v4    # "tempNode":Lorg/w3c/dom/Node;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getRcsFeatures()Lcom/android/settings/rcs/RcsUtils$RcsFeatures;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-direct {v0, p0}, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;-><init>(Lcom/android/settings/rcs/RcsUtils;)V

    iput-object v0, p0, Lcom/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    return-object v0
.end method

.method public isRcsEnabledInCsc()Z
    .locals 9

    .prologue
    .line 180
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 181
    .local v0, "cscRcsEnabled":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_UseMpsForImsSetting"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    .line 182
    .local v1, "cscUseMpsForIms":Z
    iget-object v6, p0, Lcom/android/settings/rcs/RcsUtils;->mRcsFeatures:Lcom/android/settings/rcs/RcsUtils$RcsFeatures;

    invoke-virtual {v6}, Lcom/android/settings/rcs/RcsUtils$RcsFeatures;->isRcsUiForOpen()Z

    move-result v3

    .line 184
    .local v3, "isRcsUiForOpen":Z
    sget-object v6, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRcsEnabledInCsc: cscRcsEnabled("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), useMpsForIms("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), isRcsUiForOpen("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move v5, v0

    .line 191
    .local v5, "result":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/settings/rcs/RcsUtils;->getMccMnc()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/rcs/RcsUtils;->getNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "networkName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 196
    .local v2, "customerRcsEnabled":Ljava/lang/Boolean;
    if-nez v4, :cond_1

    .line 197
    const/4 v5, 0x0

    .line 198
    sget-object v6, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v7, "isRcsEnabledInCsc: RCS service is not availble(couldn\'t find matched network name)"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v2    # "customerRcsEnabled":Ljava/lang/Boolean;
    .end local v4    # "networkName":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v6, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRcsEnabledInCsc: RCS availability is ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v5

    .line 199
    .restart local v2    # "customerRcsEnabled":Ljava/lang/Boolean;
    .restart local v4    # "networkName":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 200
    invoke-direct {p0, v4}, Lcom/android/settings/rcs/RcsUtils;->getEnabledRcsFromMps(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 202
    if-nez v2, :cond_2

    .line 203
    const/4 v5, 0x0

    .line 204
    sget-object v6, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    const-string v7, "isRcsEnabledInCsc: RCS service is not available(couldn\'t find feature tag)"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 207
    sget-object v6, Lcom/android/settings/rcs/RcsUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRcsEnabledInCsc: RCS service is available(found feature tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
