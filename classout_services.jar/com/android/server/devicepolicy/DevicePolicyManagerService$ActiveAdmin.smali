.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveAdmin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    }
.end annotation


# static fields
.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DEF_KEYGUARD_FEATURES_DISABLED:I = 0x0

.field static final DEF_MAXIMUM_FAILED_PASSWORDS_FOR_WIPE:I = 0x0

.field static final DEF_MAXIMUM_TIME_TO_UNLOCK:J = 0x0L

.field static final DEF_MINIMUM_PASSWORD_LENGTH:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_LETTERS:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_LOWER_CASE:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_NON_LETTER:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_NUMERIC:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_SYMBOLS:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_UPPER_CASE:I = 0x0

.field static final DEF_PASSWORD_EXPIRATION_DATE:J = 0x0L

.field static final DEF_PASSWORD_EXPIRATION_TIMEOUT:J = 0x0L

.field static final DEF_PASSWORD_HISTORY_LENGTH:I = 0x0

.field private static final TAG_ACCOUNT_TYPE:Ljava/lang/String; = "account-type"

.field private static final TAG_CROSS_PROFILE_WIDGET_PROVIDERS:Ljava/lang/String; = "cross-profile-widget-providers"

.field private static final TAG_DISABLE_ACCOUNT_MANAGEMENT:Ljava/lang/String; = "disable-account-management"

.field private static final TAG_DISABLE_BLUETOOTH_CONTACT_SHARING:Ljava/lang/String; = "disable-bt-contacts-sharing"

.field private static final TAG_DISABLE_CALLER_ID:Ljava/lang/String; = "disable-caller-id"

.field private static final TAG_DISABLE_CAMERA:Ljava/lang/String; = "disable-camera"

.field private static final TAG_DISABLE_KEYGUARD_FEATURES:Ljava/lang/String; = "disable-keyguard-features"

.field private static final TAG_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "disable-screen-capture"

.field private static final TAG_ENCRYPTION_REQUESTED:Ljava/lang/String; = "encryption-requested"

.field private static final TAG_GLOBAL_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global-proxy-exclusion-list"

.field private static final TAG_GLOBAL_PROXY_SPEC:Ljava/lang/String; = "global-proxy-spec"

.field private static final TAG_MANAGE_TRUST_AGENT_FEATURES:Ljava/lang/String; = "manage-trust-agent-features"

.field private static final TAG_MAX_FAILED_PASSWORD_WIPE:Ljava/lang/String; = "max-failed-password-wipe"

.field private static final TAG_MAX_TIME_TO_UNLOCK:Ljava/lang/String; = "max-time-to-unlock"

.field private static final TAG_MIN_PASSWORD_LENGTH:Ljava/lang/String; = "min-password-length"

.field private static final TAG_MIN_PASSWORD_LETTERS:Ljava/lang/String; = "min-password-letters"

.field private static final TAG_MIN_PASSWORD_LOWERCASE:Ljava/lang/String; = "min-password-lowercase"

.field private static final TAG_MIN_PASSWORD_NONLETTER:Ljava/lang/String; = "min-password-nonletter"

.field private static final TAG_MIN_PASSWORD_NUMERIC:Ljava/lang/String; = "min-password-numeric"

.field private static final TAG_MIN_PASSWORD_SYMBOLS:Ljava/lang/String; = "min-password-symbols"

.field private static final TAG_MIN_PASSWORD_UPPERCASE:Ljava/lang/String; = "min-password-uppercase"

.field private static final TAG_PACKAGE_LIST_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PASSWORD_EXPIRATION_DATE:Ljava/lang/String; = "password-expiration-date"

.field private static final TAG_PASSWORD_EXPIRATION_TIMEOUT:Ljava/lang/String; = "password-expiration-timeout"

.field private static final TAG_PASSWORD_HISTORY_LENGTH:Ljava/lang/String; = "password-history-length"

.field private static final TAG_PASSWORD_QUALITY:Ljava/lang/String; = "password-quality"

.field private static final TAG_PERMITTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "permitted-accessiblity-services"

.field private static final TAG_PERMITTED_IMES:Ljava/lang/String; = "permitted-imes"

.field private static final TAG_POLICIES:Ljava/lang/String; = "policies"

.field private static final TAG_PROVIDER:Ljava/lang/String; = "provider"

.field private static final TAG_REQUIRE_AUTO_TIME:Ljava/lang/String; = "require_auto_time"

.field private static final TAG_SPECIFIES_GLOBAL_PROXY:Ljava/lang/String; = "specifies-global-proxy"

.field private static final TAG_TRUST_AGENT_COMPONENT:Ljava/lang/String; = "component"

.field private static final TAG_TRUST_AGENT_COMPONENT_OPTIONS:Ljava/lang/String; = "trust-agent-component-options"


# instance fields
.field accountTypesWithManagementDisabled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field allowBluetoothMode:I

.field allowBrowser:Z

.field allowDesktopSync:Z

.field allowInternetSharing:Z

.field allowIrDA:Z

.field allowListRecord:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field allowPOPIMAPEmail:Z

.field allowStorageCard:Z

.field allowTextMessaging:Z

.field allowThirdPartyList:Ljava/lang/String;

.field allowUnsginedApp:Z

.field allowUnsignedInstallationPkg:Z

.field allowWifi:Z

.field blockInRomList:Ljava/lang/String;

.field blockListRecordInRom:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field crossProfileWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field disableBluetoothContactSharing:Z

.field disableCallerId:Z

.field disableCamera:Z

.field disableScreenCapture:Z

.field disabledKeyguardFeatures:I

.field encryptionRequested:Z

.field globalProxyExclusionList:Ljava/lang/String;

.field globalProxySpec:Ljava/lang/String;

.field final info:Landroid/app/admin/DeviceAdminInfo;

.field maximumFailedPasswordsForWipe:I

.field maximumTimeToUnlock:J

.field minimumPasswordLength:I

.field minimumPasswordLetters:I

.field minimumPasswordLowerCase:I

.field minimumPasswordNonLetter:I

.field minimumPasswordNumeric:I

.field minimumPasswordSymbols:I

.field minimumPasswordUpperCase:I

.field passwordExpirationDate:J

.field passwordExpirationTimeout:J

.field passwordHistoryLength:I

.field passwordQuality:I

.field passwordRecoverable:Z

.field permittedAccessiblityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedInputMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requireAutoTime:Z

.field requireStorageCardEncryption:Z

.field simplePasswordEnabled:Z

.field specifiesGlobalProxy:Z

.field trustAgentInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/admin/DeviceAdminInfo;)V
    .registers 8
    .param p1, "_info"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput v1, p0, passwordQuality:I

    .line 564
    iput v1, p0, minimumPasswordLength:I

    .line 567
    iput v1, p0, passwordHistoryLength:I

    .line 570
    iput v1, p0, minimumPasswordUpperCase:I

    .line 573
    iput v1, p0, minimumPasswordLowerCase:I

    .line 576
    iput v2, p0, minimumPasswordLetters:I

    .line 579
    iput v2, p0, minimumPasswordNumeric:I

    .line 582
    iput v2, p0, minimumPasswordSymbols:I

    .line 585
    iput v1, p0, minimumPasswordNonLetter:I

    .line 588
    iput-wide v4, p0, maximumTimeToUnlock:J

    .line 591
    iput v1, p0, maximumFailedPasswordsForWipe:I

    .line 594
    iput-wide v4, p0, passwordExpirationTimeout:J

    .line 597
    iput-wide v4, p0, passwordExpirationDate:J

    .line 601
    iput v1, p0, disabledKeyguardFeatures:I

    .line 603
    iput-boolean v1, p0, encryptionRequested:Z

    .line 604
    iput-boolean v1, p0, disableCamera:Z

    .line 605
    iput-boolean v1, p0, disableCallerId:Z

    .line 606
    iput-boolean v2, p0, disableBluetoothContactSharing:Z

    .line 607
    iput-boolean v1, p0, disableScreenCapture:Z

    .line 608
    iput-boolean v1, p0, requireAutoTime:Z

    .line 617
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 630
    iput-boolean v1, p0, specifiesGlobalProxy:Z

    .line 631
    iput-object v3, p0, globalProxySpec:Ljava/lang/String;

    .line 632
    iput-object v3, p0, globalProxyExclusionList:Ljava/lang/String;

    .line 634
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, trustAgentInfos:Ljava/util/HashMap;

    .line 636
    iput-boolean v1, p0, passwordRecoverable:Z

    .line 637
    iput-boolean v2, p0, simplePasswordEnabled:Z

    .line 638
    iput-boolean v2, p0, allowStorageCard:Z

    .line 639
    iput-boolean v2, p0, allowWifi:Z

    .line 640
    iput-boolean v2, p0, allowTextMessaging:Z

    .line 641
    iput-boolean v2, p0, allowPOPIMAPEmail:Z

    .line 642
    iput-boolean v2, p0, allowBrowser:Z

    .line 643
    iput-boolean v2, p0, allowInternetSharing:Z

    .line 644
    const/4 v0, 0x2

    iput v0, p0, allowBluetoothMode:I

    .line 645
    iput-boolean v2, p0, allowDesktopSync:Z

    .line 646
    iput-boolean v2, p0, allowIrDA:Z

    .line 647
    iput-boolean v1, p0, requireStorageCardEncryption:Z

    .line 653
    const-string v0, ""

    iput-object v0, p0, allowThirdPartyList:Ljava/lang/String;

    .line 654
    const-string v0, ""

    iput-object v0, p0, blockInRomList:Ljava/lang/String;

    .line 655
    iput-boolean v2, p0, allowUnsginedApp:Z

    .line 656
    iput-boolean v2, p0, allowUnsignedInstallationPkg:Z

    .line 657
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, blockListRecordInRom:Ljava/util/HashSet;

    .line 658
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, allowListRecord:Ljava/util/HashSet;

    .line 662
    iput-object p1, p0, info:Landroid/app/admin/DeviceAdminInfo;

    .line 663
    return-void
.end method

.method private getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 1142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1144
    .local v1, "outerDepthDAM":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1146
    .local v2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "typeDAM":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_5d

    if-ne v5, v9, :cond_19

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_5d

    .line 1147
    :cond_19
    if-eq v5, v9, :cond_a

    const/4 v6, 0x4

    if-eq v5, v6, :cond_a

    .line 1150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1151
    .local v3, "tagDAM":Ljava/lang/String;
    const-string v6, "component"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1152
    const/4 v6, 0x0

    const-string/jumbo v7, "value"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, "component":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    move-result-object v4

    .line 1154
    .local v4, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 1156
    .end local v0    # "component":Ljava/lang/String;
    .end local v4    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_3a
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown tag under "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1159
    .end local v3    # "tagDAM":Ljava/lang/String;
    :cond_5d
    return-object v2
.end method

.method private getCrossProfileWidgetProviders(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 1186
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1188
    .local v0, "outerDepthDAM":I
    const/4 v2, 0x0

    .line 1190
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "typeDAM":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_5d

    if-ne v4, v8, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_5d

    .line 1191
    :cond_15
    if-eq v4, v8, :cond_6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    .line 1194
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1195
    .local v3, "tagDAM":Ljava/lang/String;
    const-string/jumbo v5, "provider"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1196
    const/4 v5, 0x0

    const-string/jumbo v6, "value"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, "provider":Ljava/lang/String;
    if-nez v2, :cond_36

    .line 1198
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_36
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1202
    .end local v1    # "provider":Ljava/lang/String;
    :cond_3a
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag under "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1205
    .end local v3    # "tagDAM":Ljava/lang/String;
    :cond_5d
    return-object v2
.end method

.method private getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 1164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1166
    .local v1, "outerDepthDAM":I
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    .line 1168
    .local v2, "result":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_b
    :goto_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "typeDAM":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_5a

    if-ne v4, v8, :cond_1a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_5a

    .line 1169
    :cond_1a
    if-eq v4, v8, :cond_b

    const/4 v5, 0x4

    if-eq v4, v5, :cond_b

    .line 1172
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1173
    .local v3, "tagDAM":Ljava/lang/String;
    const-string/jumbo v5, "trust-agent-component-options"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1174
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 1175
    .local v0, "bundle":Landroid/os/PersistableBundle;
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    .line 1176
    iput-object v0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    goto :goto_b

    .line 1178
    .end local v0    # "bundle":Landroid/os/PersistableBundle;
    :cond_37
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag under "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1181
    .end local v3    # "tagDAM":Ljava/lang/String;
    :cond_5a
    return-object v2
.end method

.method private readDisableAccountInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/Set;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1122
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1124
    .local v0, "outerDepthDAM":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1126
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "typeDAM":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_59

    if-ne v3, v7, :cond_19

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_59

    .line 1127
    :cond_19
    if-eq v3, v7, :cond_a

    const/4 v4, 0x4

    if-eq v3, v4, :cond_a

    .line 1130
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1131
    .local v2, "tagDAM":Ljava/lang/String;
    const-string v4, "account-type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1132
    const/4 v4, 0x0

    const-string/jumbo v5, "value"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1134
    :cond_36
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag under "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1137
    .end local v2    # "tagDAM":Ljava/lang/String;
    :cond_59
    return-object v1
.end method

.method private readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 1097
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1101
    .local v0, "outerDepth":I
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "outerType":I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_75

    if-ne v2, v8, :cond_19

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_75

    .line 1102
    :cond_19
    if-eq v2, v8, :cond_a

    const/4 v5, 0x4

    if-eq v2, v5, :cond_a

    .line 1105
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1106
    .local v1, "outerTag":Ljava/lang/String;
    const-string/jumbo v5, "item"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1107
    const/4 v5, 0x0

    const-string/jumbo v6, "value"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1108
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_39

    .line 1109
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1111
    :cond_39
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package name missing under "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1114
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_52
    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag under "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1117
    .end local v1    # "outerTag":Ljava/lang/String;
    :cond_75
    return-object v4
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "uid="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, getUid()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1210
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "policies:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    iget-object v2, p0, info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    .line 1212
    .local v1, "pols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    if-eqz v1, :cond_3e

    .line 1213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3e

    .line 1214
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1213
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1217
    .end local v0    # "i":I
    :cond_3e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "passwordQuality=0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1218
    iget v2, p0, passwordQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "minimumPasswordLength="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1220
    iget v2, p0, minimumPasswordLength:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "passwordHistoryLength="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1222
    iget v2, p0, passwordHistoryLength:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1223
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "minimumPasswordUpperCase="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1224
    iget v2, p0, minimumPasswordUpperCase:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1225
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "minimumPasswordLowerCase="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1226
    iget v2, p0, minimumPasswordLowerCase:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1227
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "minimumPasswordLetters="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1228
    iget v2, p0, minimumPasswordLetters:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1229
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "minimumPasswordNumeric="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1230
    iget v2, p0, minimumPasswordNumeric:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1231
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "minimumPasswordSymbols="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1232
    iget v2, p0, minimumPasswordSymbols:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "minimumPasswordNonLetter="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1234
    iget v2, p0, minimumPasswordNonLetter:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1235
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "maximumTimeToUnlock="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1236
    iget-wide v2, p0, maximumTimeToUnlock:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1237
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "maximumFailedPasswordsForWipe="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    iget v2, p0, maximumFailedPasswordsForWipe:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1239
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "specifiesGlobalProxy="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1240
    iget-boolean v2, p0, specifiesGlobalProxy:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1241
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "passwordExpirationTimeout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1242
    iget-wide v2, p0, passwordExpirationTimeout:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1243
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "passwordExpirationDate="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1244
    iget-wide v2, p0, passwordExpirationDate:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1245
    iget-object v2, p0, globalProxySpec:Ljava/lang/String;

    if-eqz v2, :cond_118

    .line 1246
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "globalProxySpec="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1247
    iget-object v2, p0, globalProxySpec:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1249
    :cond_118
    iget-object v2, p0, globalProxyExclusionList:Ljava/lang/String;

    if-eqz v2, :cond_12a

    .line 1250
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "globalProxyEclusionList="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1251
    iget-object v2, p0, globalProxyExclusionList:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    :cond_12a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "encryptionRequested="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    iget-boolean v2, p0, encryptionRequested:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1255
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "disableCamera="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1256
    iget-boolean v2, p0, disableCamera:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1257
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "disableCallerId="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1258
    iget-boolean v2, p0, disableCallerId:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1259
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "disableBluetoothContactSharing="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1260
    iget-boolean v2, p0, disableBluetoothContactSharing:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1261
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "disableScreenCapture="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1262
    iget-boolean v2, p0, disableScreenCapture:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1263
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "requireAutoTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    iget-boolean v2, p0, requireAutoTime:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1265
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "disabledKeyguardFeatures="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget v2, p0, disabledKeyguardFeatures:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1269
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "passwordRecoverable="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, passwordRecoverable:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1270
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allowStorageCard="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, allowStorageCard:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1271
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "simplePasswordEnabled="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, simplePasswordEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1272
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allowWifi="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, allowWifi:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1273
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allowTextMessaging="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, allowTextMessaging:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1274
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allowPOPIMAPEmail="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, allowPOPIMAPEmail:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1275
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allowBrowser="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, allowBrowser:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1276
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allowInternetSharing="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, allowInternetSharing:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1277
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allowBluetoothMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, allowBluetoothMode:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1278
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allowDesktopSync="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, allowDesktopSync:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1279
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allowIrDA="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, allowIrDA:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1280
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "requireStorageCardEncryption="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, requireStorageCardEncryption:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1281
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allow-list-thirdparty="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, allowThirdPartyList:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "block-list-InRom="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, blockInRomList:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allow-unsignedapp="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, allowUnsginedApp:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1284
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "allow-unsignedinstallationpkg="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, allowUnsignedInstallationPkg:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1286
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "crossProfileWidgetProviders="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    iget-object v2, p0, crossProfileWidgetProviders:Ljava/util/List;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1288
    iget-object v2, p0, permittedAccessiblityServices:Ljava/util/List;

    if-eqz v2, :cond_283

    .line 1289
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "permittedAccessibilityServices="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    iget-object v2, p0, permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    :cond_283
    iget-object v2, p0, permittedInputMethods:Ljava/util/List;

    if-eqz v2, :cond_299

    .line 1293
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "permittedInputMethods="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    iget-object v2, p0, permittedInputMethods:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    :cond_299
    return-void
.end method

.method getUid()I
    .registers 2

    .prologue
    .line 665
    iget-object v0, p0, info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 3

    .prologue
    .line 668
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 922
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 925
    .local v3, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_45b

    if-ne v5, v10, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_45b

    .line 926
    :cond_15
    if-eq v5, v10, :cond_6

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    .line 929
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 930
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v6, "policies"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 931
    iget-object v6, p0, info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 932
    :cond_2d
    const-string/jumbo v6, "password-quality"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 933
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, passwordQuality:I

    goto :goto_6

    .line 935
    :cond_44
    const-string/jumbo v6, "min-password-length"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 936
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, minimumPasswordLength:I

    goto :goto_6

    .line 938
    :cond_5b
    const-string/jumbo v6, "password-history-length"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 939
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, passwordHistoryLength:I

    goto :goto_6

    .line 941
    :cond_72
    const-string/jumbo v6, "min-password-uppercase"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 942
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, minimumPasswordUpperCase:I

    goto/16 :goto_6

    .line 944
    :cond_8a
    const-string/jumbo v6, "min-password-lowercase"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 945
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, minimumPasswordLowerCase:I

    goto/16 :goto_6

    .line 947
    :cond_a2
    const-string/jumbo v6, "min-password-letters"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 948
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, minimumPasswordLetters:I

    goto/16 :goto_6

    .line 950
    :cond_ba
    const-string/jumbo v6, "min-password-numeric"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 951
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, minimumPasswordNumeric:I

    goto/16 :goto_6

    .line 953
    :cond_d2
    const-string/jumbo v6, "min-password-symbols"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    .line 954
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, minimumPasswordSymbols:I

    goto/16 :goto_6

    .line 956
    :cond_ea
    const-string/jumbo v6, "min-password-nonletter"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_102

    .line 957
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, minimumPasswordNonLetter:I

    goto/16 :goto_6

    .line 959
    :cond_102
    const-string/jumbo v6, "max-time-to-unlock"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11a

    .line 960
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, maximumTimeToUnlock:J

    goto/16 :goto_6

    .line 962
    :cond_11a
    const-string/jumbo v6, "max-failed-password-wipe"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_132

    .line 963
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, maximumFailedPasswordsForWipe:I

    goto/16 :goto_6

    .line 965
    :cond_132
    const-string/jumbo v6, "specifies-global-proxy"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14a

    .line 966
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, specifiesGlobalProxy:Z

    goto/16 :goto_6

    .line 968
    :cond_14a
    const-string/jumbo v6, "global-proxy-spec"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15e

    .line 969
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, globalProxySpec:Ljava/lang/String;

    goto/16 :goto_6

    .line 971
    :cond_15e
    const-string/jumbo v6, "global-proxy-exclusion-list"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_172

    .line 972
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, globalProxyExclusionList:Ljava/lang/String;

    goto/16 :goto_6

    .line 974
    :cond_172
    const-string/jumbo v6, "password-expiration-timeout"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18a

    .line 975
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, passwordExpirationTimeout:J

    goto/16 :goto_6

    .line 977
    :cond_18a
    const-string/jumbo v6, "password-expiration-date"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a2

    .line 978
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, passwordExpirationDate:J

    goto/16 :goto_6

    .line 980
    :cond_1a2
    const-string/jumbo v6, "encryption-requested"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ba

    .line 981
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, encryptionRequested:Z

    goto/16 :goto_6

    .line 983
    :cond_1ba
    const-string/jumbo v6, "disable-camera"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d2

    .line 984
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, disableCamera:Z

    goto/16 :goto_6

    .line 986
    :cond_1d2
    const-string/jumbo v6, "disable-caller-id"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ea

    .line 987
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, disableCallerId:Z

    goto/16 :goto_6

    .line 989
    :cond_1ea
    const-string/jumbo v6, "disable-bt-contacts-sharing"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_202

    .line 990
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, disableBluetoothContactSharing:Z

    goto/16 :goto_6

    .line 992
    :cond_202
    const-string/jumbo v6, "disable-screen-capture"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21a

    .line 993
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, disableScreenCapture:Z

    goto/16 :goto_6

    .line 995
    :cond_21a
    const-string/jumbo v6, "require_auto_time"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_232

    .line 996
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, requireAutoTime:Z

    goto/16 :goto_6

    .line 998
    :cond_232
    const-string/jumbo v6, "disable-keyguard-features"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24a

    .line 999
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, disabledKeyguardFeatures:I

    goto/16 :goto_6

    .line 1003
    :cond_24a
    const-string/jumbo v6, "password-recoverable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_262

    .line 1004
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, passwordRecoverable:Z

    goto/16 :goto_6

    .line 1007
    :cond_262
    const-string v6, "allow-storage-card"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_279

    .line 1008
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, allowStorageCard:Z

    goto/16 :goto_6

    .line 1011
    :cond_279
    const-string/jumbo v6, "simplepassword-enabled"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_291

    .line 1012
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, simplePasswordEnabled:Z

    goto/16 :goto_6

    .line 1015
    :cond_291
    const-string v6, "allow-wifi"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a8

    .line 1016
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, allowWifi:Z

    goto/16 :goto_6

    .line 1019
    :cond_2a8
    const-string v6, "allow-text-messaging"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2bf

    .line 1020
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, allowTextMessaging:Z

    goto/16 :goto_6

    .line 1023
    :cond_2bf
    const-string v6, "allow-popimap-email"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d6

    .line 1024
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, allowPOPIMAPEmail:Z

    goto/16 :goto_6

    .line 1027
    :cond_2d6
    const-string v6, "allow-browser"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2ed

    .line 1028
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, allowBrowser:Z

    goto/16 :goto_6

    .line 1031
    :cond_2ed
    const-string v6, "allow-internet-sharing"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_304

    .line 1032
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, allowInternetSharing:Z

    goto/16 :goto_6

    .line 1035
    :cond_304
    const-string v6, "allow-bluetooth-mode"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31b

    .line 1036
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, allowBluetoothMode:I

    goto/16 :goto_6

    .line 1039
    :cond_31b
    const-string v6, "allow-Desktop-Sync"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_332

    .line 1040
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, allowDesktopSync:Z

    goto/16 :goto_6

    .line 1043
    :cond_332
    const-string v6, "allow-IrDA"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_349

    .line 1044
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, allowIrDA:Z

    goto/16 :goto_6

    .line 1047
    :cond_349
    const-string/jumbo v6, "require-StorageCard-Encryption"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_361

    .line 1048
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, requireStorageCardEncryption:Z

    goto/16 :goto_6

    .line 1051
    :cond_361
    const-string v6, "allow-list-thirdparty"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38e

    .line 1052
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, allowThirdPartyList:Ljava/lang/String;

    .line 1053
    iget-object v6, p0, allowThirdPartyList:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .line 1054
    .local v0, "N":I
    if-lez v0, :cond_6

    .line 1055
    iget-object v6, p0, allowThirdPartyList:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, "arr":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1057
    .local v2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1058
    iput-object v2, p0, allowListRecord:Ljava/util/HashSet;

    goto/16 :goto_6

    .line 1061
    .end local v0    # "N":I
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_38e
    const-string v6, "block-list-InRom"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3bb

    .line 1062
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, blockInRomList:Ljava/lang/String;

    .line 1063
    iget-object v6, p0, blockInRomList:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    .line 1064
    .restart local v0    # "N":I
    if-lez v0, :cond_6

    .line 1065
    iget-object v6, p0, blockInRomList:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1066
    .restart local v1    # "arr":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1067
    .restart local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1068
    iput-object v2, p0, blockListRecordInRom:Ljava/util/HashSet;

    goto/16 :goto_6

    .line 1071
    .end local v0    # "N":I
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3bb
    const-string v6, "allow-unsignedapp"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d2

    .line 1072
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, allowUnsginedApp:Z

    goto/16 :goto_6

    .line 1074
    :cond_3d2
    const-string v6, "allow-unsignedinstallationpkg"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e9

    .line 1075
    const-string/jumbo v6, "value"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, allowUnsignedInstallationPkg:Z

    goto/16 :goto_6

    .line 1078
    :cond_3e9
    const-string/jumbo v6, "disable-account-management"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3fa

    .line 1079
    invoke-direct {p0, p1, v4}, readDisableAccountInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, accountTypesWithManagementDisabled:Ljava/util/Set;

    goto/16 :goto_6

    .line 1080
    :cond_3fa
    const-string/jumbo v6, "manage-trust-agent-features"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40b

    .line 1081
    invoke-direct {p0, p1, v4}, getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, trustAgentInfos:Ljava/util/HashMap;

    goto/16 :goto_6

    .line 1082
    :cond_40b
    const-string/jumbo v6, "cross-profile-widget-providers"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41c

    .line 1083
    invoke-direct {p0, p1, v4}, getCrossProfileWidgetProviders(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, crossProfileWidgetProviders:Ljava/util/List;

    goto/16 :goto_6

    .line 1084
    :cond_41c
    const-string/jumbo v6, "permitted-accessiblity-services"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42d

    .line 1085
    invoke-direct {p0, p1, v4}, readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, permittedAccessiblityServices:Ljava/util/List;

    goto/16 :goto_6

    .line 1086
    :cond_42d
    const-string/jumbo v6, "permitted-imes"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43e

    .line 1087
    invoke-direct {p0, p1, v4}, readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, permittedInputMethods:Ljava/util/List;

    goto/16 :goto_6

    .line 1089
    :cond_43e
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown admin tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 1093
    .end local v4    # "tag":Ljava/lang/String;
    :cond_45b
    return-void
.end method

.method writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "outerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 907
    if-nez p3, :cond_4

    .line 918
    :goto_3
    return-void

    .line 911
    :cond_4
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 912
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 913
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "item"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 914
    const-string/jumbo v2, "value"

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 915
    const-string/jumbo v2, "item"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    .line 917
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2a
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 16
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    const/4 v9, 0x0

    const-string/jumbo v10, "policies"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 674
    iget-object v9, p0, info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 675
    const/4 v9, 0x0

    const-string/jumbo v10, "policies"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 676
    iget v9, p0, passwordQuality:I

    if-eqz v9, :cond_148

    .line 677
    const/4 v9, 0x0

    const-string/jumbo v10, "password-quality"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 678
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, passwordQuality:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 679
    const/4 v9, 0x0

    const-string/jumbo v10, "password-quality"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 680
    iget v9, p0, minimumPasswordLength:I

    if-eqz v9, :cond_51

    .line 681
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-length"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 682
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, minimumPasswordLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 683
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-length"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 685
    :cond_51
    iget v9, p0, passwordHistoryLength:I

    if-eqz v9, :cond_70

    .line 686
    const/4 v9, 0x0

    const-string/jumbo v10, "password-history-length"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 687
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, passwordHistoryLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 688
    const/4 v9, 0x0

    const-string/jumbo v10, "password-history-length"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 690
    :cond_70
    iget v9, p0, minimumPasswordUpperCase:I

    if-eqz v9, :cond_8f

    .line 691
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-uppercase"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 692
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, minimumPasswordUpperCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 693
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-uppercase"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 695
    :cond_8f
    iget v9, p0, minimumPasswordLowerCase:I

    if-eqz v9, :cond_ae

    .line 696
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-lowercase"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 697
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, minimumPasswordLowerCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 698
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-lowercase"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 700
    :cond_ae
    iget v9, p0, minimumPasswordLetters:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_ce

    .line 701
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-letters"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 702
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, minimumPasswordLetters:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 703
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-letters"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 705
    :cond_ce
    iget v9, p0, minimumPasswordNumeric:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_ee

    .line 706
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-numeric"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 707
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, minimumPasswordNumeric:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 708
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-numeric"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 710
    :cond_ee
    iget v9, p0, minimumPasswordSymbols:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_10e

    .line 711
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-symbols"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, minimumPasswordSymbols:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-symbols"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    :cond_10e
    iget v9, p0, minimumPasswordNonLetter:I

    if-lez v9, :cond_12d

    .line 716
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-nonletter"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 717
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, minimumPasswordNonLetter:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 718
    const/4 v9, 0x0

    const-string/jumbo v10, "min-password-nonletter"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 721
    :cond_12d
    const/4 v9, 0x0

    const-string/jumbo v10, "password-recoverable"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 722
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, passwordRecoverable:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 723
    const/4 v9, 0x0

    const-string/jumbo v10, "password-recoverable"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 726
    :cond_148
    iget-wide v10, p0, maximumTimeToUnlock:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_16b

    .line 727
    const/4 v9, 0x0

    const-string/jumbo v10, "max-time-to-unlock"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 728
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-wide v12, p0, maximumTimeToUnlock:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 729
    const/4 v9, 0x0

    const-string/jumbo v10, "max-time-to-unlock"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 731
    :cond_16b
    iget v9, p0, maximumFailedPasswordsForWipe:I

    if-eqz v9, :cond_18a

    .line 732
    const/4 v9, 0x0

    const-string/jumbo v10, "max-failed-password-wipe"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 733
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, maximumFailedPasswordsForWipe:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 734
    const/4 v9, 0x0

    const-string/jumbo v10, "max-failed-password-wipe"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 736
    :cond_18a
    iget-boolean v9, p0, specifiesGlobalProxy:Z

    if-eqz v9, :cond_1df

    .line 737
    const/4 v9, 0x0

    const-string/jumbo v10, "specifies-global-proxy"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 738
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, specifiesGlobalProxy:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 739
    const/4 v9, 0x0

    const-string/jumbo v10, "specifies-global-proxy"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 740
    iget-object v9, p0, globalProxySpec:Ljava/lang/String;

    if-eqz v9, :cond_1c4

    .line 741
    const/4 v9, 0x0

    const-string/jumbo v10, "global-proxy-spec"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 742
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-object v11, p0, globalProxySpec:Ljava/lang/String;

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 743
    const/4 v9, 0x0

    const-string/jumbo v10, "global-proxy-spec"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 745
    :cond_1c4
    iget-object v9, p0, globalProxyExclusionList:Ljava/lang/String;

    if-eqz v9, :cond_1df

    .line 746
    const/4 v9, 0x0

    const-string/jumbo v10, "global-proxy-exclusion-list"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 747
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-object v11, p0, globalProxyExclusionList:Ljava/lang/String;

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 748
    const/4 v9, 0x0

    const-string/jumbo v10, "global-proxy-exclusion-list"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 751
    :cond_1df
    iget-wide v10, p0, passwordExpirationTimeout:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_202

    .line 752
    const/4 v9, 0x0

    const-string/jumbo v10, "password-expiration-timeout"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 753
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-wide v12, p0, passwordExpirationTimeout:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 754
    const/4 v9, 0x0

    const-string/jumbo v10, "password-expiration-timeout"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 756
    :cond_202
    iget-wide v10, p0, passwordExpirationDate:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_225

    .line 757
    const/4 v9, 0x0

    const-string/jumbo v10, "password-expiration-date"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 758
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-wide v12, p0, passwordExpirationDate:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 759
    const/4 v9, 0x0

    const-string/jumbo v10, "password-expiration-date"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    :cond_225
    iget-boolean v9, p0, encryptionRequested:Z

    if-eqz v9, :cond_244

    .line 762
    const/4 v9, 0x0

    const-string/jumbo v10, "encryption-requested"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 763
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, encryptionRequested:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 764
    const/4 v9, 0x0

    const-string/jumbo v10, "encryption-requested"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 766
    :cond_244
    iget-boolean v9, p0, disableCamera:Z

    if-eqz v9, :cond_263

    .line 767
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-camera"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 768
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, disableCamera:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 769
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-camera"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 771
    :cond_263
    iget-boolean v9, p0, disableCallerId:Z

    if-eqz v9, :cond_282

    .line 772
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-caller-id"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 773
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, disableCallerId:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 774
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-caller-id"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 776
    :cond_282
    iget-boolean v9, p0, disableBluetoothContactSharing:Z

    if-eqz v9, :cond_2a1

    .line 777
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-bt-contacts-sharing"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 778
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, disableBluetoothContactSharing:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 780
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-bt-contacts-sharing"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 782
    :cond_2a1
    iget-boolean v9, p0, disableScreenCapture:Z

    if-eqz v9, :cond_2c0

    .line 783
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-screen-capture"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 784
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, disableScreenCapture:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 785
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-screen-capture"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 787
    :cond_2c0
    iget-boolean v9, p0, requireAutoTime:Z

    if-eqz v9, :cond_2df

    .line 788
    const/4 v9, 0x0

    const-string/jumbo v10, "require_auto_time"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, requireAutoTime:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 790
    const/4 v9, 0x0

    const-string/jumbo v10, "require_auto_time"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 792
    :cond_2df
    iget v9, p0, disabledKeyguardFeatures:I

    if-eqz v9, :cond_2fe

    .line 793
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-keyguard-features"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 794
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, disabledKeyguardFeatures:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 795
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-keyguard-features"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 799
    :cond_2fe
    const/4 v9, 0x0

    const-string v10, "allow-storage-card"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 800
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, allowStorageCard:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    const/4 v9, 0x0

    const-string v10, "allow-storage-card"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 803
    const/4 v9, 0x0

    const-string/jumbo v10, "simplepassword-enabled"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 804
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, simplePasswordEnabled:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 805
    const/4 v9, 0x0

    const-string/jumbo v10, "simplepassword-enabled"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 807
    const/4 v9, 0x0

    const-string v10, "allow-wifi"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 808
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, allowWifi:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 809
    const/4 v9, 0x0

    const-string v10, "allow-wifi"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 811
    const/4 v9, 0x0

    const-string v10, "allow-text-messaging"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 812
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, allowTextMessaging:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 813
    const/4 v9, 0x0

    const-string v10, "allow-text-messaging"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 815
    const/4 v9, 0x0

    const-string v10, "allow-popimap-email"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 816
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, allowPOPIMAPEmail:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 817
    const/4 v9, 0x0

    const-string v10, "allow-popimap-email"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 819
    const/4 v9, 0x0

    const-string v10, "allow-browser"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 820
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, allowBrowser:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 821
    const/4 v9, 0x0

    const-string v10, "allow-browser"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 823
    const/4 v9, 0x0

    const-string v10, "allow-internet-sharing"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 824
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, allowInternetSharing:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    const/4 v9, 0x0

    const-string v10, "allow-internet-sharing"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 827
    const/4 v9, 0x0

    const-string v10, "allow-bluetooth-mode"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 828
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget v11, p0, allowBluetoothMode:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 829
    const/4 v9, 0x0

    const-string v10, "allow-bluetooth-mode"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 831
    const/4 v9, 0x0

    const-string v10, "allow-Desktop-Sync"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 832
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, allowDesktopSync:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 833
    const/4 v9, 0x0

    const-string v10, "allow-Desktop-Sync"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 835
    const/4 v9, 0x0

    const-string v10, "allow-IrDA"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 836
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, allowIrDA:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 837
    const/4 v9, 0x0

    const-string v10, "allow-IrDA"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 839
    const/4 v9, 0x0

    const-string/jumbo v10, "require-StorageCard-Encryption"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 840
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, requireStorageCardEncryption:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 841
    const/4 v9, 0x0

    const-string/jumbo v10, "require-StorageCard-Encryption"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 843
    const/4 v9, 0x0

    const-string v10, "allow-list-thirdparty"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 844
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-object v11, p0, allowThirdPartyList:Ljava/lang/String;

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 845
    const/4 v9, 0x0

    const-string v10, "allow-list-thirdparty"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 847
    const/4 v9, 0x0

    const-string v10, "block-list-InRom"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 848
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-object v11, p0, blockInRomList:Ljava/lang/String;

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 849
    const/4 v9, 0x0

    const-string v10, "block-list-InRom"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 850
    const/4 v9, 0x0

    const-string v10, "allow-unsignedapp"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 851
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, allowUnsginedApp:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    const/4 v9, 0x0

    const-string v10, "allow-unsignedapp"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    const/4 v9, 0x0

    const-string v10, "allow-unsignedinstallationpkg"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 855
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    iget-boolean v11, p0, allowUnsignedInstallationPkg:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 856
    const/4 v9, 0x0

    const-string v10, "allow-unsignedinstallationpkg"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 859
    iget-object v9, p0, accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4ad

    .line 860
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-account-management"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 861
    iget-object v9, p0, accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_486
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 862
    .local v0, "ac":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "account-type"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 863
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    invoke-interface {p1, v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 864
    const/4 v9, 0x0

    const-string v10, "account-type"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_486

    .line 866
    .end local v0    # "ac":Ljava/lang/String;
    :cond_4a6
    const/4 v9, 0x0

    const-string/jumbo v10, "disable-account-management"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 868
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4ad
    iget-object v9, p0, trustAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_519

    .line 869
    iget-object v9, p0, trustAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 870
    .local v7, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    const/4 v9, 0x0

    const-string/jumbo v10, "manage-trust-agent-features"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 871
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_4c6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_512

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 872
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .line 873
    .local v8, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    const/4 v9, 0x0

    const-string v10, "component"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 874
    const/4 v10, 0x0

    const-string/jumbo v11, "value"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {p1, v10, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    iget-object v9, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    if-eqz v9, :cond_502

    .line 876
    const/4 v9, 0x0

    const-string/jumbo v10, "trust-agent-component-options"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 878
    :try_start_4f6
    iget-object v9, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    invoke-virtual {v9, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_4fb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f6 .. :try_end_4fb} :catch_509

    .line 882
    :goto_4fb
    const/4 v9, 0x0

    const-string/jumbo v10, "trust-agent-component-options"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 884
    :cond_502
    const/4 v9, 0x0

    const-string v10, "component"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4c6

    .line 879
    :catch_509
    move-exception v1

    .line 880
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "Failed to save TrustAgent options"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4fb

    .line 886
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    .end local v8    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_512
    const/4 v9, 0x0

    const-string/jumbo v10, "manage-trust-agent-features"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    :cond_519
    iget-object v9, p0, crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v9, :cond_55c

    iget-object v9, p0, crossProfileWidgetProviders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_55c

    .line 889
    const/4 v9, 0x0

    const-string/jumbo v10, "cross-profile-widget-providers"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 890
    iget-object v9, p0, crossProfileWidgetProviders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    .line 891
    .local v6, "providerCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_533
    if-ge v3, v6, :cond_555

    .line 892
    iget-object v9, p0, crossProfileWidgetProviders:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 893
    .local v5, "provider":Ljava/lang/String;
    const/4 v9, 0x0

    const-string/jumbo v10, "provider"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    invoke-interface {p1, v9, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 895
    const/4 v9, 0x0

    const-string/jumbo v10, "provider"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 891
    add-int/lit8 v3, v3, 0x1

    goto :goto_533

    .line 897
    .end local v5    # "provider":Ljava/lang/String;
    :cond_555
    const/4 v9, 0x0

    const-string/jumbo v10, "cross-profile-widget-providers"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 899
    .end local v3    # "i":I
    .end local v6    # "providerCount":I
    :cond_55c
    const-string/jumbo v9, "permitted-accessiblity-services"

    iget-object v10, p0, permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {p0, p1, v9, v10}, writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 901
    const-string/jumbo v9, "permitted-imes"

    iget-object v10, p0, permittedInputMethods:Ljava/util/List;

    invoke-virtual {p0, p1, v9, v10}, writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 902
    return-void
.end method
