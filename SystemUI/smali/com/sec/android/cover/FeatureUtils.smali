.class public Lcom/sec/android/cover/FeatureUtils;
.super Ljava/lang/Object;
.source "FeatureUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mCountryCode:Ljava/lang/String;

.field private static mIsSupportContextualSurvey:Z

.field private static mIsSupportContextualSurveyChecked:Z

.field private static final mProductName:Ljava/lang/String;

.field private static final mSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const-class v0, Lcom/sec/android/cover/FeatureUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/FeatureUtils;->TAG:Ljava/lang/String;

    .line 15
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    .line 16
    const-string v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/FeatureUtils;->mCountryCode:Ljava/lang/String;

    .line 17
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    .line 19
    sput-boolean v1, Lcom/sec/android/cover/FeatureUtils;->mIsSupportContextualSurvey:Z

    .line 20
    sput-boolean v1, Lcom/sec/android/cover/FeatureUtils;->mIsSupportContextualSurveyChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isATTModel()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 175
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 176
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "att"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "uc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "attactive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 180
    :cond_1
    return v0
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 31
    const-string v0, "CTC"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHM"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHN"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHC"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHProjectVariant()Z
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "isHProjectVariant":Z
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 82
    const/4 v0, 0x0

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isJapanModel()Z
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "DCM"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XJP"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SBM"

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreaModel()Z
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v1, "skt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v1, "ktt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v1, "lgt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLGTModel()Z
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "isLgtModel":Z
    const-string v1, "LGT"

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 27
    :cond_1
    return v0
.end method

.method public static isLightTheme()Z
    .locals 5

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "isLightTheme":Z
    const-string v2, "ro.build.scafe.cream"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "mThemeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "white"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 143
    :cond_0
    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLightTheme => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v0
.end method

.method public static isMultiSIMDevice()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public static isShowAMPM()Z
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isTProject()Z

    move-result v0

    return v0
.end method

.method public static isSupportBlackClearCover()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "heroqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "herolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "hero2lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "hero2qlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportContextualSurvey()Z
    .locals 2

    .prologue
    .line 160
    sget-boolean v0, Lcom/sec/android/cover/FeatureUtils;->mIsSupportContextualSurveyChecked:Z

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/cover/FeatureUtils;->mIsSupportContextualSurvey:Z

    .line 164
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/cover/FeatureUtils;->mIsSupportContextualSurveyChecked:Z

    .line 167
    :cond_0
    sget-boolean v0, Lcom/sec/android/cover/FeatureUtils;->mIsSupportContextualSurvey:Z

    return v0
.end method

.method public static isSupportElasticPlugin()Z
    .locals 4

    .prologue
    .line 149
    const/4 v0, 0x1

    .line 151
    .local v0, "openTheme":Z
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open theme feature => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v0
.end method

.method public static isSupportNotificationOnCover()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPreviewShortcut()Z
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v0

    return v0
.end method

.method public static isTProject()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    const-string v2, "SC-01G"

    sget-object v3, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SCL24"

    sget-object v3, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    if-nez v2, :cond_2

    move v0, v1

    .line 60
    goto :goto_0

    .line 63
    :cond_2
    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tblte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tr3g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "trlte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "trhlte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "trelte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tre3g"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "trhplte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tbhplte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tbelte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tr3calte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v3, "tre3calte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public static isVZWModel()Z
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v1, "vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZeroProject()Z
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "isZeroProjectVariant":Z
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 95
    const/4 v0, 0x0

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zerolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zeroqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zeroslte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zeroflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zerofqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zerofslte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "SCV31"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "marinelteuc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "SC-05G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "SC-04G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    :cond_2
    const/4 v0, 0x1

    .line 108
    :cond_3
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "noblelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    const/4 v0, 0x1

    .line 113
    :cond_4
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zenzerolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zenzeroflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "zenlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    :cond_5
    const/4 v0, 0x1

    .line 119
    :cond_6
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "s5neolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 120
    const/4 v0, 0x1

    .line 124
    :cond_7
    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "heroqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "herolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "hero2lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/sec/android/cover/FeatureUtils;->mProductName:Ljava/lang/String;

    const-string v2, "hero2qlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
