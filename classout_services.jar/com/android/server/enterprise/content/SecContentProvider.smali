.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field public static final ACTION_MDM_BROWSERPROVIDER_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed"

.field private static final ADVANCEDRESTRICTION:I = 0x1

.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATIONPERMISSIONCONTROL:I = 0x17

.field private static final AUDIT:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field private static final BLUETOOTH:I = 0x3

.field private static final BLUETOOTHUTILS:I = 0x4

.field private static final BROWSER:I = 0x5

.field private static final CERTIFICATE:I = 0x6

.field private static final CONTAINERAPPLICATION:I = 0x7

.field private static final DATETIME:I = 0x18

.field private static final DEVICESETTIGNS:I = 0x8

.field private static final DLP:I = 0x1b

.field private static final ENTERPRISEKNOXMANAGER:I = 0x9

.field public static final EXTRA_API_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed.api"

.field private static final FIREWALL:I = 0xa

.field private static final KNOXCONFIGURATIONTYPE:I = 0xb

.field private static final LOCATION:I = 0xc

.field private static final PASSWORD1:I = 0xd

.field private static final PASSWORD2:I = 0xe

.field public static final PROVIDER_ADMINREMOVED:Ljava/lang/String; = "ADMIN_REMOVED"

.field public static final PROVIDER_AUDITLOGPOLICY_AUDITLOGENABLED:Ljava/lang/String; = "AuditLog/isAuditLogEnabled"

.field public static final PROVIDER_AUDITLOGPOLICY_AUTOCOMPLETE:Ljava/lang/String; = "AuditLog/AUTO_COMPLETING_DATA"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENPOPUP:Ljava/lang/String; = "AuditLog/OPEN_POPUP_URL"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENURL:Ljava/lang/String; = "AuditLog/OPEN_URL"

.field public static final PROVIDER_BROWSERPOLICY_AUTOFILL:Ljava/lang/String; = "BrowserPolicy/getAutoFillSetting"

.field public static final PROVIDER_BROWSERPOLICY_COOKIES:Ljava/lang/String; = "BrowserPolicy/getCookiesSetting"

.field public static final PROVIDER_BROWSERPOLICY_HTTPPROXY:Ljava/lang/String; = "BrowserPolicy/getHttpProxy"

.field public static final PROVIDER_BROWSERPOLICY_JAVASCRIPT:Ljava/lang/String; = "BrowserPolicy/getJavaScriptSetting"

.field public static final PROVIDER_BROWSERPOLICY_POPUPS:Ljava/lang/String; = "BrowserPolicy/getPopupsSetting"

.field public static final PROVIDER_CERTIFICATEPOLICY_CERTIFICATE_REMOVED:Ljava/lang/String; = "CertificatePolicy/certificateRemoved"

.field public static final PROVIDER_CERTIFICATEPOLICY_NOTIFY:Ljava/lang/String; = "CertificatePolicy/notifyCertificateFailure"

.field public static final PROVIDER_FIREWALLPOLICY_SAVEURLBLOCKEDREPORT:Ljava/lang/String; = "FirewallPolicy/saveURLBlockedReport"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterEnabled"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERLIST:Ljava/lang/String; = "FirewallPolicy/getURLFilterList"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERREPORTENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterReportEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_AUTHENTICATION:Ljava/lang/String; = "SmartCardBrowserPolicy/isAuthenticationEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE:Ljava/lang/String; = "SmartCardBrowserPolicy/getClientCertificateAlias"

.field private static final RESTRICTION1:I = 0xf

.field private static final RESTRICTION2:I = 0x10

.field private static final RESTRICTION3:I = 0x11

.field private static final RESTRICTION4:I = 0x12

.field private static final ROAMING:I = 0x13

.field private static final SEAMS:I = 0x1a

.field private static final SECURITY:I = 0x14

.field private static final SMARTCARDBROWSER:I = 0x16

.field private static final SMARTCARDEMAIL:I = 0x15

.field private static final SPDCONTROL:I = 0x19

.field public static final TAG:Ljava/lang/String; = "SecContentProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field mEdmFirewallPolicy:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 150
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    .line 151
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AdvancedRestrictionPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AuditLog"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothUtils"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BrowserPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "CertificatePolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ContainerApplicationPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DeviceSettingsPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "FirewallPolicy"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "KnoxConfigurationType"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 162
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "LocationPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy1"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy2"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy1"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy2"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy3"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy4"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RoamingPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SecurityPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardEmailPolicy"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardBrowserPolicy"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ApplicationPermissionControlPolicy"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DateTimePolicy"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SPDControlPolicy"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SeamsPolicy"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DlpPolicy"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 2865
    const/4 v0, 0x0

    .line 2866
    .local v0, "callerName":Ljava/lang/String;
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 2867
    .local v1, "mPackageManagerService":Lcom/android/server/pm/PackageManagerService;
    if-eqz v1, :cond_10

    .line 2868
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2870
    :cond_10
    if-nez v0, :cond_15

    const-string/jumbo v0, "fail to get caller name."

    .end local v0    # "callerName":Ljava/lang/String;
    :cond_15
    return-object v0
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.sec.knox.provider/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2894
    .local v0, "content_uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2895
    .local v2, "token":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 2896
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2897
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2876
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2882
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2751
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2752
    .local v11, "callingUid":I
    const-string v2, "SecContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insert(), uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    const-string v2, "SecContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, getCallerName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    sget-object v2, URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_1ec

    .line 2859
    :cond_4e
    :goto_4e
    :sswitch_4e
    const/4 v2, 0x0

    return-object v2

    .line 2767
    :sswitch_50
    const-string v2, "browser_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 2770
    .local v13, "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-eqz v13, :cond_4e

    .line 2771
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2772
    .local v10, "api":Ljava/lang/String;
    if-eqz v10, :cond_4e

    const-string/jumbo v2, "saveURLBlockedReport"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2773
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReportEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto :goto_4e

    .line 2783
    .end local v10    # "api":Ljava/lang/String;
    .end local v13    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    :sswitch_7f
    const-string v2, "certificate_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 2786
    .local v14, "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v14, :cond_4e

    .line 2787
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2788
    .restart local v10    # "api":Ljava/lang/String;
    const-string/jumbo v2, "fail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 2789
    .local v12, "fail":Ljava/lang/Integer;
    if-eqz v10, :cond_4e

    const-string/jumbo v2, "notifyCertificateFailure"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    if-eqz v12, :cond_4e

    .line 2790
    const-string/jumbo v2, "module"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4e

    .line 2802
    .end local v10    # "api":Ljava/lang/String;
    .end local v12    # "fail":Ljava/lang/Integer;
    .end local v14    # "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    :sswitch_b9
    const-string v2, "auditlog"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 2805
    .local v1, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v1, :cond_4e

    .line 2807
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2808
    .restart local v10    # "api":Ljava/lang/String;
    if-eqz v10, :cond_131

    const-string v2, "AuditLoggerAsUser"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 2809
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "severity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "outcome"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string/jumbo v6, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "component"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "userid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4e

    .line 2819
    :cond_131
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "severity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "outcome"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string/jumbo v6, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "component"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 2834
    .end local v1    # "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    .end local v10    # "api":Ljava/lang/String;
    :sswitch_180
    const-string/jumbo v2, "password_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 2837
    .local v15, "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v15, :cond_4e

    .line 2838
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2839
    .restart local v10    # "api":Ljava/lang/String;
    if-eqz v10, :cond_4e

    const-string/jumbo v2, "setPwdChangeRequested"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2840
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "flag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Landroid/app/enterprise/ContextInfo;I)Z

    goto/16 :goto_4e

    .line 2846
    .end local v10    # "api":Ljava/lang/String;
    .end local v15    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    :sswitch_1b5
    const-string/jumbo v2, "security_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 2848
    .local v16, "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    if-eqz v16, :cond_4e

    .line 2849
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2850
    .restart local v10    # "api":Ljava/lang/String;
    if-eqz v10, :cond_4e

    const-string/jumbo v2, "setDodBannerVisibleStatus"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2851
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "isVisible"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Landroid/app/enterprise/ContextInfo;Z)Z

    goto/16 :goto_4e

    .line 2759
    :sswitch_data_1ec
    .sparse-switch
        0x2 -> :sswitch_b9
        0x5 -> :sswitch_4e
        0x6 -> :sswitch_7f
        0xa -> :sswitch_50
        0xe -> :sswitch_180
        0x14 -> :sswitch_1b5
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 77
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 223
    .local v8, "callingUid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 230
    .local v7, "userId":I
    const/16 v61, 0x0

    .line 233
    .local v61, "showMsg":Z
    const/16 v52, 0x0

    .line 235
    .local v52, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "query(), uri = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v69, URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v69

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v69

    move/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v69, " selection = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "called from "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, getCallerName(I)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v5, URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_2e8c

    .line 2745
    :cond_6e
    :goto_6e
    :pswitch_6e
    const/4 v5, 0x0

    :goto_6f
    return-object v5

    .line 244
    :pswitch_70
    const-string/jumbo v5, "restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 246
    .local v42, "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v42, :cond_6e

    if-eqz p3, :cond_6e

    .line 247
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2ec6

    :cond_85
    :goto_85
    packed-switch v5, :pswitch_data_2f10

    .line 503
    const/4 v5, 0x0

    goto :goto_6f

    .line 247
    :sswitch_8a
    const-string v6, "checkPackageSource"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v5, 0x0

    goto :goto_85

    :sswitch_96
    const-string/jumbo v6, "isActivationLockAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v5, 0x1

    goto :goto_85

    :sswitch_a3
    const-string/jumbo v6, "isAirplaneModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v5, 0x2

    goto :goto_85

    :sswitch_b0
    const-string/jumbo v6, "isAndroidBeamAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v5, 0x3

    goto :goto_85

    :sswitch_bd
    const-string/jumbo v6, "isAudioRecordAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v5, 0x4

    goto :goto_85

    :sswitch_ca
    const-string/jumbo v6, "isBackgroundDataEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v5, 0x5

    goto :goto_85

    :sswitch_d7
    const-string/jumbo v6, "isBackgroundProcessLimitEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v5, 0x6

    goto :goto_85

    :sswitch_e4
    const-string/jumbo v6, "isBackupAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/4 v5, 0x7

    goto :goto_85

    :sswitch_f1
    const-string/jumbo v6, "isBluetoothTetheringEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/16 v5, 0x8

    goto :goto_85

    :sswitch_ff
    const-string/jumbo v6, "isCameraEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/16 v5, 0x9

    goto/16 :goto_85

    :sswitch_10e
    const-string/jumbo v6, "isCellularDataAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/16 v5, 0xa

    goto/16 :goto_85

    :sswitch_11d
    const-string/jumbo v6, "isClipboardAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/16 v5, 0xb

    goto/16 :goto_85

    :sswitch_12c
    const-string/jumbo v6, "isClipboardAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/16 v5, 0xc

    goto/16 :goto_85

    :sswitch_13b
    const-string/jumbo v6, "isClipboardShareAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/16 v5, 0xd

    goto/16 :goto_85

    :sswitch_14a
    const-string/jumbo v6, "isClipboardShareAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/16 v5, 0xe

    goto/16 :goto_85

    :sswitch_159
    const-string/jumbo v6, "isDeveloperModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/16 v5, 0xf

    goto/16 :goto_85

    :sswitch_168
    const-string/jumbo v6, "isFactoryResetAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/16 v5, 0x10

    goto/16 :goto_85

    :sswitch_177
    const-string/jumbo v6, "isFastEncryptionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    const/16 v5, 0x11

    goto/16 :goto_85

    .line 249
    :pswitch_186
    if-eqz p4, :cond_18e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_191

    .line 250
    :cond_18e
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 252
    :cond_191
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v7, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v57

    .line 255
    .local v57, "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v69, "checkPackageSource"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 258
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1b8
    move-object/from16 v5, v52

    .line 506
    goto/16 :goto_6f

    .line 263
    .end local v57    # "result":Z
    :pswitch_1bc
    if-eqz p4, :cond_1c4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1c7

    .line 264
    :cond_1c4
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 266
    :cond_1c7
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isActivationLockAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 270
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isActivationLockAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 273
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1b8

    .line 279
    .end local v57    # "result":Z
    :pswitch_1f9
    const/4 v10, 0x0

    .line 280
    .local v10, "arg":Z
    if-eqz p4, :cond_209

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_209

    .line 281
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 282
    :cond_209
    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v57

    .line 285
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isAirplaneModeAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 288
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1b8

    .line 294
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_22f
    const/4 v10, 0x0

    .line 295
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_23f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_23f

    .line 296
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 297
    :cond_23f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 300
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isAndroidBeamAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 303
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 309
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_26b
    const/4 v10, 0x0

    .line 310
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_27b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_27b

    .line 311
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 312
    :cond_27b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 315
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isAudioRecordAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 318
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 324
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_2a7
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 327
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isBackgroundDataEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 330
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 336
    .end local v57    # "result":Z
    :pswitch_2d3
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 339
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isBackgroundProcessLimitEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 342
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 348
    .end local v57    # "result":Z
    :pswitch_2ff
    if-eqz p4, :cond_307

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_30a

    .line 349
    :cond_307
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 350
    :cond_30a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 354
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isBackupAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 357
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 363
    .end local v57    # "result":Z
    :pswitch_33d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 366
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isBluetoothTetheringEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 369
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 375
    .end local v57    # "result":Z
    :pswitch_369
    if-eqz p4, :cond_371

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_374

    .line 376
    :cond_371
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 377
    :cond_374
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 380
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isCameraEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 383
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 389
    .end local v57    # "result":Z
    :pswitch_3a7
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 392
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isCellularDataAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 395
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 401
    .end local v57    # "result":Z
    :pswitch_3d3
    if-eqz p4, :cond_3db

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_408

    .line 403
    :cond_3db
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 410
    .restart local v57    # "result":Z
    :goto_3e7
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isClipboardAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 413
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 405
    .end local v57    # "result":Z
    :cond_408
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .restart local v57    # "result":Z
    goto :goto_3e7

    .line 419
    .end local v57    # "result":Z
    :pswitch_41b
    if-eqz p4, :cond_424

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_427

    .line 420
    :cond_424
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 421
    :cond_427
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v57

    .line 422
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "RESTRICTIONPOLICY_CLIPBOARDALLOWEDASUSER_METHOD return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isClipboardAllowedAsUser"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 427
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 434
    .end local v57    # "result":Z
    :pswitch_478
    if-eqz p4, :cond_480

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_483

    .line 435
    :cond_480
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 436
    :cond_483
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v57

    .line 439
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isClipboardShareAllowedAsUser"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 442
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 448
    .end local v57    # "result":Z
    :pswitch_4b1
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 451
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isClipboardShareAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 454
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 460
    .end local v57    # "result":Z
    :pswitch_4dd
    const/4 v10, 0x0

    .line 461
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_4ed

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_4ed

    .line 462
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 463
    :cond_4ed
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 466
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isDeveloperModeAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 469
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v52

    .line 474
    goto/16 :goto_6f

    .line 476
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_51b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 479
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isFactoryResetAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 482
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 488
    .end local v57    # "result":Z
    :pswitch_547
    if-eqz p4, :cond_553

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_553

    .line 489
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 491
    :cond_553
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFastEncryptionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 492
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isFastEncryptionAllowed return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isFastEncryptionAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 497
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 510
    .end local v42    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v57    # "result":Z
    :pswitch_5a3
    const-string/jumbo v5, "restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 512
    .restart local v42    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v42, :cond_6e

    if-eqz p3, :cond_6e

    .line 513
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2f38

    :cond_5b8
    :goto_5b8
    packed-switch v5, :pswitch_data_2f7e

    .line 784
    const-string v5, "SecContentProvider"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 513
    :sswitch_5c6
    const-string/jumbo v6, "isFirmwareAutoUpdateAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/4 v5, 0x0

    goto :goto_5b8

    :sswitch_5d3
    const-string/jumbo v6, "isFirmwareRecoveryAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/4 v5, 0x1

    goto :goto_5b8

    :sswitch_5e0
    const-string/jumbo v6, "isGoogleAccountsAutoSyncAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/4 v5, 0x2

    goto :goto_5b8

    :sswitch_5ed
    const-string/jumbo v6, "isGoogleCrashReportedAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/4 v5, 0x3

    goto :goto_5b8

    :sswitch_5fa
    const-string/jumbo v6, "isHeadPhoneEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/4 v5, 0x4

    goto :goto_5b8

    :sswitch_607
    const-string/jumbo v6, "isHomeKeyEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/4 v5, 0x5

    goto :goto_5b8

    :sswitch_614
    const-string/jumbo v6, "isKillingActivitiesOnLeaveAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/4 v5, 0x6

    goto :goto_5b8

    :sswitch_621
    const-string/jumbo v6, "isLockScreenEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/4 v5, 0x7

    goto :goto_5b8

    :sswitch_62e
    const-string/jumbo v6, "isLockScreenViewAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/16 v5, 0x8

    goto/16 :goto_5b8

    :sswitch_63d
    const-string/jumbo v6, "isMicrophoneEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/16 v5, 0x9

    goto/16 :goto_5b8

    :sswitch_64c
    const-string/jumbo v6, "isMicrophoneEnabledAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/16 v5, 0xa

    goto/16 :goto_5b8

    :sswitch_65b
    const-string/jumbo v6, "isMockLocationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/16 v5, 0xb

    goto/16 :goto_5b8

    :sswitch_66a
    const-string/jumbo v6, "isNewAdminInstallationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/16 v5, 0xc

    goto/16 :goto_5b8

    :sswitch_679
    const-string/jumbo v6, "isNFCEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/16 v5, 0xd

    goto/16 :goto_5b8

    :sswitch_688
    const-string/jumbo v6, "isNFCEnabledWithMsg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/16 v5, 0xe

    goto/16 :goto_5b8

    :sswitch_697
    const-string/jumbo v6, "isNonMarketAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/16 v5, 0xf

    goto/16 :goto_5b8

    :sswitch_6a6
    const-string/jumbo v6, "isNonTrustedAppInstallBlocked"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b8

    const/16 v5, 0x10

    goto/16 :goto_5b8

    .line 515
    :pswitch_6b5
    if-eqz p4, :cond_6bd

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6c0

    .line 516
    :cond_6bd
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 518
    :cond_6c0
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 522
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isFirmwareAutoUpdateAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 525
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_6f1
    move-object/from16 v5, v52

    .line 788
    goto/16 :goto_6f

    .line 531
    .end local v57    # "result":Z
    :pswitch_6f5
    if-eqz p4, :cond_6fd

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_700

    .line 532
    :cond_6fd
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 534
    :cond_700
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 538
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isFirmwareRecoveryAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 541
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6f1

    .line 547
    .end local v57    # "result":Z
    :pswitch_732
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 550
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isGoogleAccountsAutoSyncAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 553
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6f1

    .line 559
    .end local v57    # "result":Z
    :pswitch_75d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 562
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isGoogleCrashReportedAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 565
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 571
    .end local v57    # "result":Z
    :pswitch_789
    if-eqz p4, :cond_791

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_794

    .line 572
    :cond_791
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 573
    :cond_794
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 577
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isHeadPhoneEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 580
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 586
    .end local v57    # "result":Z
    :pswitch_7c7
    const/4 v10, 0x0

    .line 587
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_7d7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_7d7

    .line 588
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 589
    :cond_7d7
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 592
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isHomeKeyEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 595
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 601
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_803
    if-nez p4, :cond_85a

    .line 602
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 603
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isKillingActivitiesOnLeaveAllowed return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v69, " callingUid : "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :goto_839
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isKillingActivitiesOnLeaveAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 613
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 606
    .end local v57    # "result":Z
    :cond_85a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 607
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isKillingActivitiesOnLeaveAllowed return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v69, " userid : "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v69, 0x0

    aget-object v69, p4, v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    move/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_839

    .line 619
    .end local v57    # "result":Z
    :pswitch_8a0
    if-eqz p4, :cond_8a8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_8ab

    .line 620
    :cond_8a8
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 621
    :cond_8ab
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 625
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isLockScreenEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 628
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 634
    .end local v57    # "result":Z
    :pswitch_8de
    if-eqz p4, :cond_8e7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_8ea

    .line 635
    :cond_8e7
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 636
    :cond_8ea
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_948

    .line 637
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v57

    .line 644
    .restart local v57    # "result":Z
    :goto_90a
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isLockScreenViewAllowed return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isLockScreenViewAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 649
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 641
    .end local v57    # "result":Z
    :cond_948
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v57

    .restart local v57    # "result":Z
    goto :goto_90a

    .line 655
    .end local v57    # "result":Z
    :pswitch_95b
    if-eqz p4, :cond_964

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_967

    .line 656
    :cond_964
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 657
    :cond_967
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9c5

    .line 658
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 665
    .restart local v57    # "result":Z
    :goto_987
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isMicrophoneEnabled return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isMicrophoneEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 670
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 662
    .end local v57    # "result":Z
    :cond_9c5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .restart local v57    # "result":Z
    goto :goto_987

    .line 676
    .end local v57    # "result":Z
    :pswitch_9d8
    if-eqz p4, :cond_9e1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_9e4

    .line 677
    :cond_9e1
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 678
    :cond_9e4
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v57

    .line 680
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isMicrophoneEnabledAsUser return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isMicrophoneEnabledAsUser"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 685
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 692
    .end local v57    # "result":Z
    :pswitch_a36
    if-nez p4, :cond_a9b

    .line 693
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 694
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "callingUid = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_a5d
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isMockLocationEnabled return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isMockLocationEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 705
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 697
    .end local v57    # "result":Z
    :cond_a9b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 698
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "callingUid = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v69, 0x0

    aget-object v69, p4, v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    move/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5d

    .line 711
    .end local v57    # "result":Z
    :pswitch_ad2
    if-eqz p4, :cond_ada

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_add

    .line 712
    :cond_ada
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 713
    :cond_add
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 717
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isNewAdminInstallationEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 720
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 726
    .end local v57    # "result":Z
    :pswitch_b10
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v57

    .line 729
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isNFCEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 732
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 738
    .end local v57    # "result":Z
    :pswitch_b35
    if-eqz p4, :cond_b3e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_b69

    .line 739
    :cond_b3e
    const/16 v61, 0x0

    .line 743
    :goto_b40
    move-object/from16 v0, v42

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v57

    .line 746
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isNFCEnabledWithMsg"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 749
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 741
    .end local v57    # "result":Z
    :cond_b69
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v61

    goto :goto_b40

    .line 755
    :pswitch_b71
    if-eqz p4, :cond_ba6

    .line 756
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 763
    .restart local v57    # "result":Z
    :goto_b85
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isNonMarketAppAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 766
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 759
    .end local v57    # "result":Z
    :cond_ba6
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .restart local v57    # "result":Z
    goto :goto_b85

    .line 772
    .end local v57    # "result":Z
    :pswitch_bb2
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlocked(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 775
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isNonTrustedAppInstallBlocked"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 778
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6f1

    .line 792
    .end local v42    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v57    # "result":Z
    :pswitch_bde
    const-string/jumbo v5, "restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 794
    .restart local v42    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v42, :cond_6e

    if-eqz p3, :cond_6e

    .line 795
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2fa4

    :cond_bf3
    :goto_bf3
    packed-switch v5, :pswitch_data_2fe6

    .line 1039
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 795
    :sswitch_bf9
    const-string/jumbo v6, "isSettingsChangesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/4 v5, 0x0

    goto :goto_bf3

    :sswitch_c06
    const-string/jumbo v6, "isShareListAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/4 v5, 0x1

    goto :goto_bf3

    :sswitch_c13
    const-string/jumbo v6, "isOdeTrustedBootVerificationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/4 v5, 0x2

    goto :goto_bf3

    :sswitch_c20
    const-string/jumbo v6, "isOTAUpgradeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/4 v5, 0x3

    goto :goto_bf3

    :sswitch_c2d
    const-string/jumbo v6, "isPowerOffAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/4 v5, 0x4

    goto :goto_bf3

    :sswitch_c3a
    const-string/jumbo v6, "isSafeModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/4 v5, 0x5

    goto :goto_bf3

    :sswitch_c47
    const-string/jumbo v6, "isSBeamAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/4 v5, 0x6

    goto :goto_bf3

    :sswitch_c54
    const-string/jumbo v6, "isScreenCaptureEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/4 v5, 0x7

    goto :goto_bf3

    :sswitch_c61
    const-string/jumbo v6, "isSdCardEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/16 v5, 0x8

    goto :goto_bf3

    :sswitch_c6f
    const-string/jumbo v6, "isSDCardMoveAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/16 v5, 0x9

    goto/16 :goto_bf3

    :sswitch_c7e
    const-string/jumbo v6, "isScreenPinningAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/16 v5, 0xa

    goto/16 :goto_bf3

    :sswitch_c8d
    const-string/jumbo v6, "isSmartClipModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/16 v5, 0xb

    goto/16 :goto_bf3

    :sswitch_c9c
    const-string/jumbo v6, "isStatusBarExpansionallowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/16 v5, 0xc

    goto/16 :goto_bf3

    :sswitch_cab
    const-string/jumbo v6, "isStopSystemAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/16 v5, 0xd

    goto/16 :goto_bf3

    :sswitch_cba
    const-string/jumbo v6, "isSVoiceAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/16 v5, 0xe

    goto/16 :goto_bf3

    :sswitch_cc9
    const-string/jumbo v6, "isUsbDebuggingEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf3

    const/16 v5, 0xf

    goto/16 :goto_bf3

    .line 797
    :pswitch_cd8
    if-eqz p4, :cond_ce1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_ce4

    .line 798
    :cond_ce1
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 799
    :cond_ce4
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d27

    .line 800
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 809
    .restart local v57    # "result":Z
    :goto_d04
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSettingsChangesAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 812
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_d23
    move-object/from16 v5, v52

    .line 1042
    goto/16 :goto_6f

    .line 804
    .end local v57    # "result":Z
    :cond_d27
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .restart local v57    # "result":Z
    goto :goto_d04

    .line 818
    .end local v57    # "result":Z
    :pswitch_d3a
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d73

    .line 819
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 825
    .restart local v57    # "result":Z
    :goto_d53
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isShareListAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 828
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_d23

    .line 821
    .end local v57    # "result":Z
    :cond_d73
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .restart local v57    # "result":Z
    goto :goto_d53

    .line 834
    .end local v57    # "result":Z
    :pswitch_d80
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 837
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isOdeTrustedBootVerificationEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 840
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 846
    .end local v57    # "result":Z
    :pswitch_dac
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 849
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isOTAUpgradeAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 852
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v52

    .line 857
    goto/16 :goto_6f

    .line 859
    .end local v57    # "result":Z
    :pswitch_dda
    const/4 v10, 0x0

    .line 860
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_dea

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_dea

    .line 861
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 863
    :cond_dea
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 866
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isPowerOffAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 869
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 875
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_e16
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 878
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSafeModeAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 881
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 887
    .end local v57    # "result":Z
    :pswitch_e42
    const/4 v10, 0x0

    .line 888
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_e52

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_e52

    .line 889
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 890
    :cond_e52
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 893
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSBeamAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 896
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 902
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_e7e
    if-eqz p4, :cond_e86

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e89

    .line 903
    :cond_e86
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 904
    :cond_e89
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 908
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isScreenCaptureEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 911
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 917
    .end local v57    # "result":Z
    :pswitch_ebc
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 920
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSdCardEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 923
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 929
    .end local v57    # "result":Z
    :pswitch_ee8
    if-eqz p4, :cond_ef0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_ef3

    .line 930
    :cond_ef0
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 931
    :cond_ef3
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 935
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSDCardMoveAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 938
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 944
    .end local v57    # "result":Z
    :pswitch_f26
    const/4 v10, 0x0

    .line 945
    .restart local v10    # "arg":Z
    move/from16 v66, v7

    .line 946
    .local v66, "user":I
    if-eqz p4, :cond_f38

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_f38

    .line 947
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 949
    :cond_f38
    if-eqz p4, :cond_f48

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f48

    .line 950
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v66

    .line 952
    :cond_f48
    move-object/from16 v0, v42

    move/from16 v1, v66

    invoke-virtual {v0, v10, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result v57

    .line 955
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isScreenPinningAllowedAsUser"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 958
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 964
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    .end local v66    # "user":I
    :pswitch_f71
    const/4 v10, 0x0

    .line 965
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_f81

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_f81

    .line 966
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 967
    :cond_f81
    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v57

    .line 970
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSmartClipModeAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 973
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 979
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_fa8
    const/4 v10, 0x0

    .line 980
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_fb8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_fb8

    .line 981
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 982
    :cond_fb8
    move-object/from16 v0, v42

    invoke-virtual {v0, v10, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v57

    .line 985
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isStatusBarExpansionallowedAsUser"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 988
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 994
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_fdf
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 997
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isStopSystemAppAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1000
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 1006
    .end local v57    # "result":Z
    :pswitch_100b
    const/4 v10, 0x0

    .line 1007
    .restart local v10    # "arg":Z
    move/from16 v64, v8

    .line 1008
    .local v64, "uid":I
    if-eqz p4, :cond_1077

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1077

    .line 1009
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1015
    :cond_101e
    :goto_101e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v64

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 1016
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isSVoiceAllowed result = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v69, " uid = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v64

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSVoiceAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1021
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 1011
    .end local v57    # "result":Z
    :cond_1077
    if-eqz p4, :cond_101e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_101e

    .line 1012
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1013
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v64

    goto :goto_101e

    .line 1027
    .end local v10    # "arg":Z
    .end local v64    # "uid":I
    :pswitch_108f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1030
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isUsbDebuggingEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1033
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_d23

    .line 1046
    .end local v42    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v57    # "result":Z
    :pswitch_10bb
    const-string/jumbo v5, "restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1048
    .restart local v42    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v42, :cond_6e

    if-eqz p3, :cond_6e

    .line 1049
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_300a

    :cond_10d0
    :goto_10d0
    packed-switch v5, :pswitch_data_304c

    .line 1279
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1049
    :sswitch_10d6
    const-string/jumbo v6, "isUsbHostStorageAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/4 v5, 0x0

    goto :goto_10d0

    :sswitch_10e3
    const-string/jumbo v6, "isUsbMassStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/4 v5, 0x1

    goto :goto_10d0

    :sswitch_10f0
    const-string/jumbo v6, "isUsbMediaPlayerAvailable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/4 v5, 0x2

    goto :goto_10d0

    :sswitch_10fd
    const-string/jumbo v6, "isUsbTetheringEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/4 v5, 0x3

    goto :goto_10d0

    :sswitch_110a
    const-string/jumbo v6, "isUserMobileDataLimitAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/4 v5, 0x4

    goto :goto_10d0

    :sswitch_1117
    const-string/jumbo v6, "isUseSecureKeypadEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/4 v5, 0x5

    goto :goto_10d0

    :sswitch_1124
    const-string/jumbo v6, "isVideoRecordAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/4 v5, 0x6

    goto :goto_10d0

    :sswitch_1131
    const-string/jumbo v6, "isVpnAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/4 v5, 0x7

    goto :goto_10d0

    :sswitch_113e
    const-string/jumbo v6, "isWallpaperChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/16 v5, 0x8

    goto :goto_10d0

    :sswitch_114c
    const-string/jumbo v6, "isWifiDirectAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/16 v5, 0x9

    goto/16 :goto_10d0

    :sswitch_115b
    const-string/jumbo v6, "isWifiTetheringEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/16 v5, 0xa

    goto/16 :goto_10d0

    :sswitch_116a
    const-string/jumbo v6, "isSDCardWriteAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/16 v5, 0xb

    goto/16 :goto_10d0

    :sswitch_1179
    const-string/jumbo v6, "isWifiEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/16 v5, 0xc

    goto/16 :goto_10d0

    :sswitch_1188
    const-string/jumbo v6, "isScreenCaptureEnabledInternal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/16 v5, 0xd

    goto/16 :goto_10d0

    :sswitch_1197
    const-string/jumbo v6, "isFotaVersionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/16 v5, 0xe

    goto/16 :goto_10d0

    :sswitch_11a6
    const-string/jumbo v6, "isGearPolicyEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d0

    const/16 v5, 0xf

    goto/16 :goto_10d0

    .line 1051
    :pswitch_11b5
    const/4 v10, 0x0

    .line 1052
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_11c5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_11c5

    .line 1053
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1054
    :cond_11c5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 1058
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isUsbHostStorageAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1061
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v10    # "arg":Z
    :goto_11ef
    move-object/from16 v5, v52

    .line 1282
    goto/16 :goto_6f

    .line 1067
    .end local v57    # "result":Z
    :pswitch_11f3
    if-eqz p4, :cond_11fb

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_11fe

    .line 1068
    :cond_11fb
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1069
    :cond_11fe
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMassStorageEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 1073
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isUsbMassStorageEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1076
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_11ef

    .line 1082
    .end local v57    # "result":Z
    :pswitch_1230
    if-eqz p4, :cond_1238

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_123b

    .line 1083
    :cond_1238
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1084
    :cond_123b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 1088
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isUsbMediaPlayerAvailable"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1091
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_11ef

    .line 1097
    .end local v57    # "result":Z
    :pswitch_126d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1101
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isUsbTetheringEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1104
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1110
    .end local v57    # "result":Z
    :pswitch_1299
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1114
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isUserMobileDataLimitAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1117
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1123
    .end local v57    # "result":Z
    :pswitch_12c5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1127
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isUseSecureKeypadEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1130
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1136
    .end local v57    # "result":Z
    :pswitch_12f1
    const/4 v10, 0x0

    .line 1137
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_1301

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1301

    .line 1138
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1139
    :cond_1301
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 1143
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isVideoRecordAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1146
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1152
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_132d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1156
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isVpnAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1159
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1165
    .end local v57    # "result":Z
    :pswitch_1359
    const/4 v10, 0x0

    .line 1166
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_1369

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1369

    .line 1167
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1168
    :cond_1369
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 1172
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isWallpaperChangeAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1175
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1181
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_1395
    const/4 v10, 0x0

    .line 1182
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_13a5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_13a5

    .line 1183
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1184
    :cond_13a5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 1188
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isWifiDirectAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1191
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1197
    .end local v10    # "arg":Z
    .end local v57    # "result":Z
    :pswitch_13d1
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1201
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isWifiTetheringEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1204
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1210
    .end local v57    # "result":Z
    :pswitch_13fd
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1214
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSDCardWriteAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1217
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1222
    .end local v57    # "result":Z
    :pswitch_1429
    const-string/jumbo v5, "wifi_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 1224
    .local v48, "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-eqz v48, :cond_1467

    .line 1225
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 1227
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isWifiEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1230
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1235
    .end local v57    # "result":Z
    :cond_1467
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1239
    .end local v48    # "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    :pswitch_146a
    const/16 v61, 0x0

    .line 1240
    if-nez p4, :cond_1474

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_147b

    .line 1241
    :cond_1474
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v61

    .line 1244
    :cond_147b
    move-object/from16 v0, v42

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v57

    .line 1246
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1249
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1254
    .end local v57    # "result":Z
    :pswitch_14a1
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFOTAVersionAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v57

    .line 1258
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isFotaVersionAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1262
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1268
    .end local v57    # "result":Z
    :pswitch_14d0
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWearablePolicyEnabled(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v57

    .line 1270
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1273
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_11ef

    .line 1286
    .end local v42    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v57    # "result":Z
    :pswitch_14fa
    const-string v5, "certificate_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 1288
    .local v37, "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v37, :cond_6e

    if-eqz p3, :cond_6e

    .line 1289
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3070

    :cond_150e
    :goto_150e
    packed-switch v5, :pswitch_data_30a2

    :cond_1511
    :goto_1511
    move-object/from16 v5, v52

    .line 1471
    goto/16 :goto_6f

    .line 1289
    :sswitch_1515
    const-string/jumbo v6, "isCaCertificateTrustedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/4 v5, 0x0

    goto :goto_150e

    :sswitch_1522
    const-string/jumbo v6, "isCaCertificateDisabledAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/4 v5, 0x1

    goto :goto_150e

    :sswitch_152f
    const-string/jumbo v6, "isUserRemoveCertificatesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/4 v5, 0x2

    goto :goto_150e

    :sswitch_153c
    const-string/jumbo v6, "isSignatureIdentityInformationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/4 v5, 0x3

    goto :goto_150e

    :sswitch_1549
    const-string/jumbo v6, "getIdentitiesFromSignatures"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/4 v5, 0x4

    goto :goto_150e

    :sswitch_1556
    const-string/jumbo v6, "notifyCertificateFailure"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/4 v5, 0x5

    goto :goto_150e

    :sswitch_1563
    const-string/jumbo v6, "isRevocationCheckEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/4 v5, 0x6

    goto :goto_150e

    :sswitch_1570
    const-string/jumbo v6, "isOcspCheckEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/4 v5, 0x7

    goto :goto_150e

    :sswitch_157d
    const-string/jumbo v6, "isCertificateValidationAtInstallEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/16 v5, 0x8

    goto :goto_150e

    :sswitch_158b
    const-string/jumbo v6, "validateCertificateAtInstall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/16 v5, 0x9

    goto/16 :goto_150e

    :sswitch_159a
    const-string/jumbo v6, "validateChainAtInstall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/16 v5, 0xa

    goto/16 :goto_150e

    :sswitch_15a9
    const-string/jumbo v6, "isPrivateKeyApplicationPermitted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_150e

    const/16 v5, 0xb

    goto/16 :goto_150e

    .line 1291
    :pswitch_15b8
    if-eqz p4, :cond_15c1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_15c4

    .line 1292
    :cond_15c1
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1293
    :cond_15c4
    move/from16 v66, v7

    .line 1294
    .restart local v66    # "user":I
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_15d4

    .line 1295
    const/4 v5, 0x2

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v66

    .line 1297
    :cond_15d4
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/CertificateInfo;

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v37

    move/from16 v1, v66

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Landroid/app/enterprise/CertificateInfo;ZI)Z

    move-result v57

    .line 1302
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isCaCertificateTrustedAsUser"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1306
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1511

    .line 1311
    .end local v57    # "result":Z
    .end local v66    # "user":I
    :pswitch_160d
    if-eqz p4, :cond_1615

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1618

    .line 1312
    :cond_1615
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1313
    :cond_1618
    move/from16 v24, v7

    .line 1314
    .local v24, "defaultUser":I
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1628

    .line 1315
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1317
    :cond_1628
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v37

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v57

    .line 1320
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isCaCertificateDisabledAsUser"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1324
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1511

    .line 1331
    .end local v24    # "defaultUser":I
    .end local v57    # "result":Z
    :pswitch_1654
    if-eqz p4, :cond_1690

    move-object/from16 v0, p4

    array-length v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1690

    const/16 v27, 0x1

    .line 1333
    .local v27, "hasUserIdArgument":Z
    :goto_165e
    if-eqz v27, :cond_1693

    .line 1334
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v67

    .line 1335
    .local v67, "userIdArgument":I
    move-object/from16 v0, v37

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v57

    .line 1344
    .end local v67    # "userIdArgument":I
    .restart local v57    # "result":Z
    :goto_166f
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isUserRemoveCertificatesAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1348
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1511

    .line 1331
    .end local v27    # "hasUserIdArgument":Z
    .end local v57    # "result":Z
    :cond_1690
    const/16 v27, 0x0

    goto :goto_165e

    .line 1338
    .restart local v27    # "hasUserIdArgument":Z
    :cond_1693
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .restart local v57    # "result":Z
    goto :goto_166f

    .line 1353
    .end local v27    # "hasUserIdArgument":Z
    .end local v57    # "result":Z
    :pswitch_169f
    if-eqz p4, :cond_16a7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_16aa

    .line 1354
    :cond_16a7
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1355
    :cond_16aa
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v57

    .line 1358
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSignatureIdentityInformationEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1362
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1511

    .line 1367
    .end local v57    # "result":Z
    :pswitch_16dd
    if-eqz p4, :cond_16e5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_16e8

    .line 1368
    :cond_16e5
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1369
    :cond_16e8
    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v6, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/Signature;

    check-cast v5, [Landroid/content/pm/Signature;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Landroid/app/enterprise/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v51

    .line 1372
    .local v51, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getIdentitiesFromSignatures"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1376
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v51, :cond_1511

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1511

    .line 1378
    invoke-interface/range {v51 .. v51}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_171a
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1511

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, [Ljava/lang/String;

    .line 1379
    .local v68, "value":[Ljava/lang/String;
    move-object/from16 v11, v68

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v49, v0

    .local v49, "len$":I
    const/16 v29, 0x0

    .local v29, "i$":I
    :goto_172d
    move/from16 v0, v29

    move/from16 v1, v49

    if-ge v0, v1, :cond_171a

    aget-object v30, v11, v29

    .line 1380
    .local v30, "internalValue":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v30, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1379
    add-int/lit8 v29, v29, 0x1

    goto :goto_172d

    .line 1388
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v29    # "i$":I
    .end local v30    # "internalValue":Ljava/lang/String;
    .end local v49    # "len$":I
    .end local v51    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v68    # "value":[Ljava/lang/String;
    :pswitch_1743
    if-eqz p4, :cond_174c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_174f

    .line 1389
    :cond_174c
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1390
    :cond_174f
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/16 v69, 0x2

    aget-object v69, p4, v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v69

    move-object/from16 v0, v37

    move/from16 v1, v69

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1392
    const/16 v52, 0x0

    .line 1393
    goto/16 :goto_1511

    .line 1395
    :pswitch_1768
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1398
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isRevocationCheckEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1402
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1511

    .line 1407
    .end local v57    # "result":Z
    :pswitch_1794
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1410
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isOcspCheckEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1414
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1511

    .line 1419
    .end local v57    # "result":Z
    :pswitch_17c0
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1422
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isCertificateValidationAtInstallEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1426
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1511

    .line 1431
    .end local v57    # "result":Z
    :pswitch_17ec
    if-eqz p4, :cond_17f4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_17f7

    .line 1432
    :cond_17f4
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1433
    :cond_17f7
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/CertificateInfo;

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I

    move-result v56

    .line 1435
    .local v56, "res":I
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "validateCertificateAtInstall"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1439
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1511

    .line 1444
    .end local v56    # "res":I
    :pswitch_1827
    if-eqz p4, :cond_182f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1832

    .line 1445
    :cond_182f
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1446
    :cond_1832
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v56

    .line 1448
    .restart local v56    # "res":I
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "validateChainAtInstall"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1452
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1511

    .line 1457
    .end local v56    # "res":I
    :pswitch_1862
    if-eqz p4, :cond_186b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_186e

    .line 1458
    :cond_186b
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1459
    :cond_186e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/16 v69, 0x1

    aget-object v69, p4, v69

    const/16 v70, 0x2

    aget-object v70, p4, v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v70

    move-object/from16 v0, v37

    move-object/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isPrivateKeyApplicationPermitted(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v63

    .line 1462
    .local v63, "stringResult":Ljava/lang/String;
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isPrivateKeyApplicationPermitted"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1466
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v63, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1511

    .line 1475
    .end local v37    # "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .end local v63    # "stringResult":Ljava/lang/String;
    :pswitch_18a9
    const-string/jumbo v5, "password_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 1477
    .local v41, "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v41, :cond_6e

    if-eqz p3, :cond_6e

    .line 1478
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_30be

    :cond_18be
    :goto_18be
    packed-switch v5, :pswitch_data_30f0

    .line 1668
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1478
    :sswitch_18c4
    const-string/jumbo v6, "getForbiddenStrings"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/4 v5, 0x0

    goto :goto_18be

    :sswitch_18d1
    const-string/jumbo v6, "getMaximumCharacterOccurences"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/4 v5, 0x1

    goto :goto_18be

    :sswitch_18de
    const-string/jumbo v6, "getMaximumCharacterSequenceLength"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/4 v5, 0x2

    goto :goto_18be

    :sswitch_18eb
    const-string/jumbo v6, "getMaximumNumericSequenceLength"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/4 v5, 0x3

    goto :goto_18be

    :sswitch_18f8
    const-string/jumbo v6, "getMinimumCharacterChangeLength"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/4 v5, 0x4

    goto :goto_18be

    :sswitch_1905
    const-string/jumbo v6, "getPasswordChangeTimeout"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/4 v5, 0x5

    goto :goto_18be

    :sswitch_1912
    const-string/jumbo v6, "getRequiredPwdPatternRestrictions"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/4 v5, 0x6

    goto :goto_18be

    :sswitch_191f
    const-string/jumbo v6, "hasForbiddenCharacterSequence"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/4 v5, 0x7

    goto :goto_18be

    :sswitch_192c
    const-string/jumbo v6, "hasForbiddenData"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/16 v5, 0x8

    goto :goto_18be

    :sswitch_193a
    const-string/jumbo v6, "hasForbiddenNumericSequence"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/16 v5, 0x9

    goto/16 :goto_18be

    :sswitch_1949
    const-string/jumbo v6, "hasForbiddenStringDistance"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/16 v5, 0xa

    goto/16 :goto_18be

    :sswitch_1958
    const-string/jumbo v6, "hasMaxRepeatedCharacters"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18be

    const/16 v5, 0xb

    goto/16 :goto_18be

    .line 1480
    :pswitch_1967
    if-eqz p4, :cond_196f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1972

    .line 1481
    :cond_196f
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1482
    :cond_1972
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v50

    .line 1486
    .local v50, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getForbiddenStrings"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1490
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v50, :cond_19e2

    invoke-interface/range {v50 .. v50}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19e2

    .line 1493
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :goto_19a0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19e2

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/String;

    .line 1494
    .local v68, "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v68, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_19a0

    .line 1502
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v50    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v68    # "value":Ljava/lang/String;
    :pswitch_19b8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v56

    .line 1506
    .restart local v56    # "res":I
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getMaximumCharacterOccurences"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1510
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v56    # "res":I
    :cond_19e2
    :goto_19e2
    move-object/from16 v5, v52

    .line 1671
    goto/16 :goto_6f

    .line 1516
    :pswitch_19e6
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v56

    .line 1520
    .restart local v56    # "res":I
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getMaximumCharacterSequenceLength"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1524
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_19e2

    .line 1530
    .end local v56    # "res":I
    :pswitch_1a11
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v56

    .line 1534
    .restart local v56    # "res":I
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getMaximumNumericSequenceLength"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1538
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_19e2

    .line 1544
    .end local v56    # "res":I
    :pswitch_1a3c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v56

    .line 1548
    .restart local v56    # "res":I
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getMinimumCharacterChangeLength"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1552
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19e2

    .line 1558
    .end local v56    # "res":I
    :pswitch_1a68
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I

    move-result v56

    .line 1562
    .restart local v56    # "res":I
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getPasswordChangeTimeout"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1566
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19e2

    .line 1572
    .end local v56    # "res":I
    :pswitch_1a94
    if-eqz p4, :cond_1a9c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1a9f

    .line 1573
    :cond_1a9c
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1574
    :cond_1a9f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v62

    .line 1578
    .local v62, "str":Ljava/lang/String;
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getRequiredPwdPatternRestrictions"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1582
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v62, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19e2

    .line 1588
    .end local v62    # "str":Ljava/lang/String;
    :pswitch_1ace
    if-eqz p4, :cond_1ad6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1ad9

    .line 1589
    :cond_1ad6
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1590
    :cond_1ad9
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v57

    .line 1594
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "hasForbiddenCharacterSequence"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1598
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19e2

    .line 1604
    .end local v57    # "result":Z
    :pswitch_1b08
    if-eqz p4, :cond_1b10

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1b13

    .line 1605
    :cond_1b10
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1606
    :cond_1b13
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v57

    .line 1610
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "hasForbiddenData"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1614
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19e2

    .line 1620
    .end local v57    # "result":Z
    :pswitch_1b42
    if-eqz p4, :cond_1b4a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1b4d

    .line 1621
    :cond_1b4a
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1622
    :cond_1b4d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v57

    .line 1626
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "hasForbiddenNumericSequence"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1630
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19e2

    .line 1636
    .end local v57    # "result":Z
    :pswitch_1b7c
    if-eqz p4, :cond_1b85

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1b88

    .line 1637
    :cond_1b85
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1638
    :cond_1b88
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/16 v69, 0x1

    aget-object v69, p4, v69

    move-object/from16 v0, v41

    move-object/from16 v1, v69

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v57

    .line 1642
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "hasForbiddenStringDistance"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1646
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19e2

    .line 1652
    .end local v57    # "result":Z
    :pswitch_1bbd
    if-eqz p4, :cond_1bc5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1bc8

    .line 1653
    :cond_1bc5
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1654
    :cond_1bc8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v57

    .line 1658
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "hasMaxRepeatedCharacters"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1662
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_19e2

    .line 1675
    .end local v41    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    .end local v57    # "result":Z
    :pswitch_1bf7
    const-string/jumbo v5, "password_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 1677
    .restart local v41    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v41, :cond_6e

    if-eqz p3, :cond_6e

    .line 1678
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_310c

    :cond_1c0c
    :goto_1c0c
    packed-switch v5, :pswitch_data_3132

    .line 1847
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1678
    :sswitch_1c12
    const-string/jumbo v6, "isBiometricAuthenticationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c0c

    const/4 v5, 0x0

    goto :goto_1c0c

    :sswitch_1c1f
    const-string/jumbo v6, "isChangeRequested"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c0c

    const/4 v5, 0x1

    goto :goto_1c0c

    :sswitch_1c2c
    const-string/jumbo v6, "isExternalStorageForFailedPasswordsWipeExcluded"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c0c

    const/4 v5, 0x2

    goto :goto_1c0c

    :sswitch_1c39
    const-string/jumbo v6, "isPasswordPatternMatched"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c0c

    const/4 v5, 0x3

    goto :goto_1c0c

    :sswitch_1c46
    const-string/jumbo v6, "isPasswordVisibilityEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c0c

    const/4 v5, 0x4

    goto :goto_1c0c

    :sswitch_1c53
    const-string/jumbo v6, "isPasswordVisibilityEnabledAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c0c

    const/4 v5, 0x5

    goto :goto_1c0c

    :sswitch_1c60
    const-string/jumbo v6, "getPasswordLockDelay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c0c

    const/4 v5, 0x6

    goto :goto_1c0c

    :sswitch_1c6d
    const-string/jumbo v6, "getMaximumFailedPasswordsForDisable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c0c

    const/4 v5, 0x7

    goto :goto_1c0c

    :sswitch_1c7a
    const-string/jumbo v6, "getMaximumFailedPasswordsForWipe"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c0c

    const/16 v5, 0x8

    goto :goto_1c0c

    .line 1680
    :pswitch_1c88
    if-eqz p4, :cond_1c90

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1c93

    .line 1681
    :cond_1c90
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1682
    :cond_1c93
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v57

    .line 1686
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isBiometricAuthenticationEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1690
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v57    # "result":Z
    :goto_1cc4
    move-object/from16 v5, v52

    .line 1850
    goto/16 :goto_6f

    .line 1696
    :pswitch_1cc8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Landroid/app/enterprise/ContextInfo;)I

    move-result v56

    .line 1700
    .restart local v56    # "res":I
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isChangeRequested"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1704
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1cc4

    .line 1710
    .end local v56    # "res":I
    :pswitch_1cf3
    if-eqz p4, :cond_1d64

    .line 1711
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD user id = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v69, 0x0

    aget-object v69, p4, v69

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1719
    .restart local v57    # "result":Z
    :goto_1d27
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isExternalStorageForFailedPasswordsWipeExcluded"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1725
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1cc4

    .line 1716
    .end local v57    # "result":Z
    :cond_1d64
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .restart local v57    # "result":Z
    goto :goto_1d27

    .line 1731
    .end local v57    # "result":Z
    :pswitch_1d70
    if-eqz p4, :cond_1d78

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1d7b

    .line 1732
    :cond_1d78
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1733
    :cond_1d7b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordPatternMatched(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v57

    .line 1737
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isPasswordPatternMatched"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1741
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1cc4

    .line 1747
    .end local v57    # "result":Z
    :pswitch_1daa
    if-nez p4, :cond_1e10

    .line 1748
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1750
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isPasswordVisibilityEnabled callingUid = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :goto_1dd2
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isPasswordVisibilityEnabled return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isPasswordVisibilityEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1763
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1cc4

    .line 1753
    .end local v57    # "result":Z
    :cond_1e10
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1755
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isPasswordVisibilityEnabled callingUid = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v69, 0x0

    aget-object v69, p4, v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    move/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1dd2

    .line 1770
    .end local v57    # "result":Z
    :pswitch_1e48
    if-eqz p4, :cond_1e51

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1e54

    .line 1771
    :cond_1e51
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1772
    :cond_1e54
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v57

    .line 1774
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isPasswordVisibilityEnabledAsUser return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isPasswordVisibilityEnabledAsUser"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1780
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1cc4

    .line 1786
    .end local v57    # "result":Z
    :pswitch_1e9f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I

    move-result v56

    .line 1790
    .restart local v56    # "res":I
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getPasswordLockDelay"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1794
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1cc4

    .line 1800
    .end local v56    # "res":I
    :pswitch_1ecb
    if-eqz p4, :cond_1f3c

    .line 1801
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v69, 0x0

    aget-object v69, p4, v69

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v56

    .line 1809
    .restart local v56    # "res":I
    :goto_1eff
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getMaximumFailedPasswordsForDisable"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1815
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1cc4

    .line 1806
    .end local v56    # "res":I
    :cond_1f3c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v56

    .restart local v56    # "res":I
    goto :goto_1eff

    .line 1821
    .end local v56    # "res":I
    :pswitch_1f48
    if-eqz p4, :cond_1f51

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1f54

    .line 1822
    :cond_1f51
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1824
    :cond_1f54
    const/4 v5, 0x0

    aget-object v5, p4, v5

    if-nez v5, :cond_1fd3

    .line 1825
    const/16 v23, 0x0

    .line 1828
    .local v23, "cn":Landroid/content/ComponentName;
    :goto_1f5b
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1fdb

    .line 1829
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD user id = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v69, 0x0

    aget-object v69, p4, v69

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v56

    .line 1837
    .restart local v56    # "res":I
    :goto_1f96
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD return = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getMaximumFailedPasswordsForWipe"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1842
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1cc4

    .line 1827
    .end local v23    # "cn":Landroid/content/ComponentName;
    .end local v56    # "res":I
    :cond_1fd3
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v23

    .restart local v23    # "cn":Landroid/content/ComponentName;
    goto :goto_1f5b

    .line 1834
    :cond_1fdb
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v56

    .restart local v56    # "res":I
    goto :goto_1f96

    .line 1855
    .end local v23    # "cn":Landroid/content/ComponentName;
    .end local v41    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    .end local v56    # "res":I
    :pswitch_1fe9
    const-string v5, "browser_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 1858
    .local v36, "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-eqz v36, :cond_6e

    if-eqz p3, :cond_6e

    .line 1859
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3148

    :cond_1ffd
    :goto_1ffd
    packed-switch v5, :pswitch_data_3162

    .line 1952
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1859
    :sswitch_2003
    const-string/jumbo v6, "getHttpProxy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ffd

    const/4 v5, 0x0

    goto :goto_1ffd

    :sswitch_2010
    const-string/jumbo v6, "getAutoFillSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ffd

    const/4 v5, 0x1

    goto :goto_1ffd

    :sswitch_201d
    const-string/jumbo v6, "getCookiesSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ffd

    const/4 v5, 0x2

    goto :goto_1ffd

    :sswitch_202a
    const-string/jumbo v6, "getJavaScriptSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ffd

    const/4 v5, 0x3

    goto :goto_1ffd

    :sswitch_2037
    const-string/jumbo v6, "getPopupsSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ffd

    const/4 v5, 0x4

    goto :goto_1ffd

    :sswitch_2044
    const-string/jumbo v6, "getForceFraudWarningSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ffd

    const/4 v5, 0x5

    goto :goto_1ffd

    .line 1861
    :pswitch_2051
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v55

    .line 1864
    .local v55, "proxy":Ljava/lang/String;
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getHttpProxy"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1867
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v55, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v55    # "proxy":Ljava/lang/String;
    :goto_2077
    move-object/from16 v5, v52

    .line 1955
    goto/16 :goto_6f

    .line 1874
    :pswitch_207b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x4

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v12

    .line 1879
    .local v12, "bAutoFill":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getAutoFillSetting"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1883
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2077

    .line 1891
    .end local v12    # "bAutoFill":Z
    :pswitch_20a7
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x2

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v13

    .line 1896
    .local v13, "bCookiesSettings":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getCookiesSetting"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1899
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2077

    .line 1906
    .end local v13    # "bCookiesSettings":Z
    :pswitch_20d3
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v6, 0x10

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v19

    .line 1911
    .local v19, "bJavaScriptSetting":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getJavaScriptSetting"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1915
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2077

    .line 1923
    .end local v19    # "bJavaScriptSetting":Z
    :pswitch_2101
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v20

    .line 1928
    .local v20, "bPopupSettings":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getPopupsSetting"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1931
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2077

    .line 1938
    .end local v20    # "bPopupSettings":Z
    :pswitch_212e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v6, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v14

    .line 1943
    .local v14, "bForceWarning":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getForceFraudWarningSetting"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1946
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2077

    .line 1961
    .end local v14    # "bForceWarning":Z
    .end local v36    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    :pswitch_215c
    const-string v5, "bluetooth_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 1963
    .local v35, "lBluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-eqz v35, :cond_6e

    if-eqz p3, :cond_6e

    .line 1964
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3172

    :cond_2170
    :goto_2170
    packed-switch v5, :pswitch_data_3194

    .line 2076
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1964
    :sswitch_2176
    const-string/jumbo v6, "isBluetoothEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2170

    const/4 v5, 0x0

    goto :goto_2170

    :sswitch_2183
    const-string/jumbo v6, "isBluetoothEnabledWithMsg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2170

    const/4 v5, 0x1

    goto :goto_2170

    :sswitch_2190
    const-string/jumbo v6, "isOutgoingCallsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2170

    const/4 v5, 0x2

    goto :goto_2170

    :sswitch_219d
    const-string/jumbo v6, "isLimitedDiscoverableEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2170

    const/4 v5, 0x3

    goto :goto_2170

    :sswitch_21aa
    const-string/jumbo v6, "isDiscoverableEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2170

    const/4 v5, 0x4

    goto :goto_2170

    :sswitch_21b7
    const-string/jumbo v6, "isDesktopConnectivityEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2170

    const/4 v5, 0x5

    goto :goto_2170

    :sswitch_21c4
    const-string v6, "bluetoothLog"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2170

    const/4 v5, 0x6

    goto :goto_2170

    :sswitch_21d0
    const-string/jumbo v6, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2170

    const/4 v5, 0x7

    goto :goto_2170

    .line 1966
    :pswitch_21dd
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 1967
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isBluetoothEnabled = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isBluetoothEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1973
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2224
    move-object/from16 v5, v52

    .line 2079
    goto/16 :goto_6f

    .line 1979
    .end local v57    # "result":Z
    :pswitch_2228
    if-eqz p4, :cond_2230

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2233

    .line 1980
    :cond_2230
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1981
    :cond_2233
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v57

    .line 1983
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isBluetoothEnabled = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isBluetoothEnabledWithMsg"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1989
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2224

    .line 1995
    .end local v57    # "result":Z
    :pswitch_227d
    if-eqz p4, :cond_2285

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2288

    .line 1996
    :cond_2285
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 1997
    :cond_2288
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v57

    .line 1999
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "isOutgoingCallsAllowed = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isOutgoingCallsAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2005
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2224

    .line 2011
    .end local v57    # "result":Z
    :pswitch_22d3
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 2014
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isLimitedDiscoverableEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2018
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2224

    .line 2023
    .end local v57    # "result":Z
    :pswitch_22ff
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 2026
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isDiscoverableEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2030
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2224

    .line 2035
    .end local v57    # "result":Z
    :pswitch_232b
    if-eqz p4, :cond_2333

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2336

    .line 2036
    :cond_2333
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2037
    :cond_2336
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v57

    .line 2040
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isDesktopConnectivityEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2044
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2224

    .line 2049
    .end local v57    # "result":Z
    :pswitch_2364
    if-eqz p4, :cond_236d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2370

    .line 2050
    :cond_236d
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2051
    :cond_2370
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/16 v69, 0x1

    aget-object v69, p4, v69

    move-object/from16 v0, v35

    move-object/from16 v1, v69

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v57

    .line 2055
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v69, "bluetoothLog"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2059
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2224

    .line 2064
    .end local v57    # "result":Z
    :pswitch_23a4
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 2067
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isBluetoothLogEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2071
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2224

    .line 2083
    .end local v35    # "lBluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    .end local v57    # "result":Z
    :pswitch_23d0
    if-eqz p3, :cond_6e

    .line 2084
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_31a8

    :cond_23da
    :goto_23da
    packed-switch v5, :pswitch_data_31d2

    :goto_23dd
    move-object/from16 v5, v52

    .line 2198
    goto/16 :goto_6f

    .line 2084
    :sswitch_23e1
    const-string/jumbo v6, "isProfileAuthorizedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23da

    const/4 v5, 0x0

    goto :goto_23da

    :sswitch_23ee
    const-string/jumbo v6, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23da

    const/4 v5, 0x1

    goto :goto_23da

    :sswitch_23fb
    const-string/jumbo v6, "isPairingAllowedbySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23da

    const/4 v5, 0x2

    goto :goto_23da

    :sswitch_2408
    const-string/jumbo v6, "isHeadsetAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23da

    const/4 v5, 0x3

    goto :goto_23da

    :sswitch_2415
    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23da

    const/4 v5, 0x4

    goto :goto_23da

    :sswitch_2422
    const-string v6, "bluetoothSocketLog"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23da

    const/4 v5, 0x5

    goto :goto_23da

    :sswitch_242e
    const-string/jumbo v6, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23da

    const/4 v5, 0x6

    goto :goto_23da

    :sswitch_243b
    const-string v6, "bluetoothLog"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23da

    const/4 v5, 0x7

    goto :goto_23da

    :sswitch_2447
    const-string v6, "bluetoothLogForRemote"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23da

    const/16 v5, 0x8

    goto :goto_23da

    :sswitch_2454
    const-string v6, "bluetoothLogForDevice"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23da

    const/16 v5, 0x9

    goto/16 :goto_23da

    .line 2086
    :pswitch_2462
    if-eqz p4, :cond_246a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_246d

    .line 2087
    :cond_246a
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2088
    :cond_246d
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v57

    .line 2091
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isProfileAuthorizedBySecurityPolicy"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2095
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23dd

    .line 2100
    .end local v57    # "result":Z
    :pswitch_2499
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v57

    .line 2103
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isBluetoothLogEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2107
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23dd

    .line 2112
    .end local v57    # "result":Z
    :pswitch_24be
    if-eqz p4, :cond_24c6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_24c9

    .line 2113
    :cond_24c6
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2114
    :cond_24c9
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v57

    .line 2115
    .restart local v57    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "PAIRINGALLOWEDBYSECURITY = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isPairingAllowedbySecurityPolicy"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2121
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23dd

    .line 2126
    .end local v57    # "result":Z
    :pswitch_250d
    if-eqz p4, :cond_2515

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2518

    .line 2127
    :cond_2515
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2128
    :cond_2518
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v57

    .line 2131
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isHeadsetAllowedBySecurityPolicy"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2135
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23dd

    .line 2140
    .end local v57    # "result":Z
    :pswitch_2548
    if-eqz p4, :cond_2551

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2554

    .line 2141
    :cond_2551
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2142
    :cond_2554
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v69, 0x2

    aget-object v69, p4, v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    const/16 v70, 0x3

    aget-object v70, p4, v70

    invoke-static/range {v70 .. v70}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v70

    move/from16 v0, v69

    move-object/from16 v1, v70

    invoke-static {v5, v6, v0, v1}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v57

    .line 2145
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSocketAllowedBySecurityPolicy"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2149
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23dd

    .line 2154
    .end local v57    # "result":Z
    :pswitch_259f
    if-eqz p4, :cond_25a8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_25ab

    .line 2155
    :cond_25a8
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2156
    :cond_25ab
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    const/16 v69, 0x1

    aget-object v69, p4, v69

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    const/16 v69, 0x2

    aget-object v69, p4, v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    const/16 v70, 0x3

    aget-object v70, p4, v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v70

    move/from16 v0, v69

    move/from16 v1, v70

    invoke-static {v5, v6, v0, v1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_23dd

    .line 2160
    :pswitch_25d5
    if-eqz p4, :cond_25dd

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_25e0

    .line 2161
    :cond_25dd
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2162
    :cond_25e0
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v57

    .line 2166
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2170
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23dd

    .line 2175
    .end local v57    # "result":Z
    :pswitch_260c
    if-eqz p4, :cond_261b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_261b

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v5

    if-nez v5, :cond_261e

    .line 2176
    :cond_261b
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2177
    :cond_261e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v5, v6}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23dd

    .line 2180
    :pswitch_2629
    if-eqz p4, :cond_2638

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2638

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v5

    if-nez v5, :cond_263b

    .line 2181
    :cond_2638
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2182
    :cond_263b
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/16 v69, 0x2

    aget-object v69, p4, v69

    move-object/from16 v0, v69

    invoke-static {v5, v6, v0}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23dd

    .line 2186
    :pswitch_264c
    if-eqz p4, :cond_265b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_265b

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v5

    if-nez v5, :cond_265e

    .line 2187
    :cond_265b
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2188
    :cond_265e
    const/4 v5, 0x2

    aget-object v5, p4, v5

    if-nez v5, :cond_2676

    .line 2189
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v69, 0x0

    move-object/from16 v0, v69

    invoke-static {v5, v6, v0}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_23dd

    .line 2193
    :cond_2676
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v69

    const/16 v70, 0x2

    aget-object v70, p4, v70

    invoke-virtual/range {v69 .. v70}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-static {v5, v6, v0}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_23dd

    .line 2202
    :pswitch_2693
    const-string/jumbo v5, "roaming_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 2204
    .local v43, "lRoamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    if-eqz v43, :cond_6e

    if-eqz p3, :cond_6e

    .line 2205
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_31ea

    :cond_26a8
    :goto_26a8
    packed-switch v5, :pswitch_data_31fc

    .line 2259
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2205
    :sswitch_26ae
    const-string/jumbo v6, "isRoamingSyncEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26a8

    const/4 v5, 0x0

    goto :goto_26a8

    :sswitch_26bb
    const-string/jumbo v6, "isRoamingPushEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26a8

    const/4 v5, 0x1

    goto :goto_26a8

    :sswitch_26c8
    const-string/jumbo v6, "isRoamingDataEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26a8

    const/4 v5, 0x2

    goto :goto_26a8

    :sswitch_26d5
    const-string/jumbo v6, "isRoamingVoiceCallsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26a8

    const/4 v5, 0x3

    goto :goto_26a8

    .line 2207
    :pswitch_26e2
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 2210
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isRoamingSyncEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2214
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_270c
    move-object/from16 v5, v52

    .line 2262
    goto/16 :goto_6f

    .line 2220
    .end local v57    # "result":Z
    :pswitch_2710
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 2223
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isRoamingPushEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2227
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_270c

    .line 2233
    .end local v57    # "result":Z
    :pswitch_273b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 2236
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isRoamingDataEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2240
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_270c

    .line 2246
    .end local v57    # "result":Z
    :pswitch_2766
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 2249
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isRoamingVoiceCallsEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2253
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_270c

    .line 2268
    .end local v43    # "lRoamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    .end local v57    # "result":Z
    :pswitch_2792
    const-string/jumbo v5, "location_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/location/LocationPolicy;

    .line 2270
    .local v39, "lLocationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    if-eqz v39, :cond_6e

    if-eqz p3, :cond_6e

    .line 2271
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3208

    :cond_27a7
    :goto_27a7
    packed-switch v5, :pswitch_data_3216

    .line 2321
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2271
    :sswitch_27ad
    const-string/jumbo v6, "isLocationProviderBlocked"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27a7

    const/4 v5, 0x0

    goto :goto_27a7

    :sswitch_27ba
    const-string/jumbo v6, "isLocationProviderBlockedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27a7

    const/4 v5, 0x1

    goto :goto_27a7

    :sswitch_27c7
    const-string/jumbo v6, "isGPSStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27a7

    const/4 v5, 0x2

    goto :goto_27a7

    .line 2273
    :pswitch_27d4
    if-eqz p4, :cond_27dc

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_27df

    .line 2274
    :cond_27dc
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2275
    :cond_27df
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v57

    .line 2278
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isLocationProviderBlocked"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2282
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2807
    move-object/from16 v5, v52

    .line 2324
    goto/16 :goto_6f

    .line 2288
    .end local v57    # "result":Z
    :pswitch_280b
    if-eqz p4, :cond_2814

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2817

    .line 2289
    :cond_2814
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2290
    :cond_2817
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_284e

    .line 2291
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v57

    .line 2298
    .restart local v57    # "result":Z
    :goto_282e
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isLocationProviderBlockedAsUser"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2302
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2807

    .line 2294
    .end local v57    # "result":Z
    :cond_284e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v7}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v57

    .restart local v57    # "result":Z
    goto :goto_282e

    .line 2308
    .end local v57    # "result":Z
    :pswitch_2858
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 2311
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isGPSStateChangeAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2315
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2807

    .line 2328
    .end local v39    # "lLocationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    .end local v57    # "result":Z
    :pswitch_2883
    const-string v5, "auditlog"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 2331
    .local v34, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v34, :cond_6e

    .line 2332
    if-eqz p3, :cond_6e

    const-string/jumbo v5, "isAuditLogEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 2334
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v17

    .line 2337
    .local v17, "bIsAuditLogEnabled":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isAuditLogEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2340
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v52

    .line 2345
    goto/16 :goto_6f

    .line 2353
    .end local v17    # "bIsAuditLogEnabled":Z
    .end local v34    # "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    :pswitch_28c3
    const-string/jumbo v5, "smartcard_browser_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    .line 2356
    .local v47, "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    if-eqz v47, :cond_6e

    .line 2357
    if-eqz p3, :cond_2909

    const-string/jumbo v5, "isAuthenticationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2909

    .line 2359
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v18

    .line 2363
    .local v18, "bIsAuthenticationEnabled":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isAuthenticationEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2367
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v52

    .line 2372
    goto/16 :goto_6f

    .line 2374
    .end local v18    # "bIsAuthenticationEnabled":Z
    :cond_2909
    if-eqz p3, :cond_6e

    const-string/jumbo v5, "getClientCertificateAlias"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 2377
    if-eqz p4, :cond_291e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2921

    .line 2378
    :cond_291e
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2380
    :cond_2921
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/16 v69, 0x1

    aget-object v69, p4, v69

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    move-object/from16 v0, v47

    move/from16 v1, v69

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v60

    .line 2385
    .local v60, "sGetClientCertificateAlias":Ljava/lang/String;
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getClientCertificateAlias"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2390
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v60, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v52

    .line 2395
    goto/16 :goto_6f

    .line 2401
    .end local v47    # "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v60    # "sGetClientCertificateAlias":Ljava/lang/String;
    :pswitch_2958
    const-string/jumbo v5, "security_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 2404
    .local v46, "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    if-eqz v46, :cond_6e

    if-eqz p3, :cond_6e

    .line 2405
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3220

    :cond_296d
    :goto_296d
    packed-switch v5, :pswitch_data_322a

    .line 2439
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2405
    :sswitch_2973
    const-string/jumbo v6, "isDodBannerVisible"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_296d

    const/4 v5, 0x0

    goto :goto_296d

    :sswitch_2980
    const-string/jumbo v6, "getCredentialStorageStatus"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_296d

    const/4 v5, 0x1

    goto :goto_296d

    .line 2409
    :pswitch_298d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Landroid/app/enterprise/ContextInfo;)Z

    move-result v25

    .line 2412
    .local v25, "dodbanner":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isDodBannerVisible"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2416
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v25    # "dodbanner":Z
    :goto_29b7
    move-object/from16 v5, v52

    .line 2442
    goto/16 :goto_6f

    .line 2424
    :pswitch_29bb
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->getCredentialStorageStatus(Landroid/app/enterprise/ContextInfo;)I

    move-result v56

    .line 2428
    .restart local v56    # "res":I
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2432
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2435
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "getCredentialStorageStatus = "

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29b7

    .line 2447
    .end local v46    # "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    .end local v56    # "res":I
    :pswitch_2a00
    const-string v5, "browser_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 2449
    .restart local v36    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    const-string/jumbo v5, "misc_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 2451
    .local v40, "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    if-eqz v36, :cond_6e

    if-eqz p3, :cond_6e

    if-eqz v40, :cond_6e

    .line 2452
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3232

    :cond_2a1f
    :goto_2a1f
    packed-switch v5, :pswitch_data_3248

    .line 2541
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2452
    :sswitch_2a25
    const-string/jumbo v6, "getURLFilterEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a1f

    const/4 v5, 0x0

    goto :goto_2a1f

    :sswitch_2a32
    const-string/jumbo v6, "getURLFilterList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a1f

    const/4 v5, 0x1

    goto :goto_2a1f

    :sswitch_2a3f
    const-string/jumbo v6, "getURLFilterReportEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a1f

    const/4 v5, 0x2

    goto :goto_2a1f

    :sswitch_2a4c
    const-string/jumbo v6, "isUrlBlocked"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a1f

    const/4 v5, 0x3

    goto :goto_2a1f

    :sswitch_2a59
    const-string/jumbo v6, "isGlobalProxyAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a1f

    const/4 v5, 0x4

    goto :goto_2a1f

    .line 2456
    :pswitch_2a66
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    const/16 v69, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v69

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v15

    .line 2460
    .local v15, "bGetURLFilterEnabled":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getURLFilterEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2464
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v15    # "bGetURLFilterEnabled":Z
    :cond_2a95
    :goto_2a95
    move-object/from16 v5, v52

    .line 2544
    goto/16 :goto_6f

    .line 2473
    :pswitch_2a99
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    const/16 v69, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v69

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v65

    .line 2476
    .local v65, "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getURLFilterList"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2481
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v65, :cond_2a95

    invoke-interface/range {v65 .. v65}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2a95

    .line 2484
    invoke-interface/range {v65 .. v65}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28    # "i$":Ljava/util/Iterator;
    :goto_2ac5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a95

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 2485
    .local v26, "filterList":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v26, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2ac5

    .line 2496
    .end local v26    # "filterList":Ljava/lang/String;
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v65    # "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2add
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    const/16 v69, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v69

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 2500
    .local v22, "bUrlFilterReportEnable":Ljava/lang/Boolean;
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getURLFilterReportEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2504
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2a95

    .line 2510
    .end local v22    # "bUrlFilterReportEnable":Ljava/lang/Boolean;
    :pswitch_2b0d
    if-eqz p4, :cond_2b15

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2b18

    .line 2511
    :cond_2b15
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2512
    :cond_2b18
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 2516
    .local v21, "bUrlBlocked":Ljava/lang/Boolean;
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isUrlBlocked"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2520
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v21, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a95

    .line 2526
    .end local v21    # "bUrlBlocked":Ljava/lang/Boolean;
    :pswitch_2b47
    if-eqz p4, :cond_2b4f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2b52

    .line 2527
    :cond_2b4f
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2528
    :cond_2b52
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 2531
    .local v16, "bGlobalProxy":Ljava/lang/Boolean;
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isGlobalProxyAllowed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2535
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a95

    .line 2560
    .end local v16    # "bGlobalProxy":Ljava/lang/Boolean;
    .end local v36    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    .end local v40    # "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    :pswitch_2b77
    const-string v5, "apppermission_control_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .line 2563
    .local v33, "lAppPermissionControlPol":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    if-eqz v33, :cond_6e

    if-eqz p3, :cond_6e

    .line 2564
    if-eqz p4, :cond_2b8c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2b8f

    .line 2565
    :cond_2b8c
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2567
    :cond_2b8f
    const-string/jumbo v5, "getPermissionBlockedList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 2568
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2569
    .local v9, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v9, Ljava/util/List;

    .line 2570
    .restart local v9    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6, v9}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionBlockedList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v54

    .line 2574
    .local v54, "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getPermissionBlockedList"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2579
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v54, :cond_2bea

    invoke-interface/range {v54 .. v54}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2bea

    .line 2582
    invoke-interface/range {v54 .. v54}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28    # "i$":Ljava/util/Iterator;
    :goto_2bd2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2bea

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 2583
    .local v53, "perm":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v53, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2bd2

    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v53    # "perm":Ljava/lang/String;
    :cond_2bea
    move-object/from16 v5, v52

    .line 2590
    goto/16 :goto_6f

    .line 2596
    .end local v9    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "lAppPermissionControlPol":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    .end local v54    # "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2bee
    const-string/jumbo v5, "date_time_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 2599
    .local v38, "lDateTimePolicy":Lcom/android/server/enterprise/datetime/DateTimePolicy;
    if-eqz v38, :cond_6e

    if-eqz p3, :cond_6e

    .line 2600
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3256

    :cond_2c03
    :goto_2c03
    packed-switch v5, :pswitch_data_3260

    .line 2633
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2600
    :sswitch_2c09
    const-string/jumbo v6, "isDateTimeChangeEnalbed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c03

    const/4 v5, 0x0

    goto :goto_2c03

    :sswitch_2c16
    const-string/jumbo v6, "getAutomaticTime"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c03

    const/4 v5, 0x1

    goto :goto_2c03

    .line 2603
    :pswitch_2c23
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 2607
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isDateTimeChangeEnalbed"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2612
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2c4d
    move-object/from16 v5, v52

    .line 2636
    goto/16 :goto_6f

    .line 2619
    .end local v57    # "result":Z
    :pswitch_2c51
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Landroid/app/enterprise/ContextInfo;)Z

    move-result v57

    .line 2623
    .restart local v57    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getAutomaticTime"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2628
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2c4d

    .line 2640
    .end local v38    # "lDateTimePolicy":Lcom/android/server/enterprise/datetime/DateTimePolicy;
    .end local v57    # "result":Z
    :pswitch_2c7c
    const-string/jumbo v5, "spd_control_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/enterprise/spd/SPDControlPolicy;

    .line 2642
    .local v45, "lSPDControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    if-eqz v45, :cond_6e

    if-eqz p3, :cond_6e

    .line 2643
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_3268

    :cond_2c91
    :goto_2c91
    packed-switch v5, :pswitch_data_326e

    .line 2653
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2643
    :pswitch_2c97
    const-string/jumbo v6, "isSPDAutomaticUpdateEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c91

    const/4 v5, 0x0

    goto :goto_2c91

    .line 2645
    :pswitch_2ca4
    const/16 v59, -0x1

    .line 2646
    .local v59, "ret":I
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/enterprise/spd/SPDControlPolicy;->getAutoSecurityPolicyUpdateMode()I

    move-result v59

    .line 2647
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isSPDAutomaticUpdateEnabled"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2650
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6e

    .line 2658
    .end local v45    # "lSPDControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .end local v59    # "ret":I
    :pswitch_2ccb
    const-string v5, "SEAMService"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v44

    check-cast v44, Lcom/android/server/SEAMService;

    .line 2659
    .local v44, "lSEAMSPolicy":Lcom/android/server/SEAMService;
    if-eqz v44, :cond_6e

    if-eqz p3, :cond_6e

    .line 2660
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3274

    :cond_2cdf
    :goto_2cdf
    packed-switch v5, :pswitch_data_327e

    .line 2689
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2660
    :sswitch_2ce5
    const-string/jumbo v6, "getSEContainerClipboardMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2cdf

    const/4 v5, 0x0

    goto :goto_2cdf

    :sswitch_2cf2
    const-string/jumbo v6, "getAllSEContainerCategory"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2cdf

    const/4 v5, 0x1

    goto :goto_2cdf

    .line 2662
    :pswitch_2cff
    if-eqz p4, :cond_2d07

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2d0a

    .line 2663
    :cond_2d07
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2665
    :cond_2d0a
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/SEAMService;->getSEContainerClipboardMode(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2d3f

    const/16 v57, 0x1

    .line 2668
    .restart local v57    # "result":Z
    :goto_2d1c
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getSEContainerClipboardMode"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2671
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v57 .. v57}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v57    # "result":Z
    :cond_2d3b
    move-object/from16 v5, v52

    .line 2691
    goto/16 :goto_6f

    .line 2665
    :cond_2d3f
    const/16 v57, 0x0

    goto :goto_2d1c

    .line 2677
    :pswitch_2d42
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/SEAMService;->getAllSEContainerCategory()Ljava/util/List;

    move-result-object v58

    .line 2679
    .local v58, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "getAllSEContainerCategory"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2682
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v58, :cond_2d3b

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2d3b

    .line 2683
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28    # "i$":Ljava/util/Iterator;
    :goto_2d62
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d3b

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/Integer;

    .line 2684
    .local v68, "value":Ljava/lang/Integer;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v68, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2d62

    .line 2695
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v44    # "lSEAMSPolicy":Lcom/android/server/SEAMService;
    .end local v58    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v68    # "value":Ljava/lang/Integer;
    :pswitch_2d7a
    if-eqz p3, :cond_2e82

    .line 2696
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3286

    :cond_2d84
    :goto_2d84
    packed-switch v5, :pswitch_data_3290

    .line 2735
    const-string v5, "SecContentProvider"

    const-string v6, "Case DLP selection is not matched"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    const/4 v5, 0x0

    goto/16 :goto_6f

    .line 2696
    :sswitch_2d91
    const-string/jumbo v6, "isAllowedToShare"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d84

    const/4 v5, 0x0

    goto :goto_2d84

    :sswitch_2d9e
    const-string/jumbo v6, "isDLPActivated"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d84

    const/4 v5, 0x1

    goto :goto_2d84

    .line 2698
    :pswitch_2dab
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    .line 2699
    .local v32, "isShareAllowed":Ljava/lang/Boolean;
    invoke-static {v7}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_2dd2

    .line 2701
    const-string/jumbo v5, "enterprise_dlp_service"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .line 2703
    .local v3, "IdlpPolicy":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    if-eqz v3, :cond_2e13

    .line 2704
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v4, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .local v4, "ctxInfo":Landroid/app/enterprise/ContextInfo;
    move-object/from16 v5, p4

    move-object/from16 v6, p3

    .line 2705
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isShareAllowed(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    .line 2710
    .end local v3    # "IdlpPolicy":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .end local v4    # "ctxInfo":Landroid/app/enterprise/ContextInfo;
    :cond_2dd2
    :goto_2dd2
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isAllowedToShare"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2714
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v52, :cond_2e04

    .line 2715
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "Cursor not null:"

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    move/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    :cond_2e04
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v32, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v32    # "isShareAllowed":Ljava/lang/Boolean;
    :goto_2e0f
    move-object/from16 v5, v52

    .line 2738
    goto/16 :goto_6f

    .line 2707
    .restart local v3    # "IdlpPolicy":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .restart local v32    # "isShareAllowed":Ljava/lang/Boolean;
    :cond_2e13
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "dlp service is null:"

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2dd2

    .line 2720
    .end local v3    # "IdlpPolicy":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .end local v32    # "isShareAllowed":Ljava/lang/Boolean;
    :pswitch_2e31
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    .line 2721
    .local v31, "isDLPActivated":Ljava/lang/Boolean;
    invoke-static {v7}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_2e44

    .line 2723
    invoke-static {v7}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    .line 2725
    :cond_2e44
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v69, "isDLPActivated"

    aput-object v69, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2729
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v52, :cond_2e76

    .line 2730
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "Cursor not null:"

    move-object/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    move/from16 v0, v69

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    :cond_2e76
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v31, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2e0f

    .line 2740
    .end local v31    # "isDLPActivated":Ljava/lang/Boolean;
    :cond_2e82
    const-string v5, "SecContentProvider"

    const-string v6, "Case DLP selection null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    .line 242
    nop

    :pswitch_data_2e8c
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_2883
        :pswitch_215c
        :pswitch_23d0
        :pswitch_1fe9
        :pswitch_14fa
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_2a00
        :pswitch_6e
        :pswitch_2792
        :pswitch_18a9
        :pswitch_1bf7
        :pswitch_70
        :pswitch_5a3
        :pswitch_bde
        :pswitch_10bb
        :pswitch_2693
        :pswitch_2958
        :pswitch_6e
        :pswitch_28c3
        :pswitch_2b77
        :pswitch_2bee
        :pswitch_2c7c
        :pswitch_2ccb
        :pswitch_2d7a
    .end packed-switch

    .line 247
    :sswitch_data_2ec6
    .sparse-switch
        -0x5d9fe8ab -> :sswitch_f1
        -0x5c7edb84 -> :sswitch_11d
        -0x4bfd3947 -> :sswitch_12c
        -0x38cefab6 -> :sswitch_10e
        -0x36978d55 -> :sswitch_bd
        -0x34742384 -> :sswitch_e4
        -0x2d47f4e1 -> :sswitch_ca
        -0x2b582cae -> :sswitch_ff
        0x3e05fd -> :sswitch_d7
        0x7ed85f2 -> :sswitch_13b
        0x2ea4b8a5 -> :sswitch_159
        0x3593cbd4 -> :sswitch_b0
        0x3d337bfd -> :sswitch_96
        0x4ef9c1f9 -> :sswitch_168
        0x64034c9f -> :sswitch_177
        0x71560275 -> :sswitch_14a
        0x77163a49 -> :sswitch_a3
        0x7e3d73d9 -> :sswitch_8a
    .end sparse-switch

    :pswitch_data_2f10
    .packed-switch 0x0
        :pswitch_186
        :pswitch_1bc
        :pswitch_1f9
        :pswitch_22f
        :pswitch_26b
        :pswitch_2a7
        :pswitch_2d3
        :pswitch_2ff
        :pswitch_33d
        :pswitch_369
        :pswitch_3a7
        :pswitch_3d3
        :pswitch_41b
        :pswitch_478
        :pswitch_4b1
        :pswitch_4dd
        :pswitch_51b
        :pswitch_547
    .end packed-switch

    .line 513
    :sswitch_data_2f38
    .sparse-switch
        -0x74a4d725 -> :sswitch_688
        -0x71206782 -> :sswitch_6a6
        -0x6c0db8af -> :sswitch_5ed
        -0x694bd3d6 -> :sswitch_64c
        -0x553c4d53 -> :sswitch_63d
        -0x4d525a40 -> :sswitch_621
        -0x4406e5f2 -> :sswitch_66a
        -0x39e13355 -> :sswitch_5c6
        -0x2de531be -> :sswitch_62e
        -0x1ab59b72 -> :sswitch_5d3
        -0xa2586fa -> :sswitch_697
        0x5ad79eb -> :sswitch_607
        0x5be9d3d -> :sswitch_5fa
        0x26581d58 -> :sswitch_65b
        0x36e6d3e0 -> :sswitch_679
        0x4bd14915 -> :sswitch_5e0
        0x6c3b6517 -> :sswitch_614
    .end sparse-switch

    :pswitch_data_2f7e
    .packed-switch 0x0
        :pswitch_6b5
        :pswitch_6f5
        :pswitch_732
        :pswitch_75d
        :pswitch_789
        :pswitch_7c7
        :pswitch_803
        :pswitch_8a0
        :pswitch_8de
        :pswitch_95b
        :pswitch_9d8
        :pswitch_a36
        :pswitch_ad2
        :pswitch_b10
        :pswitch_b35
        :pswitch_b71
        :pswitch_bb2
    .end packed-switch

    .line 795
    :sswitch_data_2fa4
    .sparse-switch
        -0x6c43a0eb -> :sswitch_c06
        -0x5eef4930 -> :sswitch_c47
        -0x57f5d70e -> :sswitch_c7e
        -0x55af2a6c -> :sswitch_c2d
        -0x42b9a7be -> :sswitch_cab
        -0x3d0295e2 -> :sswitch_c20
        -0x331a660a -> :sswitch_c61
        -0x1ad99baa -> :sswitch_c8d
        -0x10b8615d -> :sswitch_c13
        -0x53b1dd2 -> :sswitch_c3a
        0x3e90c48d -> :sswitch_cc9
        0x405a90ec -> :sswitch_c6f
        0x53ef861d -> :sswitch_c9c
        0x5bb25232 -> :sswitch_bf9
        0x6bef28f1 -> :sswitch_c54
        0x7c45f31f -> :sswitch_cba
    .end sparse-switch

    :pswitch_data_2fe6
    .packed-switch 0x0
        :pswitch_cd8
        :pswitch_d3a
        :pswitch_d80
        :pswitch_dac
        :pswitch_dda
        :pswitch_e16
        :pswitch_e42
        :pswitch_e7e
        :pswitch_ebc
        :pswitch_ee8
        :pswitch_f26
        :pswitch_f71
        :pswitch_fa8
        :pswitch_fdf
        :pswitch_100b
        :pswitch_108f
    .end packed-switch

    .line 1049
    :sswitch_data_300a
    .sparse-switch
        -0x562f9482 -> :sswitch_10f0
        -0x4e3d6d40 -> :sswitch_113e
        -0x460411da -> :sswitch_1124
        -0x39b5211e -> :sswitch_1179
        -0x37226d22 -> :sswitch_1131
        -0x3581de92 -> :sswitch_110a
        -0x30c133a0 -> :sswitch_114c
        -0x28516cec -> :sswitch_116a
        -0x9cfa0f0 -> :sswitch_1197
        -0x4e1daa7 -> :sswitch_1117
        -0x4445baa -> :sswitch_11a6
        0x12bbc810 -> :sswitch_115b
        0x5f1771f4 -> :sswitch_10e3
        0x730fdeab -> :sswitch_10fd
        0x75020c0f -> :sswitch_10d6
        0x788dd2ce -> :sswitch_1188
    .end sparse-switch

    :pswitch_data_304c
    .packed-switch 0x0
        :pswitch_11b5
        :pswitch_11f3
        :pswitch_1230
        :pswitch_126d
        :pswitch_1299
        :pswitch_12c5
        :pswitch_12f1
        :pswitch_132d
        :pswitch_1359
        :pswitch_1395
        :pswitch_13d1
        :pswitch_13fd
        :pswitch_1429
        :pswitch_146a
        :pswitch_14a1
        :pswitch_14d0
    .end packed-switch

    .line 1289
    :sswitch_data_3070
    .sparse-switch
        -0x7f682541 -> :sswitch_157d
        -0x6f783fb9 -> :sswitch_158b
        -0x51cc33cc -> :sswitch_1570
        -0x4d8cc16d -> :sswitch_152f
        -0x3d0bb61b -> :sswitch_1515
        -0x3c6ca389 -> :sswitch_1549
        -0x3c036018 -> :sswitch_1522
        -0x3bc628df -> :sswitch_153c
        -0x374aace4 -> :sswitch_1556
        -0x1c091992 -> :sswitch_15a9
        0x6305badd -> :sswitch_159a
        0x692685a1 -> :sswitch_1563
    .end sparse-switch

    :pswitch_data_30a2
    .packed-switch 0x0
        :pswitch_15b8
        :pswitch_160d
        :pswitch_1654
        :pswitch_169f
        :pswitch_16dd
        :pswitch_1743
        :pswitch_1768
        :pswitch_1794
        :pswitch_17c0
        :pswitch_17ec
        :pswitch_1827
        :pswitch_1862
    .end packed-switch

    .line 1478
    :sswitch_data_30be
    .sparse-switch
        -0x7f91d479 -> :sswitch_18f8
        -0x7c284bba -> :sswitch_18de
        -0x6f335556 -> :sswitch_18eb
        -0x4cb7d87b -> :sswitch_1949
        -0x2d0cb7a5 -> :sswitch_18d1
        0xdc5fecf -> :sswitch_1912
        0x33b94bbf -> :sswitch_18c4
        0x367ce700 -> :sswitch_1905
        0x465482c9 -> :sswitch_192c
        0x552e154b -> :sswitch_191f
        0x69712d6f -> :sswitch_193a
        0x6ab4c78e -> :sswitch_1958
    .end sparse-switch

    :pswitch_data_30f0
    .packed-switch 0x0
        :pswitch_1967
        :pswitch_19b8
        :pswitch_19e6
        :pswitch_1a11
        :pswitch_1a3c
        :pswitch_1a68
        :pswitch_1a94
        :pswitch_1ace
        :pswitch_1b08
        :pswitch_1b42
        :pswitch_1b7c
        :pswitch_1bbd
    .end packed-switch

    .line 1678
    :sswitch_data_310c
    .sparse-switch
        -0x4e857510 -> :sswitch_1c6d
        -0x1c894ef7 -> :sswitch_1c2c
        -0xe2e3396 -> :sswitch_1c46
        -0x9b47ac1 -> :sswitch_1c7a
        0x17f43207 -> :sswitch_1c60
        0x48803b14 -> :sswitch_1c1f
        0x60a98cb9 -> :sswitch_1c39
        0x65054427 -> :sswitch_1c53
        0x75f9239b -> :sswitch_1c12
    .end sparse-switch

    :pswitch_data_3132
    .packed-switch 0x0
        :pswitch_1c88
        :pswitch_1cc8
        :pswitch_1cf3
        :pswitch_1d70
        :pswitch_1daa
        :pswitch_1e48
        :pswitch_1e9f
        :pswitch_1ecb
        :pswitch_1f48
    .end packed-switch

    .line 1859
    :sswitch_data_3148
    .sparse-switch
        -0x74ddc0dd -> :sswitch_2044
        -0x67f870ad -> :sswitch_2037
        -0x499a7018 -> :sswitch_2010
        -0x364e80b3 -> :sswitch_202a
        0x9515810 -> :sswitch_2003
        0x78a801b7 -> :sswitch_201d
    .end sparse-switch

    :pswitch_data_3162
    .packed-switch 0x0
        :pswitch_2051
        :pswitch_207b
        :pswitch_20a7
        :pswitch_20d3
        :pswitch_2101
        :pswitch_212e
    .end packed-switch

    .line 1964
    :sswitch_data_3172
    .sparse-switch
        -0x625ba203 -> :sswitch_2176
        -0x534f8be2 -> :sswitch_2183
        -0x5319be4a -> :sswitch_21c4
        -0x4ebf90df -> :sswitch_21d0
        -0x11927f68 -> :sswitch_21b7
        0x52d2774 -> :sswitch_21aa
        0x3962d1ce -> :sswitch_219d
        0x6422cbe9 -> :sswitch_2190
    .end sparse-switch

    :pswitch_data_3194
    .packed-switch 0x0
        :pswitch_21dd
        :pswitch_2228
        :pswitch_227d
        :pswitch_22d3
        :pswitch_22ff
        :pswitch_232b
        :pswitch_2364
        :pswitch_23a4
    .end packed-switch

    .line 2084
    :sswitch_data_31a8
    .sparse-switch
        -0x74fa9afd -> :sswitch_23e1
        -0x5319be4a -> :sswitch_243b
        -0x4ebf90df -> :sswitch_23ee
        -0x3ce44687 -> :sswitch_2408
        -0x3a6a65ad -> :sswitch_23fb
        -0x103e8c3d -> :sswitch_2422
        0x292f3f94 -> :sswitch_242e
        0x2eef3494 -> :sswitch_2415
        0x65788769 -> :sswitch_2454
        0x7d586159 -> :sswitch_2447
    .end sparse-switch

    :pswitch_data_31d2
    .packed-switch 0x0
        :pswitch_2462
        :pswitch_2499
        :pswitch_24be
        :pswitch_250d
        :pswitch_2548
        :pswitch_259f
        :pswitch_25d5
        :pswitch_260c
        :pswitch_2629
        :pswitch_264c
    .end packed-switch

    .line 2205
    :sswitch_data_31ea
    .sparse-switch
        -0x3edf31d1 -> :sswitch_26d5
        -0x15a386e9 -> :sswitch_26ae
        -0xc145ad8 -> :sswitch_26c8
        0x4744a7b8 -> :sswitch_26bb
    .end sparse-switch

    :pswitch_data_31fc
    .packed-switch 0x0
        :pswitch_26e2
        :pswitch_2710
        :pswitch_273b
        :pswitch_2766
    .end packed-switch

    .line 2271
    :sswitch_data_3208
    .sparse-switch
        -0x66608807 -> :sswitch_27ba
        -0x40efadf9 -> :sswitch_27c7
        0x63cbc5bc -> :sswitch_27ad
    .end sparse-switch

    :pswitch_data_3216
    .packed-switch 0x0
        :pswitch_27d4
        :pswitch_280b
        :pswitch_2858
    .end packed-switch

    .line 2405
    :sswitch_data_3220
    .sparse-switch
        -0x6e1bb3c9 -> :sswitch_2973
        0x741c2b00 -> :sswitch_2980
    .end sparse-switch

    :pswitch_data_322a
    .packed-switch 0x0
        :pswitch_298d
        :pswitch_29bb
    .end packed-switch

    .line 2452
    :sswitch_data_3232
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_2a32
        -0x3ecb9a99 -> :sswitch_2a59
        0x3ba3e2f0 -> :sswitch_2a25
        0x62658647 -> :sswitch_2a4c
        0x6f38e3dc -> :sswitch_2a3f
    .end sparse-switch

    :pswitch_data_3248
    .packed-switch 0x0
        :pswitch_2a66
        :pswitch_2a99
        :pswitch_2add
        :pswitch_2b0d
        :pswitch_2b47
    .end packed-switch

    .line 2600
    :sswitch_data_3256
    .sparse-switch
        -0x57099b48 -> :sswitch_2c09
        0x333ea7e2 -> :sswitch_2c16
    .end sparse-switch

    :pswitch_data_3260
    .packed-switch 0x0
        :pswitch_2c23
        :pswitch_2c51
    .end packed-switch

    .line 2643
    :pswitch_data_3268
    .packed-switch -0x28e089b6
        :pswitch_2c97
    .end packed-switch

    :pswitch_data_326e
    .packed-switch 0x0
        :pswitch_2ca4
    .end packed-switch

    .line 2660
    :sswitch_data_3274
    .sparse-switch
        -0x74717860 -> :sswitch_2ce5
        -0x1b958fde -> :sswitch_2cf2
    .end sparse-switch

    :pswitch_data_327e
    .packed-switch 0x0
        :pswitch_2cff
        :pswitch_2d42
    .end packed-switch

    .line 2696
    :sswitch_data_3286
    .sparse-switch
        -0x1d831fed -> :sswitch_2d9e
        0x67e79726 -> :sswitch_2d91
    .end sparse-switch

    :pswitch_data_3290
    .packed-switch 0x0
        :pswitch_2dab
        :pswitch_2e31
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2889
    const/4 v0, 0x0

    return v0
.end method
